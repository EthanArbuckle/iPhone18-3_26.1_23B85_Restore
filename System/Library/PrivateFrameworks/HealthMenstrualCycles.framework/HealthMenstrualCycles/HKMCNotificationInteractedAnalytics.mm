@interface HKMCNotificationInteractedAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (void)submitMetricForCategory:(id)a3 action:(id)a4;
@end

@implementation HKMCNotificationInteractedAnalytics

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
  v2 = +[HKMCNotificationInteractedMetric eventName];
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

+ (void)submitMetricForCategory:(id)a3 action:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([a1 shouldSubmit])
  {
    v8 = [[HKMCNotificationInteractedMetric alloc] initWithCategory:v6 action:v7];
    v9 = +[HKMCNotificationInteractedMetric eventName];
    v10 = [(HKMCNotificationInteractedMetric *)v8 eventPayload];
    AnalyticsSendEvent();

    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    v12 = v11;
    v13 = objc_opt_class();
    v14 = v13;
    v15 = HKSensitiveLogItem();
    v22 = 138543618;
    v23 = v13;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Submitted metric %{public}@", &v22, 0x16u);

LABEL_6:
    goto LABEL_7;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v16;
    v17 = objc_opt_class();
    v18 = MEMORY[0x277CCABB0];
    v12 = v17;
    v19 = [v18 numberWithBool:{objc_msgSend(a1, "_isMetricEnabled")}];
    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "_isAllowed")}];
    v22 = 138543874;
    v23 = v17;
    v24 = 2114;
    v25 = v19;
    v26 = 2114;
    v27 = v20;
    _os_log_impl(&dword_2518FC000, &v8->super, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", &v22, 0x20u);

    goto LABEL_6;
  }

LABEL_8:

  v21 = *MEMORY[0x277D85DE8];
}

@end