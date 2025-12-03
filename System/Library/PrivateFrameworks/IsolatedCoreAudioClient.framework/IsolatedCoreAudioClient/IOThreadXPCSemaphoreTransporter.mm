@interface IOThreadXPCSemaphoreTransporter
+ (id)semaphores:(const ClientIOThreadSynchronizerSemaphores *)semaphores;
- (BOOL)isEqual:(id)equal;
- (ClientIOThreadSynchronizerSemaphores)getSemaphores;
- (IOThreadXPCSemaphoreTransporter)initWithCoder:(id)coder;
- (IOThreadXPCSemaphoreTransporter)initWithSemaphores:(id)semaphores :(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IOThreadXPCSemaphoreTransporter

- (ClientIOThreadSynchronizerSemaphores)getSemaphores
{
  clientPingableSemaphore = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];
  v4 = xpc_mach_send_copy_right();

  clientListenableSemaphore = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];
  v6 = xpc_mach_send_copy_right();

  return (v4 | (v6 << 32));
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    clientPingableSemaphore = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];
    if (clientPingableSemaphore)
    {
    }

    else
    {
      clientListenableSemaphore = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];

      if (!clientListenableSemaphore)
      {
        clientPingableSemaphore2 = [v5 clientPingableSemaphore];
        if (clientPingableSemaphore2)
        {
          v7 = 0;
          goto LABEL_10;
        }

        clientListenableSemaphore2 = [v5 clientListenableSemaphore];
        clientPingableSemaphore2 = 0;
        v7 = clientListenableSemaphore2 == 0;
LABEL_9:

LABEL_10:
        goto LABEL_11;
      }
    }

    clientPingableSemaphore2 = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];
    clientListenableSemaphore2 = [v5 clientPingableSemaphore];
    if (xpc_equal(clientPingableSemaphore2, clientListenableSemaphore2))
    {
      clientListenableSemaphore3 = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];
      clientListenableSemaphore4 = [v5 clientListenableSemaphore];
      v7 = xpc_equal(clientListenableSemaphore3, clientListenableSemaphore4);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_9;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v9 = coderCopy;
  clientPingableSemaphore = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];

  if (clientPingableSemaphore)
  {
    clientPingableSemaphore2 = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];
  }

  else
  {
    clientPingableSemaphore2 = xpc_null_create();
  }

  [v9 encodeXPCObject:clientPingableSemaphore2 forKey:@"IOThreadXPCSemaphoreTransporterClientPingable"];

  clientListenableSemaphore = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];

  if (clientListenableSemaphore)
  {
    clientListenableSemaphore2 = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];
  }

  else
  {
    clientListenableSemaphore2 = xpc_null_create();
  }

  [v9 encodeXPCObject:clientListenableSemaphore2 forKey:@"IOThreadXPCSemaphoreTransporterClientListenable"];
}

- (void)dealloc
{
  clientPingableSemaphore = self->_clientPingableSemaphore;
  self->_clientPingableSemaphore = 0;

  clientListenableSemaphore = self->_clientListenableSemaphore;
  self->_clientListenableSemaphore = 0;

  v5.receiver = self;
  v5.super_class = IOThreadXPCSemaphoreTransporter;
  [(IOThreadXPCSemaphoreTransporter *)&v5 dealloc];
}

- (IOThreadXPCSemaphoreTransporter)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v17.receiver = self;
  v17.super_class = IOThreadXPCSemaphoreTransporter;
  v5 = [(IOThreadXPCSemaphoreTransporter *)&v17 init];
  if (v5)
  {
    v6 = coderCopy;
    v7 = [v6 decodeXPCObjectForKey:@"IOThreadXPCSemaphoreTransporterClientPingable"];
    clientPingableSemaphore = v5->_clientPingableSemaphore;
    v5->_clientPingableSemaphore = v7;

    if (!v5->_clientPingableSemaphore)
    {
      goto LABEL_12;
    }

    v9 = MEMORY[0x259C39860]();
    v10 = MEMORY[0x277D864B0];
    if (v9 == MEMORY[0x277D864B0])
    {
      v11 = v5->_clientPingableSemaphore;
      v5->_clientPingableSemaphore = 0;
    }

    v12 = [v6 decodeXPCObjectForKey:@"IOThreadXPCSemaphoreTransporterClientListenable"];
    clientListenableSemaphore = v5->_clientListenableSemaphore;
    v5->_clientListenableSemaphore = v12;

    if (!v5->_clientListenableSemaphore)
    {
LABEL_12:

      v15 = 0;
      goto LABEL_13;
    }

    if (MEMORY[0x259C39860]() == v10)
    {
      v14 = v5->_clientListenableSemaphore;
      v5->_clientListenableSemaphore = 0;
    }
  }

  v15 = v5;
LABEL_13:

  return v15;
}

- (IOThreadXPCSemaphoreTransporter)initWithSemaphores:(id)semaphores :(id)a4
{
  semaphoresCopy = semaphores;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IOThreadXPCSemaphoreTransporter;
  v9 = [(IOThreadXPCSemaphoreTransporter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientPingableSemaphore, a4);
    objc_storeStrong(&v10->_clientListenableSemaphore, semaphores);
  }

  return v10;
}

+ (id)semaphores:(const ClientIOThreadSynchronizerSemaphores *)semaphores
{
  var1 = semaphores->var1;
  v5 = xpc_mach_send_create();
  var0 = semaphores->var0;
  v7 = xpc_mach_send_create();
  v8 = [[IOThreadXPCSemaphoreTransporter alloc] initWithSemaphores:v5];

  return v8;
}

@end