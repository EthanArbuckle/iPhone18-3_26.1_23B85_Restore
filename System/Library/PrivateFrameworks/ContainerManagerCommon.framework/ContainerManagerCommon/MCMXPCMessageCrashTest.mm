@interface MCMXPCMessageCrashTest
- (MCMXPCMessageCrashTest)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
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

- (MCMXPCMessageCrashTest)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageCrashTest;
  v9 = [(MCMXPCMessageBase *)&v12 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_crashCount = xpc_dictionary_get_uint64(objectCopy, "NumRetryCrashes");
    v9->_setTestLocks = xpc_dictionary_get_uint64(objectCopy, "TestLock");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end