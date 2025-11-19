@interface IOThreadXPCMappedMemoryTransporter
+ (id)memory:(const MappedMemory *)a3;
- (BOOL)isEqual:(id)a3;
- (IOThreadXPCMappedMemoryTransporter)initWithCoder:(id)a3;
- (IOThreadXPCMappedMemoryTransporter)initWithObject:(id)a3;
- (MappedMemory)getMappedMemory;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IOThreadXPCMappedMemoryTransporter

- (MappedMemory)getMappedMemory
{
  v7 = 0;
  v8 = 0;
  v3 = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];

  if (v3)
  {
    v4 = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];
    v8 = xpc_shmem_map(v4, &v7);

    v5 = v7;
    v6 = v8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];

    if (v6)
    {
      v7 = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];
      v8 = [v5 serverMemory];
      LOBYTE(v9) = xpc_equal(v7, v8);
    }

    else
    {
      v7 = [v5 serverMemory];
      v9 = v7 == 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v7 = v4;
  v5 = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];

  if (v5)
  {
    v6 = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];
  }

  else
  {
    v6 = xpc_null_create();
  }

  [v7 encodeXPCObject:v6 forKey:@"IOThreadXPCMappedMemoryTransporter"];
}

- (void)dealloc
{
  serverMemory = self->_serverMemory;
  self->_serverMemory = 0;

  v4.receiver = self;
  v4.super_class = IOThreadXPCMappedMemoryTransporter;
  [(IOThreadXPCMappedMemoryTransporter *)&v4 dealloc];
}

- (IOThreadXPCMappedMemoryTransporter)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v12.receiver = self;
  v12.super_class = IOThreadXPCMappedMemoryTransporter;
  v5 = [(IOThreadXPCMappedMemoryTransporter *)&v12 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 decodeXPCObjectForKey:@"IOThreadXPCMappedMemoryTransporter"];
    serverMemory = v5->_serverMemory;
    v5->_serverMemory = v7;

    if (!v5->_serverMemory)
    {

      v10 = 0;
      goto LABEL_10;
    }

    if (MEMORY[0x259C39860]() == MEMORY[0x277D864B0])
    {
      v9 = v5->_serverMemory;
      v5->_serverMemory = 0;
    }
  }

  v10 = v5;
LABEL_10:

  return v10;
}

- (IOThreadXPCMappedMemoryTransporter)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IOThreadXPCMappedMemoryTransporter;
  v6 = [(IOThreadXPCMappedMemoryTransporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverMemory, a3);
  }

  return v7;
}

+ (id)memory:(const MappedMemory *)a3
{
  v3 = xpc_shmem_create(a3->var0, a3->var1);
  v4 = [[IOThreadXPCMappedMemoryTransporter alloc] initWithObject:v3];

  return v4;
}

@end