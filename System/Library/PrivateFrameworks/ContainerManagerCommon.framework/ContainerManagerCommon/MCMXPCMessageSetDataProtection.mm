@interface MCMXPCMessageSetDataProtection
- (BOOL)isThirdParty;
- (BOOL)retryIfLocked;
- (MCMXPCMessageSetDataProtection)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (int)dataProtectionClass;
@end

@implementation MCMXPCMessageSetDataProtection

- (BOOL)retryIfLocked
{
  result = self->_retryIfLocked;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)dataProtectionClass
{
  result = self->_dataProtectionClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isThirdParty
{
  result = self->_thirdParty;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageSetDataProtection)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageSetDataProtection;
  v9 = [(MCMXPCMessageWithContainerBase *)&v12 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_thirdParty = xpc_dictionary_get_BOOL(objectCopy, "IsThirdParty");
    v9->_dataProtectionClass = xpc_dictionary_get_int64(objectCopy, "DataProtectionClass");
    v9->_retryIfLocked = xpc_dictionary_get_BOOL(objectCopy, "RetryIfLocked");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end