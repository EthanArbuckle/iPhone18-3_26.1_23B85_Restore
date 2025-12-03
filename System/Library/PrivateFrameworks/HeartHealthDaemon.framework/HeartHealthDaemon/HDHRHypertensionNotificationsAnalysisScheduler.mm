@interface HDHRHypertensionNotificationsAnalysisScheduler
- (HDHRHypertensionNotificationsAnalysisScheduler)init;
- (HDHRHypertensionNotificationsAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider keyValueDomain:(id)domain analysisWindowInterval:(double)interval analysisWindowGraceInterval:(double)graceInterval analysisCadenceInterval:(double)cadenceInterval analysisRetryInterval:(double)retryInterval pregnancyStateProvider:(id)self0 measurementAnalyzer:(id)self1;
- (HDHRHypertensionNotificationsAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider pregnancyStateProvider:(id)stateProvider measurementAnalyzer:(id)analyzer;
- (id)_lastAnalysisWindowEndDateOrOnboardingDateWithFeatureStatus:(id)status error:(id *)error;
- (id)_takeAccessibilityAssertion;
- (uint64_t)_queue_resetActivityInterval;
- (void)_enqueueSchedulingOnMaintenanceOperationWithCompletion:(uint64_t)completion;
- (void)_queue_performAnalysisIfNeededWithDatabaseTransactionContext:(void *)context completion:;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDHRHypertensionNotificationsAnalysisScheduler

- (HDHRHypertensionNotificationsAnalysisScheduler)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHRHypertensionNotificationsAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider keyValueDomain:(id)domain analysisWindowInterval:(double)interval analysisWindowGraceInterval:(double)graceInterval analysisCadenceInterval:(double)cadenceInterval analysisRetryInterval:(double)retryInterval pregnancyStateProvider:(id)self0 measurementAnalyzer:(id)self1
{
  v39 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  providerCopy = provider;
  domainCopy = domain;
  stateProviderCopy = stateProvider;
  analyzerCopy = analyzer;
  v36.receiver = self;
  v36.super_class = HDHRHypertensionNotificationsAnalysisScheduler;
  v24 = [(HDHRHypertensionNotificationsAnalysisScheduler *)&v36 init];
  if (v24)
  {
    _HKInitializeLogging();
    v25 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v24;
      _os_log_impl(&dword_229486000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v24->_profile, profileCopy);
    objc_storeStrong(&v24->_featureStatusManager, provider);
    v24->_analysisWindowInterval = interval;
    v24->_analysisWindowGraceInterval = graceInterval;
    v24->_analysisCadenceInterval = cadenceInterval;
    v24->_analysisRetryInterval = retryInterval;
    objc_storeStrong(&v24->_analyzer, analyzer);
    objc_storeStrong(&v24->_pregnancyStateProvider, stateProvider);
    v26 = HKCreateSerialDispatchQueue();
    queue = v24->_queue;
    v24->_queue = v26;

    objc_storeStrong(&v24->_syncedKeyValueDomain, domain);
    v28 = objc_alloc(MEMORY[0x277D107E8]);
    WeakRetained = objc_loadWeakRetained(&v24->_profile);
    v30 = [v28 initWithProfile:WeakRetained name:@"com.apple.healthd.heart.hypertension-measurement-analysis" interval:v24 delegate:*MEMORY[0x277CCC2D0] loggingCategory:v24->_analysisCadenceInterval];
    periodicActivity = v24->_periodicActivity;
    v24->_periodicActivity = v30;

    v32 = objc_loadWeakRetained(&v24->_profile);
    [v32 registerProfileReadyObserver:v24 queue:0];
  }

  v33 = *MEMORY[0x277D85DE8];
  return v24;
}

- (HDHRHypertensionNotificationsAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider pregnancyStateProvider:(id)stateProvider measurementAnalyzer:(id)analyzer
{
  v10 = MEMORY[0x277D10718];
  analyzerCopy = analyzer;
  stateProviderCopy = stateProvider;
  providerCopy = provider;
  profileCopy = profile;
  v15 = [v10 hdhr_hypertensionNotificationsSyncedDomainForProfile:profileCopy];
  v16 = HDHRHypertensionNotificationsAnalysisWindowIntervalRespectingOverride();
  v17 = HDHRHypertensionNotificationsAnalysisWindowGraceIntervalRespectingOverride();
  v18 = HDHRHypertensionNotificationsAnalysisCadenceIntervalRespectingOverride();
  v19 = [(HDHRHypertensionNotificationsAnalysisScheduler *)self initWithProfile:profileCopy featureStatusProvider:providerCopy keyValueDomain:v15 analysisWindowInterval:stateProviderCopy analysisWindowGraceInterval:analyzerCopy analysisCadenceInterval:v16 analysisRetryInterval:v17 pregnancyStateProvider:v18 measurementAnalyzer:HDHRHypertensionNotificationsAnalysisSchedulerRetryIntervalRespectingOverride()];

  return v19;
}

uint64_t __105__HDHRHypertensionNotificationsAnalysisScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke_319(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (id)_lastAnalysisWindowEndDateOrOnboardingDateWithFeatureStatus:(id)status error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  syncedKeyValueDomain = self->_syncedKeyValueDomain;
  v8 = *MEMORY[0x277D12F08];
  v26 = 0;
  v9 = [(HDKeyValueDomain *)syncedKeyValueDomain dateForKey:v8 error:&v26];
  v10 = v26;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
    goto LABEL_3;
  }

  if (!v10)
  {
    onboardingRecord = [statusCopy onboardingRecord];
    featureSettings = [onboardingRecord featureSettings];
    v12 = [featureSettings dateForKey:*MEMORY[0x277CCC138]];

    if (v12)
    {
LABEL_10:
      _HKInitializeLogging();
      v18 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Last analysis window end data is missing, using onboarding acknowledged date %@", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_25;
    }

    onboardingRecord2 = [statusCopy onboardingRecord];
    featureSettings2 = [onboardingRecord2 featureSettings];
    v21 = *MEMORY[0x277CCC130];
    v22 = [featureSettings2 numberForKey:*MEMORY[0x277CCC130]];

    if (v22 && ([v22 BOOLValue] & 1) != 0)
    {
      onboardingRecord3 = [statusCopy onboardingRecord];
      featureSettings3 = [onboardingRecord3 featureSettings];
      v12 = [featureSettings3 modificationDateForKey:v21];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v18 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Onboarding acknowledged date is missing."];
    if (v18)
    {
      if (error)
      {
        v25 = v18;
        v12 = 0;
        *error = v18;
LABEL_24:
        v11 = v18;
LABEL_25:

        goto LABEL_3;
      }

      _HKLogDroppedError();
    }

    v12 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    v15 = v10;
    v12 = 0;
    *error = v11;
  }

  else
  {
    _HKLogDroppedError();
    v12 = 0;
  }

LABEL_3:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)profileDidBecomeReady:(id)ready
{
  database = [ready database];
  [database addProtectedDataObserver:self];

  featureStatusManager = self->_featureStatusManager;

  [(HKFeatureStatusProviding *)featureStatusManager registerObserver:self queue:0];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available)
  {
    v6[5] = v4;
    v6[6] = v5;
    [HDHRHypertensionNotificationsAnalysisScheduler database:v6 protectedDataDidBecomeAvailable:?];
  }
}

uint64_t __91__HDHRHypertensionNotificationsAnalysisScheduler_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [(HDHRHypertensionNotificationsAnalysisScheduler *)*(result + 32) _queue_resetActivityInterval];
  }

  return result;
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v17 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  name = [activity name];
  if ([name isEqualToString:@"com.apple.healthd.heart.hypertension-measurement-analysis"])
  {
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86360], 1);
    analysisCadenceInterval = self->_analysisCadenceInterval;
    _HKInitializeLogging();
    v9 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:analysisCadenceInterval];
      v13 = 138543618;
      selfCopy2 = self;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Configuring periodic activity with a time interval: %@", &v13, 0x16u);
    }

    xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86288], analysisCadenceInterval);
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_229486000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unexpected activity received; not setting activity criteria.", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  statusCopy = status;
  v6 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBDF8]];
  if ([v6 areAllRequirementsSatisfied])
  {
    [HDHRHypertensionNotificationsAnalysisScheduler featureStatusProviding:v9 didUpdateFeatureStatus:self];
  }

  unitTest_featureStatusUpdateBlock = [(HDHRHypertensionNotificationsAnalysisScheduler *)self unitTest_featureStatusUpdateBlock];

  if (unitTest_featureStatusUpdateBlock)
  {
    unitTest_featureStatusUpdateBlock2 = [(HDHRHypertensionNotificationsAnalysisScheduler *)self unitTest_featureStatusUpdateBlock];
    (unitTest_featureStatusUpdateBlock2)[2](unitTest_featureStatusUpdateBlock2, statusCopy);
  }
}

uint64_t __96__HDHRHypertensionNotificationsAnalysisScheduler_featureStatusProviding_didUpdateFeatureStatus___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [(HDHRHypertensionNotificationsAnalysisScheduler *)*(result + 32) _queue_resetActivityInterval];
  }

  return result;
}

- (void)_queue_performAnalysisIfNeededWithDatabaseTransactionContext:(void *)context completion:
{
  v110 = *MEMORY[0x277D85DE8];
  v5 = a2;
  contextCopy = context;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    v7 = *(self + 24);
    v99 = 0;
    v8 = [v7 featureStatusWithError:&v99];
    v9 = v99;
    v10 = v9;
    if (!v8)
    {
      if (v9)
      {
        _HKInitializeLogging();
        v22 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_0_7();
          v103 = v10;
          _os_log_error_impl(&dword_229486000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] Could not get feature status with error %@", buf, 0x16u);
        }
      }

      v30 = *(self + 64);
      v31 = OUTLINED_FUNCTION_1_6();
      v32(v31);
      goto LABEL_42;
    }

    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCBDF8]];
    if (([v11 areAllRequirementsSatisfied] & 1) == 0)
    {
      v23 = MEMORY[0x277CCACA8];
      unsatisfiedRequirementIdentifiersDescription = [v11 unsatisfiedRequirementIdentifiersDescription];
      v25 = [v23 stringWithFormat:@"Not eligible for analysis with unsatisfied requirements: %@", unsatisfiedRequirementIdentifiersDescription];

      _HKInitializeLogging();
      v26 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0_7();
        v103 = v25;
        _os_log_impl(&dword_229486000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] %@", buf, 0x16u);
      }

      v27 = *(self + 56);
      v28 = OUTLINED_FUNCTION_1_6();
      v29(v28, 0, 0);

      goto LABEL_41;
    }

    v98 = 0;
    v12 = [self _lastAnalysisWindowEndDateOrOnboardingDateWithFeatureStatus:v8 error:&v98];
    v13 = v98;
    v10 = v13;
    if (!v12)
    {
      _HKInitializeLogging();
      v33 = HKLogHeartRateCategory();
      v34 = v33;
      if (v10)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_0_7();
          v103 = v10;
          OUTLINED_FUNCTION_3_2(&dword_229486000, v64, v65, "[%{public}@] Could not load last analysis date with error %@", v66, v67, v68, v69, v76, v77, v79, v81, v83, v85, v88, v89, v90, v91, selfCopy3, v93, v94, v95, v96, v97, v98, v99, buf[0]);
        }

        v35 = *(self + 64);
        v36 = OUTLINED_FUNCTION_1_6();
        v38 = 2;
      }

      else
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy4 = self;
          v102 = 2112;
          v103 = @"Last analysis window end date is nil";
          _os_log_impl(&dword_229486000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] %@", buf, 0x16u);
        }

        v10 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Last analysis window end date is nil"];
        v62 = *(self + 56);
        v36 = OUTLINED_FUNCTION_1_6();
        v38 = 1;
      }

      v37(v36, v38, v10);
      goto LABEL_41;
    }

    v14 = *(self + 72);
    v97 = 0;
    v15 = [v14 latestWashoutEndDateWithError:&v97];
    v16 = v97;
    v10 = v16;
    if (v15)
    {
      if ([(__CFString *)v12 hk_isBeforeDate:v15])
      {
        v86 = v15;

        _HKInitializeLogging();
        v17 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = HKSensitiveLogItem();
          v19 = HKSensitiveLogItem();
          OUTLINED_FUNCTION_0_7();
          v103 = v18;
          v104 = v20;
          v105 = v21;
          _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting next analysis date to %@: %@", buf, 0x20u);
        }

        v12 = v86;
      }
    }

    else if (v16)
    {
      _HKInitializeLogging();
      v39 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_0_7();
        v103 = v10;
        OUTLINED_FUNCTION_3_2(&dword_229486000, v70, v71, "[%{public}@] Could not get latest washout end date with error %@", v72, v73, v74, v75, v76, v77, v79, v81, v83, v85, v88, v89, v90, v91, selfCopy3, v93, v94, v95, v96, v97, v98, v99, buf[0]);
      }

      v40 = *(self + 64);
      v41 = OUTLINED_FUNCTION_1_6();
      v42(v41, 2, v10);
      goto LABEL_36;
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v12];
    v45 = v44;
    v46 = *(self + 40) + *(self + 48);
    _HKInitializeLogging();
    v47 = HKLogHeartRateCategory();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
    if (v46 <= v45)
    {
      v80 = v5;
      v82 = v15;
      v84 = date;
      if (v48)
      {
        v53 = [MEMORY[0x277CCABB0] numberWithDouble:*(self + 40)];
        v54 = [MEMORY[0x277CCABB0] numberWithDouble:*(self + 48)];
        *buf = 138544386;
        selfCopy4 = self;
        v102 = 2114;
        v103 = v12;
        v104 = 2114;
        v105 = v84;
        v106 = 2114;
        v107 = v53;
        v108 = 2114;
        v109 = v54;
        _os_log_impl(&dword_229486000, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing analysis operation with date range ([%{public}@] - [%{public}@]), with an analysis window timeinterval: [%{public}@], grace time interval: [%{public}@]", buf, 0x34u);
      }

      [self setUnitTest_latestAnalysisStartDate:v12];
      [self setUnitTest_analysisOperationEnqueued:1];
      WeakRetained = objc_loadWeakRetained((self + 8));
      database = [WeakRetained database];
      v96 = v10;
      v88 = MEMORY[0x277D85DD0];
      v89 = 3221225472;
      v90 = __122__HDHRHypertensionNotificationsAnalysisScheduler__queue_performAnalysisIfNeededWithDatabaseTransactionContext_completion___block_invoke;
      v91 = &unk_278660240;
      selfCopy3 = self;
      v93 = v12;
      date = v84;
      v94 = v84;
      v5 = v80;
      v95 = v80;
      v56 = [database performWithTransactionContext:v95 error:&v96 block:&v88];
      v87 = v12;
      v57 = v96;

      v58 = 64;
      if (v56)
      {
        v58 = 56;
      }

      v59 = *(self + v58);
      v60 = OUTLINED_FUNCTION_1_6();
      v61(v60);

      v10 = v57;
      v12 = v87;
      v15 = v82;
    }

    else
    {
      if (v48)
      {
        *buf = 138543362;
        selfCopy4 = self;
        OUTLINED_FUNCTION_4_0(&dword_229486000, v47, v49, "[%{public}@] Time interval since last window end date is less than analysis window time interval + grace period", buf);
      }

      v50 = *(self + 56);
      v51 = OUTLINED_FUNCTION_1_6();
      v52(v51, 0, 0);
    }

LABEL_36:
LABEL_41:

LABEL_42:
  }

  v63 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_queue_resetActivityInterval
{
  v7 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 16));
    _HKInitializeLogging();
    v2 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v1;
      OUTLINED_FUNCTION_4_0(&dword_229486000, v2, v3, "[%{public}@] Resetting periodic activity", &v5);
    }

    result = [*(v1 + 96) resetInterval];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_enqueueSchedulingOnMaintenanceOperationWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    dispatch_assert_queue_not_V2(*(completion + 16));
    WeakRetained = objc_loadWeakRetained((completion + 8));
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    v7 = MEMORY[0x277D10748];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(completion + 16);
    OUTLINED_FUNCTION_2_3();
    v12[1] = 3221225472;
    v12[2] = __105__HDHRHypertensionNotificationsAnalysisScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke;
    v12[3] = &unk_278660290;
    v12[4] = completion;
    v13 = v3;
    v11 = [v7 maintenanceOperationWithName:v9 queue:v10 synchronousBlock:v12];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v11];
  }
}

void __105__HDHRHypertensionNotificationsAnalysisScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v14 = 138543362;
    v15 = v4;
    OUTLINED_FUNCTION_4_0(&dword_229486000, v2, v3, "[%{public}@] Executing maintenance operation", &v14);
  }

  v5 = [(HDHRHypertensionNotificationsAnalysisScheduler *)*(a1 + 32) _takeAccessibilityAssertion];
  v6 = [MEMORY[0x277D10788] contextForAccessibilityAssertion:v5];
  [v6 setCacheScope:1];
  OUTLINED_FUNCTION_2_3();
  v11[1] = 3221225472;
  v11[2] = __105__HDHRHypertensionNotificationsAnalysisScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke_319;
  v11[3] = &unk_278660268;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v8;
  v9 = v5;
  [(HDHRHypertensionNotificationsAnalysisScheduler *)v7 _queue_performAnalysisIfNeededWithDatabaseTransactionContext:v6 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_takeAccessibilityAssertion
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v11 = 0;
    v6 = [database takeAccessibilityAssertionWithOwnerIdentifier:v5 timeout:&v11 error:300.0];
    v7 = v11;

    if (!v6)
    {
      _HKInitializeLogging();
      v8 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v14 = 2114;
        v15 = v7;
        _os_log_error_impl(&dword_229486000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to take an accessibility assertion: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    OUTLINED_FUNCTION_4_0(&dword_229486000, v6, v7, "[%{public}@] Performing periodic activity", &v9);
  }

  [(HDHRHypertensionNotificationsAnalysisScheduler *)self _enqueueSchedulingOnMaintenanceOperationWithCompletion:completionCopy];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)database:(uint64_t)a1 protectedDataDidBecomeAvailable:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = [WeakRetained database];
  [v5 removeProtectedDataObserver:a1];

  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __91__HDHRHypertensionNotificationsAnalysisScheduler_database_protectedDataDidBecomeAvailable___block_invoke;
  a2[3] = &unk_2786602B8;
  a2[4] = a1;
  [(HDHRHypertensionNotificationsAnalysisScheduler *)a1 _enqueueSchedulingOnMaintenanceOperationWithCompletion:a2];
}

- (void)featureStatusProviding:(void *)a1 didUpdateFeatureStatus:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D85DD0];
  a1[1] = 3221225472;
  a1[2] = __96__HDHRHypertensionNotificationsAnalysisScheduler_featureStatusProviding_didUpdateFeatureStatus___block_invoke;
  a1[3] = &unk_2786602B8;
  a1[4] = a2;
  [(HDHRHypertensionNotificationsAnalysisScheduler *)a2 _enqueueSchedulingOnMaintenanceOperationWithCompletion:a1];
}

@end