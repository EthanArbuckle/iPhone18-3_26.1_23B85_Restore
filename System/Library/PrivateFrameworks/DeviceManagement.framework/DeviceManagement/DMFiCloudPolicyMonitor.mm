@interface DMFiCloudPolicyMonitor
+ (id)iCloudLogoutPolicyForPoliciesByType:(id)type;
- (DMFiCloudPolicyMonitor)init;
- (DMFiCloudPolicyMonitor)initWithPolicyChangeHandler:(id)handler;
- (id)requestiCloudLogoutPolicyWithError:(id *)error;
- (int64_t)iCloudLogoutPolicy;
- (void)dealloc;
- (void)requestiCloudLogoutPolicyWithCompletionHandler:(id)handler;
@end

@implementation DMFiCloudPolicyMonitor

- (DMFiCloudPolicyMonitor)initWithPolicyChangeHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = DMFiCloudPolicyMonitor;
  v5 = [(DMFiCloudPolicyMonitor *)&v19 init];
  if (v5)
  {
    v20[0] = @"icloudaccountlogout";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    policyTypes = v5->_policyTypes;
    v5->_policyTypes = v6;

    v8 = objc_opt_new();
    identifier = v5->_identifier;
    v5->_identifier = v8;

    if (handlerCopy)
    {
      v10 = [DMFPolicyRegistration alloc];
      v11 = [MEMORY[0x1E695DFD8] setWithArray:v5->_policyTypes];
      v12 = [(DMFPolicyRegistration *)v10 initWithIdentifier:@"dmf.policy.monitor.icloud.account.logout" policyTypes:v11 callback:handlerCopy];

      v13 = +[DMFPolicyMonitor policyMonitor];
      v14 = v5->_identifier;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __54__DMFiCloudPolicyMonitor_initWithPolicyChangeHandler___block_invoke;
      v17[3] = &unk_1E86169F8;
      v18 = v5;
      [v13 addRegistration:v12 forPolicyMonitorIdentifier:v14 completionHandler:v17];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

void __54__DMFiCloudPolicyMonitor_initWithPolicyChangeHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = DMFPolicyLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __54__DMFiCloudPolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (void)dealloc
{
  v3 = +[DMFPolicyMonitor policyMonitor];
  [v3 invalidatePolicyMonitor:self->_identifier];

  v4.receiver = self;
  v4.super_class = DMFiCloudPolicyMonitor;
  [(DMFiCloudPolicyMonitor *)&v4 dealloc];
}

+ (id)iCloudLogoutPolicyForPoliciesByType:(id)type
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [type objectForKeyedSubscript:@"icloudaccountlogout"];
  v4 = v3;
  if (v3)
  {
    defaultPolicy = [v3 defaultPolicy];
  }

  else
  {
    defaultPolicy = 0;
  }

  v6 = DMFPolicyLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = DMFPolicyUnlocalizedDisplayName(defaultPolicy);
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1DBFFF000, v6, OS_LOG_TYPE_DEFAULT, "iCloud logout has policy %{public}@", &v11, 0xCu);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:defaultPolicy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)requestiCloudLogoutPolicyWithError:(id *)error
{
  v5 = +[DMFPolicyMonitor policyMonitor];
  policyTypes = [(DMFiCloudPolicyMonitor *)self policyTypes];
  v13 = 0;
  v7 = [v5 requestPoliciesForTypes:policyTypes withError:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [DMFiCloudPolicyMonitor iCloudLogoutPolicyForPoliciesByType:v7];
  }

  else
  {
    v10 = DMFPolicyLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DMFiCloudPolicyMonitor requestiCloudLogoutPolicyWithError:?];
    }

    if (error)
    {
      v11 = v8;
      v9 = 0;
      *error = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)requestiCloudLogoutPolicyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[DMFPolicyMonitor policyMonitor];
  policyTypes = [(DMFiCloudPolicyMonitor *)self policyTypes];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__DMFiCloudPolicyMonitor_requestiCloudLogoutPolicyWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8616A20;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v5 requestPoliciesForTypes:policyTypes completionHandler:v8];
}

void __73__DMFiCloudPolicyMonitor_requestiCloudLogoutPolicyWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = [DMFiCloudPolicyMonitor iCloudLogoutPolicyForPoliciesByType:a2];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    v8 = DMFPolicyLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__DMFiCloudPolicyMonitor_requestiCloudLogoutPolicyWithCompletionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (DMFiCloudPolicyMonitor)init
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__DMFiCloudPolicyMonitor_init__block_invoke;
  v4[3] = &unk_1E86160F8;
  selfCopy = self;
  v2 = [(DMFiCloudPolicyMonitor *)selfCopy initWithPolicyChangeHandler:v4];

  return v2;
}

void __30__DMFiCloudPolicyMonitor_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestiCloudLogoutPolicyWithError:0];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) setICloudLogoutPolicy:{objc_msgSend(v2, "integerValue")}];
    v2 = v3;
  }
}

- (int64_t)iCloudLogoutPolicy
{
  v3 = [(DMFiCloudPolicyMonitor *)self requestiCloudLogoutPolicyWithError:0];
  v4 = v3;
  if (v3)
  {
    iCloudLogoutPolicy = [v3 integerValue];
    self->_iCloudLogoutPolicy = iCloudLogoutPolicy;
  }

  else
  {
    iCloudLogoutPolicy = self->_iCloudLogoutPolicy;
  }

  return iCloudLogoutPolicy;
}

void __54__DMFiCloudPolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 16);
  v4 = *(*(a1 + 32) + 24);
  v6 = 138543874;
  v7 = v4;
  v8 = 2114;
  v9 = v3;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_1DBFFF000, log, OS_LOG_TYPE_ERROR, "Failed to register iCloud policy monitor with identifier %{public}@ for types %{public}@ with error: %{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)requestiCloudLogoutPolicyWithError:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 policyTypes];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DBFFF000, v2, v3, "Failed to request policies for types %{public}@ with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __73__DMFiCloudPolicyMonitor_requestiCloudLogoutPolicyWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) policyTypes];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DBFFF000, v2, v3, "Failed to request policies for types %{public}@ with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end