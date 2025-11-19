@interface HKHRBloodPressureJournalNotificationAnalyticsUtilities
- (HKHRBloodPressureJournalNotificationAnalyticsUtilities)initWithEventSubmissionManager:(id)a3;
- (void)submitAnalyticsEvent:(unint64_t)a3 forJournal:(id)a4 windowType:(id)a5;
@end

@implementation HKHRBloodPressureJournalNotificationAnalyticsUtilities

- (HKHRBloodPressureJournalNotificationAnalyticsUtilities)initWithEventSubmissionManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKHRBloodPressureJournalNotificationAnalyticsUtilities;
  v6 = [(HKHRBloodPressureJournalNotificationAnalyticsUtilities *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventSubmissionManager, a3);
  }

  return v7;
}

- (void)submitAnalyticsEvent:(unint64_t)a3 forJournal:(id)a4 windowType:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = [[HKHRBloodPressureJournalNotificationAnalyticsEvent alloc] initWithAction:a3 latestActiveJournal:v9 windowType:v8];

  eventSubmissionManager = self->_eventSubmissionManager;
  v24 = 0;
  v12 = [(HKAnalyticsEventSubmissionManager *)eventSubmissionManager submitEvent:v10 error:&v24];
  v13 = v24;
  _HKInitializeLogging();
  v14 = HKLogBloodPressureJournal();
  v15 = v14;
  if (!v13)
  {
    v19 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (!v19)
      {
        goto LABEL_11;
      }

      v20 = objc_opt_class();
      v17 = v20;
      v18 = [(HKHRBloodPressureJournalNotificationAnalyticsEvent *)v10 eventName];
      *buf = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v18;
      v21 = "[%{public}@:%{public}@] Event submitted";
    }

    else
    {
      if (!v19)
      {
        goto LABEL_11;
      }

      v22 = objc_opt_class();
      v17 = v22;
      v18 = [(HKHRBloodPressureJournalNotificationAnalyticsEvent *)v10 eventName];
      *buf = 138543618;
      v26 = v22;
      v27 = 2114;
      v28 = v18;
      v21 = "[%{public}@:%{public}@] Event not submitted but no error";
    }

    _os_log_impl(&dword_228942000, v15, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = [(HKHRBloodPressureJournalNotificationAnalyticsEvent *)v10 eventName];
    *buf = 138543874;
    v26 = v16;
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v13;
    _os_log_error_impl(&dword_228942000, v15, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Analytic submission failed with error: %{public}@", buf, 0x20u);
LABEL_10:
  }

LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
}

@end