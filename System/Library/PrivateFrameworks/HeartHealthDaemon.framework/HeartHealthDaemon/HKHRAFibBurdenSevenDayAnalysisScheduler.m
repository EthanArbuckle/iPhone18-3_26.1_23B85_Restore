@interface HKHRAFibBurdenSevenDayAnalysisScheduler
- (HKHRAFibBurdenSevenDayAnalysisScheduler)initWithProfile:(id)a3 analysisManager:(id)a4 featureStatusManager:(id)a5 featureStatusInspector:(id)a6 alarm:(id)a7 scheduler:(id)a8 breadcrumbManager:(id)a9 syncedKeyValueDomain:(id)a10;
- (HKHRAFibBurdenSevenDayAnalysisScheduler)initWithProfile:(id)a3 featureStatusManager:(id)a4 onboardingEligibilityDeterminer:(id)a5 analyzer:(id)a6;
- (HKHRAFibBurdenSevenDayAnalysisSchedulerDelegate)delegate;
- (id)_performAnalysisWithFeatureStatus:(id)a3 error:(id *)a4;
- (void)_forceAnalysis;
- (void)_logAnalysisResult:(int64_t)a3 error:(id)a4;
- (void)_reportAnalysisResultsToDelegate:(id)a3 featureStatus:(id)a4;
- (void)_saveLastAnalysisCompletedDateForResult:(id)a3;
- (void)analysisSchedulerDidFire:(id)a3 completion:(id)a4;
- (void)initialAnalysisAlarmDidFireWithAlarm:(id)a3;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisScheduler

- (HKHRAFibBurdenSevenDayAnalysisScheduler)initWithProfile:(id)a3 featureStatusManager:(id)a4 onboardingEligibilityDeterminer:(id)a5 analyzer:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager alloc] initWithProfile:v13];
  v15 = [[HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector alloc] initWithOnboardingEligibilityDeterminer:v11 breadcrumbManager:v14];

  v16 = [HKHRDatabaseAnalysisSchedulerImpl alloc];
  v17 = HKHRAFibBurdenLogForCategory();
  HKHRAFibBurdenSevenDayAnalysisMaximumXPCDelay();
  v18 = [HKHRDatabaseAnalysisSchedulerImpl initWithProfile:v16 identifier:"initWithProfile:identifier:loggingCategory:maximumDelay:retryDelay:breadcrumbManager:" loggingCategory:v13 maximumDelay:@"HKHRAFibBurdenSevenDayAnalysisSchedulerIdentifier" retryDelay:v17 breadcrumbManager:v14];

  v19 = [[HKHRAFibBurdenSevenDayAnalysisManager alloc] initWithProfile:v13 analyzer:v10];
  v20 = [[HKHRAFibBurdenSevenDayAnalysisSchedulerXPCAlarm alloc] initWithProfile:v13];
  v21 = [MEMORY[0x277D10718] hdhr_aFibBurdenProtectedSyncedDomainForProfile:v13];
  v22 = [(HKHRAFibBurdenSevenDayAnalysisScheduler *)self initWithProfile:v13 analysisManager:v19 featureStatusManager:v12 featureStatusInspector:v15 alarm:v20 scheduler:v18 breadcrumbManager:v14 syncedKeyValueDomain:v21];

  return v22;
}

- (HKHRAFibBurdenSevenDayAnalysisScheduler)initWithProfile:(id)a3 analysisManager:(id)a4 featureStatusManager:(id)a5 featureStatusInspector:(id)a6 alarm:(id)a7 scheduler:(id)a8 breadcrumbManager:(id)a9 syncedKeyValueDomain:(id)a10
{
  obj = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a8;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = HKHRAFibBurdenSevenDayAnalysisScheduler;
  v18 = [(HKHRAFibBurdenSevenDayAnalysisScheduler *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, obj);
    objc_storeStrong(&v19->_analysisManager, a4);
    objc_storeStrong(&v19->_featureStatusManager, a5);
    objc_storeStrong(&v19->_featureStatusInspector, a6);
    objc_storeStrong(&v19->_alarm, a7);
    objc_storeStrong(&v19->_scheduler, a8);
    objc_storeStrong(&v19->_breadcrumbManager, a9);
    objc_storeStrong(&v19->_syncedKeyValueDomain, a10);
    [(HKHRAFibBurdenSevenDayAnalysisSchedulerAlarm *)v19->_alarm setDelegate:v19, v21, v22, v23, v24, v25];
    [(HKHRDatabaseAnalysisScheduler *)v19->_scheduler setDelegate:v19];
  }

  return v19;
}

- (void)initialAnalysisAlarmDidFireWithAlarm:(id)a3
{
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropBreadcrumb:0];
  scheduler = self->_scheduler;

  [(HKHRDatabaseAnalysisScheduler *)scheduler scheduleAnalysis];
}

- (void)analysisSchedulerDidFire:(id)a3 completion:(id)a4
{
  v5 = a4;
  featureStatusManager = self->_featureStatusManager;
  v13 = 0;
  v7 = [(HKFeatureStatusManager *)featureStatusManager featureStatusWithError:&v13];
  v8 = v13;
  if (v7)
  {
    if ([(HKHRAFibBurdenSevenDayAnalysisScheduler *)self _shouldAllowFeatureStatus:v7])
    {
      v12 = v8;
      v9 = [(HKHRAFibBurdenSevenDayAnalysisScheduler *)self _performAnalysisWithFeatureStatus:v7 error:&v12];
      v10 = v12;

      -[HKHRAFibBurdenSevenDayAnalysisScheduler _logAnalysisResult:error:](self, "_logAnalysisResult:error:", [v9 result], v10);
      [(HKHRAFibBurdenSevenDayAnalysisScheduler *)self _reportAnalysisResultsToDelegate:v9 featureStatus:v7];
      [(HKHRAFibBurdenSevenDayAnalysisScheduler *)self _saveLastAnalysisCompletedDateForResult:v9];
      v5[2](v5, -[HKHRAFibBurdenSevenDayAnalysisScheduler _determineIfAnotherAnalysisRunIsNecessaryWithAnalysisResult:](self, "_determineIfAnotherAnalysisRunIsNecessaryWithAnalysisResult:", [v9 result]), v10);

      v8 = v10;
    }

    else
    {
      v5[2](v5, 0, 0);
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HKHRAFibBurdenSevenDayAnalysisScheduler analysisSchedulerDidFire:completion:];
    }

    [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Failed to retrieve feature status"];
    v5[2](v5, 1, v8);
  }
}

- (void)_forceAnalysis
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis forced.", &v5, 0xCu);
  }

  [(HKHRDatabaseAnalysisScheduler *)self->_scheduler forceAnalysis];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)_performAnalysisWithFeatureStatus:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __83__HKHRAFibBurdenSevenDayAnalysisScheduler__performAnalysisWithFeatureStatus_error___block_invoke;
  v26[3] = &unk_27865F948;
  v26[4] = self;
  v7 = v6;
  v27 = v7;
  v28 = &v29;
  v8 = MEMORY[0x22AACDB50](v26);
  v9 = HKHRAFibBurdenLogForCategory();
  v10 = _HKLogSignpostIDGenerate();
  v11 = [MEMORY[0x277CCDD30] sharedBehavior];
  v12 = [v11 showSensitiveLogItems];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [MEMORY[0x277CBEA80] currentCalendar];
    HKHRAFibBurdenPreviousWeekDayIndexRange();

    v15 = NSStringFromHKDayIndexRange();
    _HKInitializeLogging();
    if (os_signpost_enabled(v9))
    {
      v16 = v9;
      v17 = v16;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 138412290;
        v36 = v15;
        _os_signpost_emit_with_name_impl(&dword_229486000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v10, "afib-burden-analysis", "dayIndexRange=%@", buf, 0xCu);
      }
    }

    v18 = v8[2](v8);
    _HKInitializeLogging();
    if (os_signpost_enabled(v9))
    {
      v19 = v9;
      v20 = v19;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 138412290;
        v36 = v15;
        _os_signpost_emit_with_name_impl(&dword_229486000, v20, OS_SIGNPOST_INTERVAL_END, v10, "afib-burden-analysis", "dayIndexRange=%@", buf, 0xCu);
      }
    }
  }

  else
  {
    v18 = v8[2](v8);
  }

  v21 = v30[5];
  v22 = v21;
  if (v21)
  {
    if (a4)
    {
      v23 = v21;
      *a4 = v22;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v29, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

id __83__HKHRAFibBurdenSevenDayAnalysisScheduler__performAnalysisWithFeatureStatus_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 16);
  v4 = *(v2 + 56);
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v3 analyzePreviousCalendarWeekWithFeatureStatus:v1 shouldSaveSampleToDatabase:1 breadcrumbManager:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  return v6;
}

- (void)_logAnalysisResult:(int64_t)a3 error:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        _HKInitializeLogging();
        v7 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = self;
          v8 = "[%@] Burden analysis run, no sample created as there was not enough tachograms for the previous seven days";
          goto LABEL_20;
        }

        goto LABEL_22;
      case 4:
        _HKInitializeLogging();
        v7 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = self;
          v8 = "[%@] Burden analysis run, no sample created as there was not enough days in previous seven days with minimum tachogram threshold";
          goto LABEL_20;
        }

        goto LABEL_22;
      case 5:
        _HKInitializeLogging();
        v7 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = self;
          v8 = "[%@] Burden analysis run, no sample created as there was not enough segments";
          goto LABEL_20;
        }

LABEL_22:

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 0:
        _HKInitializeLogging();
        v7 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = self;
          v8 = "[%@] Burden analysis run and sample created";
          goto LABEL_20;
        }

        goto LABEL_22;
      case 1:
        _HKInitializeLogging();
        v7 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412546;
          v13 = self;
          v14 = 2112;
          v15 = v6;
          v8 = "[%@] Burden analysis run, no sample created due to infrastructure error: %@";
          v9 = v7;
          v10 = 22;
LABEL_21:
          _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
          goto LABEL_22;
        }

        goto LABEL_22;
      case 2:
        _HKInitializeLogging();
        v7 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = self;
          v8 = "[%@] Burden analysis run, no sample created as there was not enough time since last sample";
LABEL_20:
          v9 = v7;
          v10 = 12;
          goto LABEL_21;
        }

        goto LABEL_22;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reportAnalysisResultsToDelegate:(id)a3 featureStatus:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 result];
  if ((v7 - 3) >= 3)
  {
    if (v7)
    {
      goto LABEL_6;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [v10 sampleCreated];
    [WeakRetained sevenDayAnalysisScheduler:self didSuccessfullyCompleteAnalysisWithSample:v9 onboardedWithinAnalysisInterval:objc_msgSend(v10 featureStatus:{"onboardedWithinAnalysisInterval"), v6}];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sevenDayAnalysisScheduler:self didSuccessfullyCompleteAnalysisWithSample:0 onboardedWithinAnalysisInterval:objc_msgSend(v10 featureStatus:{"onboardedWithinAnalysisInterval"), v6}];
  }

LABEL_6:
}

- (void)_saveLastAnalysisCompletedDateForResult:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 result];
  if (v4 <= 5)
  {
    if (((1 << v4) & 0x39) != 0)
    {
      _HKInitializeLogging();
      v5 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = self;
        _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Saving analysis completed date", buf, 0xCu);
      }

      syncedKeyValueDomain = self->_syncedKeyValueDomain;
      v7 = [MEMORY[0x277CBEAA8] date];
      v8 = *MEMORY[0x277D12EB0];
      v12 = 0;
      [(HDKeyValueDomain *)syncedKeyValueDomain setDate:v7 forKey:v8 error:&v12];
      v9 = v12;

      if (v9)
      {
        _HKInitializeLogging();
        v10 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [HKHRAFibBurdenSevenDayAnalysisScheduler _saveLastAnalysisCompletedDateForResult:];
        }
      }

      notify_post(*MEMORY[0x277D12EA8]);
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = self;
        _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%@] Skipping save analysis completed date - analysis not completed", buf, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HKHRAFibBurdenSevenDayAnalysisSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)analysisSchedulerDidFire:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Error when getting initial feature status: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveLastAnalysisCompletedDateForResult:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Error when saving analysis date: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end