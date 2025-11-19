@interface HKMCScheduledAnalysisAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (void)submitMetricWithDateComponents:(id)a3;
@end

@implementation HKMCScheduledAnalysisAnalytics

+ (BOOL)shouldSubmit
{
  v3 = [a1 _isMetricEnabled];
  if (v3)
  {

    LOBYTE(v3) = [a1 _isAllowed];
  }

  return v3;
}

+ (BOOL)_isMetricEnabled
{
  v2 = +[HKMCScheduledAnalysisMetric eventName];
  if (AnalyticsIsEventUsed())
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
    v3 = [v4 hkmc_analyticsDebugModeEnabled];
  }

  return v3;
}

+ (void)submitMetricWithDateComponents:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 shouldSubmit])
  {
    v5 = (ceil([v4 minute] / 15.0) * 15.0);
    v6 = [v4 hour];
    if (v5 == 60)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6;
    }

    if (v5 == 60)
    {
      v5 = 0;
    }

    if (v7 == 24)
    {
      v8 = 0;
    }

    else
    {
      v8 = 100 * v7;
    }

    v9 = [[HKMCScheduledAnalysisMetric alloc] initWithTimeSuccessful:v8 + v5];
    v10 = +[HKMCScheduledAnalysisMetric eventName];
    v11 = [(HKMCScheduledAnalysisMetric *)v9 eventPayload];
    AnalyticsSendEvent();

    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = objc_opt_class();
      v15 = v14;
      v16 = HKSensitiveLogItem();
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&dword_2518FC000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Submitted metric %{public}@", &v20, 0x16u);
    }

    goto LABEL_14;
  }

  _HKInitializeLogging();
  v17 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v17;
    v20 = 138543362;
    v21 = objc_opt_class();
    v18 = v21;
    _os_log_impl(&dword_2518FC000, &v9->super, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping submitting metric.", &v20, 0xCu);

LABEL_14:
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end