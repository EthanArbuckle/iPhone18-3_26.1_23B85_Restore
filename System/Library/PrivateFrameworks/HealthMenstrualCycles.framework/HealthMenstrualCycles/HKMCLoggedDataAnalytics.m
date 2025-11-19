@interface HKMCLoggedDataAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (void)submitMetricForMethod:(id)a3 loggedDayIndex:(int64_t)a4 currentDayIndex:(int64_t)a5;
@end

@implementation HKMCLoggedDataAnalytics

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
  v2 = +[HKMCLoggedDataMetric eventName];
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

+ (void)submitMetricForMethod:(id)a3 loggedDayIndex:(int64_t)a4 currentDayIndex:(int64_t)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([a1 shouldSubmit])
  {
    v9 = [[HKMCLoggedDataMetric alloc] initWithMethod:v8];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a5 - a4];
    [(HKMCLoggedDataMetric *)v9 setDayIndexLoggingOffset:v10];

    v11 = +[HKMCLoggedDataMetric eventName];
    v12 = [(HKMCLoggedDataMetric *)v9 eventPayload];
    AnalyticsSendEvent();

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2E8];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    v14 = v13;
    v15 = objc_opt_class();
    v16 = v15;
    v17 = HKSensitiveLogItem();
    v24 = 138543618;
    v25 = v15;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&dword_2518FC000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Submitted metric %{public}@", &v24, 0x16u);

LABEL_6:
    goto LABEL_7;
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v18;
    v19 = objc_opt_class();
    v20 = MEMORY[0x277CCABB0];
    v14 = v19;
    v21 = [v20 numberWithBool:{objc_msgSend(a1, "_isMetricEnabled")}];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "_isAllowed")}];
    v24 = 138543874;
    v25 = v19;
    v26 = 2114;
    v27 = v21;
    v28 = 2114;
    v29 = v22;
    _os_log_impl(&dword_2518FC000, &v9->super, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", &v24, 0x20u);

    goto LABEL_6;
  }

LABEL_8:

  v23 = *MEMORY[0x277D85DE8];
}

@end