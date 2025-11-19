@interface DKMDCSWorkoutMonitor
@end

@implementation DKMDCSWorkoutMonitor

void __30___DKMDCSWorkoutMonitor_start__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFE3C0]];

  v7 = [v6 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x277CFE338];
    v9 = v7;
    v10 = [v8 sessionState];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = _HKWorkoutSessionStateName();
    [v11 isEqualToString:v12];
  }

  else
  {
    v13 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __30___DKMDCSWorkoutMonitor_start__block_invoke_cold_1(v6, v13);
    }
  }
}

void __30___DKMDCSWorkoutMonitor_start__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22595A000, a2, OS_LOG_TYPE_ERROR, "MDCS Workout payload is not dictionary: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end