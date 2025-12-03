@interface MCMXPCMessageSetTestLock
- (BOOL)enable;
- (MCMXPCMessageSetTestLock)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (unint64_t)requestedLocks;
@end

@implementation MCMXPCMessageSetTestLock

- (BOOL)enable
{
  result = self->_enable;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)requestedLocks
{
  result = self->_requestedLocks;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageSetTestLock)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageSetTestLock;
  v9 = [(MCMXPCMessageBase *)&v12 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_requestedLocks = xpc_dictionary_get_uint64(objectCopy, "TestLock");
    v9->_enable = xpc_dictionary_get_BOOL(objectCopy, "Enable");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end