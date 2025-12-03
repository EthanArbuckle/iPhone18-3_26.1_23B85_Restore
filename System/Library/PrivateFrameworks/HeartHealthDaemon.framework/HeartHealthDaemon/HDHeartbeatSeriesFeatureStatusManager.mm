@interface HDHeartbeatSeriesFeatureStatusManager
- (HDHeartbeatSeriesFeatureStatusManager)initWithClient:(id)client;
- (HDHeartbeatSeriesFeatureStatusManager)initWithProfile:(id)profile aFibBurdenFeatureStatusManager:(id)manager irregularRhythmNotificationsFeatureStatusManager:(id)statusManager heartNotificationsUserDefaults:(id)defaults;
- (id)predominantFeatureWithError:(id *)error;
- (void)_notifyDelegateOfCurrentState;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)getPredominantFeatureWithCompletion:(id)completion;
- (void)notifyDelegateOfCurrentState;
- (void)startObservingChangesWithDelegate:(id)delegate;
- (void)stopObservingChanges;
@end

@implementation HDHeartbeatSeriesFeatureStatusManager

- (HDHeartbeatSeriesFeatureStatusManager)initWithClient:(id)client
{
  clientCopy = client;
  profile = [clientCopy profile];
  v6 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D12F10]];

  if (([v6 conformsToProtocol:&unk_283CDC480] & 1) == 0)
  {
    [HDHeartbeatSeriesFeatureStatusManager initWithClient:];
  }

  if (([v6 conformsToProtocol:&unk_283CDC240] & 1) == 0)
  {
    [HDHeartbeatSeriesFeatureStatusManager initWithClient:];
  }

  heartNotificationsUserDefaults = [v6 heartNotificationsUserDefaults];
  v8 = v6;
  v9 = [v8 featureAvailabilityExtensionForFeatureIdentifier:*MEMORY[0x277CCC070]];
  if (!v9)
  {
    [HDHeartbeatSeriesFeatureStatusManager initWithClient:];
  }

  irregularRhythmNotificationsFeatureStatusManager = [v8 irregularRhythmNotificationsFeatureStatusManager];
  if (!irregularRhythmNotificationsFeatureStatusManager)
  {
    [HDHeartbeatSeriesFeatureStatusManager initWithClient:];
  }

  v11 = [v8 featureAvailabilityExtensionForFeatureIdentifier:*MEMORY[0x277CCBFF0]];
  if (!v11)
  {
    [HDHeartbeatSeriesFeatureStatusManager initWithClient:];
  }

  v12 = objc_alloc(MEMORY[0x277CCD460]);
  profile2 = [clientCopy profile];
  v14 = [v12 initWithFeatureAvailabilityProviding:v11 healthDataSource:profile2];

  profile3 = [clientCopy profile];

  v16 = [(HDHeartbeatSeriesFeatureStatusManager *)self initWithProfile:profile3 aFibBurdenFeatureStatusManager:v14 irregularRhythmNotificationsFeatureStatusManager:irregularRhythmNotificationsFeatureStatusManager heartNotificationsUserDefaults:heartNotificationsUserDefaults];
  return v16;
}

- (HDHeartbeatSeriesFeatureStatusManager)initWithProfile:(id)profile aFibBurdenFeatureStatusManager:(id)manager irregularRhythmNotificationsFeatureStatusManager:(id)statusManager heartNotificationsUserDefaults:(id)defaults
{
  profileCopy = profile;
  managerCopy = manager;
  statusManagerCopy = statusManager;
  defaultsCopy = defaults;
  v19.receiver = self;
  v19.super_class = HDHeartbeatSeriesFeatureStatusManager;
  v14 = [(HDHeartbeatSeriesFeatureStatusManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    v16 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v16;

    objc_storeStrong(&v15->_heartNotificationsUserDefaults, defaults);
    objc_storeStrong(&v15->_aFibBurdenFeatureStatusManager, manager);
    objc_storeStrong(&v15->_irregularRhythmNotificationsFeatureStatusManager, statusManager);
  }

  return v15;
}

- (void)startObservingChangesWithDelegate:(id)delegate
{
  v23 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *buf = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = WeakRetained;
    _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting observing changes with delegate %{public}@", buf, 0x16u);
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  v9 = objc_loadWeakRetained(&self->_profile);
  database = [v9 database];
  isDataProtectedByFirstUnlockAvailable = [database isDataProtectedByFirstUnlockAvailable];

  if ((isDataProtectedByFirstUnlockAvailable & 1) == 0)
  {
    _HKInitializeLogging();
    v12 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543362;
      v20 = v13;
      v14 = v13;
      _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] First unlock has not occurred, registering to notify when it has", buf, 0xCu);
    }

    database2 = [v9 database];
    queue = self->_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__HDHeartbeatSeriesFeatureStatusManager_startObservingChangesWithDelegate___block_invoke;
    v18[3] = &unk_27865FD90;
    v18[4] = self;
    [database2 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v18];
  }

  [(HKFeatureStatusProviding *)self->_aFibBurdenFeatureStatusManager registerObserver:self queue:self->_queue];
  [(HKFeatureStatusManager *)self->_irregularRhythmNotificationsFeatureStatusManager registerObserver:self queue:self->_queue];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __75__HDHeartbeatSeriesFeatureStatusManager_startObservingChangesWithDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_229486000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying for first unlock", &v7, 0xCu);
  }

  result = [*(a1 + 32) _notifyDelegateOfCurrentState];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopObservingChanges
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping observing changes", &v6, 0xCu);
  }

  [(HKFeatureStatusProviding *)self->_aFibBurdenFeatureStatusManager unregisterObserver:self];
  [(HKFeatureStatusManager *)self->_irregularRhythmNotificationsFeatureStatusManager unregisterObserver:self];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateOfCurrentState
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received request to notify delegate of current state", &v6, 0xCu);
  }

  [(HDHeartbeatSeriesFeatureStatusManager *)self _notifyDelegateOfCurrentState];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfCurrentState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __70__HDHeartbeatSeriesFeatureStatusManager__notifyDelegateOfCurrentState__block_invoke;
  v2[3] = &unk_278660920;
  v2[4] = self;
  [(HDHeartbeatSeriesFeatureStatusManager *)self getPredominantFeatureWithCompletion:v2];
}

void __70__HDHeartbeatSeriesFeatureStatusManager__notifyDelegateOfCurrentState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v7 = *(a1 + 32);
  if (v9)
  {
    [WeakRetained heartbeatSeriesFeatureStatusManager:v7 didUpdatePredominantFeature:{objc_msgSend(v9, "integerValue")}];
  }

  else if (v5)
  {
    [WeakRetained heartbeatSeriesFeatureStatusManager:v7 didFailToUpdateWithError:v5];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:2000 description:@"Unknown failure to update predominant feature"];
    [WeakRetained heartbeatSeriesFeatureStatusManager:v7 didFailToUpdateWithError:v8];
  }
}

- (void)getPredominantFeatureWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDHeartbeatSeriesFeatureStatusManager *)self predominantFeatureWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (id)predominantFeatureWithError:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  aFibBurdenFeatureStatusManager = self->_aFibBurdenFeatureStatusManager;
  v39 = 0;
  v6 = [(HKFeatureStatusProviding *)aFibBurdenFeatureStatusManager featureStatusWithError:&v39];
  v7 = v39;
  if (!v6)
  {
    _HKInitializeLogging();
    v13 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(HDHeartbeatSeriesFeatureStatusManager *)self predominantFeatureWithError:v13];
    }

    v9 = v7;
    if (v9)
    {
      if (error)
      {
        v14 = v9;
        v15 = 0;
        *error = v9;
LABEL_30:
        v7 = v9;
        goto LABEL_53;
      }

      _HKLogDroppedError();
    }

    v15 = 0;
    goto LABEL_30;
  }

  v8 = *MEMORY[0x277CCBEA0];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  if (![v9 areAllRequirementsSatisfied])
  {
    unsatisfiedRequirementIdentifiers = [v9 unsatisfiedRequirementIdentifiers];
    v40[0] = *MEMORY[0x277CCBF60];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v18 = [unsatisfiedRequirementIdentifiers isEqualToArray:v17];

    _HKInitializeLogging();
    v19 = HKHRAFibBurdenLogForCategory();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

    if (v18)
    {
      if (v20)
      {
        v12 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [HDHeartbeatSeriesFeatureStatusManager predominantFeatureWithError:];
        }

        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (v20)
    {
      v22 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [HDHeartbeatSeriesFeatureStatusManager predominantFeatureWithError:];
      }
    }

    irregularRhythmNotificationsFeatureStatusManager = self->_irregularRhythmNotificationsFeatureStatusManager;
    v38 = v7;
    v12 = [(HKFeatureStatusManager *)irregularRhythmNotificationsFeatureStatusManager featureStatusWithError:&v38];
    v21 = v38;

    if (v12)
    {
      v24 = [v12 objectForKeyedSubscript:v8];
      if ([v24 areAllRequirementsSatisfied])
      {
        onboardingRecord = [v12 onboardingRecord];
        onboardingCompletion = [onboardingRecord onboardingCompletion];
        featureIdentifier = [onboardingCompletion featureIdentifier];
        v28 = [featureIdentifier isEqualToString:*MEMORY[0x277CCC080]];

        _HKInitializeLogging();
        v29 = HKLogHeartRateCategory();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);

        if (v28)
        {
          if (!v30)
          {
            v15 = &unk_283CD2AD0;
            goto LABEL_50;
          }

          v31 = HKLogHeartRateCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            [HDHeartbeatSeriesFeatureStatusManager predominantFeatureWithError:];
          }

          v15 = &unk_283CD2AD0;
        }

        else
        {
          if (!v30)
          {
            v15 = &unk_283CD2AE8;
            goto LABEL_50;
          }

          v31 = HKLogHeartRateCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            [HDHeartbeatSeriesFeatureStatusManager predominantFeatureWithError:];
          }

          v15 = &unk_283CD2AE8;
        }

LABEL_50:
        goto LABEL_51;
      }

      _HKInitializeLogging();
      v34 = HKLogHeartRateCategory();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);

      if (v35)
      {
        onboardingRecord = HKLogHeartRateCategory();
        if (os_log_type_enabled(onboardingRecord, OS_LOG_TYPE_DEBUG))
        {
          [HDHeartbeatSeriesFeatureStatusManager predominantFeatureWithError:];
        }

        v15 = &unk_283CD2B00;
        goto LABEL_50;
      }

      v15 = &unk_283CD2B00;
LABEL_51:

      goto LABEL_52;
    }

    _HKInitializeLogging();
    v32 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [HDHeartbeatSeriesFeatureStatusManager predominantFeatureWithError:];
    }

    v24 = v21;
    if (v24)
    {
      if (error)
      {
        v33 = v24;
        v15 = 0;
        *error = v24;
        goto LABEL_51;
      }

      _HKLogDroppedError();
    }

    v15 = 0;
    goto LABEL_51;
  }

  _HKInitializeLogging();
  v10 = HKHRAFibBurdenLogForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

  if (v11)
  {
    v12 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [HDHeartbeatSeriesFeatureStatusManager predominantFeatureWithError:];
    }

LABEL_15:
    v15 = &unk_283CD2AB8;
    v21 = v7;
LABEL_52:

    v7 = v21;
    goto LABEL_53;
  }

LABEL_16:
  v15 = &unk_283CD2AB8;
LABEL_53:

  v36 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  v20 = *MEMORY[0x277D85DE8];
  providingCopy = providing;
  statusCopy = status;
  _HKInitializeLogging();
  v8 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    featureIdentifier = [providingCopy featureIdentifier];
    v16 = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = featureIdentifier;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received feature status update for %{public}@", &v16, 0x16u);
  }

  _HKInitializeLogging();
  v12 = HKLogHeartRateCategory();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13)
  {
    v14 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [HDHeartbeatSeriesFeatureStatusManager featureStatusProviding:didUpdateFeatureStatus:];
    }
  }

  [(HDHeartbeatSeriesFeatureStatusManager *)self _notifyDelegateOfCurrentState];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)initWithClient:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithClient:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithClient:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithClient:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithClient:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)predominantFeatureWithError:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = [v0 unsatisfiedRequirementIdentifiers];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_12();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)predominantFeatureWithError:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = [v0 unsatisfiedRequirementIdentifiers];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_12();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)predominantFeatureWithError:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_12();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)predominantFeatureWithError:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_12();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)predominantFeatureWithError:.cold.5()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v6 = 2114;
  v7 = v1;
  v3 = v2;
  _os_log_error_impl(&dword_229486000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Error reading feature state for IRN: %{public}@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)predominantFeatureWithError:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_12();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)predominantFeatureWithError:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_12();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)predominantFeatureWithError:(uint64_t)a1 .cold.8(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%@] Error reading feature status for AFib Burden", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)featureStatusProviding:didUpdateFeatureStatus:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_12();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end