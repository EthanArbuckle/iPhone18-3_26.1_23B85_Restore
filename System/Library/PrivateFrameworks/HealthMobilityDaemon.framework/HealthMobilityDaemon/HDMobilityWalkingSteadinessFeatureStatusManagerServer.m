@interface HDMobilityWalkingSteadinessFeatureStatusManagerServer
+ (BOOL)_hasWriteEntitlement:(id)a3 withError:(id *)a4;
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (HDMobilityWalkingSteadinessFeatureStatusManagerServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 classificationsFeatureAvailabilityExtension:(id)a7 mobilitySettingsDefaults:(id)a8 featureStatusProvider:(id)a9;
- (id)_clientRemoteObjectProxy;
- (id)_determineNotificationStatusWithFeatureStatus:(id)a3;
- (id)_determineOnboardingStatusWithFeatureStatus:(id)a3;
- (id)_getNotificationStatusWithError:(id *)a3;
- (id)_getOnboardingStatusWithError:(id *)a3;
- (void)_stopObservingChangesAndExpectToBeObserving:(BOOL)a3;
- (void)dealloc;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
- (void)remote_fitnessTrackingEnabledWithCompletion:(id)a3;
- (void)remote_notificationStatusWithCompletion:(id)a3;
- (void)remote_onboardingStatusWithCompletion:(id)a3;
- (void)remote_resetOnboardingWithCompletion:(id)a3;
- (void)remote_startObservingChangesWithCompletion:(id)a3;
@end

@implementation HDMobilityWalkingSteadinessFeatureStatusManagerServer

- (HDMobilityWalkingSteadinessFeatureStatusManagerServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 classificationsFeatureAvailabilityExtension:(id)a7 mobilitySettingsDefaults:(id)a8 featureStatusProvider:(id)a9
{
  v24 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = HDMobilityWalkingSteadinessFeatureStatusManagerServer;
  v18 = [(HDStandardTaskServer *)&v25 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_classificationsFeatureAvailabilityExtension, a7);
    v20 = HKCreateSerialDispatchQueue();
    queue = v19->_queue;
    v19->_queue = v20;

    objc_storeStrong(&v19->_mobilitySettingsDefaults, a8);
    v19->_observing = 0;
    objc_storeStrong(&v19->_featureStatusProvider, a9);
    v22 = v19;
  }

  return v19;
}

- (void)dealloc
{
  [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _stopObservingChangesAndExpectToBeObserving:0];
  v3.receiver = self;
  v3.super_class = HDMobilityWalkingSteadinessFeatureStatusManagerServer;
  [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)&v3 dealloc];
}

- (void)remote_onboardingStatusWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _getOnboardingStatusWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_notificationStatusWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _getNotificationStatusWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_fitnessTrackingEnabledWithCompletion:(id)a3
{
  featureStatusProvider = self->_featureStatusProvider;
  v8 = 0;
  v4 = a3;
  v5 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D11A38]];
    v4[2](v4, [v7 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF40]], v6);

    v4 = v7;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureStatusManagerServer remote_fitnessTrackingEnabledWithCompletion:];
    }

    v4[2](v4, 0, v6);
  }
}

+ (BOOL)_hasWriteEntitlement:(id)a3 withError:(id *)a4
{
  v5 = [a3 hasEntitlement:*MEMORY[0x277CCC8B0]];
  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:4 format:@"Unauthorized access to modify Walking Steadiness feature status"];
    if (v6)
    {
      if (a4)
      {
        v7 = v6;
        *a4 = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v5;
}

- (void)remote_resetOnboardingWithCompletion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HDStandardTaskServer *)self client];
  v7 = [v6 entitlements];
  v21 = 0;
  v8 = [v5 _hasWriteEntitlement:v7 withError:&v21];
  v9 = v21;

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2F8];
  v11 = os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      v12 = v10;
      v13 = objc_opt_class();
      *buf = 138543362;
      v23 = v13;
      v14 = v13;
      _os_log_impl(&dword_251962000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resetting onboarding", buf, 0xCu);
    }

    classificationsFeatureAvailabilityExtension = self->_classificationsFeatureAvailabilityExtension;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __94__HDMobilityWalkingSteadinessFeatureStatusManagerServer_remote_resetOnboardingWithCompletion___block_invoke;
    v19[3] = &unk_2796D9528;
    v19[4] = self;
    v20 = v4;
    [(HDFeatureAvailabilityExtension *)classificationsFeatureAvailabilityExtension resetOnboardingWithCompletion:v19];
  }

  else
  {
    if (v11)
    {
      v16 = v10;
      v17 = objc_opt_class();
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_251962000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unauthorized call to reset onboarding", buf, 0xCu);
    }

    (*(v4 + 2))(v4, 0, v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __94__HDMobilityWalkingSteadinessFeatureStatusManagerServer_remote_resetOnboardingWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(*(a1 + 32) + 64) removeObjectForKey:@"EnableWalkingSteadinessNotifications"];
    v6 = [*(a1 + 32) client];
    v7 = [v6 profile];
    v8 = [v7 featureSettingsManager];
    v9 = *MEMORY[0x277CCC110];
    v12 = 0;
    [v8 resetFeatureSettingsForFeatureIdentifier:v9 suppressNotificationsToObserver:0 error:&v12];
    v10 = v12;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      __94__HDMobilityWalkingSteadinessFeatureStatusManagerServer_remote_resetOnboardingWithCompletion___block_invoke_cold_1(a1, v11, v5);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)remote_startObservingChangesWithCompletion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_observing)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureStatusManagerServer remote_startObservingChangesWithCompletion:];
    }
  }

  else
  {
    self->_observing = 1;
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_251962000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting observation of changes", &v7, 0xCu);
    }

    [(HKFeatureStatusProviding *)self->_featureStatusProvider registerObserver:self queue:self->_queue];
    v4[2](v4, 1, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_getOnboardingStatusWithError:(id *)a3
{
  featureStatusProvider = self->_featureStatusProvider;
  v12 = 0;
  v6 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _determineOnboardingStatusWithFeatureStatus:v6];
    goto LABEL_12;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC2F8];
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureStatusManagerServer remote_fitnessTrackingEnabledWithCompletion:];
    }

    if (a3)
    {
      v10 = v7;
      v8 = 0;
      *a3 = v7;
      goto LABEL_12;
    }

    _HKLogDroppedError();
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [HDMobilityWalkingSteadinessFeatureStatusManagerServer _getOnboardingStatusWithError:];
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)_determineOnboardingStatusWithFeatureStatus:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = [v4 objectForKeyedSubscript:*MEMORY[0x277D11A30]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBE38]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D11A38]];
  v26 = v6;
  if ([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF98]])
  {
    v7 = v5;
    v8 = [v4 onboardingRecord];
    v9 = [v8 earliestDateOfAnyOnboardingCompletion];

    v10 = 0;
    v11 = 1;
    goto LABEL_27;
  }

  v12 = [v6 isRequirementSatisfiedWithIdentifier:{*MEMORY[0x277CCBF70], v6}];
  v13 = MEMORY[0x277CCC2F8];
  if (v12)
  {
    v10 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v14 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_impl(&dword_251962000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] User is age gated, marking unavailability reason", buf, 0xCu);
    }

    v10 = 1;
  }

  if (([v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD8]] & 1) == 0)
  {
    _HKInitializeLogging();
    v15 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_impl(&dword_251962000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Local device cannot support walking steadiness, marking unavailability reason", buf, 0xCu);
    }

    v10 |= 2uLL;
  }

  if (([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF40]] & 1) == 0)
  {
    _HKInitializeLogging();
    v16 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_impl(&dword_251962000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has motion & fitness disabled, marking onboarding unavailability reason", buf, 0xCu);
    }

    v10 |= 4uLL;
  }

  if ([v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF48]])
  {
    if (!v10)
    {
      v7 = v5;
      _HKInitializeLogging();
      v17 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = self;
        _os_log_impl(&dword_251962000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] User not onboarded but no reason why they couldn't onboard", buf, 0xCu);
      }

      v9 = 0;
      v10 = 0;
      v11 = 2;
      goto LABEL_27;
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_impl(&dword_251962000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has health app hidden, marking onboarding unavailability reason", buf, 0xCu);
    }

    v10 |= 8uLL;
  }

  v7 = v5;
  _HKInitializeLogging();
  v19 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = self;
    _os_log_impl(&dword_251962000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] User not onboarded but onboarding unavailable", buf, 0xCu);
  }

  v9 = 0;
  v11 = 0;
LABEL_27:
  v20 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBE50]];
  v21 = objc_alloc(MEMORY[0x277D11AD0]);
  v22 = [v20 areAllRequirementsSatisfied];
  v23 = [v21 initWithState:v11 unavailableReasons:v10 dateOnboarded:v9 shouldOnboardingTileBeAdvertised:v22 isLocaleValidOnLocalDevice:objc_msgSend(v20 isClassificationAvailable:{"isRequirementSatisfiedWithIdentifier:", *MEMORY[0x277CCBF08]), objc_msgSend(v28, "areAllRequirementsSatisfied")}];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_getNotificationStatusWithError:(id *)a3
{
  featureStatusProvider = self->_featureStatusProvider;
  v12 = 0;
  v6 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _determineNotificationStatusWithFeatureStatus:v6];
    goto LABEL_12;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC2F8];
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureStatusManagerServer remote_fitnessTrackingEnabledWithCompletion:];
    }

    if (a3)
    {
      v10 = v7;
      v8 = 0;
      *a3 = v7;
      goto LABEL_12;
    }

    _HKLogDroppedError();
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [HDMobilityWalkingSteadinessFeatureStatusManagerServer _getOnboardingStatusWithError:];
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)_determineNotificationStatusWithFeatureStatus:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 isAppleWatch];

  if (v6)
  {
    v7 = 0;
    goto LABEL_47;
  }

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D11A38]];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D11A40]];
  v10 = [v9 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF40]];
  v11 = *MEMORY[0x277CCBF88];
  v12 = [v9 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF88]];
  v13 = [v8 areAllRequirementsSatisfied];
  v14 = MEMORY[0x277CCC2F8];
  if (v13)
  {
    _HKInitializeLogging();
    v15 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v45 = self;
      _os_log_impl(&dword_251962000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications enabled, sending back enabled notification status", buf, 0xCu);
    }

    v16 = objc_alloc(MEMORY[0x277D11AC8]);
    v17 = v12 ^ 1u;
    v18 = 1;
    v19 = 0;
    v20 = v10;
  }

  else
  {
    v42 = v9;
    v21 = self;
    v22 = [v8 unsatisfiedRequirementIdentifiers];
    v43 = *MEMORY[0x277CCBF38];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v24 = [v22 isEqualToArray:v23];

    if (v24)
    {
      _HKInitializeLogging();
      v25 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v21;
        _os_log_impl(&dword_251962000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications disabled but otherwise clear, sending back disabled notification status", buf, 0xCu);
      }

      v7 = [objc_alloc(MEMORY[0x277D11AC8]) initWithState:2 unavailableReasons:0 fitnessTrackingEnabled:v10 healthNotificationsDisabled:v12 ^ 1u];
      v9 = v42;
      goto LABEL_46;
    }

    v26 = v14;
    if ([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF70]])
    {
      v27 = 0;
      v28 = v10;
      v29 = v21;
    }

    else
    {
      _HKInitializeLogging();
      v30 = *v14;
      v31 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT);
      v28 = v10;
      v29 = v21;
      if (v31)
      {
        *buf = 138543362;
        v45 = v21;
        _os_log_impl(&dword_251962000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] User is age gated, marking notification unavailability reason", buf, 0xCu);
      }

      v27 = 1;
    }

    v9 = v42;
    if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEE0]] & 1) == 0)
    {
      _HKInitializeLogging();
      v32 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v29;
        _os_log_impl(&dword_251962000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Age is not present, marking notification unavailability reason", buf, 0xCu);
      }

      v27 |= 2uLL;
    }

    if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD8]] & 1) == 0)
    {
      _HKInitializeLogging();
      v33 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v29;
        _os_log_impl(&dword_251962000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device not capable of walking steadiness, marking notification unavailability reason", buf, 0xCu);
      }

      v27 |= 4uLL;
    }

    if ((v28 & 1) == 0)
    {
      _HKInitializeLogging();
      v34 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v29;
        _os_log_impl(&dword_251962000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has fitness tracking disabled, marking notification unavailability reason", buf, 0xCu);
      }

      v27 |= 8uLL;
    }

    if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF48]] & 1) == 0)
    {
      _HKInitializeLogging();
      v35 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v29;
        _os_log_impl(&dword_251962000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has health app hidden, marking notification unavailability reason", buf, 0xCu);
      }

      v27 |= 0x10uLL;
    }

    if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF58]] & 1) == 0)
    {
      _HKInitializeLogging();
      v36 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v29;
        _os_log_impl(&dword_251962000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] User no longer has any values for Height set, marking notification unavailability reason", buf, 0xCu);
      }

      v27 |= 0x40uLL;
    }

    if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFA8]] & 1) == 0)
    {
      _HKInitializeLogging();
      v37 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v29;
        _os_log_impl(&dword_251962000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has not onboarded, marking notification unavailability reason", buf, 0xCu);
      }

      v27 |= 0x20uLL;
    }

    if (([v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF98]] & 1) == 0)
    {
      _HKInitializeLogging();
      v38 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v29;
        _os_log_impl(&dword_251962000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has not onboarded, marking notification unavailability reason", buf, 0xCu);
      }

      v27 |= 0x20uLL;
    }

    v39 = [v42 isRequirementSatisfiedWithIdentifier:v11];
    v16 = objc_alloc(MEMORY[0x277D11AC8]);
    v17 = v39 ^ 1u;
    v18 = 0;
    v19 = v27;
    v20 = v28;
  }

  v7 = [v16 initWithState:v18 unavailableReasons:v19 fitnessTrackingEnabled:v20 healthNotificationsDisabled:v17];
LABEL_46:

LABEL_47:
  v40 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_stopObservingChangesAndExpectToBeObserving:(BOOL)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_observing)
  {
    [(HKFeatureStatusProviding *)self->_featureStatusProvider unregisterObserver:self];
    self->_observing = 0;
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = self;
      _os_log_impl(&dword_251962000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping observation of changes", &v6, 0xCu);
    }
  }

  else if (a3)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureStatusManagerServer _stopObservingChangesAndExpectToBeObserving:];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v5 = a4;
  v9 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _determineOnboardingStatusWithFeatureStatus:v5];
  v6 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [v6 client_didUpdateOnboardingStatus:v9];

  v7 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _determineNotificationStatusWithFeatureStatus:v5];

  v8 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
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
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 profile];
  v15 = [v14 profileExtensionWithIdentifier:*MEMORY[0x277D11A58]];

  v16 = [v15 featureAvailabilityExtensionForFeatureIdentifier:*MEMORY[0x277CCC110]];
  v17 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Mobility.notifications"];
  v18 = objc_alloc(MEMORY[0x277CCD460]);
  v19 = [v11 profile];
  v20 = [v18 initWithFeatureAvailabilityProviding:v16 healthDataSource:v19 countryCodeSource:1];

  v21 = [[HDMobilityWalkingSteadinessFeatureStatusManagerServer alloc] initWithUUID:v13 configuration:v12 client:v11 delegate:v10 classificationsFeatureAvailabilityExtension:v16 mobilitySettingsDefaults:v17 featureStatusProvider:v20];

  return v21;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [v7 entitlements];
  LOBYTE(a1) = [a1 _hasWriteEntitlement:v8 withError:0];

  if (a1 & 1) != 0 || ([v7 entitlements], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasEntitlement:", *MEMORY[0x277CCC570]), v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hk_error:4 format:@"Unauthorized access of Walking Steadiness feature status"];
    if (v12)
    {
      if (a5)
      {
        v13 = v12;
        *a5 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v11 = 0;
  }

  return v11;
}

- (void)remote_fitnessTrackingEnabledWithCompletion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_251962000, v0, v1, "[%{public}@] Error when retrieving feature status: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __94__HDMobilityWalkingSteadinessFeatureStatusManagerServer_remote_resetOnboardingWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v8 = a3;
  _os_log_error_impl(&dword_251962000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Error resetting onboarding: %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remote_startObservingChangesWithCompletion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_251962000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Asked to start observation of changes but we already started.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_getOnboardingStatusWithError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_251962000, v0, OS_LOG_TYPE_FAULT, "[%{public}@] Nil feature status given without error", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingChangesAndExpectToBeObserving:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_251962000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Asked to stop observation of changes but we are not observing.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end