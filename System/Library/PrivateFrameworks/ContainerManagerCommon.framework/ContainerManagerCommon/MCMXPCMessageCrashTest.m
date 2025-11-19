@interface MCMXPCMessageCrashTest
- (MCMXPCMessageCrashTest)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (unint64_t)crashCount;
- (unint64_t)setTestLocks;
@end

@implementation MCMXPCMessageCrashTest

- (unint64_t)setTestLocks
{
  result = self->_setTestLocks;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)crashCount
{
  result = self->_crashCount;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageCrashTest)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageCrashTest;
  v9 = [(MCMXPCMessageBase *)&v12 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    v9->_crashCount = xpc_dictionary_get_uint64(v8, "NumRetryCrashes");
    v9->_setTestLocks = xpc_dictionary_get_uint64(v8, "TestLock");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end