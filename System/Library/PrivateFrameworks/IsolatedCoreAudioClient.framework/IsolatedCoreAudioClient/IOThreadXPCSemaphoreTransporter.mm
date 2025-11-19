@interface IOThreadXPCSemaphoreTransporter
+ (id)semaphores:(const ClientIOThreadSynchronizerSemaphores *)a3;
- (BOOL)isEqual:(id)a3;
- (ClientIOThreadSynchronizerSemaphores)getSemaphores;
- (IOThreadXPCSemaphoreTransporter)initWithCoder:(id)a3;
- (IOThreadXPCSemaphoreTransporter)initWithSemaphores:(id)a3 :(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IOThreadXPCSemaphoreTransporter

- (ClientIOThreadSynchronizerSemaphores)getSemaphores
{
  v3 = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];
  v4 = xpc_mach_send_copy_right();

  v5 = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];
  v6 = xpc_mach_send_copy_right();

  return (v4 | (v6 << 32));
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];
    if (v6)
    {
    }

    else
    {
      v8 = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];

      if (!v8)
      {
        v9 = [v5 clientPingableSemaphore];
        if (v9)
        {
          v7 = 0;
          goto LABEL_10;
        }

        v10 = [v5 clientListenableSemaphore];
        v9 = 0;
        v7 = v10 == 0;
LABEL_9:

LABEL_10:
        goto LABEL_11;
      }
    }

    v9 = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];
    v10 = [v5 clientPingableSemaphore];
    if (xpc_equal(v9, v10))
    {
      v11 = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];
      v12 = [v5 clientListenableSemaphore];
      v7 = xpc_equal(v11, v12);
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v9 = v4;
  v5 = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];

  if (v5)
  {
    v6 = [(IOThreadXPCSemaphoreTransporter *)self clientPingableSemaphore];
  }

  else
  {
    v6 = xpc_null_create();
  }

  [v9 encodeXPCObject:v6 forKey:@"IOThreadXPCSemaphoreTransporterClientPingable"];

  v7 = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];

  if (v7)
  {
    v8 = [(IOThreadXPCSemaphoreTransporter *)self clientListenableSemaphore];
  }

  else
  {
    v8 = xpc_null_create();
  }

  [v9 encodeXPCObject:v8 forKey:@"IOThreadXPCSemaphoreTransporterClientListenable"];
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

- (IOThreadXPCSemaphoreTransporter)initWithCoder:(id)a3
{
  v4 = a3;
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
    v6 = v4;
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

- (IOThreadXPCSemaphoreTransporter)initWithSemaphores:(id)a3 :(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IOThreadXPCSemaphoreTransporter;
  v9 = [(IOThreadXPCSemaphoreTransporter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientPingableSemaphore, a4);
    objc_storeStrong(&v10->_clientListenableSemaphore, a3);
  }

  return v10;
}

+ (id)semaphores:(const ClientIOThreadSynchronizerSemaphores *)a3
{
  var1 = a3->var1;
  v5 = xpc_mach_send_create();
  var0 = a3->var0;
  v7 = xpc_mach_send_create();
  v8 = [[IOThreadXPCSemaphoreTransporter alloc] initWithSemaphores:v5];

  return v8;
}

@end