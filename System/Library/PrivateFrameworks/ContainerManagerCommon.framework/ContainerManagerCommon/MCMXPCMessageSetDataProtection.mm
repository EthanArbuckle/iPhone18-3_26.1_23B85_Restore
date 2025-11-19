@interface MCMXPCMessageSetDataProtection
- (BOOL)isThirdParty;
- (BOOL)retryIfLocked;
- (MCMXPCMessageSetDataProtection)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
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

- (MCMXPCMessageSetDataProtection)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageSetDataProtection;
  v9 = [(MCMXPCMessageWithContainerBase *)&v12 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    v9->_thirdParty = xpc_dictionary_get_BOOL(v8, "IsThirdParty");
    v9->_dataProtectionClass = xpc_dictionary_get_int64(v8, "DataProtectionClass");
    v9->_retryIfLocked = xpc_dictionary_get_BOOL(v8, "RetryIfLocked");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end