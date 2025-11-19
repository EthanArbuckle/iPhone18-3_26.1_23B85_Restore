@interface DADSystemAvailabilityChecker
+ (void)waitForSyncEngineSystemAvailabilityBlockingQueue:(id)a3 completionQueue:(id)a4 completionBlock:(id)a5;
@end

@implementation DADSystemAvailabilityChecker

+ (void)waitForSyncEngineSystemAvailabilityBlockingQueue:(id)a3 completionQueue:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D445F8]);
  if ([v10 isDatabaseMigrated])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __113__DADSystemAvailabilityChecker_waitForSyncEngineSystemAvailabilityBlockingQueue_completionQueue_completionBlock___block_invoke_2;
    v16[3] = &unk_278D52C98;
    v11 = &v17;
    v17 = v9;
    v12 = v9;
    dispatch_async(v8, v16);
  }

  else
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v13, v14, "DADMain waitForSystemAvailability - remMigrationContext.isDatabaseMigrated is NO. Block in background to wait for migration to finish...", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__DADSystemAvailabilityChecker_waitForSyncEngineSystemAvailabilityBlockingQueue_completionQueue_completionBlock___block_invoke;
    block[3] = &unk_278D52CC0;
    v11 = &v19;
    v19 = v10;
    v20 = v8;
    v21 = v9;
    v15 = v9;
    dispatch_async(v7, block);
  }
}

void __113__DADSystemAvailabilityChecker_waitForSyncEngineSystemAvailabilityBlockingQueue_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  DMPerformMigrationReturningAfterPlugin();
  v2 = [*(a1 + 32) isDatabaseMigrated];
  v3 = MEMORY[0x277CF3AF0];
  if ((v2 & 1) == 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(v3 + 3);
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v4, v5, "ERROR: DADMain waitForSystemAvailability - remMigrationContext.isDatabaseMigrated is still FALSE after migration plugin returned!", buf, 2u);
    }
  }

  v6 = DALoggingwithCategory();
  v7 = *(v3 + 5);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v6, v7, "DADMain waitForSystemAvailability - Done waiting for migration finishes.", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__DADSystemAvailabilityChecker_waitForSyncEngineSystemAvailabilityBlockingQueue_completionQueue_completionBlock___block_invoke_1;
  block[3] = &unk_278D52C98;
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  dispatch_async(v8, block);
}

@end