@interface KSTaskScheduler
@end

@implementation KSTaskScheduler

void __34___KSTaskScheduler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = sharedInstance__sharedManager;
  sharedInstance__sharedManager = v2;
}

void __33___KSTaskScheduler_registerTask___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      *v23 = 0;
      *&v23[8] = v23;
      *&v23[16] = 0x2020000000;
      v24 = xpc_activity_set_state(v3, 4);
      v5 = KSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) name];
        v7 = *(*&v23[8] + 24);
        *buf = 136315650;
        v18 = "[_KSTaskScheduler registerTask:]_block_invoke";
        v19 = 2112;
        v20 = v6;
        v21 = 1024;
        v22 = v7;
        _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  Running activity %@, extended=%d", buf, 0x1Cu);
      }

      v8 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33___KSTaskScheduler_registerTask___block_invoke_70;
      block[3] = &unk_2797F6338;
      v14 = v3;
      v15 = *(a1 + 32);
      v16 = v23;
      dispatch_async(v8, block);

      _Block_object_dispose(v23, 8);
    }
  }

  else
  {
    v9 = KSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) name];
      *v23 = 136315394;
      *&v23[4] = "[_KSTaskScheduler registerTask:]_block_invoke";
      *&v23[12] = 2112;
      *&v23[14] = v10;
      _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  Checking-in activity %@", v23, 0x16u);
    }

    v11 = [*(a1 + 32) executionCriteria];
    xpc_activity_set_criteria(v3, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __33___KSTaskScheduler_registerTask___block_invoke_70(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  getpid();
  proc_set_cpumon_params();
  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    xpc_activity_set_state(*(a1 + 32), 3);
    v2 = KSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 40) name];
      *buf = 136315394;
      v18 = "[_KSTaskScheduler registerTask:]_block_invoke";
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  xpc activity should be deffered, deffering %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = dispatch_semaphore_create(0);
    v5 = os_transaction_create();
    v6 = objc_autoreleasePoolPush();
    v7 = [*(a1 + 40) handler];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __33___KSTaskScheduler_registerTask___block_invoke_72;
    v15[3] = &unk_2797F6310;
    v2 = v4;
    v16 = v2;
    (v7)[2](v7, v15);

    [*(a1 + 40) maxRunTime];
    v9 = dispatch_time(0, (v8 * 1000000000.0));
    if (dispatch_semaphore_wait(v2, v9))
    {
      v10 = KSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __33___KSTaskScheduler_registerTask___block_invoke_70_cold_1(v10);
      }
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      xpc_activity_set_state(*(a1 + 32), 5);
      v11 = KSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [*(a1 + 40) name];
        v13 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 136315650;
        v18 = "[_KSTaskScheduler registerTask:]_block_invoke";
        v19 = 2112;
        v20 = v12;
        v21 = 1024;
        v22 = v13;
        _os_log_impl(&dword_2557E2000, v11, OS_LOG_TYPE_INFO, "%s  Done running activity %@, extended=%d", buf, 0x1Cu);
      }
    }

    objc_autoreleasePoolPop(v6);
    getpid();
    proc_set_cpumon_defaults();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __33___KSTaskScheduler_registerTask___block_invoke_70_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[_KSTaskScheduler registerTask:]_block_invoke_2";
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  Scheduled sync task timed out", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end