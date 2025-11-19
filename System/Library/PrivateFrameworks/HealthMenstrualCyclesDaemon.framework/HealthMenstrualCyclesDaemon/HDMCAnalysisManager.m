@interface HDMCAnalysisManager
- (BOOL)_hasHealthAppDevicesWithHigherAlgorithmVersions;
- (BOOL)initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion:(id)a3 error:(id *)a4;
- (HDProfile)profile;
- (HKMCAnalysis)currentAnalysis;
- (id)_analysisWithAlgorithmsAnalysis:(id)a3 algorithmsCycles:(id)a4 recentSymptoms:(unint64_t)a5 mostRecentBasalBodyTemperature:(id)a6 lastLoggedDayIndex:(id)a7 lastMenstrualFlowDayIndex:(id)a8 numberOfDailySleepHeartRateStatisticsForPast100Days:(int64_t)a9 numberOfDailyAwakeHeartRateStatisticsForPast100Days:(int64_t)a10 featureSettings:(id)a11 useHeartRateInput:(BOOL)a12 useWristTemperatureInput:(BOOL)a13 deviationsFeatureSettings:(id)a14;
- (id)_analyzeWithForceIncludeCycles:(BOOL)a3 forceAnalyzeCompleteHistory:(BOOL)a4 error:(id *)a5;
- (id)_initWithProfile:(id)a3 settingsManager:(id)a4 featureAvailabilityManager:(id)a5 heartRateAvailabilityManager:(id)a6 wristTemperatureAvailabilityManager:(id)a7 deviationsAvailabilityManager:(id)a8 deviceScopedStorageManager:(id)a9 calendarCache:(id)a10 dayStreamProcessorProvider:(id)a11 historicalAnalyzerProvider:(id)a12;
- (id)_processorConfigurationForTodayIndex:(int64_t)a3 deviationsFeatureStatus:(id)a4 calendar:(id)a5;
- (id)_queue_analyzeNowWithForceIncludeCycles:(BOOL)a3 forceAnalyzeCompleteHistory:(BOOL)a4 error:(id *)a5;
- (id)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:(id)a3 forceIncludeCycles:(BOOL)a4 forceAnalyzeCompleteHistory:(BOOL)a5 error:(id *)a6;
- (id)_takeAccessibilityAssertion;
- (void)_calendarDayDidChange:(id)a3;
- (void)_hasHealthAppDevicesWithHigherAlgorithmVersions;
- (void)_queue_analyzeIfNeeded;
- (void)_queue_enqueueMaintenanceOperationIfNeeded;
- (void)_queue_runMaintenanceOperation;
- (void)_startObserving;
- (void)_takeAccessibilityAssertion;
- (void)_userCharacteristicsDidChange:(id)a3;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
- (void)registerObserver:(id)a3 queue:(id)a4 userInitiated:(BOOL)a5;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
- (void)settingsManagerDidUpdateAlgorithmVersionMismatchSettings:(id)a3;
- (void)settingsManagerDidUpdateAnalysisSettings:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation HDMCAnalysisManager

id __218__HDMCAnalysisManager_initWithProfile_settingsManager_featureAvailabilityManager_heartRateAvailabilityManager_wristTemperatureAvailabilityManager_deviationsAvailabilityManager_deviceScopedStorageManager_calendarCache___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0FC90];
  v3 = a2;
  v4 = [[v2 alloc] initWithConfig:v3];

  return v4;
}

id __218__HDMCAnalysisManager_initWithProfile_settingsManager_featureAvailabilityManager_heartRateAvailabilityManager_wristTemperatureAvailabilityManager_deviationsAvailabilityManager_deviceScopedStorageManager_calendarCache___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277D0FCC0]);

  return v0;
}

- (id)_initWithProfile:(id)a3 settingsManager:(id)a4 featureAvailabilityManager:(id)a5 heartRateAvailabilityManager:(id)a6 wristTemperatureAvailabilityManager:(id)a7 deviationsAvailabilityManager:(id)a8 deviceScopedStorageManager:(id)a9 calendarCache:(id)a10 dayStreamProcessorProvider:(id)a11 historicalAnalyzerProvider:(id)a12
{
  v17 = a3;
  obj = a4;
  v58 = a4;
  v57 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v56 = a9;
  v55 = a10;
  v21 = a11;
  v22 = a12;
  v64.receiver = self;
  v64.super_class = HDMCAnalysisManager;
  v23 = [(HDMCAnalysisManager *)&v64 init];
  v24 = v23;
  if (v23)
  {
    aBlock = v22;
    objc_storeWeak(&v23->_profile, v17);
    v24->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v24->_settingsManager, obj);
    objc_storeStrong(&v24->_featureAvailabilityManager, a5);
    v25 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v18 healthDataSource:v17];
    heartRateFeatureStatusManager = v24->_heartRateFeatureStatusManager;
    v24->_heartRateFeatureStatusManager = v25;

    v27 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v19 healthDataSource:v17];
    wristTemperatureFeatureStatusManager = v24->_wristTemperatureFeatureStatusManager;
    v24->_wristTemperatureFeatureStatusManager = v27;

    if (v20)
    {
      v29 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v20 healthDataSource:v17];
    }

    else
    {
      v29 = 0;
    }

    deviationsFeatureStatusManager = v24->_deviationsFeatureStatusManager;
    v24->_deviationsFeatureStatusManager = v29;

    objc_storeStrong(&v24->_deviceScopedStorageManager, a9);
    v31 = [HDMCDeviationInputManager alloc];
    WeakRetained = objc_loadWeakRetained(&v24->_profile);
    v33 = [(HDMCDeviationInputManager *)v31 initWithProfile:WeakRetained];
    deviationInputManager = v24->_deviationInputManager;
    v24->_deviationInputManager = v33;

    v35 = objc_alloc(MEMORY[0x277CCD738]);
    v36 = MEMORY[0x277CCC2E8];
    v37 = [v35 initWithName:@"HKMCAnalysisManagerObservers" loggingCategory:*MEMORY[0x277CCC2E8]];
    observers = v24->_observers;
    v24->_observers = v37;

    v39 = [objc_alloc(MEMORY[0x277CCD738]) initWithName:@"HKMCAnalysisManagerUserInitiatedObservers" loggingCategory:*v36];
    userInitiatedObservers = v24->_userInitiatedObservers;
    v24->_userInitiatedObservers = v39;

    v41 = HKCreateSerialDispatchQueue();
    queue = v24->_queue;
    v24->_queue = v41;

    objc_storeStrong(&v24->_calendarCache, a10);
    v43 = _Block_copy(v21);
    dayStreamProcessorProvider = v24->_dayStreamProcessorProvider;
    v24->_dayStreamProcessorProvider = v43;

    v45 = _Block_copy(v22);
    historicalAnalyzerProvider = v24->_historicalAnalyzerProvider;
    v24->_historicalAnalyzerProvider = v45;

    objc_initWeak(&location, v24);
    v47 = objc_alloc(MEMORY[0x277CCDD98]);
    v48 = v24->_queue;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __273__HDMCAnalysisManager__initWithProfile_settingsManager_featureAvailabilityManager_heartRateAvailabilityManager_wristTemperatureAvailabilityManager_deviationsAvailabilityManager_deviceScopedStorageManager_calendarCache_dayStreamProcessorProvider_historicalAnalyzerProvider___block_invoke;
    v61[3] = &unk_27865A750;
    objc_copyWeak(&v62, &location);
    v49 = [v47 initWithMode:0 clock:1 queue:v48 delay:v61 block:0.25];
    analyzeOperation = v24->_analyzeOperation;
    v24->_analyzeOperation = v49;

    v51 = objc_loadWeakRetained(&v24->_profile);
    v52 = [v51 database];
    [v52 addProtectedDataObserver:v24 queue:v24->_queue];

    [(HDMCAnalysisManager *)v24 _startObserving];
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
    v22 = aBlock;
  }

  return v24;
}

void __273__HDMCAnalysisManager__initWithProfile_settingsManager_featureAvailabilityManager_heartRateAvailabilityManager_wristTemperatureAvailabilityManager_deviationsAvailabilityManager_deviceScopedStorageManager_calendarCache_dayStreamProcessorProvider_historicalAnalyzerProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _queue_analyzeNowWithForceIncludeCycles:0 forceAnalyzeCompleteHistory:0 error:0];
}

- (void)dealloc
{
  v46 = *MEMORY[0x277D85DE8];
  [(HKMCSettingsManager *)self->_settingsManager removeObserver:self];
  [(HDFeatureAvailabilityManager *)self->_featureAvailabilityManager unregisterObserver:self];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = HKMCDaySummarySampleTypes();
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v39 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        v10 = [WeakRetained dataManager];
        [v10 removeObserver:self forDataType:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v5);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = HKMCCycleFactorsTypes();
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      v15 = 0;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * v15);
        v17 = objc_loadWeakRetained(&self->_profile);
        v18 = [v17 dataManager];
        [v18 removeObserver:self forDataType:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v13);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = HKMCDeviationSampleTypes();
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      v23 = 0;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v31 + 1) + 8 * v23);
        v25 = objc_loadWeakRetained(&self->_profile);
        v26 = [v25 dataManager];
        [v26 removeObserver:self forDataType:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v21);
  }

  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 removeObserver:self name:*MEMORY[0x277D104E8] object:0];

  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  [v28 removeObserver:self name:*MEMORY[0x277CBE580] object:0];

  v30.receiver = self;
  v30.super_class = HDMCAnalysisManager;
  [(HDMCAnalysisManager *)&v30 dealloc];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_queue_needsMaintenanceAnalysis)
  {

    [(HDMCAnalysisManager *)self _queue_enqueueMaintenanceOperationIfNeeded];
  }
}

- (void)_startObserving
{
  v45 = *MEMORY[0x277D85DE8];
  [(HKMCSettingsManager *)self->_settingsManager addObserver:self queue:self->_queue];
  [(HDFeatureAvailabilityManager *)self->_featureAvailabilityManager registerObserver:self queue:self->_queue];
  [(HKFeatureStatusManager *)self->_heartRateFeatureStatusManager registerObserver:self queue:self->_queue];
  [(HKFeatureStatusManager *)self->_wristTemperatureFeatureStatusManager registerObserver:self queue:self->_queue];
  [(HKFeatureStatusManager *)self->_deviationsFeatureStatusManager registerObserver:self queue:self->_queue];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = HKMCDaySummarySampleTypes();
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      v7 = 0;
      do
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v38 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        v10 = [WeakRetained dataManager];
        [v10 addObserver:self forDataType:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v5);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = HKMCCycleFactorsTypes();
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v34 + 1) + 8 * v15);
        v17 = objc_loadWeakRetained(&self->_profile);
        v18 = [v17 dataManager];
        [v18 addObserver:self forDataType:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = HKMCDeviationSampleTypes();
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      v23 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * v23);
        v25 = objc_loadWeakRetained(&self->_profile);
        v26 = [v25 dataManager];
        [v26 addObserver:self forDataType:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v21);
  }

  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 addObserver:self selector:sel__userCharacteristicsDidChange_ name:*MEMORY[0x277D104E8] object:0];

  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  [v28 addObserver:self selector:sel__calendarDayDidChange_ name:*MEMORY[0x277CBE580] object:0];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HDMCAnalysisManager_samplesAdded_anchor___block_invoke;
  v8[3] = &unk_27865A778;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

uint64_t __43__HDMCAnalysisManager_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    v7 = v5;
    v8 = HKSensitiveLogItem();
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to samples added: %@", &v11, 0x16u);
  }

  result = [*(a1 + 32) _queue_analyzeIfNeeded];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HDMCAnalysisManager_samplesOfTypesWereRemoved_anchor___block_invoke;
  v8[3] = &unk_27865A778;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

uint64_t __56__HDMCAnalysisManager_samplesOfTypesWereRemoved_anchor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    v7 = v5;
    v8 = HKSensitiveLogItem();
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to samples removed of types: %@", &v11, 0x16u);
  }

  result = [*(a1 + 32) _queue_analyzeIfNeeded];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_takeAccessibilityAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained database];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = 0;
  v6 = [v3 takeAccessibilityAssertionWithOwnerIdentifier:v5 timeout:&v9 error:300.0];
  v7 = v9;

  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HDMCAnalysisManager _takeAccessibilityAssertion];
    }
  }

  return v6;
}

- (void)settingsManagerDidUpdateAnalysisSettings:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDMCAnalysisManager_settingsManagerDidUpdateAnalysisSettings___block_invoke;
  block[3] = &unk_27865A830;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __64__HDMCAnalysisManager_settingsManagerDidUpdateAnalysisSettings___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v5 = *&v8[4];
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to settings update", v8, 0xCu);
  }

  result = [*(a1 + 32) _queue_analyzeIfNeeded];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)settingsManagerDidUpdateAlgorithmVersionMismatchSettings:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HDMCAnalysisManager_settingsManagerDidUpdateAlgorithmVersionMismatchSettings___block_invoke;
  block[3] = &unk_27865A830;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __80__HDMCAnalysisManager_settingsManagerDidUpdateAlgorithmVersionMismatchSettings___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v5 = *&v8[4];
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to algorithm version mismatch settings update", v8, 0xCu);
  }

  result = [*(a1 + 32) _queue_analyzeIfNeeded];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_userCharacteristicsDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HDMCAnalysisManager__userCharacteristicsDidChange___block_invoke;
  block[3] = &unk_27865A830;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __53__HDMCAnalysisManager__userCharacteristicsDidChange___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v5 = *&v8[4];
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to user characteristics change", v8, 0xCu);
  }

  result = [*(a1 + 32) _queue_analyzeIfNeeded];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_calendarDayDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HDMCAnalysisManager__calendarDayDidChange___block_invoke;
  block[3] = &unk_27865A830;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __45__HDMCAnalysisManager__calendarDayDidChange___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v5 = *&v8[4];
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to calendar day change", v8, 0xCu);
  }

  result = [*(a1 + 32) _queue_analyzeIfNeeded];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v5 featureIdentifier];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_2293D1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received feature status update for %{public}@", &v12, 0x16u);
  }

  [(HDMCAnalysisManager *)self _queue_analyzeIfNeeded];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v6 = *&v8[4];
    _os_log_impl(&dword_2293D1000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to onboarding state changing", v8, 0xCu);
  }

  [(HDMCAnalysisManager *)self _queue_analyzeIfNeeded];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  p_queue_lastFeatureSettings = &self->_queue_lastFeatureSettings;
  if (self->_queue_lastFeatureSettings)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v7 = [WeakRetained featureSettingsManager];
    v8 = [v4 featureIdentifier];
    v24 = 0;
    v9 = [v7 featureSettingsForFeatureIdentifier:v8 error:&v24];
    v10 = v24;

    if (v9)
    {
      v11 = [v9 projectionsEnabledSettingsHaveChangedFromFeatureSettings:*p_queue_lastFeatureSettings];
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2E8];
      v13 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          v14 = v12;
          v15 = objc_opt_class();
          *buf = 138543362;
          v26 = v15;
          v16 = v15;
          _os_log_impl(&dword_2293D1000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings changed: projections enabled changed, analyzing", buf, 0xCu);
        }

        [(HDMCAnalysisManager *)self _queue_analyzeIfNeeded];
      }

      else if (v13)
      {
        v20 = v12;
        v21 = objc_opt_class();
        *buf = 138543362;
        v26 = v21;
        v22 = v21;
        _os_log_impl(&dword_2293D1000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings changed, not affecting projections enabled", buf, 0xCu);
      }

      objc_storeStrong(p_queue_lastFeatureSettings, v9);
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager featureAvailabilityProvidingDidUpdateSettings:];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      *buf = 138543362;
      v26 = objc_opt_class();
      v19 = v26;
      _os_log_impl(&dword_2293D1000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings changed: no cached settings, analyzing", buf, 0xCu);
    }

    [(HDMCAnalysisManager *)self _queue_analyzeIfNeeded];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HKMCAnalysis)currentAnalysis
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKMCAnalysis *)self->_lock_currentAnalysis copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_analyzeWithForceIncludeCycles:(BOOL)a3 forceAnalyzeCompleteHistory:(BOOL)a4 error:(id *)a5
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__HDMCAnalysisManager__analyzeWithForceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke;
  v12[3] = &unk_27865A858;
  v12[4] = self;
  v12[5] = &v21;
  v13 = a3;
  v14 = a4;
  v12[6] = &v15;
  dispatch_sync(queue, v12);
  v7 = v16[5];
  v8 = v7;
  if (v7)
  {
    if (a5)
    {
      v9 = v7;
      *a5 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v10;
}

void __88__HDMCAnalysisManager__analyzeWithForceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 57);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _queue_analyzeNowWithForceIncludeCycles:v3 forceAnalyzeCompleteHistory:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)_queue_analyzeIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(HKObserverSet *)self->_userInitiatedObservers count])
  {
    analyzeOperation = self->_analyzeOperation;

    [(_HKDelayedOperation *)analyzeOperation execute];
  }

  else if ([(HKObserverSet *)self->_observers count])
  {

    [(HDMCAnalysisManager *)self _queue_enqueueMaintenanceOperationIfNeeded];
  }
}

- (void)_queue_enqueueMaintenanceOperationIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_queue_maintenanceOperationQueued)
  {
    *&self->_queue_needsMaintenanceAnalysis = 257;
    v3 = MEMORY[0x277D10748];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    queue = self->_queue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__HDMCAnalysisManager__queue_enqueueMaintenanceOperationIfNeeded__block_invoke;
    v16[3] = &unk_27865A830;
    v16[4] = self;
    v7 = [v3 maintenanceOperationWithName:v5 queue:queue synchronousBlock:v16];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v9 = [WeakRetained daemon];
    v10 = [v9 maintenanceWorkCoordinator];
    [v10 enqueueMaintenanceOperation:v7];

    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      *buf = 138543362;
      v18 = v13;
      v14 = v13;
      _os_log_impl(&dword_2293D1000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enqueued maintenance operation for analysis", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_runMaintenanceOperation
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_queue_needsMaintenanceAnalysis)
  {
    v3 = [(HDMCAnalysisManager *)self _queue_analyzeNowWithForceIncludeCycles:0 forceAnalyzeCompleteHistory:0 error:0];
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v8 = 138543362;
      v9 = objc_opt_class();
      v6 = v9;
      _os_log_impl(&dword_2293D1000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping maintenance operation for analysis since no longer needed", &v8, 0xCu);
    }
  }

  self->_queue_maintenanceOperationQueued = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_queue_analyzeNowWithForceIncludeCycles:(BOOL)a3 forceAnalyzeCompleteHistory:(BOOL)a4 error:(id *)a5
{
  dispatch_assert_queue_V2(self->_queue);
  v9 = [MEMORY[0x277CCD288] transactionWithOwner:self activityName:@"analyzeNowWithForceIncludeCycles"];
  v10 = [(HDMCAnalysisManager *)self _takeAccessibilityAssertion];
  v11 = [MEMORY[0x277D10788] contextForAccessibilityAssertion:v10];
  [v11 setCacheScope:1];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [WeakRetained database];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __97__HDMCAnalysisManager__queue_analyzeNowWithForceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke;
  v21 = &unk_27865A880;
  v24 = &v27;
  v22 = self;
  v14 = v10;
  v23 = v14;
  v25 = a3;
  v26 = a4;
  LODWORD(a5) = [v13 performWithTransactionContext:v11 error:a5 block:&v18];

  if (a5 && v28[5])
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_lock_currentAnalysis, v28[5]);
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  self->_queue_needsMaintenanceAnalysis = v15;
  [v14 invalidate];
  [v9 invalidate];
  v16 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v16;
}

BOOL __97__HDMCAnalysisManager__queue_analyzeNowWithForceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _queue_computeAnalysisWithDatabaseAccessibilityAssertion:*(a1 + 40) forceIncludeCycles:*(a1 + 56) forceAnalyzeCompleteHistory:*(a1 + 57) error:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (id)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:(id)a3 forceIncludeCycles:(BOOL)a4 forceAnalyzeCompleteHistory:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v380 = *MEMORY[0x277D85DE8];
  v259 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v261 = self;
  if (self->_test_analysis)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      test_analysis = self->_test_analysis;
      *buf = 138543618;
      v364 = v13;
      v365 = 2112;
      v366 = test_analysis;
      v15 = v13;
      _os_log_impl(&dword_2293D1000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning test analysis: %@", buf, 0x16u);
    }

    observers = self->_observers;
    v359[0] = MEMORY[0x277D85DD0];
    v359[1] = 3221225472;
    v359[2] = __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke;
    v359[3] = &unk_27865A8A8;
    v359[4] = self;
    [(HKObserverSet *)observers notifyObservers:v359];
    v17 = self->_test_analysis;
    goto LABEL_226;
  }

  v256 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v19 = [WeakRetained daemon];
  v20 = [v19 behavior];
  v21 = [v20 tinkerModeEnabled];

  if (!v21)
  {
    v28 = v261;
    if ([(HKObserverSet *)v261->_userInitiatedObservers count])
    {
      v252 = 1;
    }

    else
    {
      v29 = [MEMORY[0x277CCDD30] sharedBehavior];
      v252 = [v29 isAppleWatch] | v8;

      v28 = v261;
    }

    v262 = [(HKCalendarCache *)v28->_calendarCache currentCalendar];
    v30 = HKMCTodayIndex();
    v31 = objc_loadWeakRetained(&v261->_profile);
    v32 = [v31 featureSettingsManager];
    v33 = *MEMORY[0x277CCC090];
    v358 = 0;
    obj = [v32 featureSettingsForFeatureIdentifier:v33 error:&v358];
    v34 = v358;

    if (!obj)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v55 = v34;
      if (v55)
      {
        v56 = v55;
        if (v256)
        {
          v57 = v55;
          v17 = 0;
          v55 = v56;
          *v256 = v56;
        }

        else
        {
          _HKLogDroppedError();
          v17 = 0;
          v55 = v56;
        }

        v64 = v56;
      }

      else
      {
        v17 = 0;
        v64 = 0;
      }

      goto LABEL_225;
    }

    heartRateFeatureStatusManager = v261->_heartRateFeatureStatusManager;
    v357 = v34;
    v254 = [(HKFeatureStatusManager *)heartRateFeatureStatusManager featureStatusWithError:&v357];
    v36 = v357;

    if (!v254)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v58 = v36;
      if (v58)
      {
        v59 = v58;
        if (v256)
        {
          v60 = v58;
          v17 = 0;
          v58 = v59;
          *v256 = v59;
        }

        else
        {
          _HKLogDroppedError();
          v17 = 0;
          v58 = v59;
        }

        v64 = v59;
      }

      else
      {
        v17 = 0;
        v64 = 0;
      }

      goto LABEL_224;
    }

    v37 = *MEMORY[0x277CCBEA0];
    v38 = [(NSArray *)v254 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v250 = [v38 areAllRequirementsSatisfied];

    _HKInitializeLogging();
    v39 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      v41 = v40;
      v42 = @"NO";
      if (v250)
      {
        v42 = @"YES";
      }

      *buf = 138543618;
      v364 = v40;
      v365 = 2112;
      v366 = v42;
      _os_log_impl(&dword_2293D1000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] Use heart rate input: %@", buf, 0x16u);
    }

    wristTemperatureFeatureStatusManager = v261->_wristTemperatureFeatureStatusManager;
    v356 = v36;
    v253 = [(HKFeatureStatusManager *)wristTemperatureFeatureStatusManager featureStatusWithError:&v356];
    v44 = v356;

    if (!v253)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v61 = v44;
      if (v61)
      {
        v62 = v61;
        if (v256)
        {
          v63 = v61;
          v17 = 0;
          v61 = v62;
          *v256 = v62;
        }

        else
        {
          _HKLogDroppedError();
          v17 = 0;
          v61 = v62;
        }

        v64 = v62;
      }

      else
      {
        v17 = 0;
        v64 = 0;
      }

      goto LABEL_223;
    }

    v45 = [(NSArray *)v253 objectForKeyedSubscript:v37];
    v245 = [v45 areAllRequirementsSatisfied];

    _HKInitializeLogging();
    v46 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = objc_opt_class();
      v48 = v47;
      v49 = @"NO";
      if (v245)
      {
        v49 = @"YES";
      }

      *buf = 138543618;
      v364 = v47;
      v365 = 2112;
      v366 = v49;
      _os_log_impl(&dword_2293D1000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Use wrist temperature input: %@", buf, 0x16u);
    }

    deviationsFeatureStatusManager = v261->_deviationsFeatureStatusManager;
    v355 = v44;
    v251 = [(HKFeatureStatusManager *)deviationsFeatureStatusManager featureStatusWithError:&v355];
    v51 = v355;

    if (v261->_deviationsFeatureStatusManager && !v251)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v52 = v51;
      if (v52)
      {
        v53 = v52;
        if (v256)
        {
          v54 = v52;
          v17 = 0;
          v52 = v53;
          *v256 = v53;
        }

        else
        {
          _HKLogDroppedError();
          v17 = 0;
          v52 = v53;
        }

        v64 = v53;
      }

      else
      {
        v17 = 0;
        v64 = 0;
      }

      goto LABEL_222;
    }

    v246 = [(HDMCAnalysisManager *)v261 _processorConfigurationForTodayIndex:v30 deviationsFeatureStatus:v251 calendar:v262];
    v260 = (*(v261->_dayStreamProcessorProvider + 2))();
    v244 = (*(v261->_historicalAnalyzerProvider + 2))();
    if (!v260)
    {
      [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:a2 forceIncludeCycles:v261 forceAnalyzeCompleteHistory:? error:?];
    }

    if (!v244)
    {
      [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:a2 forceIncludeCycles:v261 forceAnalyzeCompleteHistory:? error:?];
    }

    v243 = [[HDMCSymptomHistoryBuilder alloc] initWithCurrentDayIndex:v30];
    v349 = 0;
    v350 = &v349;
    v351 = 0x3032000000;
    v352 = __Block_byref_object_copy__1;
    v353 = __Block_byref_object_dispose__1;
    v354 = 0;
    v345 = 0;
    v346 = &v345;
    v347 = 0x2020000000;
    v348 = 0;
    v341 = 0;
    v342 = &v341;
    v343 = 0x2020000000;
    v344 = 0;
    v335 = 0;
    v336 = &v335;
    v337 = 0x3032000000;
    v338 = __Block_byref_object_copy__1;
    v339 = __Block_byref_object_dispose__1;
    v340 = 0;
    v329 = 0;
    v330 = &v329;
    v331 = 0x3032000000;
    v332 = __Block_byref_object_copy__1;
    v333 = __Block_byref_object_dispose__1;
    v334 = 0;
    v323 = 0;
    v324 = &v323;
    v325 = 0x3032000000;
    v326 = __Block_byref_object_copy__1;
    v327 = __Block_byref_object_dispose__1;
    v328 = 0;
    v65 = _HKLogPersistedSignposts();
    spid = _HKLogSignpostIDGenerate();

    _HKInitializeLogging();
    v66 = _HKLogPersistedSignposts();
    v67 = os_signpost_enabled(v66);

    if (v67)
    {
      v68 = _HKLogPersistedSignposts();
      v69 = v68;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
      {
        v70 = [MEMORY[0x277CCABB0] numberWithBool:v250];
        *buf = 138412290;
        v364 = v70;
        _os_signpost_emit_with_name_impl(&dword_2293D1000, v69, OS_SIGNPOST_INTERVAL_BEGIN, spid, "menstrual-cycles-analysis", "useHeartRateInput=%@", buf, 0xCu);
      }
    }

    v71 = [(HKObserverSet *)v261->_userInitiatedObservers count];
    v72 = v30 - *MEMORY[0x277CCCEF8] + 1;
    if (v71)
    {
      v73 = 1;
    }

    else
    {
      v73 = v7;
    }

    v74 = v73 == 0;
    v240 = *MEMORY[0x277CCCEF8] + 1;
    if (v73)
    {
      v75 = *(MEMORY[0x277CCBBF8] + 8);
    }

    else
    {
      v75 = *MEMORY[0x277CCCEF8] + 1;
    }

    v257 = v75;
    v76 = v30 - *MEMORY[0x277CCCEF8] + 1;
    if (v74)
    {
      v77 = v30 - *MEMORY[0x277CCCEF8] + 1;
    }

    else
    {
      v77 = *MEMORY[0x277CCBBF8];
    }

    v248 = v77;
    v78 = [MEMORY[0x277CBEAA8] date];
    v79 = [v78 hk_morningIndexWithCalendar:v262];

    v80 = MEMORY[0x277D105E8];
    v81 = objc_loadWeakRetained(&v261->_profile);
    calendarCache = v261->_calendarCache;
    v322 = v51;
    v247 = [v80 hdmc_ongoingFactorsOnDayIndex:v76 profile:v81 calendarCache:calendarCache error:&v322];
    v83 = v322;

    _HKInitializeLogging();
    v84 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = objc_opt_class();
      v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v247, "count")}];
      *buf = 138543618;
      v364 = v85;
      v365 = 2112;
      v366 = v86;
      _os_log_impl(&dword_2293D1000, v84, OS_LOG_TYPE_DEFAULT, "[%{public}@] Total ongoing cycle factors that overlap time range: %@", buf, 0x16u);
    }

    if (v247)
    {
      v321 = v83;
      v87 = [(HDMCAnalysisManager *)v261 initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion:v259 error:&v321];
      v88 = v321;

      if (v87)
      {
        v319 = 0u;
        v320 = 0u;
        v317 = 0u;
        v318 = 0u;
        v89 = v247;
        v90 = [v89 countByEnumeratingWithState:&v317 objects:v379 count:16];
        if (v90)
        {
          v91 = *v318;
          do
          {
            for (i = 0; i != v90; ++i)
            {
              if (*v318 != v91)
              {
                objc_enumerationMutation(v89);
              }

              v93 = *(*(&v317 + 1) + 8 * i);
              [v93 hkmc_cycleFactor];
              v94 = HAMenstrualAlgorithmsPhaseFromHKMCCycleFactor();
              v95 = [v93 startDate];
              [v260 beginPhase:v94 onJulianDay:{objc_msgSend(v95, "hk_dayIndexWithCalendar:", v262)}];
            }

            v90 = [v89 countByEnumeratingWithState:&v317 objects:v379 count:16];
          }

          while (v90);
        }

        v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v313 = 0;
        v314 = &v313;
        v315 = 0x2020000000;
        v316 = 0;
        v309 = 0;
        v310 = &v309;
        v311 = 0x2020000000;
        v312 = 0;
        if (v250)
        {
          v97 = [HDMCHeartStatisticsEnumerator alloc];
          v98 = objc_loadWeakRetained(&v261->_profile);
          v99 = [(HDMCHeartStatisticsEnumerator *)v97 initWithProfile:v98 calendarCache:v261->_calendarCache dayIndexRange:v79 - 100 databaseAccessibilityAssertion:100, v259];

          _HKInitializeLogging();
          v100 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            v101 = objc_opt_class();
            *buf = 138543362;
            v364 = v101;
            _os_log_impl(&dword_2293D1000, v100, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating heart rate statistics", buf, 0xCu);
          }

          v308 = v88;
          v304[0] = MEMORY[0x277D85DD0];
          v304[1] = 3221225472;
          v304[2] = __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_356;
          v304[3] = &unk_27865A8D0;
          v305 = v96;
          v306 = &v313;
          v307 = &v309;
          v102 = [(HDMCHeartStatisticsEnumerator *)v99 enumerateWithError:&v308 handler:v304];
          v103 = v308;

          if (!v102)
          {
            _HKInitializeLogging();
            v104 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              objc_opt_class();
              [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
            }
          }
        }

        else
        {
          v103 = v88;
        }

        v112 = [HDMCDaySummaryEnumerator alloc];
        v113 = objc_loadWeakRetained(&v261->_profile);
        LOBYTE(v231) = v245;
        v239 = [(HDMCDaySummaryEnumerator *)v112 initWithProfile:v113 calendarCache:v261->_calendarCache dayIndexRange:v248 ascending:v257 includeFactors:1 includeWristTemperature:1, v231];

        _HKInitializeLogging();
        v114 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          v115 = objc_opt_class();
          *buf = 138543362;
          v364 = v115;
          _os_log_impl(&dword_2293D1000, v114, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating day summaries", buf, 0xCu);
        }

        v300 = 0;
        v301 = &v300;
        v302 = 0x2020000000;
        v303 = v79 - 101;
        v299 = v103;
        v282[0] = MEMORY[0x277D85DD0];
        v282[1] = 3221225472;
        v282[2] = __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_359;
        v282[3] = &unk_27865A8F8;
        v294 = v76;
        v295 = v240;
        v282[4] = v261;
        v287 = &v345;
        v116 = v260;
        v297 = v250;
        v283 = v116;
        v288 = &v300;
        v249 = v96;
        v284 = v249;
        v296 = v30;
        v234 = v243;
        v285 = v234;
        v289 = &v349;
        v290 = &v335;
        v291 = &v329;
        v298 = v252;
        v292 = &v323;
        v293 = &v341;
        v233 = v244;
        v286 = v233;
        v117 = [(HDMCDaySummaryEnumerator *)v239 enumerateWithError:&v299 handler:v282];
        v241 = v299;

        if (v250)
        {
          v118 = v301[3];
          if (v118 < v79 - 1)
          {
            v119 = v118 + 1;
            do
            {
              v120 = [MEMORY[0x277CCABB0] numberWithInteger:v119];
              v121 = [(NSArray *)v249 objectForKeyedSubscript:v120];
              v122 = v121 == 0;

              if (!v122)
              {
                v123 = MEMORY[0x277D0FC88];
                v124 = [MEMORY[0x277CCABB0] numberWithInteger:v119];
                v125 = [(NSArray *)v249 objectForKeyedSubscript:v124];
                v126 = [v123 hkmc_dayInputWithHeartStatistics:v125];
                [v116 appendDay:v126];
              }

              v301[3] = v119++;
            }

            while (v79 != v119);
          }
        }

        _HKInitializeLogging();
        v127 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          v128 = objc_opt_class();
          v236 = [MEMORY[0x277CCABB0] numberWithInteger:v346[3]];
          v258 = [(NSArray *)v246 birthDateComponents];
          v237 = [v258 hk_dayIndexDateDescription];
          v129 = HKSensitiveLogItem();
          v235 = [(NSArray *)v246 userReportedCycleLength];
          v130 = [(NSArray *)v246 julianDayOfUserReportedCycleLength];
          v131 = [(NSArray *)v246 userReportedMenstruationLength];
          v132 = [(NSArray *)v246 julianDayOfUserReportedMenstruationLength];
          v133 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCSettingsManager dayStreamProcessorAlgorithmVersion](v261->_settingsManager, "dayStreamProcessorAlgorithmVersion")}];
          *buf = 138545154;
          v364 = v128;
          v365 = 2112;
          v366 = v236;
          v367 = 2112;
          v368 = v129;
          v369 = 2112;
          v370 = v235;
          v371 = 2112;
          v372 = v130;
          v373 = 2112;
          v374 = v131;
          v375 = 2112;
          v376 = v132;
          v377 = 2112;
          v378 = v133;
          _os_log_impl(&dword_2293D1000, v127, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing %@ summaries with user entered birthdate: %@, cycle length: %@ (%@), period length: %@ (%@) alg version %@", buf, 0x52u);
        }

        if (v252)
        {
          _HKInitializeLogging();
          v134 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
          {
            v135 = objc_opt_class();
            v136 = [MEMORY[0x277CCABB0] numberWithInteger:v342[3]];
            *buf = 138543618;
            v364 = v135;
            v365 = 2112;
            v366 = v136;
            _os_log_impl(&dword_2293D1000, v134, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing %@ summaries for cycles", buf, 0x16u);
          }
        }

        else
        {
          _HKInitializeLogging();
          v134 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
          {
            v137 = objc_opt_class();
            *buf = 138543362;
            v364 = v137;
            _os_log_impl(&dword_2293D1000, v134, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not analyzing for cycles", buf, 0xCu);
          }
        }

        if (v117)
        {
          test_algorithmsAnalysis = v261->_test_algorithmsAnalysis;
          if (test_algorithmsAnalysis)
          {
            v139 = test_algorithmsAnalysis;
            goto LABEL_142;
          }

          v150 = [v324[5] integerValue];
          v281 = v241;
          v151 = [v116 analyzeWithMostRecentMenstrualFlowJulianDayUpdated:v150 error:&v281];
          v152 = v281;

          v139 = v151;
          if (v139)
          {
            v241 = v152;
LABEL_142:
            _HKInitializeLogging();
            v238 = v139;
            v153 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v154 = objc_opt_class();
              v155 = [(HAMenstrualAlgorithmsAnalysis *)v139 hkmc_description];
              v156 = HKSensitiveLogItem();
              *buf = 138543618;
              v364 = v154;
              v365 = 2112;
              v366 = v156;
              _os_log_impl(&dword_2293D1000, v153, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received analysis from algorithms: %@", buf, 0x16u);
            }

            v279 = 0u;
            v280 = 0u;
            v277 = 0u;
            v278 = 0u;
            v157 = [(HAMenstrualAlgorithmsAnalysis *)v238 menstruationPredictions];
            v158 = [v157 countByEnumeratingWithState:&v277 objects:v362 count:16];
            if (v158)
            {
              v159 = *v278;
              do
              {
                for (j = 0; j != v158; ++j)
                {
                  if (*v278 != v159)
                  {
                    objc_enumerationMutation(v157);
                  }

                  v161 = *(*(&v277 + 1) + 8 * j);
                  _HKInitializeLogging();
                  v162 = *MEMORY[0x277CCC2E8];
                  if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                  {
                    v163 = objc_opt_class();
                    v164 = [v161 hkmc_description];
                    v165 = HKSensitiveLogItem();
                    *buf = 138543618;
                    v364 = v163;
                    v365 = 2112;
                    v366 = v165;
                    _os_log_impl(&dword_2293D1000, v162, OS_LOG_TYPE_DEFAULT, "[%{public}@] Menstruation prediction: %@", buf, 0x16u);
                  }
                }

                v158 = [v157 countByEnumeratingWithState:&v277 objects:v362 count:16];
              }

              while (v158);
            }

            v275 = 0u;
            v276 = 0u;
            v273 = 0u;
            v274 = 0u;
            v166 = [(HAMenstrualAlgorithmsAnalysis *)v238 fertilityPredictions];
            v167 = [v166 countByEnumeratingWithState:&v273 objects:v361 count:16];
            if (v167)
            {
              v168 = *v274;
              do
              {
                for (k = 0; k != v167; ++k)
                {
                  if (*v274 != v168)
                  {
                    objc_enumerationMutation(v166);
                  }

                  v170 = *(*(&v273 + 1) + 8 * k);
                  _HKInitializeLogging();
                  v171 = *MEMORY[0x277CCC2E8];
                  if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
                  {
                    v172 = objc_opt_class();
                    v173 = [v170 hkmc_description];
                    v174 = HKSensitiveLogItem();
                    *buf = 138543618;
                    v364 = v172;
                    v365 = 2112;
                    v366 = v174;
                    _os_log_impl(&dword_2293D1000, v171, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fertility prediction: %@", buf, 0x16u);
                  }
                }

                v167 = [v166 countByEnumeratingWithState:&v273 objects:v361 count:16];
              }

              while (v167);
            }

            if (!v252)
            {
              v177 = 0;
              goto LABEL_184;
            }

            test_algorithmsCycles = v261->_test_algorithmsCycles;
            if (test_algorithmsCycles)
            {
              v176 = test_algorithmsCycles;
LABEL_170:
              _HKInitializeLogging();
              v180 = *MEMORY[0x277CCC2E8];
              if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
              {
                v181 = objc_opt_class();
                v182 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](v176, "count")}];
                *buf = 138543618;
                v364 = v181;
                v365 = 2112;
                v366 = v182;
                _os_log_impl(&dword_2293D1000, v180, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %@ cycles from historical analyzer", buf, 0x16u);
              }

              v270 = 0u;
              v271 = 0u;
              v268 = 0u;
              v269 = 0u;
              v177 = v176;
              v183 = [(NSArray *)v177 countByEnumeratingWithState:&v268 objects:v360 count:16];
              if (v183)
              {
                v184 = *v269;
                do
                {
                  for (m = 0; m != v183; ++m)
                  {
                    if (*v269 != v184)
                    {
                      objc_enumerationMutation(v177);
                    }

                    v186 = *(*(&v268 + 1) + 8 * m);
                    _HKInitializeLogging();
                    v187 = *MEMORY[0x277CCC2E8];
                    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEBUG))
                    {
                      v188 = v187;
                      if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
                      {
                        v189 = objc_opt_class();
                        v190 = [v186 hkmc_description];
                        *buf = 138543618;
                        v364 = v189;
                        v365 = 2112;
                        v366 = v190;
                        _os_log_debug_impl(&dword_2293D1000, v188, OS_LOG_TYPE_DEBUG, "[%{public}@] Cycle: %@", buf, 0x16u);
                      }
                    }
                  }

                  v183 = [(NSArray *)v177 countByEnumeratingWithState:&v268 objects:v360 count:16];
                }

                while (v183);
              }

LABEL_184:
              _HKInitializeLogging();
              v191 = _HKLogPersistedSignposts();
              v192 = os_signpost_enabled(v191);

              if (v192)
              {
                v193 = _HKLogPersistedSignposts();
                v194 = v193;
                if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v193))
                {
                  v195 = [MEMORY[0x277CCABB0] numberWithBool:v250];
                  *buf = 138412290;
                  v364 = v195;
                  _os_signpost_emit_with_name_impl(&dword_2293D1000, v194, OS_SIGNPOST_INTERVAL_END, spid, "menstrual-cycles-analysis", "useHeartRateInput=%@", buf, 0xCu);
                }
              }

              v196 = [(HDMCSymptomHistoryBuilder *)v234 recentSymptoms];
              v197 = v350[5];
              v198 = v336[5];
              v199 = v330[5];
              v200 = v314[3];
              v201 = v310[3];
              v202 = [(NSArray *)v251 onboardingRecord];
              v203 = [v202 featureSettings];
              BYTE1(v232) = v245;
              LOBYTE(v232) = v250;
              v204 = [(HDMCAnalysisManager *)v261 _analysisWithAlgorithmsAnalysis:v238 algorithmsCycles:v177 recentSymptoms:v196 mostRecentBasalBodyTemperature:v197 lastLoggedDayIndex:v198 lastMenstrualFlowDayIndex:v199 numberOfDailySleepHeartRateStatisticsForPast100Days:v200 numberOfDailyAwakeHeartRateStatisticsForPast100Days:v201 featureSettings:obj useHeartRateInput:v232 useWristTemperatureInput:v203 deviationsFeatureSettings:?];

              _HKInitializeLogging();
              v205 = *MEMORY[0x277CCC2E8];
              if (os_signpost_enabled(*MEMORY[0x277CCC2E8]))
              {
                v206 = v205;
                if (os_signpost_enabled(v206))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_2293D1000, v206, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "hdmc_analysisSampleInfo", "", buf, 2u);
                }
              }

              v207 = MEMORY[0x277D10848];
              v267 = 0;
              v208 = objc_loadWeakRetained(&v261->_profile);
              v266 = v241;
              LOBYTE(v207) = [v207 hdmc_analysisSampleInfo:&v267 forProfile:v208 error:&v266];
              v209 = v267;
              v64 = v266;

              if (v207)
              {
                [v204 setLatestSampleInfo:v209];
                _HKInitializeLogging();
                v210 = *MEMORY[0x277CCC2E8];
                if (os_signpost_enabled(*MEMORY[0x277CCC2E8]))
                {
                  v211 = v210;
                  if (os_signpost_enabled(v211))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_2293D1000, v211, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "hdmc_analysisSampleInfo", "", buf, 2u);
                  }
                }

                _HKInitializeLogging();
                v212 = *MEMORY[0x277CCC2E8];
                if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                {
                  v213 = objc_opt_class();
                  v214 = HKSensitiveLogItem();
                  *buf = 138543618;
                  v364 = v213;
                  v365 = 2112;
                  v366 = v214;
                  _os_log_impl(&dword_2293D1000, v212, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did update analysis: %@", buf, 0x16u);
                }

                objc_storeStrong(&v261->_queue_lastFeatureSettings, obj);
                v215 = v261->_observers;
                v263[0] = MEMORY[0x277D85DD0];
                v263[1] = 3221225472;
                v263[2] = __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_363;
                v263[3] = &unk_27865A8A8;
                v216 = v204;
                v264 = v216;
                [(HKObserverSet *)v215 notifyObservers:v263];
                v17 = v216;
                v217 = v264;
              }

              else
              {
                _HKInitializeLogging();
                v218 = *MEMORY[0x277CCC2E8];
                if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
                {
                  objc_opt_class();
                  [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
                }

                v219 = v64;
                v220 = v219;
                if (v219)
                {
                  if (v256)
                  {
                    v221 = v219;
                    *v256 = v220;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                _HKInitializeLogging();
                v225 = *MEMORY[0x277CCC2E8];
                if (!os_signpost_enabled(*MEMORY[0x277CCC2E8]))
                {
                  v17 = 0;
                  goto LABEL_218;
                }

                v217 = v225;
                if (os_signpost_enabled(v217))
                {
                  *v265 = 0;
                  _os_signpost_emit_with_name_impl(&dword_2293D1000, v217, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "hdmc_analysisSampleInfo", "", v265, 2u);
                }

                v17 = 0;
              }

LABEL_218:
LABEL_219:

              v147 = v238;
              goto LABEL_220;
            }

            v272 = v241;
            v178 = [v233 analyzeWithError:&v272];
            v179 = v272;

            v176 = v178;
            if (v176)
            {
              v241 = v179;
              goto LABEL_170;
            }

            _HKInitializeLogging();
            v228 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
            {
              objc_opt_class();
              [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
            }

            v229 = v179;
            v177 = v229;
            if (v229)
            {
              if (v256)
              {
                v230 = v229;
                v17 = 0;
                *v256 = v177;
LABEL_237:
                v64 = v177;
                goto LABEL_219;
              }

              _HKLogDroppedError();
            }

            v17 = 0;
            goto LABEL_237;
          }

          _HKInitializeLogging();
          v222 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
          {
            objc_opt_class();
            [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
          }

          v223 = v152;
          v147 = v223;
          if (v223)
          {
            if (v256)
            {
              v148 = v223;
              v224 = v223;
              goto LABEL_136;
            }

            _HKLogDroppedError();
          }
        }

        else
        {
          _HKInitializeLogging();
          v140 = _HKLogPersistedSignposts();
          v141 = os_signpost_enabled(v140);

          if (v141)
          {
            v142 = _HKLogPersistedSignposts();
            v143 = v142;
            if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v142))
            {
              v144 = [MEMORY[0x277CCABB0] numberWithBool:v250];
              *buf = 138412290;
              v364 = v144;
              _os_signpost_emit_with_name_impl(&dword_2293D1000, v143, OS_SIGNPOST_INTERVAL_END, spid, "menstrual-cycles-analysis", "useHeartRateInput=%@", buf, 0xCu);
            }
          }

          _HKInitializeLogging();
          v145 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
          {
            objc_opt_class();
            [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
          }

          v146 = v241;
          v147 = v146;
          if (v146)
          {
            if (v256)
            {
              v148 = v146;
              v149 = v146;
LABEL_136:
              v17 = 0;
              v147 = v148;
              *v256 = v148;
              v64 = v148;
LABEL_220:

              _Block_object_dispose(&v300, 8);
              _Block_object_dispose(&v309, 8);
              _Block_object_dispose(&v313, 8);
              v107 = v249;
              goto LABEL_221;
            }

            _HKLogDroppedError();
          }
        }

        v17 = 0;
        v64 = v147;
        goto LABEL_220;
      }

      v110 = v88;
      v107 = v110;
      if (v110)
      {
        if (v256)
        {
          v108 = v110;
          v111 = v110;
          goto LABEL_102;
        }

        _HKLogDroppedError();
      }
    }

    else
    {
      _HKInitializeLogging();
      v105 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v106 = v83;
      v107 = v106;
      if (v106)
      {
        if (v256)
        {
          v108 = v106;
          v109 = v106;
LABEL_102:
          v17 = 0;
          v107 = v108;
          *v256 = v108;
          v64 = v108;
LABEL_221:

          _Block_object_dispose(&v323, 8);
          _Block_object_dispose(&v329, 8);

          _Block_object_dispose(&v335, 8);
          _Block_object_dispose(&v341, 8);
          _Block_object_dispose(&v345, 8);
          _Block_object_dispose(&v349, 8);

          v52 = v246;
LABEL_222:

          v61 = v251;
LABEL_223:

          v58 = v253;
LABEL_224:

          v55 = v254;
LABEL_225:

          goto LABEL_226;
        }

        _HKLogDroppedError();
      }
    }

    v17 = 0;
    v64 = v107;
    goto LABEL_221;
  }

  _HKInitializeLogging();
  v22 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    *buf = 138543362;
    v364 = objc_opt_class();
    v24 = v364;
    _os_log_impl(&dword_2293D1000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping analysis since this is not a primary profile", buf, 0xCu);
  }

  v25 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
  v26 = v25;
  if (v25)
  {
    if (v256)
    {
      v27 = v25;
      *v256 = v26;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v17 = 0;
LABEL_226:

  v226 = *MEMORY[0x277D85DE8];

  return v17;
}

void __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_356(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "dayIndex")}];
  [v3 setObject:v5 forKeyedSubscript:v6];

  v7 = [v5 tenthPercentileAsleepHeartRateStatistics];

  if (v7)
  {
    ++*(*(a1[5] + 8) + 24);
  }

  v8 = [v5 tenthPercentileAwakeHeartRateStatistics];

  if (v8)
  {
    ++*(*(a1[6] + 8) + 24);
  }
}

void __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_359(uint64_t a1, void *a2)
{
  v47 = a2;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v3 = [v47 _daySummaryWithOverrideSourceIDBySourceID:0 ignoreCycleFactors:objc_msgSend(*(*(a1 + 32) + 48) ignoreOvulationTestResults:{"internalCycleFactorsOverrideEnabled"), objc_msgSend(*(*(a1 + 32) + 48), "internalIgnoreOvulationTestResultsEnabled")}];

    v4 = v3;
  }

  else
  {
    v4 = v47;
  }

  v48 = v4;
  v5 = [v4 dayIndex];
  v6 = [MEMORY[0x277D0FC88] hkmc_dayInputWithDaySummary:v48];
  v7 = *(a1 + 128);
  if (v5 >= v7 && v5 - v7 < *(a1 + 136))
  {
    if (!*(*(*(a1 + 72) + 8) + 24))
    {
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x277D0FC88] hkmc_emptyDayInputWithDayIndex:v7 - 10];
      [v9 appendDay:v10];
    }

    if (*(a1 + 152) == 1)
    {
      v11 = *(*(*(a1 + 80) + 8) + 24) + 1;
      if (v11 < v5)
      {
        do
        {
          v12 = *(a1 + 48);
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            v15 = MEMORY[0x277D0FC88];
            v16 = *(a1 + 40);
            v17 = *(a1 + 48);
            v18 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
            v19 = [v17 objectForKeyedSubscript:v18];
            v20 = [v15 hkmc_dayInputWithHeartStatistics:v19];
            [v16 appendDay:v20];
          }

          ++v11;
        }

        while (v5 != v11);
      }

      v21 = *(a1 + 48);
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      v23 = [v21 objectForKeyedSubscript:v22];

      if (v23)
      {
        v24 = *(a1 + 48);
        v25 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
        v26 = [v24 objectForKeyedSubscript:v25];
        [v6 hkmc_updateWithHeartStatistics:v26];
      }

      *(*(*(a1 + 80) + 8) + 24) = v5;
    }

    [*(a1 + 40) appendDay:v6];
    [*(a1 + 56) addSymptoms:objc_msgSend(v48 forDayIndex:{"symptoms"), v5}];
    v27 = [v48 basalBodyTemperature];
    if (v27)
    {
      v28 = *(a1 + 144) - 14;

      if (v5 > v28)
      {
        v29 = [v48 basalBodyTemperature];
        v30 = *(*(a1 + 88) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;
      }
    }

    if ([v48 isDataLogged])
    {
      v32 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      v33 = *(*(a1 + 96) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;
    }

    else
    {
      v35 = *(*(a1 + 96) + 8);
      v36 = *(v35 + 40);
      v34 = *(v35 + 40);
      *(v35 + 40) = v36;
    }

    if ([v48 menstrualFlow])
    {
      v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v48, "dayIndex")}];
      v38 = *(*(a1 + 104) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v48, "menstrualFlowModificationDayIndex")}];
      v41 = *(*(a1 + 112) + 8);
      v42 = *(v41 + 40);
      *(v41 + 40) = v40;
    }

    v43 = *(a1 + 40);
    HKMCAppendCycleFactorsPhaseFromDaySummary();
    ++*(*(*(a1 + 72) + 8) + 24);
  }

  if (*(a1 + 153) == 1)
  {
    if (!*(*(*(a1 + 120) + 8) + 24))
    {
      v44 = *(a1 + 64);
      v45 = [MEMORY[0x277D0FC88] hkmc_emptyDayInputWithDayIndex:v5 - 10];
      [v44 appendDay:v45];
    }

    v46 = *(a1 + 64);
    HKMCAppendCycleFactorsPhaseFromDaySummary();
    [*(a1 + 64) appendDay:v6];
    ++*(*(*(a1 + 120) + 8) + 24);
  }
}

- (id)_analysisWithAlgorithmsAnalysis:(id)a3 algorithmsCycles:(id)a4 recentSymptoms:(unint64_t)a5 mostRecentBasalBodyTemperature:(id)a6 lastLoggedDayIndex:(id)a7 lastMenstrualFlowDayIndex:(id)a8 numberOfDailySleepHeartRateStatisticsForPast100Days:(int64_t)a9 numberOfDailyAwakeHeartRateStatisticsForPast100Days:(int64_t)a10 featureSettings:(id)a11 useHeartRateInput:(BOOL)a12 useWristTemperatureInput:(BOOL)a13 deviationsFeatureSettings:(id)a14
{
  v133 = *MEMORY[0x277D85DE8];
  v107 = a3;
  v106 = a4;
  v105 = a6;
  v104 = a7;
  v103 = a8;
  v102 = a11;
  v97 = a14;
  v112 = self;
  dispatch_assert_queue_V2(self->_queue);
  v111 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = HKMCCycleFactorsTypes();
  v19 = [obj countByEnumeratingWithState:&v122 objects:v132 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v123;
    v23 = *MEMORY[0x277D10C08];
    do
    {
      v24 = 0;
      v25 = v21;
      do
      {
        if (*v123 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v122 + 1) + 8 * v24);
        v27 = MEMORY[0x277D10848];
        WeakRetained = objc_loadWeakRetained(&v112->_profile);
        v29 = [MEMORY[0x277CBEAA8] distantFuture];
        v30 = HDSampleEntityPredicateForEndDate();
        v121 = v25;
        v31 = [v27 samplesWithType:v26 profile:WeakRetained encodingOptions:0 predicate:v30 limit:v23 anchor:0 error:&v121];
        v21 = v121;

        [v111 addObjectsFromArray:v31];
        ++v24;
        v25 = v21;
      }

      while (v20 != v24);
      v20 = [obj countByEnumeratingWithState:&v122 objects:v132 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  v32 = [v102 menstruationProjectionsEnabled];
  v33 = [v102 fertileWindowProjectionsEnabled];
  v34 = [v111 copy];
  obja = v33;
  [(HDMCAnalysisManager *)v112 _forceDisablePredictionsFromOngoingCycleFactors:v34 menstruationProjectionsEnabled:v32 fertileWindowProjectionsEnabled:v33 useHeartRateInput:a12 useWristTemperatureInput:a13];

  v35 = v107;
  v36 = [v107 hkmc_statistics];
  v37 = [v36 cycleLengthMedian];

  v38 = MEMORY[0x277CCC2E8];
  if (!v37)
  {
    v39 = objc_loadWeakRetained(&v112->_profile);
    v40 = _UserCharacteristicOfType(v39, *MEMORY[0x277CCDEE8]);

    _HKInitializeLogging();
    v41 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      v43 = objc_opt_class();
      v44 = v43;
      v45 = HKSensitiveLogItem();
      *buf = 138543618;
      v127 = v43;
      v128 = 2112;
      v129 = v45;
      _os_log_impl(&dword_2293D1000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replacing statistics cycle length with user entered cycle length: %@", buf, 0x16u);

      v35 = v107;
    }

    if (v40)
    {
      v46 = MEMORY[0x277CCABB0];
      v47 = [MEMORY[0x277CCDAB0] dayUnit];
      [v40 doubleValueForUnit:v47];
      v48 = [v46 numberWithDouble:?];

      [v36 setCycleLengthMedian:v48];
    }
  }

  v49 = [v36 menstruationLengthMedian];

  if (!v49)
  {
    v50 = objc_loadWeakRetained(&v112->_profile);
    v51 = _UserCharacteristicOfType(v50, *MEMORY[0x277CCDEF0]);

    _HKInitializeLogging();
    v52 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v52;
      v54 = objc_opt_class();
      v55 = v54;
      v56 = HKSensitiveLogItem();
      *buf = 138543618;
      v127 = v54;
      v128 = 2112;
      v129 = v56;
      _os_log_impl(&dword_2293D1000, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replacing statistics period length with user entered period length: %@", buf, 0x16u);

      v35 = v107;
    }

    if (v51)
    {
      v57 = MEMORY[0x277CCABB0];
      v58 = [MEMORY[0x277CCDAB0] dayUnit];
      [v51 doubleValueForUnit:v58];
      v59 = [v57 numberWithDouble:?];

      [v36 setMenstruationLengthMedian:v59];
    }
  }

  if (a13)
  {
    v101 = [(HKMCSettingsManager *)v112->_settingsManager dayStreamProcessorPredictionPrimarySourceOverride];
    if (!v32)
    {
LABEL_24:
      v60 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v101 = 0;
    if (!v32)
    {
      goto LABEL_24;
    }
  }

  v60 = [(HKMCSettingsManager *)v112->_settingsManager areAllMenstruationPredictionAlgorithmAttributesSupported];
LABEL_27:
  if (obja)
  {
    v61 = [(HKMCSettingsManager *)v112->_settingsManager areAllFertileWindowPredictionAlgorithmAttributesSupported];
  }

  else
  {
    v61 = 0;
  }

  _HKInitializeLogging();
  v62 = *v38;
  if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
  {
    v63 = v62;
    v64 = objc_opt_class();
    v65 = @"OFF";
    if (v60)
    {
      v66 = @"ON";
    }

    else
    {
      v66 = @"OFF";
    }

    *buf = 138543874;
    v127 = v64;
    v129 = v66;
    v128 = 2112;
    if (v61)
    {
      v65 = @"ON";
    }

    v130 = 2112;
    v131 = v65;
    v67 = v64;
    _os_log_impl(&dword_2293D1000, v63, OS_LOG_TYPE_DEFAULT, "[%{public}@] Surfacing analysis with period predictions: %@, fertility predictions: %@", buf, 0x20u);
  }

  if (v60)
  {
    v96 = [v35 hkmc_menstruationProjections];
    if (!v61)
    {
LABEL_39:
      v68 = MEMORY[0x277CBEBF8];
      goto LABEL_42;
    }
  }

  else
  {
    v96 = MEMORY[0x277CBEBF8];
    if (!v61)
    {
      goto LABEL_39;
    }
  }

  v69 = [MEMORY[0x277CBEAA8] date];
  v70 = [(HKCalendarCache *)v112->_calendarCache currentCalendar];
  v68 = [v35 hkmc_fertileWindowProjectionsWithOverridePredictionPrimarySource:v101 currentDayIndex:{objc_msgSend(v69, "hk_dayIndexWithCalendar:", v70)}];

LABEL_42:
  v95 = [v68 subarrayWithRange:{0, objc_msgSend(v68, "count") != 0}];

  if (v106)
  {
    v71 = [v106 count];
    v72 = [MEMORY[0x277CBEB18] arrayWithCapacity:v71];
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __352__HDMCAnalysisManager__analysisWithAlgorithmsAnalysis_algorithmsCycles_recentSymptoms_mostRecentBasalBodyTemperature_lastLoggedDayIndex_lastMenstrualFlowDayIndex_numberOfDailySleepHeartRateStatisticsForPast100Days_numberOfDailyAwakeHeartRateStatisticsForPast100Days_featureSettings_useHeartRateInput_useWristTemperatureInput_deviationsFeatureSettings___block_invoke;
    v116[3] = &unk_27865A920;
    v117 = v72;
    v118 = v71;
    v119 = a13;
    v116[4] = v112;
    v120 = obja;
    v73 = v72;
    [v106 enumerateObjectsWithOptions:2 usingBlock:v116];
    v94 = [v73 copy];
  }

  else
  {
    v94 = 0;
  }

  v99 = v32;
  v108 = v36;
  v74 = [v35 hkmc_deviations];
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __352__HDMCAnalysisManager__analysisWithAlgorithmsAnalysis_algorithmsCycles_recentSymptoms_mostRecentBasalBodyTemperature_lastLoggedDayIndex_lastMenstrualFlowDayIndex_numberOfDailySleepHeartRateStatisticsForPast100Days_numberOfDailyAwakeHeartRateStatisticsForPast100Days_featureSettings_useHeartRateInput_useWristTemperatureInput_deviationsFeatureSettings___block_invoke_2;
  v114[3] = &unk_27865A948;
  v98 = v97;
  v115 = v98;
  v75 = [(__CFString *)v74 hk_filter:v114];
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v76 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      v77 = v76;
      v78 = objc_opt_class();
      *buf = 138543618;
      v127 = v78;
      v128 = 2112;
      v129 = v74;
      v79 = v78;
      _os_log_impl(&dword_2293D1000, v77, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviations detected (all): %@", buf, 0x16u);
    }

    _HKInitializeLogging();
    v80 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      v81 = v80;
      v82 = objc_opt_class();
      *buf = 138543618;
      v127 = v82;
      v128 = 2112;
      v129 = v75;
      v83 = v82;
      _os_log_impl(&dword_2293D1000, v81, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviations detected (enabled): %@", buf, 0x16u);
    }
  }

  v84 = objc_alloc(MEMORY[0x277D11960]);
  v85 = objc_loadWeakRetained(&v112->_profile);
  v86 = [HDMCRecentBasalBodyTemperatureRangeQuery recentRangeForAnalysisWithProfile:v85];
  v87 = [v86 recentBasalBodyTemperatureWithMostRecentQuantity:v105];
  v88 = [v35 isUserInactive];
  v89 = [v111 copy];
  LOBYTE(v93) = [(HDMCAnalysisManager *)v112 _hasHealthAppDevicesWithHigherAlgorithmVersions];
  LOBYTE(v92) = v88;
  v113 = [v84 initWithStatistics:v108 menstruationProjections:v96 fertileWindowProjections:v95 menstruationProjectionsEnabled:v99 fertileWindowProjectionsEnabled:obja cycles:v94 deviations:v75 recentSymptoms:a5 recentBasalBodyTemperature:v87 lastLoggedDayIndex:v104 lastMenstrualFlowDayIndex:v103 isPeriodLogLate:v92 ongoingCycleFactors:v89 numberOfDailySleepHeartRateStatisticsForPast100Days:a9 numberOfDailyAwakeHeartRateStatisticsForPast100Days:a10 hasHealthAppDevicesWithHigherAlgorithmVersions:v93];

  v90 = *MEMORY[0x277D85DE8];

  return v113;
}

void __352__HDMCAnalysisManager__analysisWithAlgorithmsAnalysis_algorithmsCycles_recentSymptoms_mostRecentBasalBodyTemperature_lastLoggedDayIndex_lastMenstrualFlowDayIndex_numberOfDailySleepHeartRateStatisticsForPast100Days_numberOfDailyAwakeHeartRateStatisticsForPast100Days_featureSettings_useHeartRateInput_useWristTemperatureInput_deviationsFeatureSettings___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 48) + ~a3;
  if (*(a1 + 56) == 1)
  {
    v7 = [*(*(a1 + 32) + 48) historicalAnalyzerPredictionPrimarySourceOverrideForCycleAtReverseChronologicalIndex:*(a1 + 48) + ~a3];
    v8 = [*(*(a1 + 32) + 48) historicalAnalyzerOvulationConfirmationFailureOverrideForCycleAtReverseChronologicalIndex:v6];
    v9 = [*(*(a1 + 32) + 48) historicalAnalyzerDailyEligibleWristTemperatureCountOverrideForCycleAtReverseChronologicalIndex:v6];
    if (v6)
    {
LABEL_3:
      v10 = [*(a1 + 40) lastObject];
      v11 = [v10 menstruationSegment];
      v12 = [v11 days];

      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12 - 1];
      v14 = [v15 hkmc_cycleWithLastDayIndex:v13 includeFertileWindow:*(a1 + 57) overridePredictionPrimarySource:v7 overrideOvulationConfirmationFailure:v8 overrideDailyEligibleWristTemperatureCount:v9 useWristTemperatureInput:*(a1 + 56)];

      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v14 = [v15 hkmc_cycleWithLastDayIndex:0 includeFertileWindow:*(a1 + 57) overridePredictionPrimarySource:v7 overrideOvulationConfirmationFailure:v8 overrideDailyEligibleWristTemperatureCount:v9 useWristTemperatureInput:*(a1 + 56)];
LABEL_6:
  [*(a1 + 40) addObject:v14];

  objc_autoreleasePoolPop(v5);
}

uint64_t __352__HDMCAnalysisManager__analysisWithAlgorithmsAnalysis_algorithmsCycles_recentSymptoms_mostRecentBasalBodyTemperature_lastLoggedDayIndex_lastMenstrualFlowDayIndex_numberOfDailySleepHeartRateStatisticsForPast100Days_numberOfDailyAwakeHeartRateStatisticsForPast100Days_featureSettings_useHeartRateInput_useWristTemperatureInput_deviationsFeatureSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 type];

  return [v2 deviationDetectionEnabledForType:v3];
}

- (id)_processorConfigurationForTodayIndex:(int64_t)a3 deviationsFeatureStatus:(id)a4 calendar:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = _UserCharacteristicOfType(WeakRetained, *MEMORY[0x277CCBB18]);

  v12 = objc_loadWeakRetained(&self->_profile);
  v13 = *MEMORY[0x277CCDEE8];
  v14 = _UserCharacteristicOfType(v12, *MEMORY[0x277CCDEE8]);

  v15 = objc_loadWeakRetained(&self->_profile);
  v16 = _UserCharacteristicModificationDayOfType(v15, v13, v9);

  v17 = objc_loadWeakRetained(&self->_profile);
  v18 = *MEMORY[0x277CCDEF0];
  v19 = _UserCharacteristicOfType(v17, *MEMORY[0x277CCDEF0]);

  v20 = objc_loadWeakRetained(&self->_profile);
  v21 = _UserCharacteristicModificationDayOfType(v20, v18, v9);

  v22 = [(HKMCSettingsManager *)self->_settingsManager cycleLengthModificationDayIndexOverriding:v16];
  v23 = [(HKMCSettingsManager *)self->_settingsManager periodLengthModificationDayIndexOverriding:v21];
  v24 = [MEMORY[0x277D0FC98] hkmc_configurationWithBirthDateComponents:v11 userReportedCycleLength:v14 onDayIndex:v22 userReportedMenstruationLength:v19 onDayIndex:v23];
  [v24 setTodayAsJulianDay:a3];
  if (v8)
  {
    v52 = v14;
    v53 = v11;
    v25 = *MEMORY[0x277CCBEA0];
    v26 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v27 = [v26 areAllRequirementsSatisfied];

    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = objc_opt_class();
      v31 = @"NO";
      if (v27)
      {
        v31 = @"YES";
      }

      *buf = 138543618;
      v56 = v30;
      v57 = 2112;
      v58 = v31;
      v32 = v30;
      _os_log_impl(&dword_2293D1000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviation detection meets usage requirements: %@", buf, 0x16u);
    }

    v33 = [v8 onboardingRecord];
    v34 = [v33 featureSettings];

    deviationInputManager = self->_deviationInputManager;
    v54 = 0;
    LOBYTE(v33) = [(HDMCDeviationInputManager *)deviationInputManager clearStateIfNecessaryFromSettings:v34 usageRequirementsSatisfied:v27 error:&v54];
    v36 = v54;
    if ((v33 & 1) == 0 && (_HKInitializeLogging(), os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR)))
    {
      [HDMCAnalysisManager _processorConfigurationForTodayIndex:deviationsFeatureStatus:calendar:];
      if (v27)
      {
        goto LABEL_9;
      }
    }

    else if (v27)
    {
LABEL_9:
      v37 = [v34 deviationDetectionEnabledSetExplicitlyForAnyType];
      v38 = MEMORY[0x277D0FCB0];
      v39 = objc_loadWeakRetained(&self->_profile);
      v40 = [v38 hdmc_deviationInputWithProfile:v39 enabledSetExplicitly:v37 calendar:v9];
      [v24 setDeviationInput:v40];

LABEL_15:
      v14 = v52;
      v11 = v53;
      goto LABEL_16;
    }

    _HKInitializeLogging();
    v44 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v45 = v44;
      v46 = objc_opt_class();
      v51 = v46;
      v47 = [v8 objectForKeyedSubscript:v25];
      v48 = [v47 unsatisfiedRequirementIdentifiers];
      *buf = 138543618;
      v56 = v46;
      v57 = 2112;
      v58 = v48;
      _os_log_impl(&dword_2293D1000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviation detection unsatisfied usage requirements: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  _HKInitializeLogging();
  v41 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v42 = v41;
    *buf = 138543362;
    v56 = objc_opt_class();
    v43 = v56;
    _os_log_impl(&dword_2293D1000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviation detection suppressed on watch", buf, 0xCu);
  }

LABEL_16:

  v49 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)_hasHealthAppDevicesWithHigherAlgorithmVersions
{
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC2E8];
  v4 = *MEMORY[0x277CCC2E8];
  if (os_signpost_enabled(*MEMORY[0x277CCC2E8]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2293D1000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "hasHealthAppDevicesWithHigherAlgorithmVersions", "", buf, 2u);
  }

  deviceScopedStorageManager = self->_deviceScopedStorageManager;
  v12 = 0;
  v6 = [(HDMCDeviceScopedStorageManager *)deviceScopedStorageManager accountDevicesInfoWithError:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [v6 hasHealthAppDevicesWithHigherAlgorithmVersions];
    _HKInitializeLogging();
    v9 = *v3;
    if (os_signpost_enabled(v9))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_2293D1000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "hasHealthAppDevicesWithHigherAlgorithmVersions", "", v11, 2u);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      [HDMCAnalysisManager _hasHealthAppDevicesWithHigherAlgorithmVersions];
    }

    v8 = 0;
  }

  return v8;
}

- (void)registerObserver:(id)a3 queue:(id)a4 userInitiated:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(HKObserverSet *)self->_observers registerObserver:v8 queue:v9];
  if (v5)
  {
    [(HKObserverSet *)self->_userInitiatedObservers registerObserver:v8 queue:v9];
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v8;
      v12 = v17;
      _os_log_impl(&dword_2293D1000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to user-initiated observer add: %{public}@", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HDMCAnalysisManager_registerObserver_queue_userInitiated___block_invoke;
    block[3] = &unk_27865A830;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)unregisterObserver:(id)a3
{
  observers = self->_observers;
  v5 = a3;
  [(HKObserverSet *)observers unregisterObserver:v5];
  [(HKObserverSet *)self->_userInitiatedObservers unregisterObserver:v5];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (BOOL)initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMCAnalysisManager *)self profile];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 onboardingCompletionManager];
    v10 = *MEMORY[0x277CCC090];
    v27 = 0;
    v11 = [v9 onboardingCompletionsForHighestVersionOfFeatureIdentifier:v10 error:&v27];
    v12 = v27;

    v13 = v11 != 0;
    if (!v11)
    {
      v20 = v12;
      if (v20)
      {
        if (a4)
        {
          v21 = v20;
          *a4 = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager(CycleFactorsAutomaticUpgrade) initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion:v22 error:?];
      }

      goto LABEL_17;
    }

    v14 = [v11 firstObject];
    v15 = v14;
    if (v14 && [v14 version] <= 1)
    {
      v16 = [v6 cloneWithOwnerIdentifier:@"HDMCAnalysisManager+CycleFactorsAutomaticUpgrade"];
      v17 = [(HDMCAnalysisManager *)self queue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke;
      v24[3] = &unk_27865AA30;
      v24[4] = self;
      v25 = v16;
      v26 = v8;
      v18 = v16;
      dispatch_async(v17, v24);
    }

    else
    {
      v19 = [(HDMCAnalysisManager *)self _test_didNotUpgradeOnboardingRecord];

      if (!v19)
      {
LABEL_10:

LABEL_17:
        goto LABEL_18;
      }

      v18 = [(HDMCAnalysisManager *)self _test_didNotUpgradeOnboardingRecord];
      v18[2]();
    }

    goto LABEL_10;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a4 code:1 description:@"Profile is going away"];
  v13 = 0;
LABEL_18:

  return v13;
}

void __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC2E8];
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    *buf = 138543362;
    v17 = objc_opt_class();
    v6 = v17;
    _os_log_impl(&dword_2293D1000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Writing a Cycle Factors onboarding record for backwards compatibility", buf, 0xCu);
  }

  v7 = [MEMORY[0x277D10788] contextForAccessibilityAssertion:*(a1 + 40)];
  [v7 setCacheScope:1];
  v8 = [*(a1 + 48) database];
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke_302;
  v13[3] = &unk_27865B4A8;
  v14 = *(a1 + 48);
  v9 = [v8 performWithTransactionContext:v7 error:&v15 block:v13];
  v10 = v15;

  if ((v9 & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke_cold_1(a1, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke_302(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CCD740]);
  v5 = *MEMORY[0x277CCC090];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 initWithFeatureIdentifier:v5 version:3 completionDate:v6 countryCode:0 countryCodeProvenance:0];

  v8 = [*(a1 + 32) onboardingCompletionManager];
  v9 = [v8 insertOnboardingCompletion:v7 error:a2];

  return v9;
}

- (void)_takeAccessibilityAssertion
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Unable to take an accessibility assertion: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityProvidingDidUpdateSettings:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Settings change: unable to read new settings: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:(uint64_t)a1 forceIncludeCycles:(uint64_t)a2 forceAnalyzeCompleteHistory:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMCAnalysisManager.m" lineNumber:502 description:{@"Invalid parameter not satisfying: %@", @"processor"}];
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:(uint64_t)a1 forceIncludeCycles:(uint64_t)a2 forceAnalyzeCompleteHistory:error:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMCAnalysisManager.m" lineNumber:503 description:{@"Invalid parameter not satisfying: %@", @"historicalAnalyzer"}];
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  OUTLINED_FUNCTION_7(v1, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v2, v3, "[%{public}@] Error retrieving heart statistics: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.4()
{
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_2_1(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error enumerating day summaries: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.5()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  OUTLINED_FUNCTION_7(v1, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v2, v3, "[%{public}@] Error retrieving analysis sample info: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.6()
{
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_2_1(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error analyzing historical cycles: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.7()
{
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_2_1(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error analyzing predictions with most recent menstrual flow julian day updated: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.8()
{
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_2_1(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving initial factors: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.9()
{
  OUTLINED_FUNCTION_6();
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  OUTLINED_FUNCTION_4(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving feature status for deviations: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.10()
{
  OUTLINED_FUNCTION_6();
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  OUTLINED_FUNCTION_4(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving feature status for wrist temperature input: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.11()
{
  OUTLINED_FUNCTION_6();
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  OUTLINED_FUNCTION_4(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving feature status for heart rate input: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.12()
{
  OUTLINED_FUNCTION_6();
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  OUTLINED_FUNCTION_4(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving feature settings: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processorConfigurationForTodayIndex:deviationsFeatureStatus:calendar:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Unable to clear state for deviation input: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_hasHealthAppDevicesWithHigherAlgorithmVersions
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to retrieve account device info: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v6, v7, "[%{public}@] Error writing a Cycle Factors onboarding record for backwards compatibility: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end