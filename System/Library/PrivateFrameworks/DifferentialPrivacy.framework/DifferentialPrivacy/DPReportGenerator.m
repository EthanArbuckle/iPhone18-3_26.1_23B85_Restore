@interface DPReportGenerator
@end

@implementation DPReportGenerator

void __67___DPReportGenerator_queryRecordCountForKey_withPredicate_storage___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  else
  {
    v8 = +[_DPLog daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __67___DPReportGenerator_queryRecordCountForKey_withPredicate_storage___block_invoke_cold_1(a1);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __49___DPReportGenerator_queryRecordsForKey_storage___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v10 = +[_DPLog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __49___DPReportGenerator_queryRecordsForKey_storage___block_invoke_cold_1(a1);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __50___DPReportGenerator_queryKeysForPattern_storage___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v10 = +[_DPLog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __49___DPReportGenerator_queryRecordsForKey_storage___block_invoke_cold_1(a1);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __54___DPReportGenerator_randomizeKeys_andSortByPriority___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [_DPKeyProperties keyPropertiesForName:v4];
  v8 = [_DPKeyProperties keyPropertiesForName:v5];
  v9 = [v7 submissionPriority];
  v10 = [v8 submissionPriority];
  v11 = -1;
  if (v9 >= v10)
  {
    v11 = 1;
  }

  if (v9 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  objc_autoreleasePoolPop(v6);
  return v12;
}

void __59___DPReportGenerator_scheduleMaintenanceWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) generateReportUsing:*(a1 + 40)];
  objc_autoreleasePoolPop(v4);
}

void __67___DPReportGenerator_queryRecordCountForKey_withPredicate_storage___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 48));
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __49___DPReportGenerator_queryRecordsForKey_storage___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 48));
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end