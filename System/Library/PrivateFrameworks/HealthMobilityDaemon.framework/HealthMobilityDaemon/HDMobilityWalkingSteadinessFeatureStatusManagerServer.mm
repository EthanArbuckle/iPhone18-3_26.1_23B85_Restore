@interface HDMobilityWalkingSteadinessFeatureStatusManagerServer
+ (BOOL)_hasWriteEntitlement:(id)entitlement withError:(id *)error;
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDMobilityWalkingSteadinessFeatureStatusManagerServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate classificationsFeatureAvailabilityExtension:(id)extension mobilitySettingsDefaults:(id)defaults featureStatusProvider:(id)provider;
- (id)_clientRemoteObjectProxy;
- (id)_determineNotificationStatusWithFeatureStatus:(id)status;
- (id)_determineOnboardingStatusWithFeatureStatus:(id)status;
- (id)_getNotificationStatusWithError:(id *)error;
- (id)_getOnboardingStatusWithError:(id *)error;
- (void)_stopObservingChangesAndExpectToBeObserving:(BOOL)observing;
- (void)dealloc;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)remote_fitnessTrackingEnabledWithCompletion:(id)completion;
- (void)remote_notificationStatusWithCompletion:(id)completion;
- (void)remote_onboardingStatusWithCompletion:(id)completion;
- (void)remote_resetOnboardingWithCompletion:(id)completion;
- (void)remote_startObservingChangesWithCompletion:(id)completion;
@end

@implementation HDMobilityWalkingSteadinessFeatureStatusManagerServer

- (HDMobilityWalkingSteadinessFeatureStatusManagerServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate classificationsFeatureAvailabilityExtension:(id)extension mobilitySettingsDefaults:(id)defaults featureStatusProvider:(id)provider
{
  extensionCopy = extension;
  defaultsCopy = defaults;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = HDMobilityWalkingSteadinessFeatureStatusManagerServer;
  v18 = [(HDStandardTaskServer *)&v25 initWithUUID:d configuration:configuration client:client delegate:delegate];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_classificationsFeatureAvailabilityExtension, extension);
    v20 = HKCreateSerialDispatchQueue();
    queue = v19->_queue;
    v19->_queue = v20;

    objc_storeStrong(&v19->_mobilitySettingsDefaults, defaults);
    v19->_observing = 0;
    objc_storeStrong(&v19->_featureStatusProvider, provider);
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

- (void)remote_onboardingStatusWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _getOnboardingStatusWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)remote_notificationStatusWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _getNotificationStatusWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)remote_fitnessTrackingEnabledWithCompletion:(id)completion
{
  featureStatusProvider = self->_featureStatusProvider;
  v8 = 0;
  completionCopy = completion;
  v5 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D11A38]];
    completionCopy[2](completionCopy, [v7 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF40]], v6);

    completionCopy = v7;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureStatusManagerServer remote_fitnessTrackingEnabledWithCompletion:];
    }

    completionCopy[2](completionCopy, 0, v6);
  }
}

+ (BOOL)_hasWriteEntitlement:(id)entitlement withError:(id *)error
{
  v5 = [entitlement hasEntitlement:*MEMORY[0x277CCC8B0]];
  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:4 format:@"Unauthorized access to modify Walking Steadiness feature status"];
    if (v6)
    {
      if (error)
      {
        v7 = v6;
        *error = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v5;
}

- (void)remote_resetOnboardingWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_opt_class();
  client = [(HDStandardTaskServer *)self client];
  entitlements = [client entitlements];
  v21 = 0;
  v8 = [v5 _hasWriteEntitlement:entitlements withError:&v21];
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
    v20 = completionCopy;
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

    (*(completionCopy + 2))(completionCopy, 0, v9);
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

- (void)remote_startObservingChangesWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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
      selfCopy = self;
      _os_log_impl(&dword_251962000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting observation of changes", &v7, 0xCu);
    }

    [(HKFeatureStatusProviding *)self->_featureStatusProvider registerObserver:self queue:self->_queue];
    completionCopy[2](completionCopy, 1, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_getOnboardingStatusWithError:(id *)error
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

    if (error)
    {
      v10 = v7;
      v8 = 0;
      *error = v7;
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

- (id)_determineOnboardingStatusWithFeatureStatus:(id)status
{
  v31 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v28 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277D11A30]];
  v5 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBE38]];
  v6 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277D11A38]];
  v26 = v6;
  if ([v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF98]])
  {
    v7 = v5;
    onboardingRecord = [statusCopy onboardingRecord];
    earliestDateOfAnyOnboardingCompletion = [onboardingRecord earliestDateOfAnyOnboardingCompletion];

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
      selfCopy6 = self;
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
      selfCopy6 = self;
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
      selfCopy6 = self;
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
        selfCopy6 = self;
        _os_log_impl(&dword_251962000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] User not onboarded but no reason why they couldn't onboard", buf, 0xCu);
      }

      earliestDateOfAnyOnboardingCompletion = 0;
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
      selfCopy6 = self;
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
    selfCopy6 = self;
    _os_log_impl(&dword_251962000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] User not onboarded but onboarding unavailable", buf, 0xCu);
  }

  earliestDateOfAnyOnboardingCompletion = 0;
  v11 = 0;
LABEL_27:
  v20 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBE50]];
  v21 = objc_alloc(MEMORY[0x277D11AD0]);
  areAllRequirementsSatisfied = [v20 areAllRequirementsSatisfied];
  v23 = [v21 initWithState:v11 unavailableReasons:v10 dateOnboarded:earliestDateOfAnyOnboardingCompletion shouldOnboardingTileBeAdvertised:areAllRequirementsSatisfied isLocaleValidOnLocalDevice:objc_msgSend(v20 isClassificationAvailable:{"isRequirementSatisfiedWithIdentifier:", *MEMORY[0x277CCBF08]), objc_msgSend(v28, "areAllRequirementsSatisfied")}];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_getNotificationStatusWithError:(id *)error
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

    if (error)
    {
      v10 = v7;
      v8 = 0;
      *error = v7;
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

- (id)_determineNotificationStatusWithFeatureStatus:(id)status
{
  v46 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    v7 = 0;
    goto LABEL_47;
  }

  v8 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277D11A38]];
  v9 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277D11A40]];
  v10 = [v9 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF40]];
  v11 = *MEMORY[0x277CCBF88];
  v12 = [v9 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF88]];
  areAllRequirementsSatisfied = [v8 areAllRequirementsSatisfied];
  v14 = MEMORY[0x277CCC2F8];
  if (areAllRequirementsSatisfied)
  {
    _HKInitializeLogging();
    v15 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
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
    selfCopy2 = self;
    unsatisfiedRequirementIdentifiers = [v8 unsatisfiedRequirementIdentifiers];
    v43 = *MEMORY[0x277CCBF38];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v24 = [unsatisfiedRequirementIdentifiers isEqualToArray:v23];

    if (v24)
    {
      _HKInitializeLogging();
      v25 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = selfCopy2;
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
      v29 = selfCopy2;
    }

    else
    {
      _HKInitializeLogging();
      v30 = *v14;
      v31 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT);
      v28 = v10;
      v29 = selfCopy2;
      if (v31)
      {
        *buf = 138543362;
        selfCopy = selfCopy2;
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
        selfCopy = v29;
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
        selfCopy = v29;
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
        selfCopy = v29;
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
        selfCopy = v29;
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
        selfCopy = v29;
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
        selfCopy = v29;
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
        selfCopy = v29;
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

- (void)_stopObservingChangesAndExpectToBeObserving:(BOOL)observing
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
      selfCopy = self;
      _os_log_impl(&dword_251962000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping observation of changes", &v6, 0xCu);
    }
  }

  else if (observing)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureStatusManagerServer _stopObservingChangesAndExpectToBeObserving:];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  statusCopy = status;
  v9 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _determineOnboardingStatusWithFeatureStatus:statusCopy];
  _clientRemoteObjectProxy = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy client_didUpdateOnboardingStatus:v9];

  v7 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _determineNotificationStatusWithFeatureStatus:statusCopy];

  _clientRemoteObjectProxy2 = [(HDMobilityWalkingSteadinessFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy2 client_didUpdateNotificationStatus:v7];
}

- (id)_clientRemoteObjectProxy
{
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  clientCopy = client;
  configurationCopy = configuration;
  dCopy = d;
  profile = [clientCopy profile];
  v15 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D11A58]];

  v16 = [v15 featureAvailabilityExtensionForFeatureIdentifier:*MEMORY[0x277CCC110]];
  v17 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Mobility.notifications"];
  v18 = objc_alloc(MEMORY[0x277CCD460]);
  profile2 = [clientCopy profile];
  v20 = [v18 initWithFeatureAvailabilityProviding:v16 healthDataSource:profile2 countryCodeSource:1];

  v21 = [[HDMobilityWalkingSteadinessFeatureStatusManagerServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy classificationsFeatureAvailabilityExtension:v16 mobilitySettingsDefaults:v17 featureStatusProvider:v20];

  return v21;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  clientCopy = client;
  entitlements = [clientCopy entitlements];
  LOBYTE(self) = [self _hasWriteEntitlement:entitlements withError:0];

  if (self & 1) != 0 || ([clientCopy entitlements], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasEntitlement:", *MEMORY[0x277CCC570]), v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hk_error:4 format:@"Unauthorized access of Walking Steadiness feature status"];
    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
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