@interface DPTokenFetcher
@end

@implementation DPTokenFetcher

void __32___DPTokenFetcher_doMaintenance__block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[_DPLog daemon];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __32___DPTokenFetcher_doMaintenance__block_invoke_cold_1(v5, v6);
    }
  }

  v7 = +[_DPTokenFetcher getTaskPeriodSeconds];
  if (v7 != [*(a1 + 32) taskPeriodSeconds])
  {
    v8 = +[_DPLog daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 32) taskPeriodSeconds];
      v13 = 134218240;
      v14 = v9;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_22622D000, v8, OS_LOG_TYPE_INFO, "Token refresh seconds changed from %lud to %lud", &v13, 0x16u);
    }

    v10 = *(a1 + 32);
    v11 = [v10 taskName];
    [v10 scheduleMaintenanceWithName:v11 database:0];

    [*(a1 + 32) setTaskPeriodSeconds:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56___DPTokenFetcher_scheduleMaintenanceWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 32) doMaintenance];
  objc_autoreleasePoolPop(v4);
}

void __32___DPTokenFetcher_doMaintenance__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch tokens with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end