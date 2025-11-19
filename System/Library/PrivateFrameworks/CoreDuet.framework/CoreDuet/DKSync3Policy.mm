@interface DKSync3Policy
@end

@implementation DKSync3Policy

void __77___DKSync3Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke(void *a1)
{
  keys[9] = *MEMORY[0x1E69E9840];
  if (+[_DKCloudUtilities isUnitTesting])
  {
    v22 = +[_CDPeriodicScheduler sharedInstance];
    [v22 unregisterJob:a1[4]];
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = a1[4];
    v4 = dispatch_get_global_queue(-32768, 0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77___DKSync3Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_2;
    v23[3] = &__block_descriptor_40_e5_v8__0l;
    v23[4] = a1[5];
    v5 = [_CDPeriodicSchedulerJob jobWithInterval:v3 schedulerJobName:v4 queue:0 asynchronousHandler:v23 handler:0.0];

    v6 = *MEMORY[0x1E69E9D88];
    keys[0] = *MEMORY[0x1E69E9CB0];
    keys[1] = v6;
    v7 = *MEMORY[0x1E69E9D58];
    keys[2] = *MEMORY[0x1E69E9D68];
    keys[3] = v7;
    v8 = *MEMORY[0x1E69E9DB0];
    keys[4] = *MEMORY[0x1E69E9C40];
    keys[5] = v8;
    v9 = *MEMORY[0x1E69E9D40];
    keys[6] = *MEMORY[0x1E69E9D18];
    keys[7] = v9;
    v10 = 86400 * a1[6];
    keys[8] = *MEMORY[0x1E69E9DA8];
    values[0] = xpc_int64_create(v10);
    v11 = MEMORY[0x1E69E9E10];
    v12 = MEMORY[0x1E69E9E10];
    values[1] = v11;
    values[2] = xpc_string_create(*MEMORY[0x1E69E9D70]);
    v13 = v11;
    values[3] = v11;
    v14 = MEMORY[0x1E69E9E08];
    v15 = MEMORY[0x1E69E9E08];
    values[4] = v14;
    v16 = v11;
    values[5] = v11;
    values[6] = xpc_string_create(*MEMORY[0x1E69E9D20]);
    values[7] = xpc_int64_create(5000);
    v17 = v11;
    values[8] = v11;
    v18 = xpc_dictionary_create(keys, values, 9uLL);
    [v5 setExecutionCriteria:v18];

    v19 = +[_CDPeriodicScheduler sharedInstance];
    [v19 registerJob:v5];

    for (i = 8; i != -1; --i)
    {
    }

    v21 = *MEMORY[0x1E69E9840];
  }
}

void __77___DKSync3Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_2()
{
  v0 = +[_DKSync3Policy userDefaults];
  v1 = [v0 objectForKey:@"CloudSyncPoliciesLastModified"];

  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [_CDServerRequest addHTTPIfModifiedSinceToHeaders:v3 date:v1];
  v4 = [_CDServerRequest startDataTaskWithURI:v2 headers:@"https://configuration.apple.com/configurations/internetservices/cloudkit/knowledgestore/com.apple.coreduet.knowledge.Sync3Policy.plist" timeoutInterval:v3 responseHandler:&__block_literal_global_837];
  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_2();
  }
}

void __42___DKSync3Policy_PolicyCache__policyCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = policyCache_policyCache_0;
  policyCache_policyCache_0 = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = policyCache_policyCache_0;
  policyCache_policyCache_0 = v2;

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [v5 addObserverForName:@"_DKSync2CoordinatorDidIdleNotification" object:0 queue:0 usingBlock:&__block_literal_global_950];
}

void __32___DKSync3Policy_disabledPolicy__block_invoke()
{
  v0 = objc_opt_new();
  v1 = disabledPolicy_policy;
  disabledPolicy_policy = v0;

  if (disabledPolicy_policy)
  {
    *(disabledPolicy_policy + 8) = 1;
  }
}

@end