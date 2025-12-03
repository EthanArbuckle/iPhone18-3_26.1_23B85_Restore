@interface IOThreadXPCMappedMemoryTransporter
+ (id)memory:(const MappedMemory *)memory;
- (BOOL)isEqual:(id)equal;
- (IOThreadXPCMappedMemoryTransporter)initWithCoder:(id)coder;
- (IOThreadXPCMappedMemoryTransporter)initWithObject:(id)object;
- (MappedMemory)getMappedMemory;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IOThreadXPCMappedMemoryTransporter

- (MappedMemory)getMappedMemory
{
  v7 = 0;
  v8 = 0;
  serverMemory = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];

  if (serverMemory)
  {
    serverMemory2 = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];
    v8 = xpc_shmem_map(serverMemory2, &v7);

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    serverMemory = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];

    if (serverMemory)
    {
      serverMemory2 = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];
      serverMemory3 = [v5 serverMemory];
      LOBYTE(v9) = xpc_equal(serverMemory2, serverMemory3);
    }

    else
    {
      serverMemory2 = [v5 serverMemory];
      v9 = serverMemory2 == 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v7 = coderCopy;
  serverMemory = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];

  if (serverMemory)
  {
    serverMemory2 = [(IOThreadXPCMappedMemoryTransporter *)self serverMemory];
  }

  else
  {
    serverMemory2 = xpc_null_create();
  }

  [v7 encodeXPCObject:serverMemory2 forKey:@"IOThreadXPCMappedMemoryTransporter"];
}

- (void)dealloc
{
  serverMemory = self->_serverMemory;
  self->_serverMemory = 0;

  v4.receiver = self;
  v4.super_class = IOThreadXPCMappedMemoryTransporter;
  [(IOThreadXPCMappedMemoryTransporter *)&v4 dealloc];
}

- (IOThreadXPCMappedMemoryTransporter)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v6 = coderCopy;
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

- (IOThreadXPCMappedMemoryTransporter)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = IOThreadXPCMappedMemoryTransporter;
  v6 = [(IOThreadXPCMappedMemoryTransporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverMemory, object);
  }

  return v7;
}

+ (id)memory:(const MappedMemory *)memory
{
  v3 = xpc_shmem_create(memory->var0, memory->var1);
  v4 = [[IOThreadXPCMappedMemoryTransporter alloc] initWithObject:v3];

  return v4;
}

@end