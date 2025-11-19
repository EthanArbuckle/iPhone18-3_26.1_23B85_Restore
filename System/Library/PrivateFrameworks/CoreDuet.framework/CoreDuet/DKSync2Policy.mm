@interface DKSync2Policy
@end

@implementation DKSync2Policy

void __29___DKSync2Policy_policyCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = policyCache_policyCache;
  policyCache_policyCache = v0;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v3 addObserverForName:@"_DKSync2CoordinatorDidIdleNotification" object:0 queue:0 usingBlock:&__block_literal_global_111];
}

void __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = +[_DKSync2Policy productVersion];
  v4 = possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion;
  possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion = v3;

  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = a1[5];
    v7 = [objc_opt_class() description];
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "%{public}@: Using productVersion %{public}@ for sync policy downloads", buf, 0x16u);
  }

  if (possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion && !+[_DKCloudUtilities isUnitTesting])
  {
    v9 = a1[4];
    v10 = dispatch_get_global_queue(-32768, 0);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146;
    v27[3] = &__block_descriptor_40_e5_v8__0l;
    v27[4] = a1[5];
    v8 = [_CDPeriodicSchedulerJob jobWithInterval:v9 schedulerJobName:v10 queue:0 asynchronousHandler:v27 handler:0.0];

    v11 = *MEMORY[0x1E69E9D88];
    *buf = *MEMORY[0x1E69E9CB0];
    *&buf[8] = v11;
    v12 = *MEMORY[0x1E69E9D58];
    *&buf[16] = *MEMORY[0x1E69E9D68];
    v30 = v12;
    v13 = *MEMORY[0x1E69E9DB0];
    v31 = *MEMORY[0x1E69E9C40];
    v32 = v13;
    v14 = *MEMORY[0x1E69E9D40];
    v33 = *MEMORY[0x1E69E9D18];
    v34 = v14;
    v15 = 86400 * a1[6];
    v35 = *MEMORY[0x1E69E9DA8];
    values[0] = xpc_int64_create(v15);
    v16 = MEMORY[0x1E69E9E10];
    v17 = MEMORY[0x1E69E9E10];
    values[1] = v16;
    values[2] = xpc_string_create(*MEMORY[0x1E69E9D70]);
    v18 = v16;
    values[3] = v16;
    v19 = MEMORY[0x1E69E9E08];
    v20 = MEMORY[0x1E69E9E08];
    values[4] = v19;
    v21 = v16;
    values[5] = v16;
    values[6] = xpc_string_create(*MEMORY[0x1E69E9D20]);
    values[7] = xpc_int64_create(5000);
    v22 = v16;
    values[8] = v16;
    v23 = xpc_dictionary_create(buf, values, 9uLL);
    [v8 setExecutionCriteria:v23];

    v24 = +[_CDPeriodicScheduler sharedInstance];
    [v24 registerJob:v8];

    for (i = 8; i != -1; --i)
    {
    }
  }

  else
  {
    v8 = +[_CDPeriodicScheduler sharedInstance];
    [v8 unregisterJob:a1[4]];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146(uint64_t a1)
{
  v2 = +[_DKSync2Policy userDefaults];
  v3 = [v2 objectForKey:@"CloudSyncPoliciesLastModified"];

  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [_CDServerRequest addHTTPIfModifiedSinceToHeaders:v5 date:v3];
  v6 = [@"https://configuration.apple.com/configurations/internetservices/cloudkit/knowledgestore/com.apple.coreduet.knowledge.syncPolicies2.ios.plist" pathComponents];
  v7 = [v6 mutableCopy];

  if ([v7 count] < 3)
  {
    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_1(a1);
    }

    v8 = @"https://configuration.apple.com/configurations/internetservices/cloudkit/knowledgestore/com.apple.coreduet.knowledge.syncPolicies2.ios.plist";
  }

  else
  {
    [v7 insertObject:possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion atIndex:{objc_msgSend(v7, "count") - 1}];
    v8 = [MEMORY[0x1E696AEC0] pathWithComponents:v7];
  }

  v10 = [_CDServerRequest startDataTaskWithURI:v4 headers:v8 timeoutInterval:v5 responseHandler:&__block_literal_global_151];
  v11 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_2();
  }
}

void __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_2()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end