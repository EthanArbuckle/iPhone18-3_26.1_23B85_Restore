@interface CDSocialInteractionAdvisor
@end

@implementation CDSocialInteractionAdvisor

void __75___CDSocialInteractionAdvisor_rankContacts_withSeedContacts_usingSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75___CDSocialInteractionAdvisor_rankContacts_withSeedContacts_usingSettings___block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __75___CDSocialInteractionAdvisor_rankContacts_withSeedContacts_usingSettings___block_invoke_27(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  v4 = *(a3 + 4);
  if (v3 <= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 < v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void __87___CDSocialInteractionAdvisor_adviseInteractionsForDate_andSeedContacts_usingSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75___CDSocialInteractionAdvisor_rankContacts_withSeedContacts_usingSettings___block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __87___CDSocialInteractionAdvisor_adviseInteractionsForDate_andSeedContacts_usingSettings___block_invoke_36(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  v4 = *(a3 + 4);
  if (v3 < v4)
  {
    return 1;
  }

  if (v3 <= v4)
  {
    return (*a2 > *a3) - (*a2 < *a3);
  }

  return 0xFFFFFFFFLL;
}

void __66___CDSocialInteractionAdvisor_tuneUsingSettings_heartBeatHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66___CDSocialInteractionAdvisor_tuneUsingSettings_heartBeatHandler___block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __66___CDSocialInteractionAdvisor_tuneUsingSettings_heartBeatHandler___block_invoke_41(uint64_t a1, float a2, float a3, float a4, float a5, float a6, uint64_t a7, BOOL *a8)
{
  [*(a1 + 32) tuningHeartBeatLambda:? w0:? threshold:? score:? progress:?];
  v15 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *&v17 = a2;
  *&v18 = a3;
  *&v19 = a4;
  *&v20 = a5;
  *&v21 = a6;
  [v15 modelTuner:WeakRetained heartBeatWithlambda:v17 w0:v18 threshold:v19 score:v20 progress:v21];

  *a8 = CFAbsoluteTimeGetCurrent() - *(a1 + 56) > *(a1 + 64);
}

void __75___CDSocialInteractionAdvisor_rankContacts_withSeedContacts_usingSettings___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66___CDSocialInteractionAdvisor_tuneUsingSettings_heartBeatHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "While tuning: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end