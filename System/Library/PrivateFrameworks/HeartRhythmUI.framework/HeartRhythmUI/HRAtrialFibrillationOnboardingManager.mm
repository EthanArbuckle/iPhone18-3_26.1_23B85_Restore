@interface HRAtrialFibrillationOnboardingManager
- (HRAtrialFibrillationOnboardingManager)initWithOnboardingType:(int64_t)type isFirstTimeOnboarding:(BOOL)onboarding healthStore:(id)store dateCache:(id)cache provenance:(int64_t)provenance delegate:(id)delegate;
- (HRAtrialFibrillationOnboardingManagerDelegate)delegate;
- (id)onboardingManager:(id)manager customViewControllerForPage:(id)page;
- (id)onboardingManager:(id)manager sequenceForStep:(int64_t)step onboardingType:(int64_t)type;
- (id)onboardingNavigationController;
- (void)_setOnboardingCompletedForCountryCode:(id)code;
- (void)_submitTipsDiscoverabilitySignal;
- (void)_wrapUpOnboardingWithNotificationsEnabled:(BOOL)enabled;
- (void)didBeginOnboardingForOnboardingManager:(id)manager;
- (void)didCancelOnboardingForOnboardingManager:(id)manager;
- (void)didCompleteOnboardingForOnboardingManager:(id)manager;
- (void)dismissOnboarding;
- (void)onboardingManager:(id)manager willMoveToPage:(id)page;
@end

@implementation HRAtrialFibrillationOnboardingManager

- (HRAtrialFibrillationOnboardingManager)initWithOnboardingType:(int64_t)type isFirstTimeOnboarding:(BOOL)onboarding healthStore:(id)store dateCache:(id)cache provenance:(int64_t)provenance delegate:(id)delegate
{
  onboardingCopy = onboarding;
  storeCopy = store;
  cacheCopy = cache;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = HRAtrialFibrillationOnboardingManager;
  v17 = [(HRAtrialFibrillationOnboardingManager *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
    v18->_provenance = provenance;
    v19 = objc_alloc_init(_HRAtrialFibrillationOnboardingNavigationController);
    navigationController = v18->_navigationController;
    v18->_navigationController = v19;

    v21 = [objc_alloc(MEMORY[0x277D12998]) initWithOnboardingType:type isFirstTimeOnboarding:onboardingCopy healthStore:storeCopy dateCache:cacheCopy navigationController:v18->_navigationController];
    onboardingManager = v18->_onboardingManager;
    v18->_onboardingManager = v21;

    [(HKOnboardingManager *)v18->_onboardingManager setDataSource:v18];
    [(HKOnboardingManager *)v18->_onboardingManager setDelegate:v18];
    v23 = objc_alloc(MEMORY[0x277CCD438]);
    v24 = [v23 initWithFeatureIdentifier:*MEMORY[0x277CCC070] healthStore:storeCopy];
    featureAvailabilityStore = v18->_featureAvailabilityStore;
    v18->_featureAvailabilityStore = v24;

    [(_HRAtrialFibrillationOnboardingNavigationController *)v18->_navigationController setOnboardingManager:v18];
  }

  return v18;
}

- (id)onboardingNavigationController
{
  onboardingManager = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
  onboardingNavigationController = [onboardingManager onboardingNavigationController];

  return onboardingNavigationController;
}

- (void)dismissOnboarding
{
  onboardingManager = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
  [onboardingManager dismissOnboarding];

  navigationController = self->_navigationController;

  [(_HRAtrialFibrillationOnboardingNavigationController *)navigationController setOnboardingManager:0];
}

- (id)onboardingManager:(id)manager sequenceForStep:(int64_t)step onboardingType:(int64_t)type
{
  managerCopy = manager;
  if (step == 2)
  {
    if (type != 1)
    {
      if (type)
      {
        goto LABEL_15;
      }

      firstTimeAtrialFibrillationOnboardingSequence = [MEMORY[0x277D129A8] firstTimeAtrialFibrillationOnboardingSequence];
      goto LABEL_9;
    }

    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (step != 1)
    {
      goto LABEL_15;
    }

    if (type != 1)
    {
      if (type)
      {
        goto LABEL_15;
      }

      firstTimeAtrialFibrillationOnboardingSequence = [MEMORY[0x277D129A8] firstTimeAtrialFibrillationAvailabilitySequence];
LABEL_9:
      v5 = firstTimeAtrialFibrillationOnboardingSequence;
      goto LABEL_15;
    }

    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      [HRAtrialFibrillationOnboardingManager onboardingManager:v10 sequenceForStep:? onboardingType:?];
    }
  }

  v5 = 0;
LABEL_15:

  return v5;
}

- (id)onboardingManager:(id)manager customViewControllerForPage:(id)page
{
  if ([page sequencePage] == 1)
  {
    v5 = [HROnboardingAtrialFibrillationGateViewController alloc];
    hasAtrialFibrillationDiagnosis = [(HRAtrialFibrillationOnboardingManager *)self hasAtrialFibrillationDiagnosis];
    v7 = [(HROnboardingAtrialFibrillationGateViewController *)v5 initForOnboarding:1 hasAtrialFibrillationDiagnosis:hasAtrialFibrillationDiagnosis];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didBeginOnboardingForOnboardingManager:(id)manager
{
  v4 = +[HRUIAnalyticsManager sharedManager];
  [v4 trackAtrialFibrillationDetectionOnboardingStep:0 forOnboardingVersion:1 countryCode:0 provenance:{-[HRAtrialFibrillationOnboardingManager provenance](self, "provenance")}];
}

- (void)onboardingManager:(id)manager willMoveToPage:(id)page
{
  sequencePage = [page sequencePage];
  if (sequencePage == 4)
  {
    onboardingManager = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
    userInfo = [onboardingManager userInfo];
    v15 = [userInfo objectForKeyedSubscript:@"HROnboardingAtrialFibrillationCountryCodeKey"];

    [(HRAtrialFibrillationOnboardingManager *)self _setOnboardingCompletedForCountryCode:v15];
    onboardingManager2 = +[HRUIAnalyticsManager sharedManager];
    iSOCode = [v15 ISOCode];
    [onboardingManager2 trackAtrialFibrillationDetectionOnboardingStep:3 forOnboardingVersion:1 countryCode:iSOCode provenance:{-[HRAtrialFibrillationOnboardingManager provenance](self, "provenance")}];
  }

  else
  {
    if (sequencePage == 2)
    {
      v15 = +[HRUIAnalyticsManager sharedManager];
      onboardingManager2 = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
      iSOCode = [onboardingManager2 userInfo];
      v8 = [iSOCode objectForKeyedSubscript:@"HROnboardingAtrialFibrillationCountryCodeKey"];
      iSOCode2 = [v8 ISOCode];
      provenance = [(HRAtrialFibrillationOnboardingManager *)self provenance];
      v11 = v15;
      v12 = 2;
    }

    else
    {
      if (sequencePage != 1)
      {
        return;
      }

      v15 = +[HRUIAnalyticsManager sharedManager];
      onboardingManager2 = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
      iSOCode = [onboardingManager2 userInfo];
      v8 = [iSOCode objectForKeyedSubscript:@"HROnboardingAtrialFibrillationCountryCodeKey"];
      iSOCode2 = [v8 ISOCode];
      provenance = [(HRAtrialFibrillationOnboardingManager *)self provenance];
      v11 = v15;
      v12 = 1;
    }

    [v11 trackAtrialFibrillationDetectionOnboardingStep:v12 forOnboardingVersion:1 countryCode:iSOCode2 provenance:provenance];
  }
}

- (void)_setOnboardingCompletedForCountryCode:(id)code
{
  codeCopy = code;
  featureAvailabilityStore = [(HRAtrialFibrillationOnboardingManager *)self featureAvailabilityStore];
  iSOCode = [codeCopy ISOCode];
  provenance = [codeCopy provenance];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HRAtrialFibrillationOnboardingManager__setOnboardingCompletedForCountryCode___block_invoke;
  v8[3] = &unk_2796FB850;
  v8[4] = self;
  [featureAvailabilityStore setCurrentOnboardingVersionCompletedForCountryCode:iSOCode countryCodeProvenance:provenance date:0 settings:0 completion:v8];
}

void __79__HRAtrialFibrillationOnboardingManager__setOnboardingCompletedForCountryCode___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __79__HRAtrialFibrillationOnboardingManager__setOnboardingCompletedForCountryCode___block_invoke_cold_1(a1, v6);
    }
  }
}

- (void)didCancelOnboardingForOnboardingManager:(id)manager
{
  delegate = [(HRAtrialFibrillationOnboardingManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HRAtrialFibrillationOnboardingManager *)self delegate];
    [delegate2 didDismissOnboarding];
  }

  navigationController = self->_navigationController;

  [(_HRAtrialFibrillationOnboardingNavigationController *)navigationController setOnboardingManager:0];
}

- (void)didCompleteOnboardingForOnboardingManager:(id)manager
{
  managerCopy = manager;
  onboardingManager = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
  userInfo = [onboardingManager userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"HROnboardingAtrialFibrillationEnableNotificationsKey"];

  -[HRAtrialFibrillationOnboardingManager _wrapUpOnboardingWithNotificationsEnabled:](self, "_wrapUpOnboardingWithNotificationsEnabled:", [v7 BOOLValue]);
  delegate = [(HRAtrialFibrillationOnboardingManager *)self delegate];
  onboardingNavigationController = [managerCopy onboardingNavigationController];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HRAtrialFibrillationOnboardingManager_didCompleteOnboardingForOnboardingManager___block_invoke;
  v11[3] = &unk_2796FB778;
  v12 = delegate;
  v10 = delegate;
  [onboardingNavigationController dismissViewControllerAnimated:1 completion:v11];
}

uint64_t __83__HRAtrialFibrillationOnboardingManager_didCompleteOnboardingForOnboardingManager___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 didCompleteOnboarding];
  }

  return result;
}

- (void)_wrapUpOnboardingWithNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  featureAvailabilityStore = [(HRAtrialFibrillationOnboardingManager *)self featureAvailabilityStore];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v7 = *MEMORY[0x277CCC120];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__HRAtrialFibrillationOnboardingManager__wrapUpOnboardingWithNotificationsEnabled___block_invoke;
  v13[3] = &unk_2796FB850;
  v13[4] = self;
  [featureAvailabilityStore setFeatureSettingNumber:v6 forKey:v7 completion:v13];

  v8 = +[HRUIAnalyticsManager sharedManager];
  onboardingManager = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
  userInfo = [onboardingManager userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"HROnboardingAtrialFibrillationCountryCodeKey"];
  iSOCode = [v11 ISOCode];
  [v8 trackAtrialFibrillationDetectionOnboardingStep:4 forOnboardingVersion:1 countryCode:iSOCode provenance:{-[HRAtrialFibrillationOnboardingManager provenance](self, "provenance")}];

  [(HRAtrialFibrillationOnboardingManager *)self _submitTipsDiscoverabilitySignal];
}

void __83__HRAtrialFibrillationOnboardingManager__wrapUpOnboardingWithNotificationsEnabled___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  v7 = *MEMORY[0x277CCC2D8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      *buf = 138543362;
      v14 = objc_opt_class();
      v9 = v14;
      _os_log_impl(&dword_2521E7000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Successfully set IRN setting", buf, 0xCu);
    }

    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__HRAtrialFibrillationOnboardingManager__wrapUpOnboardingWithNotificationsEnabled___block_invoke_315;
      block[3] = &unk_2796FB778;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __83__HRAtrialFibrillationOnboardingManager__wrapUpOnboardingWithNotificationsEnabled___block_invoke_cold_1(a1, v6);
  }
}

void __83__HRAtrialFibrillationOnboardingManager__wrapUpOnboardingWithNotificationsEnabled___block_invoke_315(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 didEnableAtrialFibrillationNotifications];
}

- (void)_submitTipsDiscoverabilitySignal
{
  v2 = BiomeLibrary();
  discoverability = [v2 Discoverability];
  signals = [discoverability Signals];

  source = [signals source];
  v5 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.health.heart.irregular-rhythm-notifications-onboarding-completed" context:0 osBuild:0 userInfo:0];
  [source sendEvent:v5];
}

- (HRAtrialFibrillationOnboardingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __79__HRAtrialFibrillationOnboardingManager__setOnboardingCompletedForCountryCode___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_1_1(&dword_2521E7000, v5, v6, "%{public}@: Failed to complete IRN onboarding with error: %{public}@", v7, v8, v9, v10, v11);
}

void __83__HRAtrialFibrillationOnboardingManager__wrapUpOnboardingWithNotificationsEnabled___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_1_1(&dword_2521E7000, v5, v6, "[%{public}@]: Failed to set IRN setting: %{public}@", v7, v8, v9, v10, v11);
}

@end