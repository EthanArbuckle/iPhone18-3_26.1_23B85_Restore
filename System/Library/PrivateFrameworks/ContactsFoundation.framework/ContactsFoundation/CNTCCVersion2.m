@interface CNTCCVersion2
+ (id)bundleIdentifierForIdentity:(id)a3;
+ (id)os_log;
- (BOOL)isAuthorizationRestricted;
- (BOOL)isUnitTesting;
- (CNTCCVersion2)init;
- (id)authorizationRecordForBundleIdentifier:(id)a3;
- (id)authorizationRecords;
- (id)bundleIdentifierForAuditToken:(id)a3 assumedIdentity:(id)a4;
- (id)credentialForAuditToken:(id)a3 assumedIdentity:(id)a4;
- (id)isUnitTestingImpl;
- (int64_t)checkAuthorizationStatusOfAuditToken:(id)a3 assumedIdentity:(id)a4;
- (void)appWillGoForeground:(id)a3;
- (void)requestAuthorization:(int64_t)a3 auditToken:(id)a4 assumedIdentity:(id)a5 completionHandler:(id)a6;
- (void)requestAuthorizationWithCredential:(id)a3 messageOptions:(id)a4 completionHandler:(id)a5;
- (void)setAuthorizationStatus:(int64_t)a3 forBundleIdentifier:(id)a4 noKillApp:(BOOL)a5;
- (void)simulateStatus:(int64_t)a3;
@end

@implementation CNTCCVersion2

- (CNTCCVersion2)init
{
  v19.receiver = self;
  v19.super_class = CNTCCVersion2;
  v2 = [(CNTCCVersion2 *)&v19 init];
  if (v2)
  {
    v3 = tcc_server_create();
    server = v2->_server;
    v2->_server = v3;

    v5 = *MEMORY[0x1E69D5500];
    v6 = tcc_service_singleton_for_CF_name();
    service = v2->_service;
    v2->_service = v6;

    v8 = tcc_message_options_create();
    messageOptionsForSyncNoPrompt = v2->_messageOptionsForSyncNoPrompt;
    v2->_messageOptionsForSyncNoPrompt = v8;

    v10 = v2->_messageOptionsForSyncNoPrompt;
    tcc_message_options_set_reply_handler_policy();
    v11 = v2->_messageOptionsForSyncNoPrompt;
    tcc_message_options_set_request_prompt_policy();
    v12 = tcc_message_options_create();
    messageOptionsForAsyncPrompt = v2->_messageOptionsForAsyncPrompt;
    v2->_messageOptionsForAsyncPrompt = v12;

    v14 = v2->_messageOptionsForAsyncPrompt;
    tcc_message_options_set_reply_handler_policy();
    v15 = v2->_messageOptionsForAsyncPrompt;
    tcc_message_options_set_request_prompt_rights_mask();
    v2->_shouldRepromptUponForegrounding = 0;
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v2 selector:sel_appWillGoForeground_ name:@"UIApplicationDidBecomeActiveNotification" object:0];

    v17 = v2;
  }

  return v2;
}

- (id)isUnitTestingImpl
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 executablePath];

  if ([v3 hasSuffix:@"CNTestsHostiOS"] & 1) != 0 || (objc_msgSend(v3, "hasSuffix:", @"CNTestsHostiOS_XPC") & 1) != 0 || (objc_msgSend(v3, "hasSuffix:", @"otest"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasSuffix:@"xctest"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];

  return v5;
}

id __30__CNTCCVersion2_isUnitTesting__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (!v3)
  {
    v4 = [v2 isUnitTestingImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v3 = *(*(a1 + 32) + 56);
  }

  return v3;
}

- (BOOL)isUnitTesting
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CNTCCVersion2_isUnitTesting__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isAuthorizationRestricted
{
  v3 = [(CNTCCVersion2 *)self simulateStatus];

  if (v3 || [(CNTCCVersion2 *)self isUnitTesting])
  {
    return 0;
  }

  v5 = *MEMORY[0x1E69D5500];
  return TCCAccessRestricted() != 0;
}

+ (id)os_log
{
  if (os_log_cn_once_token_1_7 != -1)
  {
    +[CNTCCVersion2 os_log];
  }

  v3 = os_log_cn_once_object_1_7;

  return v3;
}

uint64_t __23__CNTCCVersion2_os_log__block_invoke()
{
  os_log_cn_once_object_1_7 = os_log_create("com.apple.contacts", "CNTCCVersion2");

  return MEMORY[0x1EEE66BB8]();
}

- (int64_t)checkAuthorizationStatusOfAuditToken:(id)a3 assumedIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNTCCVersion2 *)self simulateStatus];

  if (v8)
  {
    v9 = [(CNTCCVersion2 *)self simulateStatus];
    v10 = [v9 integerValue];
  }

  else
  {
    if ([(CNTCCVersion2 *)self isUnitTesting])
    {
      v10 = 3;
      goto LABEL_4;
    }

    v9 = [(CNTCCVersion2 *)self credentialForAuditToken:v6 assumedIdentity:v7];
    if (v9)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v12 = [(CNTCCVersion2 *)self messageOptionsForSyncNoPrompt];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __70__CNTCCVersion2_checkAuthorizationStatusOfAuditToken_assumedIdentity___block_invoke;
      v13[3] = &unk_1E6ED7110;
      v13[4] = &v14;
      [(CNTCCVersion2 *)self requestAuthorizationWithCredential:v9 messageOptions:v12 completionHandler:v13];

      v10 = v15[3];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_4:
  return v10;
}

- (void)requestAuthorization:(int64_t)a3 auditToken:(id)a4 assumedIdentity:(id)a5 completionHandler:(id)a6
{
  v15 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(CNTCCVersion2 *)self simulateStatus];

  if (v11)
  {
    v12 = [(CNTCCVersion2 *)self simulateStatus];
    v10[2](v10, [v12 integerValue]);
  }

  else if ([(CNTCCVersion2 *)self isUnitTesting])
  {
    v10[2](v10, 3);
  }

  else
  {
    v13 = [(CNTCCVersion2 *)self credentialForAuditToken:v15 assumedIdentity:v9];
    if (v13)
    {
      v14 = [(CNTCCVersion2 *)self messageOptionsForAsyncPrompt];
      [(CNTCCVersion2 *)self requestAuthorizationWithCredential:v13 messageOptions:v14 completionHandler:v10];
    }

    else
    {
      v10[2](v10, 0);
    }
  }
}

- (id)credentialForAuditToken:(id)a3 assumedIdentity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    [v5 audit_token];
    v8 = tcc_credential_create_for_process_with_audit_token_and_assumed_identity();
  }

  else if (v5)
  {
    [v5 audit_token];
    v8 = tcc_credential_create_for_process_with_audit_token();
  }

  else if (v6)
  {
    v8 = tcc_credential_create_for_self_with_assumed_identity();
  }

  else
  {
    v8 = tcc_credential_singleton_for_self();
  }

  v9 = v8;

  return v9;
}

- (void)requestAuthorizationWithCredential:(id)a3 messageOptions:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNTCCVersion2 *)self server];
  v12 = [(CNTCCVersion2 *)self service];
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  tcc_server_message_request_authorization();
}

uint64_t __85__CNTCCVersion2_requestAuthorizationWithCredential_messageOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __85__CNTCCVersion2_requestAuthorizationWithCredential_messageOptions_completionHandler___block_invoke_cold_1(a3, v6, v7, v8, v9, v10, v11, v12);
    }

    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v14 = [CNTCCAppAuthorizationRecord authorizationStatusFromAuthorizationRight:tcc_authorization_record_get_authorization_right()];
    v15 = +[(CNEnvironmentBase *)CNEnvironment];
    v16 = [v15 featureFlags];
    v17 = [v16 isFeatureEnabled:2];

    if (v17)
    {
      v18 = (v14 & 0xFFFFFFFFFFFFFFFBLL) == 0;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      *(*(a1 + 32) + 8) = 1;
      objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
      v19 = _Block_copy(*(a1 + 56));
      v20 = *(a1 + 32);
      v21 = *(v20 + 72);
      *(v20 + 72) = v19;

      objc_storeStrong((*(a1 + 32) + 80), *(a1 + 48));
    }

    v22 = *(*(a1 + 56) + 16);

    return v22();
  }
}

- (id)bundleIdentifierForAuditToken:(id)a3 assumedIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNTCCVersion2 *)self credentialForAuditToken:v6 assumedIdentity:v7];
  if (v8)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__7;
    v18 = __Block_byref_object_dispose__7;
    v19 = 0;
    v9 = [(CNTCCVersion2 *)self server];
    v10 = [(CNTCCVersion2 *)self messageOptionsForSyncNoPrompt];
    v13 = MEMORY[0x1E69E9820];
    tcc_server_message_get_identity_for_credential();

    if (v15[5])
    {
      v11 = [objc_opt_class() bundleIdentifierForIdentity:{v15[5], v13, 3221225472, __63__CNTCCVersion2_bundleIdentifierForAuditToken_assumedIdentity___block_invoke, &unk_1E6ED7160, self, &v14}];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __63__CNTCCVersion2_bundleIdentifierForAuditToken_assumedIdentity___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __63__CNTCCVersion2_bundleIdentifierForAuditToken_assumedIdentity___block_invoke_cold_1(a3, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

+ (id)bundleIdentifierForIdentity:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 stringWithUTF8String:tcc_identity_get_identifier()];
  type = tcc_identity_get_type();

  if (type)
  {
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CNTCCVersion2 *)v5 bundleIdentifierForIdentity:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = 0;
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

- (id)authorizationRecords
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNTCCVersion2 *)self server];
  v5 = [(CNTCCVersion2 *)self messageOptionsForSyncNoPrompt];
  v6 = [(CNTCCVersion2 *)self service];
  v8 = v3;
  tcc_server_message_get_authorization_records_by_service();

  return v8;
}

void __37__CNTCCVersion2_authorizationRecords__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[CNTCCAppAuthorizationRecord alloc] initWithTCCAuthorizationRecord:v3];

    [*(a1 + 32) addObject:v4];
  }
}

- (id)authorizationRecordForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNTCCVersion2 *)self authorizationRecords];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__CNTCCVersion2_authorizationRecordForBundleIdentifier___block_invoke;
  v9[3] = &unk_1E6ED71B0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _cn_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __56__CNTCCVersion2_authorizationRecordForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)setAuthorizationStatus:(int64_t)a3 forBundleIdentifier:(id)a4 noKillApp:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  [a4 UTF8String];
  v13 = tcc_identity_create();
  [CNTCCAppAuthorizationRecord authorizationRightFromAuthorizationStatus:a3];
  v10 = [(CNTCCVersion2 *)self messageOptionsForSyncNoPrompt];
  if (v5)
  {
    tcc_message_options_set_nokill_policy();
  }

  v11 = [(CNTCCVersion2 *)self server];
  v12 = [(CNTCCVersion2 *)self service];
  tcc_server_message_set_authorization_value();
}

- (void)appWillGoForeground:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[(CNEnvironmentBase *)CNEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:2];

  if (v6)
  {
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = [(CNTCCVersion2 *)self shouldRepromptUponForegrounding];
      _os_log_impl(&dword_1859F0000, v7, OS_LOG_TYPE_DEFAULT, "CNTCCVersion2, app is coming into the foreground. reprompt? %d", v12, 8u);
    }

    if ([(CNTCCVersion2 *)self shouldRepromptUponForegrounding])
    {
      self->_shouldRepromptUponForegrounding = 0;
      v8 = [(CNTCCVersion2 *)self cachedCredentialForReprompt];
      v9 = [(CNTCCVersion2 *)self cachedMessagesForReprompt];
      v10 = [(CNTCCVersion2 *)self cachedCallbackForReprompt];
      [(CNTCCVersion2 *)self requestAuthorizationWithCredential:v8 messageOptions:v9 completionHandler:v10];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)simulateStatus:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(CNTCCVersion2 *)self setSimulateStatus:v4];
}

void __85__CNTCCVersion2_requestAuthorizationWithCredential_messageOptions_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "TCC request authorization failed: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __63__CNTCCVersion2_bundleIdentifierForAuditToken_assumedIdentity___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "TCC get identity for credential failed: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)bundleIdentifierForIdentity:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "TCC identity is not a bundle identifier: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end