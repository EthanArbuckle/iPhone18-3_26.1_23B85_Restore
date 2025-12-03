@interface MCMCodeSignInfo
- (MCMCodeSignInfo)initWithAuditToken:(id *)token;
- (MCMCodeSignInfo)initWithURL:(id)l error:(unint64_t *)error;
- (NSDictionary)entitlements;
- (NSString)identifier;
- (unsigned)platform;
@end

@implementation MCMCodeSignInfo

- (unsigned)platform
{
  result = self->_platform;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)entitlements
{
  result = self->_entitlements;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMCodeSignInfo)initWithAuditToken:(id *)token
{
  v28 = *MEMORY[0x1E69E9840];

  v4 = *&token->var0[4];
  *buf = *token->var0;
  *&buf[16] = v4;
  pid = container_audit_token_get_pid();
  v6 = *&token->var0[4];
  *buf = *token->var0;
  *&buf[16] = v6;
  v7 = container_audit_token_copy_codesign_identifier();
  __s = v7;
  if (!v7)
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "[pid:%d] could not get codesign identifier", buf, 8u);
    }

    v12 = 0;
    v14 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  free(v8);
  memset_s(&__s, 8uLL, 0, 8uLL);
  v10 = *&token->var0[4];
  *buf = *token->var0;
  *&buf[16] = v10;
  v11 = container_audit_token_copy_entitlement();
  if (!v11)
  {
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "[%@ (pid:%d)] could not get entitlements (assuming none)", buf, 0x12u);
    }

    v12 = 0;
    goto LABEL_15;
  }

  v12 = v11;
  v13 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v13)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "[%@ (pid:%d)] could not translate entitlements (assuming none)", buf, 0x12u);
    }

LABEL_15:
    v14 = 0;
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v14 = v13;
  v15 = *&token->var0[4];
  *buf = *token->var0;
  *&buf[16] = v15;
  platform = container_audit_token_get_platform();
  v25.receiver = 0;
  v25.super_class = MCMCodeSignInfo;
  v17 = [(MCMCodeSignInfo *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, v9);
    objc_storeStrong(&v18->_entitlements, v14);
    v18->_platform = platform;
  }

LABEL_17:
  v22 = v18;

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (MCMCodeSignInfo)initWithURL:(id)l error:(unint64_t *)error
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMCodeSignInfo;

  if (error)
  {
    *error = 72;
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

@end