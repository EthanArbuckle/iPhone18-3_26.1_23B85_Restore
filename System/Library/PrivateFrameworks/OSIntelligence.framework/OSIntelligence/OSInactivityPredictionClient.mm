@interface OSInactivityPredictionClient
@end

@implementation OSInactivityPredictionClient

void __47___OSInactivityPredictionClient_initConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = gInactivityPredictionClientLog;
    if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
    {
      __47___OSInactivityPredictionClient_initConnection__block_invoke_cold_1(v2);
    }
  }
}

void __47___OSInactivityPredictionClient_initConnection__block_invoke_85(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleInterruption];
    WeakRetained = v2;
  }
}

void __52___OSInactivityPredictionClient_recommendedWaitTime__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __52___OSInactivityPredictionClient_recommendedWaitTime__block_invoke_cold_1();
  }
}

void __49___OSInactivityPredictionClient_modelDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __49___OSInactivityPredictionClient_modelDescription__block_invoke_cold_1();
  }
}

void __46___OSInactivityPredictionClient_modelMetadata__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __46___OSInactivityPredictionClient_modelMetadata__block_invoke_cold_1();
  }
}

void __59___OSInactivityPredictionClient_hasEnoughInactivityHistory__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __55___OSLastLockPredictionClient_hasEnoughActivityHistory__block_invoke_cold_1();
  }
}

void __59___OSInactivityPredictionClient_inactivityHistoryDiagnosis__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __59___OSInactivityPredictionClient_inactivityHistoryDiagnosis__block_invoke_cold_1();
  }
}

void __53___OSInactivityPredictionClient_deviceUsageDiagnosis__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __51___OSLastLockPredictionClient_deviceUsageDiagnosis__block_invoke_cold_1();
  }
}

void __85___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __85___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withError___block_invoke_cold_1(a1);
  }
}

void __85___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withError___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __114___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withError___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __114___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withError___block_invoke_cold_1(a1);
  }
}

void __114___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withError___block_invoke_112(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __48___OSInactivityPredictionClient_fixModelOutput___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __46___OSLastLockPredictionClient_fixModelOutput___block_invoke_cold_1();
  }
}

void __49___OSInactivityPredictionClient_unfixModelOutput__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __47___OSLastLockPredictionClient_unfixModelOutput__block_invoke_cold_1();
  }
}

void __63___OSInactivityPredictionClient_overrideRecommendedWaitTimeTo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __63___OSInactivityPredictionClient_overrideRecommendedWaitTimeTo___block_invoke_cold_1();
  }
}

void __59___OSInactivityPredictionClient_restoreRecommendedWaitTime__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __59___OSInactivityPredictionClient_restoreRecommendedWaitTime__block_invoke_cold_1();
  }
}

void __55___OSInactivityPredictionClient_restoreInactivityModel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __55___OSInactivityPredictionClient_restoreInactivityModel__block_invoke_cold_1();
  }
}

void __45___OSInactivityPredictionClient_backedUpData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __45___OSInactivityPredictionClient_backedUpData__block_invoke_cold_1();
  }
}

void __64___OSInactivityPredictionClient_recommendedWaitTimeWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __64___OSInactivityPredictionClient_recommendedWaitTimeWithHandler___block_invoke_cold_1();
  }
}

void __61___OSInactivityPredictionClient_modelDescriptionWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __61___OSInactivityPredictionClient_modelDescriptionWithHandler___block_invoke_cold_1();
  }
}

void __58___OSInactivityPredictionClient_modelMetadataWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __58___OSInactivityPredictionClient_modelMetadataWithHandler___block_invoke_cold_1();
  }
}

void __71___OSInactivityPredictionClient_inactivityHistoryDiagnosisWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __71___OSInactivityPredictionClient_inactivityHistoryDiagnosisWithHandler___block_invoke_cold_1();
  }
}

void __71___OSInactivityPredictionClient_hasEnoughInactivityHistoryWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __71___OSInactivityPredictionClient_hasEnoughInactivityHistoryWithHandler___block_invoke_cold_1();
  }
}

void __65___OSInactivityPredictionClient_deviceUsageDiagnosisWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __65___OSInactivityPredictionClient_deviceUsageDiagnosisWithHandler___block_invoke_cold_1();
  }
}

void __87___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __87___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withHandler___block_invoke_cold_1(a1);
  }
}

void __116___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __116___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withHandler___block_invoke_cold_1(a1);
  }
}

void __60___OSInactivityPredictionClient_fixModelOutput_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __60___OSInactivityPredictionClient_fixModelOutput_withHandler___block_invoke_cold_1();
  }
}

void __61___OSInactivityPredictionClient_unfixModelOutputWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __61___OSInactivityPredictionClient_unfixModelOutputWithHandler___block_invoke_cold_1();
  }
}

void __75___OSInactivityPredictionClient_overrideRecommendedWaitTimeTo_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __75___OSInactivityPredictionClient_overrideRecommendedWaitTimeTo_withHandler___block_invoke_cold_1();
  }
}

void __71___OSInactivityPredictionClient_restoreRecommendedWaitTimeWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __71___OSInactivityPredictionClient_restoreRecommendedWaitTimeWithHandler___block_invoke_cold_1();
  }
}

void __67___OSInactivityPredictionClient_restoreInactivityModelWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __67___OSInactivityPredictionClient_restoreInactivityModelWithHandler___block_invoke_cold_1();
  }
}

void __57___OSInactivityPredictionClient_backedUpDataWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gInactivityPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __57___OSInactivityPredictionClient_backedUpDataWithHandler___block_invoke_cold_1();
  }
}

void __52___OSInactivityPredictionClient_recommendedWaitTime__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in getting the recommended wait time since initial inactivity synchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49___OSInactivityPredictionClient_modelDescription__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in getting inactivity predictor description synchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46___OSInactivityPredictionClient_modelMetadata__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in getting inactivity predictor metadata synchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59___OSInactivityPredictionClient_inactivityHistoryDiagnosis__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in diagnosing user inactivity history synchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withError___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __114___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withError___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

void __63___OSInactivityPredictionClient_overrideRecommendedWaitTimeTo___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in overriding the recommended wait time synchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59___OSInactivityPredictionClient_restoreRecommendedWaitTime__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in restoring the recommended wait time synchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55___OSInactivityPredictionClient_restoreInactivityModel__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in restoring the appropriate inactivity predictor variant synchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45___OSInactivityPredictionClient_backedUpData__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in obtaining backup data synchronously: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64___OSInactivityPredictionClient_recommendedWaitTimeWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in getting the recommended wait time since initial inactivity: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61___OSInactivityPredictionClient_modelDescriptionWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in getting inactivity predictor description: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58___OSInactivityPredictionClient_modelMetadataWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in getting inactivity predictor metadata: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71___OSInactivityPredictionClient_inactivityHistoryDiagnosisWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in diagnosing user inactivity history: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71___OSInactivityPredictionClient_hasEnoughInactivityHistoryWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in checking user history sufficiency: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65___OSInactivityPredictionClient_deviceUsageDiagnosisWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in diagnosing the device usage frequency: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87___OSInactivityPredictionClient_longInactivityPredictionResultWithOptions_withHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __116___OSInactivityPredictionClient_longInactivityPredictionResultAtDate_withTimeSinceInactive_withOptions_withHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

void __60___OSInactivityPredictionClient_fixModelOutput_withHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in fixing model output: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61___OSInactivityPredictionClient_unfixModelOutputWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in unfixing model output: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75___OSInactivityPredictionClient_overrideRecommendedWaitTimeTo_withHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in overriding the recommended wait time: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71___OSInactivityPredictionClient_restoreRecommendedWaitTimeWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in restoring the recommended wait time: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67___OSInactivityPredictionClient_restoreInactivityModelWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in restoring the appropriate inactivity predictor variant: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57___OSInactivityPredictionClient_backedUpDataWithHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_25D171000, v0, v1, "Error in obtaining backup data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end