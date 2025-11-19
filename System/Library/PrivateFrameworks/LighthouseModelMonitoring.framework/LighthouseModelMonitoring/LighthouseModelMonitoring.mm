void LCFModelMonitoringLoggingUtilsInit()
{
  if (LCFModelMonitoringLoggingUtilsInit_once != -1)
  {
    LCFModelMonitoringLoggingUtilsInit_cold_1();
  }
}

uint64_t __LCFModelMonitoringLoggingUtilsInit_block_invoke()
{
  v0 = os_log_create(LCFModelMonitoringLoggingSubsystem, LCFModelMonitoringLoggingCategoryShadowEvaluation);
  v1 = LCFMMLogShadowEvaluation;
  LCFMMLogShadowEvaluation = v0;

  LCFMMLogProactivePredictionRanker = os_log_create(LCFModelMonitoringLoggingSubsystem, LCFModelMonitoringLoggingCategoryProactivePredictionRanker);

  return MEMORY[0x2821F96F8]();
}

uint64_t predictionSort(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 prediction];
  v5 = [v4 featureValueForName:@"classProbability"];

  v6 = [v3 prediction];

  v7 = [v6 featureValueForName:@"classProbability"];

  v8 = [v5 dictionaryValue];
  v9 = MEMORY[0x277CBEC38];
  v10 = [v8 objectForKeyedSubscript:MEMORY[0x277CBEC38]];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v7 dictionaryValue];
  v14 = [v13 objectForKeyedSubscript:v9];
  [v14 doubleValue];
  v16 = v15;

  if (v12 < v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = v12 > v16;
  }

  return v17;
}