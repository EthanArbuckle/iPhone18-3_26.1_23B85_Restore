@interface DASScheduler
@end

@implementation DASScheduler

uint64_t __34___DASScheduler_currentConnection__block_invoke(uint64_t a1)
{
  [*(a1 + 32) unprotectedEstablishDaemonConnectionIfInterrupted];
  v2 = [*(a1 + 32) xpcConnection];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __32___DASScheduler_sharedScheduler__block_invoke()
{
  sharedScheduler_sharedScheduler = +[_DASScheduler scheduler];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __20___DASScheduler_log__block_invoke()
{
  log_log = os_log_create("com.apple.backgroundtasks", "framework");

  return MEMORY[0x1EEE66BB8]();
}

void __38___DASScheduler_cancelAllTaskRequests__block_invoke_378(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38___DASScheduler_cancelAllTaskRequests__block_invoke_378_cold_1();
  }
}

void __48___DASScheduler_setupXPCConnectionWithEndpoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained dasFrameworkLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __48___DASScheduler_setupXPCConnectionWithEndpoint___block_invoke_cold_1();
    }

    [v2 setInterrupted:1];
  }
}

void __42___DASScheduler_initWithListenerEndpoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [objc_opt_class() log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6E2F000, v2, OS_LOG_TYPE_DEFAULT, "Daemon came back up, requesting resubmission", buf, 2u);
    }

    v3 = [WeakRetained backgroundTaskSchedulerDelegate];

    if (v3)
    {
      v4 = dispatch_time(0, 100000000);
      v5 = [WeakRetained connectionCreationQueue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __42___DASScheduler_initWithListenerEndpoint___block_invoke_318;
      v11[3] = &unk_1E7C8F0B0;
      v6 = &v12;
      v12 = WeakRetained;
      v7 = v11;
    }

    else
    {
      v8 = arc4random_uniform(0xAu);
      v4 = dispatch_time(0, 1000000000 * v8);
      v5 = [WeakRetained connectionCreationQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42___DASScheduler_initWithListenerEndpoint___block_invoke_2;
      v9[3] = &unk_1E7C8F0B0;
      v6 = &v10;
      v10 = WeakRetained;
      v7 = v9;
    }

    dispatch_after(v4, v5, v7);
  }
}

void __40___DASScheduler_submitActivityInternal___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ((([v7 requestsApplicationLaunch] & 1) != 0 || objc_msgSend(v7, "requestsExtensionLaunch")) && objc_msgSend(v7, "isIdenticalLaunchTo:", *(a1 + 32)))
  {
    if ([*(a1 + 32) keepsPrevious])
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v8 = *(*(a1 + 40) + 104);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        *a4 = 1;
        goto LABEL_12;
      }

      v9 = *(a1 + 32);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      v10 = "Not submitting %@, identical to %@";
    }

    else
    {
      if (![*(a1 + 32) overwritesPrevious])
      {
        goto LABEL_11;
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
      v8 = *(*(a1 + 40) + 104);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v11 = *(a1 + 32);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v11;
      v10 = "Overwriting %@ with %@";
    }

    _os_log_impl(&dword_1B6E2F000, v8, OS_LOG_TYPE_DEFAULT, v10, &v13, 0x16u);
    goto LABEL_11;
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_submitActivity_inGroup_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  if (v4)
  {
    v5 = [*(a1 + 32) dasFrameworkLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46___DASScheduler_submitActivity_inGroup_error___block_invoke_cold_1(v4, a1);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }
}

void __46___DASScheduler_submitActivity_inGroup_error___block_invoke_340(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (v6 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v7 = [*(a1 + 32) dasFrameworkLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46___DASScheduler_submitActivity_inGroup_error___block_invoke_340_cold_1(v6, a1);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }
}

void __33___DASScheduler_deferActivities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __33___DASScheduler_deferActivities___block_invoke_cold_1();
  }
}

void __36___DASScheduler_submittedActivities__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) dasFrameworkLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __36___DASScheduler_submittedActivities__block_invoke_cold_1();
    }
  }
}

void __41___DASScheduler_delayedRunningActivities__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __41___DASScheduler_delayedRunningActivities__block_invoke_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __41___DASScheduler_delayedRunningActivities__block_invoke_346(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __34___DASScheduler_runningActivities__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __39___DASScheduler_runningGroupActivities__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __36___DASScheduler_forceRunActivities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __33___DASScheduler_deferActivities___block_invoke_cold_1();
  }
}

void __53___DASScheduler_runActivitiesWithUrgency_activities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __33___DASScheduler_deferActivities___block_invoke_cold_1();
  }
}

void __35___DASScheduler_currentPredictions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __35___DASScheduler_currentPredictions__block_invoke_cold_1();
  }
}

void __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke_cold_1();
  }
}

void __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke_349(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved allocations for given parameters", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke_349_cold_1();
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __27___DASScheduler_statistics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) dasFrameworkLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __27___DASScheduler_statistics__block_invoke_cold_1();
    }
  }
}

void __50___DASScheduler_resetFastPassActivities_resetAll___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50___DASScheduler_resetFastPassActivities_resetAll___block_invoke_cold_1();
  }
}

void __25___DASScheduler_inspect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __25___DASScheduler_inspect___block_invoke_cold_1();
  }
}

void __38___DASScheduler_resubmitRunningTasks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38___DASScheduler_resubmitRunningTasks___block_invoke_cold_1(v3, a1);
  }
}

void __46___DASScheduler_forceResetOfResultIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_forceResetOfResultIdentifier___block_invoke_cold_1();
  }
}

void __47___DASScheduler_queryStatusOfResultIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47___DASScheduler_queryStatusOfResultIdentifier___block_invoke_cold_1(a1);
  }
}

void __51___DASScheduler_queryDependenciesOfTaskIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51___DASScheduler_queryDependenciesOfTaskIdentifier___block_invoke_cold_1(a1);
  }
}

void __27___DASScheduler_allBudgets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) dasFrameworkLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __27___DASScheduler_allBudgets__block_invoke_cold_1();
    }
  }
}

void __42___DASScheduler_balanceForBudgetWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42___DASScheduler_balanceForBudgetWithName___block_invoke_cold_1(a1);
  }
}

void __46___DASScheduler_setBalance_forBudgetWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_setBalance_forBudgetWithName___block_invoke_cold_1(a1);
  }
}

void __47___DASScheduler_decrementBy_forBudgetWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47___DASScheduler_decrementBy_forBudgetWithName___block_invoke_cold_1(a1);
  }
}

void __47___DASScheduler_setCapacity_forBudgetWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47___DASScheduler_setCapacity_forBudgetWithName___block_invoke_cold_1(a1);
  }
}

void __25___DASScheduler_policies__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __25___DASScheduler_policies__block_invoke_cold_1();
  }
}

void __34___DASScheduler_evaluatePolicies___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34___DASScheduler_evaluatePolicies___block_invoke_cold_1(a1);
  }
}

void __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke_361(uint64_t a1, char a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    v2 = [*(a1 + 32) dasFrameworkLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke_361_cold_1();
    }
  }
}

void __42___DASScheduler_runProceedableActivities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42___DASScheduler_runProceedableActivities___block_invoke_cold_1(a1);
  }
}

void __48___DASScheduler_blockingPoliciesWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48___DASScheduler_blockingPoliciesWithParameters___block_invoke_cold_1();
  }
}

void __43___DASScheduler_activityContainsOverrides___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43___DASScheduler_activityContainsOverrides___block_invoke_cold_1();
  }
}

void __51___DASScheduler_enterTestModeWithParameters_reset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51___DASScheduler_enterTestModeWithParameters_reset___block_invoke_cold_1();
  }
}

void __51___DASScheduler_enterTestModeWithParameters_reset___block_invoke_365(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully entered test mode", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51___DASScheduler_enterTestModeWithParameters_reset___block_invoke_365_cold_1(a1);
  }
}

void __50___DASScheduler_enableTaskRegistryMode_processes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50___DASScheduler_enableTaskRegistryMode_processes___block_invoke_cold_1(a1);
  }
}

void __46___DASScheduler_submitRateLimitConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B6E2F000, v4, OS_LOG_TYPE_DEFAULT, "Error trying to submit rate limit config: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_submitRateLimitConfiguration___block_invoke_367(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully submitting with rate limit configuration: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_submitRateLimitConfiguration___block_invoke_367_cold_1(a1);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __37___DASScheduler_pauseWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B6E2F000, v4, OS_LOG_TYPE_DEFAULT, "Error trying to pause activities: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __37___DASScheduler_pauseWithParameters___block_invoke_368(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v11 = 138412290;
      v12 = v6;
      v7 = "Successfully paused with parameters: %@";
      v8 = v4;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_1B6E2F000, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else if (v5)
  {
    LOWORD(v11) = 0;
    v7 = "Error trying to pause scheduling";
    v8 = v4;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __41___DASScheduler_addPauseExceptParameter___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B6E2F000, v4, OS_LOG_TYPE_DEFAULT, "Error trying to add new except parameter: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __41___DASScheduler_addPauseExceptParameter___block_invoke_369(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v11 = 138412290;
      v12 = v6;
      v7 = "Successfully adding new except parameters: %@";
      v8 = v4;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_1B6E2F000, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else if (v5)
  {
    LOWORD(v11) = 0;
    v7 = "Error trying to add new except parameter";
    v8 = v4;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __47___DASScheduler_runActivitiesWithDelayedStart___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1B6E2F000, v2, OS_LOG_TYPE_DEFAULT, "REQUESTING START: %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) startHandler];

  if (v4)
  {
    v5 = [*(a1 + 40) startHandler];
    v5[2](v5, *(a1 + 40));
  }

  v6 = [*(a1 + 40) startHandler];
  if (v6)
  {
  }

  else if (([*(a1 + 40) requestsExtensionLaunch] & 1) == 0)
  {
    v7 = [*(a1 + 32) runQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47___DASScheduler_runActivitiesWithDelayedStart___block_invoke_370;
    v9[3] = &unk_1E7C8F1A0;
    v10 = *(a1 + 32);
    dispatch_async(v7, v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __31___DASScheduler_runActivities___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setStartDate:*(a1 + 40)];
  v2 = [*(a1 + 48) dasFrameworkLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1B6E2F000, v2, OS_LOG_TYPE_DEFAULT, "STARTING: %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) startHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) startHandler];
    v5[2](v5, *(a1 + 32));
  }

  v6 = [*(a1 + 32) startHandler];
  if (v6)
  {
  }

  else if (([*(a1 + 32) requestsExtensionLaunch] & 1) == 0)
  {
    v7 = [*(a1 + 48) runQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31___DASScheduler_runActivities___block_invoke_371;
    v10[3] = &unk_1E7C8F1A0;
    v8 = *(a1 + 32);
    v10[4] = *(a1 + 48);
    v10[5] = v8;
    dispatch_async(v7, v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __35___DASScheduler_suspendActivities___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setSuspendRequestDate:v2];

  v3 = [*(a1 + 40) dasFrameworkLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1B6E2F000, v3, OS_LOG_TYPE_DEFAULT, "SUSPENDING: %{public}@", &v9, 0xCu);
  }

  v5 = [*(a1 + 32) suspendHandler];

  if (v5)
  {
    v6 = [*(a1 + 32) suspendHandler];
    (*(v6 + 16))(v6, *(a1 + 48));
  }

  else
  {
    v6 = [*(a1 + 40) dasFrameworkLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1B6E2F000, v6, OS_LOG_TYPE_DEFAULT, "No handler for %{public}@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __58___DASScheduler_setMinimumBackgroundFetchInterval_forApp___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B6E2F000, v4, OS_LOG_TYPE_DEFAULT, "Error setting minimum fetch interval: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __42___DASScheduler_disableAppRefreshForApps___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) dasFrameworkLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42___DASScheduler_disableAppRefreshForApps___block_invoke_cold_1();
    }
  }
}

void __35___DASScheduler_submitTaskRequest___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Submit Task Request Failed: %@", &v9, 0xCu);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __49___DASScheduler_cancelTaskRequestWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Cancel Task Request Failed: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __49___DASScheduler_cancelTaskRequestWithIdentifier___block_invoke_377(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49___DASScheduler_cancelTaskRequestWithIdentifier___block_invoke_377_cold_1(a1);
  }
}

void __38___DASScheduler_cancelAllTaskRequests__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Cancel All Task Requests Failed: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __33___DASScheduler_connectToDaemon___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B6E2F000, v2, OS_LOG_TYPE_DEFAULT, "Daemon connection established with BGTaskScheduler client", v3, 2u);
  }
}

void __49___DASScheduler_completeTaskRequest_withSuccess___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Complete Task Request Failed: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __49___DASScheduler_completeTaskRequest_withSuccess___block_invoke_385(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49___DASScheduler_completeTaskRequest_withSuccess___block_invoke_385_cold_1(a1);
  }
}

void __35___DASScheduler_updateOngoingTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __35___DASScheduler_updateOngoingTask___block_invoke_cold_1();
  }
}

void __35___DASScheduler_updateOngoingTask___block_invoke_386(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __35___DASScheduler_updateOngoingTask___block_invoke_386_cold_1(a1);
  }
}

void __47___DASScheduler_updateProgress_forOngoingTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __47___DASScheduler_updateProgress_forOngoingTask___block_invoke_cold_1();
  }
}

uint64_t __47___DASScheduler_updateProgress_forOngoingTask___block_invoke_387(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __47___DASScheduler_updateProgress_forOngoingTask___block_invoke_387_cold_1(a1);
  }

  return [*(a1 + 48) setProgress:*(a1 + 40)];
}

void __55___DASScheduler_continuedProcessingDeviceCapabilities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __47___DASScheduler_updateProgress_forOngoingTask___block_invoke_cold_1();
  }
}

void __65___DASScheduler_acknowledgeSystemTaskLaunchWithIdentifier_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __65___DASScheduler_acknowledgeSystemTaskLaunchWithIdentifier_error___block_invoke_cold_1(a1);
  }

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  *(*(a1[7] + 8) + 24) = 0;
}

void __65___DASScheduler_acknowledgeSystemTaskLaunchWithIdentifier_error___block_invoke_390(void *a1, char a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  *(*(a1[7] + 8) + 24) = a2;
  v7 = a1[4];
  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[5];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1[7] + 8) + 24)];
    v12 = *(*(a1[6] + 8) + 40);
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_debug_impl(&dword_1B6E2F000, v8, OS_LOG_TYPE_DEBUG, "acknowledgeSystemTaskLaunch: %@ completed with allowedToRun: %@ (error: %@)", &v13, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke_cold_1(a1);
  }
}

void __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke_391(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke_391_cold_1(a1);
  }
}

void __96___DASScheduler_handleClientLedSystemTaskExpirationWithIdentifier_retryAfter_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __96___DASScheduler_handleClientLedSystemTaskExpirationWithIdentifier_retryAfter_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __80___DASScheduler_handleClientFailedtoExpireTaskWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __80___DASScheduler_handleClientFailedtoExpireTaskWithIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __78___DASScheduler_submitTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __78___DASScheduler_submitTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __78___DASScheduler_updateTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __78___DASScheduler_updateTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke_cold_1(a1);
  }
}

void __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke_392(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke_392_cold_1(a1);
  }
}

void __70___DASScheduler_unregisterSystemTaskWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __70___DASScheduler_unregisterSystemTaskWithIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __70___DASScheduler_resumeTaskSchedulingWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __70___DASScheduler_resumeTaskSchedulingWithIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __82___DASScheduler_reportSystemTaskWithIdentifier_consumedResults_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __82___DASScheduler_reportSystemTaskWithIdentifier_consumedResults_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __82___DASScheduler_reportSystemTaskWithIdentifier_producedResults_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __82___DASScheduler_reportSystemTaskWithIdentifier_producedResults_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __82___DASScheduler_resetResultsForIdentifier_byTaskWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __82___DASScheduler_resetResultsForIdentifier_byTaskWithIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 56) + 16))();
}

void __82___DASScheduler_resetResultsForIdentifier_byTaskWithIdentifier_completionHandler___block_invoke_393(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = @"succeeded";
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed with error: %@", v5];
  }

  v7 = *(a1 + 32);
  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __82___DASScheduler_resetResultsForIdentifier_byTaskWithIdentifier_completionHandler___block_invoke_393_cold_1(a1);
  }

  (*(*(a1 + 56) + 16))();
}

void __100___DASScheduler_reportTaskWorkloadProgress_target_completed_category_subCategory_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __100___DASScheduler_reportTaskWorkloadProgress_target_completed_category_subCategory_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke_cold_1();
  }

  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  *(*(a1[6] + 8) + 24) = 0;
}

void __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke_400(void *a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = a1[4];
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke_400_cold_1();
    }
  }

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  *(*(a1[6] + 8) + 24) = a2;
}

void __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke_cold_1();
  }

  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  *(*(a1[6] + 8) + 24) = 0;
}

void __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke_401(void *a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = a1[4];
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke_401_cold_1();
    }
  }

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  *(*(a1[6] + 8) + 24) = a2;
}

void __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke_cold_1();
  }

  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  *(*(a1[6] + 8) + 24) = 0;
}

void __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke_402(void *a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = a1[4];
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke_402_cold_1();
    }
  }

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  *(*(a1[6] + 8) + 24) = a2;
}

void __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke_cold_1();
  }

  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  *(*(a1[6] + 8) + 24) = 0;
}

void __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke_403(void *a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = a1[4];
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke_403_cold_1();
    }
  }

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  *(*(a1[6] + 8) + 24) = a2;
}

void __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke_cold_1();
  }

  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  *(*(a1[6] + 8) + 24) = 0;
}

void __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke_404(void *a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = a1[4];
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke_404_cold_1();
    }
  }

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  *(*(a1[6] + 8) + 24) = a2;
}

void __36___DASScheduler_prewarmApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __36___DASScheduler_prewarmApplication___block_invoke_cold_1(a1);
  }
}

void __43___DASScheduler_prewarmSuspendWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43___DASScheduler_prewarmSuspendWithHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke_cold_1(a1);
  }
}

void __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke_405(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully delete limit for %@: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke_405_cold_1(a1);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v8 = *MEMORY[0x1E69E9840];
}

void __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke_cold_1(a1);
  }
}

void __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke_406(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully set limit for %@: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke_406_cold_1(a1);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v8 = *MEMORY[0x1E69E9840];
}

void __47___DASScheduler_getLimiterResponseForActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47___DASScheduler_getLimiterResponseForActivity___block_invoke_cold_1(a1);
  }
}

void __47___DASScheduler_getLimiterResponseForActivity___block_invoke_407(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved limit for %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47___DASScheduler_getLimiterResponseForActivity___block_invoke_407_cold_1(a1);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __33___DASScheduler_getRuntimeLimit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __33___DASScheduler_getRuntimeLimit___block_invoke_cold_1(a1);
  }
}

void __33___DASScheduler_getRuntimeLimit___block_invoke_408(uint64_t a1, double a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (a2 == -1.0)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __33___DASScheduler_getRuntimeLimit___block_invoke_408_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved runtime limit for %@", &v8, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v7 = *MEMORY[0x1E69E9840];
}

void __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke_cold_1(a1);
  }
}

void __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke_409(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved elapsed runtime for %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke_409_cold_1(a1);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke_cold_1(a1);
  }
}

void __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke_410(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved estimated runtime for %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke_410_cold_1(a1);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __40___DASScheduler_getConditionsPenalties___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40___DASScheduler_getConditionsPenalties___block_invoke_cold_1(a1);
  }
}

void __40___DASScheduler_getConditionsPenalties___block_invoke_411(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved conditions penalty for %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40___DASScheduler_getConditionsPenalties___block_invoke_411_cold_1(a1);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __40___DASScheduler_getContentionPenalties___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40___DASScheduler_getContentionPenalties___block_invoke_cold_1(a1);
  }
}

void __40___DASScheduler_getContentionPenalties___block_invoke_412(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved contention penalty for %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40___DASScheduler_getContentionPenalties___block_invoke_412_cold_1(a1);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke_cold_1(a1);
  }
}

void __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke_413(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved feature availability timeline for %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke_413_cold_1(a1);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke_cold_1(a1);
  }
}

void __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke_414(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved activity availability timeline for %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke_414_cold_1(a1);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke_cold_1(a1);
  }
}

void __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke_415(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved eligibility timelines.", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke_415_cold_1();
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_cold_1();
  }
}

void __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_416(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved device condition timeline", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_416_cold_1();
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __57___DASScheduler_getSchedulerEfficiencyMetrics_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_cold_1();
  }
}

void __57___DASScheduler_getSchedulerEfficiencyMetrics_bgsqlData___block_invoke_417(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved device condition timeline", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_416_cold_1();
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __75___DASScheduler_getOvernightIntensiveSchedulerEfficiencyMetrics_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_cold_1();
  }
}

void __75___DASScheduler_getOvernightIntensiveSchedulerEfficiencyMetrics_bgsqlData___block_invoke_418(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved device condition timeline", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_416_cold_1();
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_cold_1();
  }
}

void __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_419(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_419_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_419_cold_2();
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __42___DASScheduler_getBuddyEvents_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_cold_1();
  }
}

void __42___DASScheduler_getBuddyEvents_bgsqlData___block_invoke_420(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_419_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_419_cold_2();
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke_cold_1(a1);
  }
}

void __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke_421(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke_421_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke_421_cold_2(a1);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __46___DASScheduler_getSortedCandidateActivities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_getSortedCandidateActivities___block_invoke_cold_1(a1);
  }
}

void __46___DASScheduler_getSortedCandidateActivities___block_invoke_422(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46___DASScheduler_getSortedCandidateActivities___block_invoke_422_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_getSortedCandidateActivities___block_invoke_422_cold_2(a1);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __56___DASScheduler_triggerScoreEvaluationAndRunActivities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dasFrameworkLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_getSortedCandidateActivities___block_invoke_cold_1(a1);
  }
}

void __56___DASScheduler_triggerScoreEvaluationAndRunActivities___block_invoke_423(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) dasFrameworkLog];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46___DASScheduler_getSortedCandidateActivities___block_invoke_422_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___DASScheduler_getSortedCandidateActivities___block_invoke_422_cold_2(a1);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
}

void __48___DASScheduler_setupXPCConnectionWithEndpoint___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46___DASScheduler_submitActivity_inGroup_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_submitActivity_inGroup_error___block_invoke_340_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __33___DASScheduler_deferActivities___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __36___DASScheduler_submittedActivities__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error obtaining submitted activities from scheduler:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41___DASScheduler_delayedRunningActivities__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error obtaining delayed running activities remote object proxy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __35___DASScheduler_currentPredictions__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error obtaining predictions from scheduler: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error obtaining allocations from scheduler: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke_349_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __27___DASScheduler_statistics__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error obtaining statistics: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50___DASScheduler_resetFastPassActivities_resetAll___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "resetFastPassActivities failed due to a connection error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __25___DASScheduler_inspect___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "inspect failed due to a connection Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __38___DASScheduler_resubmitRunningTasks___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_forceResetOfResultIdentifier___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error reseting results on scheduler: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47___DASScheduler_queryStatusOfResultIdentifier___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __51___DASScheduler_queryDependenciesOfTaskIdentifier___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __27___DASScheduler_allBudgets__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error obtaining all budgets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42___DASScheduler_balanceForBudgetWithName___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_setBalance_forBudgetWithName___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __47___DASScheduler_decrementBy_forBudgetWithName___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __47___DASScheduler_setCapacity_forBudgetWithName___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __25___DASScheduler_policies__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error obtaining all scheduler policies: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __34___DASScheduler_evaluatePolicies___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error evaluating all activities: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke_361_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42___DASScheduler_runProceedableActivities___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __48___DASScheduler_blockingPoliciesWithParameters___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error obtaining blocked policies: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43___DASScheduler_activityContainsOverrides___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error obtaining overrides: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51___DASScheduler_enterTestModeWithParameters_reset___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error entering test mode: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51___DASScheduler_enterTestModeWithParameters_reset___block_invoke_365_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error entering test mode with parameters: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __50___DASScheduler_enableTaskRegistryMode_processes___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_submitRateLimitConfiguration___block_invoke_367_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to submit rate limit: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __42___DASScheduler_disableAppRefreshForApps___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error disabling refresh: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49___DASScheduler_cancelTaskRequestWithIdentifier___block_invoke_377_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __38___DASScheduler_cancelAllTaskRequests__block_invoke_378_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49___DASScheduler_completeTaskRequest_withSuccess___block_invoke_385_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __35___DASScheduler_updateOngoingTask___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Update Ongoing Task Failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __35___DASScheduler_updateOngoingTask___block_invoke_386_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __47___DASScheduler_updateProgress_forOngoingTask___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Update Progress Failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47___DASScheduler_updateProgress_forOngoingTask___block_invoke_387_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __65___DASScheduler_acknowledgeSystemTaskLaunchWithIdentifier_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke_391_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __96___DASScheduler_handleClientLedSystemTaskExpirationWithIdentifier_retryAfter_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __80___DASScheduler_handleClientFailedtoExpireTaskWithIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __78___DASScheduler_submitTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __78___DASScheduler_updateTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke_392_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __70___DASScheduler_unregisterSystemTaskWithIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __70___DASScheduler_resumeTaskSchedulingWithIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __82___DASScheduler_reportSystemTaskWithIdentifier_consumedResults_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __82___DASScheduler_reportSystemTaskWithIdentifier_producedResults_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __82___DASScheduler_resetResultsForIdentifier_byTaskWithIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __82___DASScheduler_resetResultsForIdentifier_byTaskWithIdentifier_completionHandler___block_invoke_393_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_3();
  v7 = v1;
  v8 = v2;
  v9 = v3;
  _os_log_debug_impl(&dword_1B6E2F000, v4, OS_LOG_TYPE_DEBUG, "resetResultsForIdentifier:byTaskWithIdentifier [resultIdentifier: %@, taskIdentifier: %@] %@", v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __100___DASScheduler_reportTaskWorkloadProgress_target_completed_category_subCategory_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportTaskWorkloadProgress Failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportFeatureCheckpoint Failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke_400_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportFeatureCheckpoint Failed: Server error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportSystemWorkload Failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke_401_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportSystemWorkload Failed: Server error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportCustomCheckpoint Failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke_402_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportCustomCheckpoint Failed: Server error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportThroughputMetricsForIdentifier Failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke_403_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportThroughputMetricsForIdentifier Failed: Server error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportProgressMetricsForIdentifier Failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke_404_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "reportProgressMetricsForIdentifier Failed: Server error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __36___DASScheduler_prewarmApplication___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __43___DASScheduler_prewarmSuspendWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error terminating prewarm: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke_405_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke_406_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __47___DASScheduler_getLimiterResponseForActivity___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __47___DASScheduler_getLimiterResponseForActivity___block_invoke_407_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get limit for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __33___DASScheduler_getRuntimeLimit___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __33___DASScheduler_getRuntimeLimit___block_invoke_408_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get runtime limit for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke_409_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get elapsed runtime for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke_410_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get estimated runtime for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __40___DASScheduler_getConditionsPenalties___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __40___DASScheduler_getConditionsPenalties___block_invoke_411_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get conditions penalty for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __40___DASScheduler_getContentionPenalties___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __40___DASScheduler_getContentionPenalties___block_invoke_412_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get contention penalty for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke_413_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get feature availability timeline for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke_414_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get activity availability timeline for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke_415_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error getting device condition timeline: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_416_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v0, v1, "Error getting build installation timeline: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_419_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_419_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke_421_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke_421_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get estimated MAD completion times for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_getSortedCandidateActivities___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_getSortedCandidateActivities___block_invoke_422_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __46___DASScheduler_getSortedCandidateActivities___block_invoke_422_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_1B6E2F000, v1, v2, "Error trying to get sorted candidate activities for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end