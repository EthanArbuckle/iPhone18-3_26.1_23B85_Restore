@interface HDHRCardioFitnessFeatureStatusManagerServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (HDHRCardioFitnessFeatureStatusManagerServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 featureAvailabilityProvider:(id)a7 featureStatusProvider:(id)a8 featureSettingsManager:(id)a9;
- (id)_clientRemoteObjectProxy;
- (id)_determineNotificationStatusWithFeatureStatus:(id)a3;
- (id)_determineOnboardingStatusWithFeatureStatus:(id)a3;
- (id)_getNotificationStatusWithError:(id *)a3;
- (id)_getOnboardingStatusWithError:(id *)a3;
- (void)_stopObservingChangesAndExpectToBeObserving:(BOOL)a3;
- (void)dealloc;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
- (void)remote_notificationStatusWithCompletion:(id)a3;
- (void)remote_onboardingStatusWithCompletion:(id)a3;
- (void)remote_resetOnboardingWithCompletion:(id)a3;
- (void)remote_startObservingChangesWithCompletion:(id)a3;
@end

@implementation HDHRCardioFitnessFeatureStatusManagerServer

- (HDHRCardioFitnessFeatureStatusManagerServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 featureAvailabilityProvider:(id)a7 featureStatusProvider:(id)a8 featureSettingsManager:(id)a9
{
  v23 = a7;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = HDHRCardioFitnessFeatureStatusManagerServer;
  v18 = [(HDStandardTaskServer *)&v24 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_featureAvailabilityProvider, a7);
    v20 = HKCreateSerialDispatchQueue();
    queue = v19->_queue;
    v19->_queue = v20;

    objc_storeStrong(&v19->_featureStatusProvider, a8);
    objc_storeStrong(&v19->_featureSettingsManager, a9);
    v19->_observing = 0;
    v19->_lock._os_unfair_lock_opaque = 0;
  }

  return v19;
}

- (void)dealloc
{
  [(HDHRCardioFitnessFeatureStatusManagerServer *)self _stopObservingChangesAndExpectToBeObserving:0];
  v3.receiver = self;
  v3.super_class = HDHRCardioFitnessFeatureStatusManagerServer;
  [(HDHRCardioFitnessFeatureStatusManagerServer *)&v3 dealloc];
}

- (void)remote_onboardingStatusWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDHRCardioFitnessFeatureStatusManagerServer *)self _getOnboardingStatusWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (id)_getOnboardingStatusWithError:(id *)a3
{
  featureStatusProvider = self->_featureStatusProvider;
  v13 = 0;
  v6 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = [(HDHRCardioFitnessFeatureStatusManagerServer *)self _determineOnboardingStatusWithFeatureStatus:v6];
    goto LABEL_13;
  }

  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDHRCardioFitnessFeatureStatusManagerServer _getOnboardingStatusWithError:];
    }

    if (a3)
    {
      v11 = v7;
      v8 = 0;
      *a3 = v7;
      goto LABEL_13;
    }

    _HKLogDroppedError();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [HDHRCardioFitnessFeatureStatusManagerServer _getOnboardingStatusWithError:];
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)_determineOnboardingStatusWithFeatureStatus:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D12E68]];
  if ([v5 areAllRequirementsSatisfied])
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138543362;
      v37 = self;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Classification context satisfied, reporting back clean onboarding status", &v36, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277D12FC0]);
    v8 = [v4 onboardingRecord];
    v9 = [v8 earliestDateOfAnyOnboardingCompletion];
    v10 = v7;
    v11 = 1;
    v12 = 0;
    v13 = v9;
    v14 = 0;
    v15 = 1;
    v16 = 1;
  }

  else
  {
    v17 = [v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFA8]];
    v18 = MEMORY[0x277CCBF08];
    if (v17 && [v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF08]])
    {
      _HKInitializeLogging();
      v19 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 138543362;
        v37 = self;
        _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has valid onboarding but their age is either present or gated", &v36, 0xCu);
      }

      v20 = objc_alloc(MEMORY[0x277D12FC0]);
      v8 = [v4 onboardingRecord];
      v9 = [v8 earliestDateOfAnyOnboardingCompletion];
      v10 = v20;
      v11 = 1;
      v12 = 0;
      v13 = v9;
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBE38]];
      if ([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF70]])
      {
        v21 = 0;
      }

      else
      {
        _HKInitializeLogging();
        v22 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 138543362;
          v37 = self;
          _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] User is age gated, marking unavailability reason", &v36, 0xCu);
        }

        v21 = 1;
      }

      if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEF8]] & 1) == 0)
      {
        _HKInitializeLogging();
        v23 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 138543362;
          v37 = self;
          _os_log_impl(&dword_229486000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] User is age gated, marking unavailability reason", &v36, 0xCu);
        }

        v21 |= 2uLL;
      }

      if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF50]] & 1) == 0)
      {
        _HKInitializeLogging();
        v24 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 138543362;
          v37 = self;
          _os_log_impl(&dword_229486000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has heart rate disabled, marking onboarding unavailability reason", &v36, 0xCu);
        }

        v21 |= 4uLL;
      }

      if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF48]] & 1) == 0)
      {
        _HKInitializeLogging();
        v25 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 138543362;
          v37 = self;
          _os_log_impl(&dword_229486000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has health app hidden, marking onboarding unavailability reason", &v36, 0xCu);
        }

        v21 |= 8uLL;
      }

      if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFE0]] & 1) == 0)
      {
        _HKInitializeLogging();
        v26 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 138543362;
          v37 = self;
          _os_log_impl(&dword_229486000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has heart rate app uninstalled, marking onboarding unavailability reason", &v36, 0xCu);
        }

        v21 |= 0x10uLL;
      }

      v27 = [v8 areAllRequirementsSatisfied];
      _HKInitializeLogging();
      v28 = HKLogHeartRateCategory();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v29)
        {
          v36 = 138543362;
          v37 = self;
          _os_log_impl(&dword_229486000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] User not onboarded but no reason why they couldn't onboard", &v36, 0xCu);
        }

        v30 = 2;
      }

      else
      {
        if (v29)
        {
          v36 = 138543362;
          v37 = self;
          _os_log_impl(&dword_229486000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] User not onboarded but onboarding unavailable", &v36, 0xCu);
        }

        v30 = 0;
      }

      v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBE50]];
      v31 = objc_alloc(MEMORY[0x277D12FC0]);
      v32 = [v9 areAllRequirementsSatisfied];
      v15 = [v9 isRequirementSatisfiedWithIdentifier:*v18];
      v10 = v31;
      v11 = v30;
      v12 = v21;
      v13 = 0;
      v14 = v32;
    }

    v16 = 0;
  }

  v33 = [v10 initWithState:v11 unavailableReasons:v12 dateOnboarded:v13 shouldOnboardingTileBeAdvertised:v14 isLocaleValidOnLocalDevice:v15 isClassificationAvailable:v16];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)remote_notificationStatusWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDHRCardioFitnessFeatureStatusManagerServer *)self _getNotificationStatusWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (id)_getNotificationStatusWithError:(id *)a3
{
  featureStatusProvider = self->_featureStatusProvider;
  v13 = 0;
  v6 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = [(HDHRCardioFitnessFeatureStatusManagerServer *)self _determineNotificationStatusWithFeatureStatus:v6];
    goto LABEL_13;
  }

  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDHRCardioFitnessFeatureStatusManagerServer _getOnboardingStatusWithError:];
    }

    if (a3)
    {
      v11 = v7;
      v8 = 0;
      *a3 = v7;
      goto LABEL_13;
    }

    _HKLogDroppedError();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [HDHRCardioFitnessFeatureStatusManagerServer _getOnboardingStatusWithError:];
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)_determineNotificationStatusWithFeatureStatus:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D12E78];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D12E70]];

  v8 = [v7 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFE8]];
  if ([v6 areAllRequirementsSatisfied])
  {
    _HKInitializeLogging();
    v9 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications enabled, sending back enabled notification status", buf, 0xCu);
    }

    v10 = objc_alloc(MEMORY[0x277D12FB8]);
    v11 = 1;
LABEL_9:
    v16 = 0;
    goto LABEL_49;
  }

  v12 = [v6 unsatisfiedRequirementIdentifiers];
  v30 = *MEMORY[0x277CCBF38];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v14 = [v12 isEqualToArray:v13];

  if (v14)
  {
    _HKInitializeLogging();
    v15 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications disabled but otherwise clear, sending back disabled notification status", buf, 0xCu);
    }

    v10 = objc_alloc(MEMORY[0x277D12FB8]);
    v11 = 2;
    goto LABEL_9;
  }

  if ([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF70]])
  {
    v17 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] User is age gated, marking unavailability reason", buf, 0xCu);
    }

    v17 = 1;
  }

  if (([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEE0]] & 1) == 0)
  {
    _HKInitializeLogging();
    v19 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Age is not present, marking unavailability reason", buf, 0xCu);
    }

    v17 |= 2uLL;
  }

  if (([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEF8]] & 1) == 0)
  {
    _HKInitializeLogging();
    v20 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Active paired device not supported, marking unavailability reason", buf, 0xCu);
    }

    v17 |= 4uLL;
  }

  if (([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF50]] & 1) == 0)
  {
    _HKInitializeLogging();
    v21 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has heart rate disabled, marking unavailability reason", buf, 0xCu);
    }

    v17 |= 0x10uLL;
  }

  if (([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF48]] & 1) == 0)
  {
    _HKInitializeLogging();
    v22 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has health app hidden, marking notification unavailability reason", buf, 0xCu);
    }

    v17 |= 0x20uLL;
  }

  if (([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFE0]] & 1) == 0)
  {
    _HKInitializeLogging();
    v23 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has heart rate app uninstalled, marking notification unavailability reason", buf, 0xCu);
    }

    v17 |= 0x100uLL;
  }

  if (([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF98]] & 1) == 0)
  {
    _HKInitializeLogging();
    v24 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] User needs to confirm medication details, marking notification unavailability reason", buf, 0xCu);
    }

    v17 |= 0x80uLL;
  }

  if (![v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF00]] || (objc_msgSend(v6, "isRequirementSatisfiedWithIdentifier:", *MEMORY[0x277CCBF08]) & 1) == 0)
  {
    _HKInitializeLogging();
    v25 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cardio Fitness not allowed for region in on either local or remote device, marking notification unavailability reason", buf, 0xCu);
    }

    v17 |= 8uLL;
  }

  if (([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFA8]] & 1) == 0)
  {
    _HKInitializeLogging();
    v26 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_229486000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has not onboarded, marking notification unavailability reason", buf, 0xCu);
    }

    v17 |= 0x40uLL;
  }

  v10 = objc_alloc(MEMORY[0x277D12FB8]);
  v11 = 0;
  v16 = v17;
LABEL_49:
  v27 = [v10 initWithState:v11 unavailableReasons:v16 wristDetectEnabled:v8];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __93__HDHRCardioFitnessFeatureStatusManagerServer_remote_setNotificationsEnabled_withCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = WeakRetained[5];
    v8 = *MEMORY[0x277D12E48];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __93__HDHRCardioFitnessFeatureStatusManagerServer_remote_setNotificationsEnabled_withCompletion___block_invoke_300;
    v10[3] = &unk_278660A90;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = *(a1 + 32);
    [v7 setFeatureSettingNumber:MEMORY[0x277CBEC38] forKey:v8 completion:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __93__HDHRCardioFitnessFeatureStatusManagerServer_remote_setNotificationsEnabled_withCompletion___block_invoke_cold_1(a1, v5, v9);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __93__HDHRCardioFitnessFeatureStatusManagerServer_remote_setNotificationsEnabled_withCompletion___block_invoke_300(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __93__HDHRCardioFitnessFeatureStatusManagerServer_remote_setNotificationsEnabled_withCompletion___block_invoke_300_cold_1(a1, v5, v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)remote_resetOnboardingWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resetting onboarding", buf, 0xCu);
  }

  featureAvailabilityProvider = self->_featureAvailabilityProvider;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HDHRCardioFitnessFeatureStatusManagerServer_remote_resetOnboardingWithCompletion___block_invoke;
  v10[3] = &unk_27865FD68;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(HKFeatureAvailabilityProviding *)featureAvailabilityProvider resetOnboardingWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __84__HDHRCardioFitnessFeatureStatusManagerServer_remote_resetOnboardingWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 64);
    v7 = *MEMORY[0x277CCC000];
    v10 = v5;
    [v6 resetFeatureSettingsForFeatureIdentifier:v7 suppressNotificationsToObserver:0 error:&v10];
    v8 = v10;

    (*(*(a1 + 40) + 16))(*(a1 + 40), v8 == 0, v8);
    v5 = v8;
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __84__HDHRCardioFitnessFeatureStatusManagerServer_remote_resetOnboardingWithCompletion___block_invoke_cold_1(a1, v5, v9);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)remote_startObservingChangesWithCompletion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_observing)
  {
    _HKInitializeLogging();
    v5 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HDHRCardioFitnessFeatureStatusManagerServer remote_startObservingChangesWithCompletion:];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_observing = 1;
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = self;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting observation of changes", &v8, 0xCu);
    }

    [(HKFeatureStatusProviding *)self->_featureStatusProvider registerObserver:self queue:self->_queue];
    os_unfair_lock_unlock(&self->_lock);
    v4[2](v4, 1, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingChangesAndExpectToBeObserving:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_observing)
  {
    self->_observing = 0;
    _HKInitializeLogging();
    v5 = HKLogHeartRateCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [HDHRCardioFitnessFeatureStatusManagerServer _stopObservingChangesAndExpectToBeObserving:];
      }
    }

    [(HKFeatureStatusProviding *)self->_featureStatusProvider unregisterObserver:self];
  }

  else if (v3)
  {
    _HKInitializeLogging();
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HDHRCardioFitnessFeatureStatusManagerServer _stopObservingChangesAndExpectToBeObserving:];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v5 = a4;
  v9 = [(HDHRCardioFitnessFeatureStatusManagerServer *)self _determineOnboardingStatusWithFeatureStatus:v5];
  v6 = [(HDHRCardioFitnessFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [v6 client_didUpdateOnboardingStatus:v9];

  v7 = [(HDHRCardioFitnessFeatureStatusManagerServer *)self _determineNotificationStatusWithFeatureStatus:v5];

  v8 = [(HDHRCardioFitnessFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [v8 client_didUpdateNotificationStatus:v7];
}

- (id)_clientRemoteObjectProxy
{
  v2 = [(HDStandardTaskServer *)self client];
  v3 = [v2 connection];
  v4 = [v3 remoteObjectProxy];

  return v4;
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = *MEMORY[0x277CCC000];
  v17 = [v15 featureAvailabilityProvidingForFeatureIdentifier:*MEMORY[0x277CCC000]];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277CCD460]);
    v19 = [v13 profile];
    v20 = [v18 initWithFeatureAvailabilityProviding:v17 healthDataSource:v19 countryCodeSource:1];

    v21 = [HDHRCardioFitnessFeatureStatusManagerServer alloc];
    v22 = [v13 profile];
    v23 = [v22 featureSettingsManager];
    v24 = [(HDHRCardioFitnessFeatureStatusManagerServer *)v21 initWithUUID:v11 configuration:v12 client:v13 delegate:v14 featureAvailabilityProvider:v17 featureStatusProvider:v20 featureSettingsManager:v23];

    goto LABEL_9;
  }

  v22 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension providing feature availability for %@", v16}];
  if (!v22)
  {
    goto LABEL_7;
  }

  if (!a7)
  {
    _HKLogDroppedError();
LABEL_7:
    v24 = 0;
    goto LABEL_8;
  }

  v25 = v22;
  v24 = 0;
  *a7 = v22;
LABEL_8:
  v20 = v22;
LABEL_9:

  return v24;
}

- (void)_getOnboardingStatusWithError:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_15();
  v4 = v0;
  OUTLINED_FUNCTION_2_5(&dword_229486000, v1, v1, "[%{public}@] Error when retrieving feature status: %{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_getOnboardingStatusWithError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(&dword_229486000, v0, OS_LOG_TYPE_FAULT, "[%{public}@] Nil feature status given without error", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __93__HDHRCardioFitnessFeatureStatusManagerServer_remote_setNotificationsEnabled_withCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  v11 = a2;
  v7 = v6;
  OUTLINED_FUNCTION_2_5(&dword_229486000, a3, v8, "[%{public}@] Error when setting enablement key: %{public}@", v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __93__HDHRCardioFitnessFeatureStatusManagerServer_remote_setNotificationsEnabled_withCompletion___block_invoke_300_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  v11 = a2;
  v7 = v6;
  OUTLINED_FUNCTION_2_5(&dword_229486000, a3, v8, "[%{public}@] Error when setting notification details entered key: %{public}@", v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __84__HDHRCardioFitnessFeatureStatusManagerServer_remote_resetOnboardingWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  v11 = a2;
  v7 = v6;
  OUTLINED_FUNCTION_2_5(&dword_229486000, a3, v8, "[%{public}@] Error resetting onboarding: %{public}@", v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remote_startObservingChangesWithCompletion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_229486000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Asked to start observation of changes but we already started.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingChangesAndExpectToBeObserving:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_229486000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Asked to stop observation of changes but we are not observing.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingChangesAndExpectToBeObserving:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_229486000, v0, OS_LOG_TYPE_DEBUG, "[%{public}@] Stopping observation of changes", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end