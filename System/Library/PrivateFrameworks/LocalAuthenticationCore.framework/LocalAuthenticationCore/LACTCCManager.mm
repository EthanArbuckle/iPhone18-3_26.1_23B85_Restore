@interface LACTCCManager
+ (id)sharedInstance;
- (int64_t)_authorizationStatusFromRight:(unint64_t)right;
- (int64_t)authorizationStatusForService:(id)service auditToken:(id *)token promptUser:(BOOL)user;
- (int64_t)authorizationStatusOfFaceIDServiceForAuditToken:(id *)token;
- (void)requestAuthorizationForService:(id)service completion:(id)completion;
@end

@implementation LACTCCManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[LACTCCManager sharedInstance];
  }

  v3 = sharedInstance__manager;

  return v3;
}

uint64_t __31__LACTCCManager_sharedInstance__block_invoke()
{
  sharedInstance__manager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (int64_t)authorizationStatusOfFaceIDServiceForAuditToken:(id *)token
{
  faceIDServiceName = [objc_opt_class() faceIDServiceName];
  v6 = *&token->var0[4];
  v9[0] = *token->var0;
  v9[1] = v6;
  v7 = [(LACTCCManager *)self authorizationStatusForService:faceIDServiceName auditToken:v9 promptUser:0];

  return v7;
}

- (int64_t)authorizationStatusForService:(id)service auditToken:(id *)token promptUser:(BOOL)user
{
  userCopy = user;
  v14[1] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  if (userCopy)
  {
    v13 = *MEMORY[0x1E69D54D8];
    v14[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(LACTCCManager *)self _authorizationStatusFromRight:tcc_authorization_check_audit_token(), *token->var0, *&token->var0[2], *&token->var0[4], *&token->var0[6]];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)requestAuthorizationForService:(id)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v7 = tcc_server_create();
  v8 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  v9 = tcc_credential_singleton_for_self();
  v10 = tcc_service_singleton_for_CF_name();
  v13 = serviceCopy;
  v11 = completionCopy;
  v12 = serviceCopy;
  tcc_server_message_request_authorization();
}

uint64_t __59__LACTCCManager_requestAuthorizationForService_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = LACLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__LACTCCManager_requestAuthorizationForService_completion___block_invoke_cold_1(a1, a3, v5);
    }
  }

  else
  {
    v6 = [*(a1 + 40) _authorizationStatusFromRight:tcc_authorization_record_get_authorization_right()];
    v5 = LACLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "TCC access request for %@ returned %@", &v11, 0x16u);
    }
  }

  result = (*(*(a1 + 48) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)_authorizationStatusFromRight:(unint64_t)right
{
  if (right)
  {
    return right == 2;
  }

  else
  {
    return 2;
  }
}

void __59__LACTCCManager_requestAuthorizationForService_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "TCC access request for %@ returned error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end