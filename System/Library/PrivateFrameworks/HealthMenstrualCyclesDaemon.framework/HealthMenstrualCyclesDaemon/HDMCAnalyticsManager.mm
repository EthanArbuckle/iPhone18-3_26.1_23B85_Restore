@interface HDMCAnalyticsManager
- (HDMCAnalyticsManager)initWithProfile:(id)profile analysisManager:(id)manager heartRateFeatureAvailabilityManager:(id)availabilityManager deviationDetectionFeatureAvailabilityManager:(id)featureAvailabilityManager wristTemperatureInputFeatureAvailabilityManager:(id)inputFeatureAvailabilityManager pregnancyManager:(id)pregnancyManager;
- (void)_submitAnalyticsWithCompletion:(id)completion;
- (void)profileDidBecomeReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
@end

@implementation HDMCAnalyticsManager

- (HDMCAnalyticsManager)initWithProfile:(id)profile analysisManager:(id)manager heartRateFeatureAvailabilityManager:(id)availabilityManager deviationDetectionFeatureAvailabilityManager:(id)featureAvailabilityManager wristTemperatureInputFeatureAvailabilityManager:(id)inputFeatureAvailabilityManager pregnancyManager:(id)pregnancyManager
{
  profileCopy = profile;
  managerCopy = manager;
  availabilityManagerCopy = availabilityManager;
  featureAvailabilityManagerCopy = featureAvailabilityManager;
  inputFeatureAvailabilityManagerCopy = inputFeatureAvailabilityManager;
  pregnancyManagerCopy = pregnancyManager;
  v24.receiver = self;
  v24.super_class = HDMCAnalyticsManager;
  v18 = [(HDMCAnalyticsManager *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, profileCopy);
    objc_storeStrong(&v19->_analysisManager, manager);
    objc_storeStrong(&v19->_heartRateFeatureAvailabilityManager, availabilityManager);
    objc_storeStrong(&v19->_deviationDetectionFeatureAvailabilityManager, featureAvailabilityManager);
    objc_storeStrong(&v19->_wristTemperatureInputFeatureAvailabilityManager, inputFeatureAvailabilityManager);
    objc_storeStrong(&v19->_pregnancyManager, pregnancyManager);
    WeakRetained = objc_loadWeakRetained(&v19->_profile);
    [WeakRetained registerProfileReadyObserver:v19 queue:{0, availabilityManagerCopy, managerCopy}];
  }

  return v19;
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator addObserver:self queue:0];
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = +[HDMCDailyAnalytics shouldSubmit];
  hkmc_menstrualCyclesDefaults = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
  hkmc_analyticsDebugModeEnabled = [hkmc_menstrualCyclesDefaults hkmc_analyticsDebugModeEnabled];

  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC2E8];
  v10 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = MEMORY[0x277CCABB0];
    v14 = v12;
    v15 = [v13 numberWithBool:v6];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:hkmc_analyticsDebugModeEnabled];
    v22 = 138543874;
    v23 = v12;
    v24 = 2114;
    v25 = v15;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&dword_2293D1000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received daily analytics trigger. metricsEnabled: %{public}@, inDebugMode: %{public}@", &v22, 0x20u);
  }

  if (v6 | hkmc_analyticsDebugModeEnabled)
  {
    [(HDMCAnalyticsManager *)self _submitAnalyticsWithCompletion:completionCopy];
  }

  else
  {
    _HKInitializeLogging();
    v17 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = objc_opt_class();
      v22 = 138543362;
      v23 = v19;
      v20 = v19;
      _os_log_impl(&dword_2293D1000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping analytics submission", &v22, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_submitAnalyticsWithCompletion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _HKLogPersistedSignposts();
  v6 = _HKLogSignpostIDGenerate();

  _HKInitializeLogging();
  v7 = _HKLogPersistedSignposts();
  v8 = os_signpost_enabled(v7);

  if (v8)
  {
    v9 = _HKLogPersistedSignposts();
    v10 = v9;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2293D1000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v6, "menstrual-cycles-daily-analytics", "", buf, 2u);
    }
  }

  _HKInitializeLogging();
  v11 = MEMORY[0x277CCC2E8];
  v12 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = objc_opt_class();
    *buf = 138543362;
    v50 = v14;
    v15 = v14;
    _os_log_impl(&dword_2293D1000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning analytics submission", buf, 0xCu);
  }

  currentAnalysis = [(HDMCAnalysisManager *)self->_analysisManager currentAnalysis];
  cycles = [currentAnalysis cycles];

  if (cycles)
  {
    v18 = 0;
  }

  else
  {
    analysisManager = self->_analysisManager;
    v48 = 0;
    v20 = [(HDMCAnalysisManager *)analysisManager _analyzeWithForceIncludeCycles:1 forceAnalyzeCompleteHistory:0 error:&v48];
    v18 = v48;

    currentAnalysis = v20;
  }

  _HKInitializeLogging();
  if (currentAnalysis)
  {
    v21 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = objc_opt_class();
      *buf = 138543362;
      v50 = v23;
      v24 = v23;
      _os_log_impl(&dword_2293D1000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished running analysis", buf, 0xCu);
    }

    v25 = [HDMCDailyAnalytics alloc];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v27 = [(HDMCDailyAnalytics *)v25 initWithProfile:WeakRetained analysis:currentAnalysis heartRateFeatureAvailabilityManager:self->_heartRateFeatureAvailabilityManager deviationDetectionFeatureAvailabilityManager:self->_deviationDetectionFeatureAvailabilityManager wristTemperatureInputFeatureAvailabilityManager:self->_wristTemperatureInputFeatureAvailabilityManager pregnancyManager:self->_pregnancyManager];

    v47 = v18;
    v28 = [(HDMCDailyAnalytics *)v27 submitMetricWithError:&v47];
    v29 = v47;

    _HKInitializeLogging();
    v30 = _HKLogPersistedSignposts();
    v31 = os_signpost_enabled(v30);

    if (v28)
    {
      if (v31)
      {
        v32 = _HKLogPersistedSignposts();
        v33 = v32;
        if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_2293D1000, v33, OS_SIGNPOST_INTERVAL_END, v6, "menstrual-cycles-daily-analytics", "", buf, 2u);
        }
      }

      _HKInitializeLogging();
      v34 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        v36 = objc_opt_class();
        *buf = 138543362;
        v50 = v36;
        v37 = v36;
        _os_log_impl(&dword_2293D1000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] Metric submission succeeded", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    }

    else
    {
      if (v31)
      {
        v43 = _HKLogPersistedSignposts();
        v44 = v43;
        if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_2293D1000, v44, OS_SIGNPOST_INTERVAL_END, v6, "menstrual-cycles-daily-analytics", "", buf, 2u);
        }
      }

      _HKInitializeLogging();
      v45 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalyticsManager _submitAnalyticsWithCompletion:v45];
      }

      (*(completionCopy + 2))(completionCopy, 0, 2, v29);
    }

    v18 = v29;
  }

  else
  {
    v38 = _HKLogPersistedSignposts();
    v39 = os_signpost_enabled(v38);

    if (v39)
    {
      v40 = _HKLogPersistedSignposts();
      v41 = v40;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2293D1000, v41, OS_SIGNPOST_INTERVAL_END, v6, "menstrual-cycles-daily-analytics", "", buf, 2u);
      }
    }

    _HKInitializeLogging();
    v42 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      [HDMCAnalyticsManager _submitAnalyticsWithCompletion:v42];
    }

    (*(completionCopy + 2))(completionCopy, 0, 2, v18);
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_submitAnalyticsWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Metric submission failed with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_submitAnalyticsWithCompletion:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Analysis failed with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end