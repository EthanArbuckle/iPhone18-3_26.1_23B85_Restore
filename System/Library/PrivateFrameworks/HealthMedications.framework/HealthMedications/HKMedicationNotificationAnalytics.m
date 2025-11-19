@interface HKMedicationNotificationAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (void)submitMetricForType:(int64_t)a3 areHealthNotificationsAuthorizedStatus:(id)a4 interactionType:(int64_t)a5 dataSource:(id)a6;
@end

@implementation HKMedicationNotificationAnalytics

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
  v2 = +[HKMedicationNotificationMetric eventName];
  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

+ (void)submitMetricForType:(int64_t)a3 areHealthNotificationsAuthorizedStatus:(id)a4 interactionType:(int64_t)a5 dataSource:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  if ([a1 shouldSubmit])
  {
    v12 = HKMedicationsSharedAnalyticsQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __123__HKMedicationNotificationAnalytics_submitMetricForType_areHealthNotificationsAuthorizedStatus_interactionType_dataSource___block_invoke;
    block[3] = &unk_2796CA0C8;
    v25 = a3;
    v23 = v10;
    v24 = v11;
    v26 = a5;
    v27 = a1;
    dispatch_async(v12, block);

    v13 = v23;
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogMedication();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

    if (!v15)
    {
      goto LABEL_7;
    }

    v13 = HKLogMedication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = MEMORY[0x277CCABB0];
      v18 = v16;
      v19 = [v17 numberWithBool:{objc_msgSend(a1, "_isMetricEnabled")}];
      v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "_isAllowed")}];
      *buf = 138543874;
      v29 = v16;
      v30 = 2114;
      v31 = v19;
      v32 = 2114;
      v33 = v20;
      _os_log_impl(&dword_2517E7000, v13, OS_LOG_TYPE_INFO, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", buf, 0x20u);
    }
  }

LABEL_7:
  v21 = *MEMORY[0x277D85DE8];
}

void __123__HKMedicationNotificationAnalytics_submitMetricForType_areHealthNotificationsAuthorizedStatus_interactionType_dataSource___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [[HKMedicationNotificationMetric alloc] initWithType:a1[6] areHealthNotificationsAuthorized:a1[4] dataSource:a1[5]];
  [(HKMedicationNotificationMetric *)v2 setInteractionType:a1[7]];
  v3 = +[HKMedicationNotificationMetric eventName];
  v4 = [(HKMedicationNotificationMetric *)v2 eventPayload];
  AnalyticsSendEvent();

  _HKInitializeLogging();
  v5 = HKLogMedication();
  LODWORD(v4) = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v4)
  {
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[8];
      v8 = objc_opt_class();
      v9 = v8;
      v10 = HKSensitiveLogItem();
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_2517E7000, v6, OS_LOG_TYPE_INFO, "[%{public}@] Submitted metric %{public}@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end