@interface HKMedicationLoggingAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (int64_t)_detailedScheduleLoggingContextForScheduleType:(int64_t)a3;
+ (int64_t)_extractCommonScheduleTypeForMedicationSchedules:(id)a3;
+ (int64_t)_unitTesting_detailedLoggingContextForLoggingContext:(int64_t)a3 schedules:(id)a4;
+ (void)submitLogMetricWithHealthStore:(id)a3 actions:(int64_t)a4 provenance:(int64_t)a5 context:(int64_t)a6 medicationIdentifiers:(id)a7 loggingMultipleMeds:(BOOL)a8 hoursAgoLoggedForMax:(id)a9 hoursAgoLoggedForMin:(id)a10 hoursFromScheduledTimeLoggedMax:(id)a11 hoursFromScheduledTimeLoggedMin:(id)a12 hoursFromScheduledToTakenOrSkippedMax:(id)a13 hoursFromScheduledToTakenOrSkippedMin:(id)a14 isPartiallyLoggingScheduledMeds:(id)a15 dataSource:(id)a16;
@end

@implementation HKMedicationLoggingAnalytics

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
  v2 = +[HKMedicationLogMetric eventName];
  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

+ (void)submitLogMetricWithHealthStore:(id)a3 actions:(int64_t)a4 provenance:(int64_t)a5 context:(int64_t)a6 medicationIdentifiers:(id)a7 loggingMultipleMeds:(BOOL)a8 hoursAgoLoggedForMax:(id)a9 hoursAgoLoggedForMin:(id)a10 hoursFromScheduledTimeLoggedMax:(id)a11 hoursFromScheduledTimeLoggedMin:(id)a12 hoursFromScheduledToTakenOrSkippedMax:(id)a13 hoursFromScheduledToTakenOrSkippedMin:(id)a14 isPartiallyLoggingScheduledMeds:(id)a15 dataSource:(id)a16
{
  v72 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v47 = v20;
  v48 = v19;
  v45 = v22;
  v46 = v21;
  if ([a1 shouldSubmit])
  {
    HKMedicationsSharedAnalyticsQueue();
    v43 = v24;
    v28 = v27 = v23;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __357__HKMedicationLoggingAnalytics_submitLogMetricWithHealthStore_actions_provenance_context_medicationIdentifiers_loggingMultipleMeds_hoursAgoLoggedForMax_hoursAgoLoggedForMin_hoursFromScheduledTimeLoggedMax_hoursFromScheduledTimeLoggedMin_hoursFromScheduledToTakenOrSkippedMax_hoursFromScheduledToTakenOrSkippedMin_isPartiallyLoggingScheduledMeds_dataSource___block_invoke;
    block[3] = &unk_2796CAC28;
    v51 = v49;
    v52 = v18;
    v61 = a1;
    v62 = a6;
    v63 = a4;
    v64 = a5;
    v65 = a8;
    v53 = v19;
    v54 = v20;
    v55 = v21;
    v56 = v22;
    v57 = v27;
    v58 = v43;
    v59 = v25;
    v60 = v26;
    dispatch_async(v28, block);

    v23 = v27;
    v24 = v43;

    v29 = v51;
    v30 = v49;
    v31 = v18;
  }

  else
  {
    _HKInitializeLogging();
    v32 = HKLogMedication();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);

    v30 = v49;
    v31 = v18;
    if (!v33)
    {
      goto LABEL_7;
    }

    v29 = HKLogMedication();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v35 = MEMORY[0x277CCABB0];
      v44 = v34;
      v36 = [v35 numberWithBool:{objc_msgSend(a1, "_isMetricEnabled")}];
      v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "_isAllowed")}];
      *buf = 138543874;
      v67 = v34;
      v30 = v49;
      v68 = 2114;
      v69 = v36;
      v70 = 2114;
      v71 = v37;
      _os_log_impl(&dword_2517E7000, v29, OS_LOG_TYPE_INFO, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", buf, 0x20u);

      v31 = v18;
    }
  }

LABEL_7:
  v38 = *MEMORY[0x277D85DE8];
}

void __357__HKMedicationLoggingAnalytics_submitLogMetricWithHealthStore_actions_provenance_context_medicationIdentifiers_loggingMultipleMeds_hoursAgoLoggedForMax_hoursAgoLoggedForMin_hoursFromScheduledTimeLoggedMax_hoursFromScheduledTimeLoggedMin_hoursFromScheduledToTakenOrSkippedMax_hoursFromScheduledToTakenOrSkippedMin_isPartiallyLoggingScheduledMeds_dataSource___block_invoke(uint64_t a1)
{
  v2 = [[HKMedicationScheduleControl alloc] initWithHealthStore:*(a1 + 32)];
  v3 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __357__HKMedicationLoggingAnalytics_submitLogMetricWithHealthStore_actions_provenance_context_medicationIdentifiers_loggingMultipleMeds_hoursAgoLoggedForMax_hoursAgoLoggedForMin_hoursFromScheduledTimeLoggedMax_hoursFromScheduledTimeLoggedMin_hoursFromScheduledToTakenOrSkippedMax_hoursFromScheduledToTakenOrSkippedMin_isPartiallyLoggingScheduledMeds_dataSource___block_invoke_2;
  v16[3] = &unk_2796CAC00;
  v21 = *(a1 + 112);
  v22 = *(a1 + 120);
  v23 = *(a1 + 136);
  v24 = *(a1 + 144);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v17 = v9;
  v18 = v8;
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v19 = v15;
  v20 = v14;
  [(HKMedicationScheduleControl *)v2 fetchSchedulesWithMedicationIdentifiers:v3 completion:v16];
}

void __357__HKMedicationLoggingAnalytics_submitLogMetricWithHealthStore_actions_provenance_context_medicationIdentifiers_loggingMultipleMeds_hoursAgoLoggedForMax_hoursAgoLoggedForMin_hoursFromScheduledTimeLoggedMax_hoursFromScheduledTimeLoggedMin_hoursFromScheduledToTakenOrSkippedMax_hoursFromScheduledToTakenOrSkippedMin_isPartiallyLoggingScheduledMeds_dataSource___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 96) _unitTesting_detailedLoggingContextForLoggingContext:*(a1 + 104) schedules:a2];
  v4 = [[HKMedicationLogMetric alloc] initWithActions:*(a1 + 112) provenance:*(a1 + 120) context:v3 loggingMultipleMeds:*(a1 + 128) hoursAgoLoggedForMax:*(a1 + 32) hoursAgoLoggedForMin:*(a1 + 40) hoursFromScheduledTimeLoggedMax:*(a1 + 48) hoursFromScheduledTimeLoggedMin:*(a1 + 56) hoursFromScheduledToTakenOrSkippedMax:*(a1 + 64) hoursFromScheduledToTakenOrSkippedMin:*(a1 + 72) isPartiallyLoggingScheduledMeds:*(a1 + 80) dataSource:*(a1 + 88)];
  v5 = +[HKMedicationLogMetric eventName];
  v6 = [(HKMedicationLogMetric *)v4 eventPayload];
  AnalyticsSendEvent();

  _HKInitializeLogging();
  v7 = HKLogMedication();
  LODWORD(v6) = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 96);
      v10 = objc_opt_class();
      v11 = v10;
      v12 = HKSensitiveLogItem();
      v13 = HKStringFromMedicationLoggingContext(v3);
      *buf = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&dword_2517E7000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Submitted metric %{public}@ with context: %{public}@", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_unitTesting_detailedLoggingContextForLoggingContext:(int64_t)a3 schedules:(id)a4
{
  if (a3 != 1)
  {
    return a3;
  }

  v6 = [a1 _extractCommonScheduleTypeForMedicationSchedules:a4];

  return [a1 _detailedScheduleLoggingContextForScheduleType:v6];
}

+ (int64_t)_detailedScheduleLoggingContextForScheduleType:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 1;
  }

  else
  {
    return qword_25180A660[a3 - 1];
  }
}

+ (int64_t)_extractCommonScheduleTypeForMedicationSchedules:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) scheduleType];
        if (v6)
        {
          if (v6 != v9)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v6 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

@end