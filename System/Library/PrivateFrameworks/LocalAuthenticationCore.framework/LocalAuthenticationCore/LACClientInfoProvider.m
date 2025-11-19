@interface LACClientInfoProvider
+ (LACClientInfoProvider)sharedInstance;
- (BOOL)_isNonUiExtensionPointIdentifier:(id)a3;
- (BOOL)canCallToDependencies;
- (BOOL)processId:(int)a3 toAuditToken:(id *)a4;
- (id)_infoForClientWithApplicationIdentityData:(id)a3;
- (id)_infoForClientWithAuditToken:(id *)a3;
- (id)_infoForClientWithAuditTokenData:(id)a3;
- (id)_infoForClientWithBundleRecord:(id)a3;
- (id)infoForXPCClient:(id)a3 evaluationOptions:(id)a4;
- (int)processIdForAuditToken:(id *)a3;
@end

@implementation LACClientInfoProvider

+ (LACClientInfoProvider)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[LACClientInfoProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_7;

  return v3;
}

uint64_t __39__LACClientInfoProvider_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_7 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)infoForXPCClient:(id)a3 evaluationOptions:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(LACClientInfoProvider *)self canCallToDependencies])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:1038];
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:1080];
    v11 = [v7 objectForKeyedSubscript:v10];
    v12 = [v11 integerValue];

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:1021];
    v14 = [v7 objectForKeyedSubscript:v13];
    if (v14)
    {
      v15 = v14;
      v16 = [v6 checkEntitlement:@"com.apple.private.LocalAuthentication.CallerName"];

      if (!v16)
      {
        v17 = 0;
        if (v9)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      v13 = [MEMORY[0x1E696AD98] numberWithInteger:1021];
      v17 = [v7 objectForKeyedSubscript:v13];
    }

    else
    {
      v17 = 0;
    }

    if (v9)
    {
LABEL_10:
      if ((v12 & 4) != 0)
      {
        [(LACClientInfoProvider *)self _infoForClientWithApplicationIdentityData:v9];
      }

      else
      {
        [(LACClientInfoProvider *)self _infoForClientWithAuditTokenData:v9];
      }
      v20 = ;
LABEL_19:
      v19 = v20;
      if ([v17 length])
      {
        v21 = [LACClientInfo alloc];
        v22 = [v19 bundleId];
        v23 = [(LACClientInfo *)v21 initWithBundleId:v22 displayName:v17];

        v19 = v23;
      }

      goto LABEL_22;
    }

LABEL_14:
    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v20 = [(LACClientInfoProvider *)self _infoForClientWithAuditToken:&v26];
    goto LABEL_19;
  }

  v18 = LACLogDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v26) = 67109120;
    DWORD1(v26) = [v6 processId];
    _os_log_impl(&dword_1B0233000, v18, OS_LOG_TYPE_DEFAULT, "Skipping resolution of bundle ID for pid %d - migration in progress", &v26, 8u);
  }

  v19 = +[LACClientInfo emptyClientInfo];
LABEL_22:

  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

- (int)processIdForAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *v5.val = *a3->var0;
  *&v5.val[4] = v3;
  return audit_token_to_pid(&v5);
}

- (BOOL)processId:(int)a3 toAuditToken:(id *)a4
{
  tn = 0;
  if (task_name_for_pid(*MEMORY[0x1E69E9A60], a3, &tn))
  {
    v6 = LACLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [LACClientInfoProvider processId:toAuditToken:];
    }

    return 0;
  }

  else
  {
    task_info_outCnt = 8;
    v8 = task_info(tn, 0xFu, a4, &task_info_outCnt);
    v7 = v8 == 0;
    v9 = LACLogDefault();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [LACClientInfoProvider processId:toAuditToken:];
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [LACClientInfoProvider processId:a3 toAuditToken:v10];
    }
  }

  return v7;
}

- (id)_infoForClientWithAuditTokenData:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696B098] valueWithBytes:objc_msgSend(a3 objCType:{"bytes"), "{?=[8I]}"}];
    v5 = v4;
    if (v4)
    {
      v11 = 0u;
      v12 = 0u;
      [v4 getValue:&v11];
      v10[0] = v11;
      v10[1] = v12;
      v6 = [(LACClientInfoProvider *)self _infoForClientWithAuditToken:v10];
    }

    else
    {
      v8 = LACLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [LACClientInfoProvider _infoForClientWithAuditTokenData:];
      }

      v6 = +[LACClientInfo emptyClientInfo];
    }

    v7 = v6;
  }

  else
  {
    v7 = +[LACClientInfo emptyClientInfo];
  }

  return v7;
}

- (id)_infoForClientWithApplicationIdentityData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v16];
    v6 = v16;
    v7 = v6;
    if (v5)
    {
      v15 = v6;
      v8 = [v5 findApplicationRecordWithError:&v15];
      v9 = v15;

      if (v8)
      {
        v10 = [(LACClientInfoProvider *)self _infoForClientWithBundleRecord:v8];
      }

      else
      {
        v13 = LACLogDefault();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [LACClientInfoProvider _infoForClientWithApplicationIdentityData:];
        }

        v10 = +[LACClientInfo emptyClientInfo];
      }

      v11 = v10;

      v7 = v9;
    }

    else
    {
      v12 = LACLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [LACClientInfoProvider _infoForClientWithApplicationIdentityData:];
      }

      v11 = +[LACClientInfo emptyClientInfo];
    }
  }

  else
  {
    v11 = +[LACClientInfo emptyClientInfo];
  }

  return v11;
}

- (id)_infoForClientWithAuditToken:(id *)a3
{
  v12 = 0;
  v4 = *&a3->var0[4];
  v11[0] = *a3->var0;
  v11[1] = v4;
  v5 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:v11 error:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [(LACClientInfoProvider *)self _infoForClientWithBundleRecord:v5];
  }

  else
  {
    v8 = LACLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [LACClientInfoProvider _infoForClientWithAuditToken:];
    }

    v7 = +[LACClientInfo emptyClientInfo];
  }

  v9 = v7;

  return v9;
}

- (id)_infoForClientWithBundleRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  if (v4)
  {
    v6 = [v4 localizedName];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [v4 localizedShortName];
      v10 = v9;
      if (v9)
      {
        v8 = v9;
      }

      else
      {
        v11 = [v4 bundleIdentifier];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v5;
        }

        v8 = v13;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v4;
    v15 = v14;
    if (v4)
    {
      v16 = [v14 extensionPointRecord];
      v17 = [v16 identifier];

      if ([v17 isEqualToString:@"com.apple.intents-service"])
      {

        v5 = @"com.apple.siri";
      }

      if (![(LACClientInfoProvider *)self _isNonUiExtensionPointIdentifier:v17])
      {
        v18 = [v15 containingBundleRecord];
        v19 = [v18 bundleIdentifier];

        v8 = v19;
      }
    }
  }

  v20 = [[LACClientInfo alloc] initWithBundleId:v5 displayName:v8];

  return v20;
}

- (BOOL)_isNonUiExtensionPointIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.services"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.ctk-tokens"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.Safari.web-extension"];
  }

  return v4;
}

- (BOOL)canCallToDependencies
{
  v2 = +[LACSetUpStateProvider sharedInstance];
  v3 = [v2 hasCompletedSetup];

  return v3;
}

- (void)applicationIdentityDataForProcessId:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B0233000, v0, v1, "Failed to encode %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)applicationIdentityDataForProcessId:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)applicationIdentityDataForProcessId:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)processId:toAuditToken:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)processId:toAuditToken:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)processId:(int)a1 toAuditToken:(NSObject *)a2 .cold.3(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "Successfully acquired audit token for PID %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_infoForClientWithApplicationIdentityData:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B0233000, v0, v1, "Unable to find application record for identity: %@ error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_infoForClientWithApplicationIdentityData:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_infoForClientWithAuditToken:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end