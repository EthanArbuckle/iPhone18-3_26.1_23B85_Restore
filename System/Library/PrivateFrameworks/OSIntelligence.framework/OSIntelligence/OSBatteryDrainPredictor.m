@interface OSBatteryDrainPredictor
@end

@implementation OSBatteryDrainPredictor

uint64_t __64___OSBatteryDrainPredictor_drainPerDayFromDate_forNumberOfDays___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 hasBatteryPercentage];

  return v3;
}

void __64___OSBatteryDrainPredictor_drainPerDayFromDate_forNumberOfDays___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 eventBody];
  [v3 batteryPercentage];
  v5 = v4;
  v6 = [*(*(*(a1 + 32) + 8) + 40) lastBatterySoC];

  if (v5 < v6)
  {
    v7 = [*(*(*(a1 + 32) + 8) + 40) drainSoFar];
    v8 = [*(*(*(a1 + 32) + 8) + 40) lastBatterySoC];
    v9 = [v13 eventBody];
    [v9 batteryPercentage];
    [*(*(*(a1 + 32) + 8) + 40) setDrainSoFar:(v8 - v10 + v7)];
  }

  v11 = [v13 eventBody];
  [v11 batteryPercentage];
  [*(*(*(a1 + 32) + 8) + 40) setLastBatterySoC:v12];
}

void __48___OSBatteryDrainPredictor_lastBatteryLevelDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48___OSBatteryDrainPredictor_lastBatteryLevelDate__block_invoke_cold_1(v3);
    }
  }
}

uint64_t __48___OSBatteryDrainPredictor_lastBatteryLevelDate__block_invoke_58(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  [a2 timestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void __49___OSBatteryDrainPredictor_firstBatteryLevelDate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49___OSBatteryDrainPredictor_firstBatteryLevelDate__block_invoke_2_cold_1(v3);
    }
  }
}

uint64_t __49___OSBatteryDrainPredictor_firstBatteryLevelDate__block_invoke_61(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  [a2 timestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

void __49___OSBatteryDrainPredictor_lastBatteryLevelValue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49___OSBatteryDrainPredictor_lastBatteryLevelValue__block_invoke_cold_1(v3);
    }
  }
}

void __49___OSBatteryDrainPredictor_lastBatteryLevelValue__block_invoke_62(uint64_t a1, void *a2)
{
  v4 = [a2 eventBody];
  [v4 batteryPercentage];
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

id __68___OSBatteryDrainPredictor_recordIntelligentLPMThreshold_threshold___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"threshold";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v7[1] = @"batteryLevel";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void __48___OSBatteryDrainPredictor_lastBatteryLevelDate__block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_25D171000, v3, v4, "Error getting battery stream in batteryLevelDurations: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __49___OSBatteryDrainPredictor_firstBatteryLevelDate__block_invoke_2_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_25D171000, v3, v4, "Error getting battery level biome events in firstBatteryLevelDate %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __49___OSBatteryDrainPredictor_lastBatteryLevelValue__block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_25D171000, v3, v4, "Error getting battery stream in lastBatteryLevelValue: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end