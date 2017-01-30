PROGS = ip

CFLAGS = -O3 -pipe
CFLAGS += -Werror -Wall
CFLAGS += -I3rdparty

LDFLAGS += -lpthread
CLEANFILES = $(PROGS) ip.o

all: $(PROGS)

ip: ip.c 
	$(CC) $(CFLAGS) $(LDFLAGS) ip.c 3rdparty/toeplitz.c -o $(PROGS)

clean:
	-@rm -rf $(CLEANFILES)
