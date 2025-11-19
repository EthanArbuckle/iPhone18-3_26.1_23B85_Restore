@interface MCMXPCMessageSetTestLock
- (BOOL)enable;
- (MCMXPCMessageSetTestLock)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
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

- (MCMXPCMessageSetTestLock)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageSetTestLock;
  v9 = [(MCMXPCMessageBase *)&v12 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    v9->_requestedLocks = xpc_dictionary_get_uint64(v8, "TestLock");
    v9->_enable = xpc_dictionary_get_BOOL(v8, "Enable");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end