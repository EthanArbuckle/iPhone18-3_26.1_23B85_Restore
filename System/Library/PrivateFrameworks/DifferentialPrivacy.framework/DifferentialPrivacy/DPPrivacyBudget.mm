@interface DPPrivacyBudget
@end

@implementation DPPrivacyBudget

uint64_t __30___DPPrivacyBudget_initialize__block_invoke()
{
  gAllBudgets = [MEMORY[0x277CBEC10] mutableCopy];

  return MEMORY[0x2821F96F8]();
}

void __46___DPPrivacyBudget_fetchBudgetRecordFrom_key___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v10 = +[_DPLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __46___DPPrivacyBudget_fetchBudgetRecordFrom_key___block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __44___DPPrivacyBudget_fetchBudgetKeyNamesFrom___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v10 = +[_DPLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __46___DPPrivacyBudget_fetchBudgetRecordFrom_key___block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __87___DPPrivacyBudget_createDatabaseRecordIfMissingIn_key_balance_cohortAggregateBalance___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = +[_DPLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __87___DPPrivacyBudget_createDatabaseRecordIfMissingIn_key_balance_cohortAggregateBalance___block_invoke_cold_1();
    }
  }
}

void __46___DPPrivacyBudget_fetchBudgetRecordFrom_key___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(v0 + 48));
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3(&dword_22622D000, v2, v3, "%@: record fetch failed with %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __87___DPPrivacyBudget_createDatabaseRecordIfMissingIn_key_balance_cohortAggregateBalance___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(v0 + 32));
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3(&dword_22622D000, v2, v3, "%@: record save failed with %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end