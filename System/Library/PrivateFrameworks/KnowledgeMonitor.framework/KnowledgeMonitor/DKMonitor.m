@interface DKMonitor
@end

@implementation DKMonitor

void __23___DKMonitor_saveState__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 8))
  {
    v2 = [MEMORY[0x277CFE108] sharedInstance];
    v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(*v1 + 8) requiringSecureCoding:1 error:0];
    v4 = *v1;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v2 setData:v3 forKey:v6];

    v7 = [MEMORY[0x277CFE0C8] instrumentationChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __23___DKMonitor_saveState__block_invoke_cold_1(v1, v7);
    }
  }
}

void __23___DKMonitor_loadState__block_invoke(uint64_t a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CFE108] sharedInstance];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 dataForKey:v6];

  if (v7)
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [*(a1 + 32) classesForSecureStateDecoding];
    v16 = [v14 setByAddingObjectsFromSet:v15];

    v31 = 0;
    v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v16 fromData:v7 error:&v31];
    v18 = v31;
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v17;

    if (v18)
    {
      v21 = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __23___DKMonitor_loadState__block_invoke_cold_1(v18, v21);
      }
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v22 = MEMORY[0x277CBEAC0];
    v23 = [MEMORY[0x277CBEB38] dictionary];
    v33[0] = v23;
    v24 = [MEMORY[0x277CBEB38] dictionary];
    v33[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v32[0] = @"kInstantState";
    v32[1] = @"kHistoricalState";
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v27 = [v22 dictionaryWithObjects:v25 forKeys:v26];
    v28 = *(*(a1 + 40) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;
  }

  objc_autoreleasePoolPop(v2);
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __43___DKMonitor_instantMonitorNeedsActivation__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _instantMonitorNeedsActivation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __45___DKMonitor_instantMonitorNeedsDeactivation__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _instantMonitorNeedsDeactivation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __51___DKMonitor_setCurrentEvent_inferHistoricalState___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a1 + 32;
  v5 = *(v3 + 136);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __51___DKMonitor_setCurrentEvent_inferHistoricalState___block_invoke_2;
  v26 = &unk_27856F0B0;
  v27 = v3;
  v28 = v2;
  dispatch_sync(v5, &v23);
  if (!*(v4 + 8))
  {
    [*(*v4 + 72) removeObjectForKey:{@"kCurrentEvent", v23, v24, v25, v26, v27}];
LABEL_19:
    v19 = [*v4 instantHandler];

    if (v19)
    {
      v20 = [*v4 instantHandler];
      v21 = [*v4 currentEvent];
      (v20)[2](v20, v21);
    }

    goto LABEL_21;
  }

  if (*(a1 + 48) != 1)
  {
    v14 = 1;
    goto LABEL_16;
  }

  v6 = [*(*v4 + 72) objectForKeyedSubscript:{@"kCurrentEvent", v23, v24, v25, v26, v27}];
  if (!v6)
  {
    v12 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __51___DKMonitor_setCurrentEvent_inferHistoricalState___block_invoke_cold_1(v4);
    }

    goto LABEL_12;
  }

  v7 = *(a1 + 40);
  if (!(*(*(*(a1 + 32) + 88) + 16))())
  {
    v14 = 0;
    goto LABEL_15;
  }

  v8 = [*v4 filter];
  v9 = (v8)[2](v8, v6);

  if ((v9 & 1) == 0)
  {
    v10 = [*(a1 + 40) startDate];
    [v6 setEndDate:v10];

    v11 = [*(a1 + 32) historicalHandler];

    if (v11)
    {
      v12 = [*v4 historicalHandler];
      v29[0] = v6;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      (*(v12 + 16))(v12, v13);

LABEL_12:
    }
  }

  v14 = 1;
LABEL_15:
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = *(*v4 + 56);
  *(*v4 + 56) = v15;

LABEL_16:
  v17 = *v4;
  v18 = [objc_opt_class() shouldMergeUnchangedEvents];
  if ((v14 & 1) != 0 || !v18)
  {
    [*(*v4 + 72) setObject:*(*v4 + 64) forKeyedSubscript:{@"kCurrentEvent", v23, v24, v25, v26, v27}];
    if (v14)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  [*v4 saveState];

  v22 = *MEMORY[0x277D85DE8];
}

void __35___DKMonitor_systemClockDidChange___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = mach_continuous_time();
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [*(a1 + 32) machTimeAtLastClockChange];
  v5 = (v2 - v4) * systemClockDidChange__timebaseInfo / *algn_28136A6F4 / 0x3B9ACA00;
  v6 = [*(a1 + 32) dateAtLastClockChange];
  [v3 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
  [v9 doubleValue];
  v11 = v8 - v10;

  v12 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&dword_22595A000, v12, OS_LOG_TYPE_INFO, "Time changed by %@ seconds.", &v16, 0xCu);
  }

  if (fabs(v11) > 60.0)
  {
    v14 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __35___DKMonitor_systemClockDidChange___block_invoke_2_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  [*(a1 + 32) setMachTimeAtLastClockChange:v2];
  [*(a1 + 32) setDateAtLastClockChange:v3];

  v15 = *MEMORY[0x277D85DE8];
}

void __23___DKMonitor_loadState__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22595A000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving state: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __23___DKMonitor_saveState__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6 = 136446466;
  v7 = "[_DKMonitor saveState]_block_invoke";
  v8 = 2114;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "%{public}s did _CDSharedMemoryKeyValueStore for %{public}@.", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __51___DKMonitor_setCurrentEvent_inferHistoricalState___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = [objc_opt_class() eventStream];
  OUTLINED_FUNCTION_0_1(&dword_22595A000, v3, v4, "Requested the previousEvent from instantState in setCurrentEvent, but received nil in stream: %@.", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __35___DKMonitor_systemClockDidChange___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  OUTLINED_FUNCTION_0_1(&dword_22595A000, v1, v2, "Time changed by %@ seconds. Invalidating current event states.", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end