@interface HRAtrialFibrillationOnboardingManager
- (HRAtrialFibrillationOnboardingManager)initWithOnboardingType:(int64_t)a3 isFirstTimeOnboarding:(BOOL)a4 healthStore:(id)a5 dateCache:(id)a6 provenance:(int64_t)a7 delegate:(id)a8;
- (HRAtrialFibrillationOnboardingManagerDelegate)delegate;
- (id)onboardingManager:(id)a3 customViewControllerForPage:(id)a4;
- (id)onboardingManager:(id)a3 sequenceForStep:(int64_t)a4 onboardingType:(int64_t)a5;
- (id)onboardingNavigationController;
- (void)_setOnboardingCompletedForCountryCode:(id)a3;
- (void)_submitTipsDiscoverabilitySignal;
- (void)_wrapUpOnboardingWithNotificationsEnabled:(BOOL)a3;
- (void)didBeginOnboardingForOnboardingManager:(id)a3;
- (void)didCancelOnboardingForOnboardingManager:(id)a3;
- (void)didCompleteOnboardingForOnboardingManager:(id)a3;
- (void)dismissOnboarding;
- (void)onboardingManager:(id)a3 willMoveToPage:(id)a4;
@end

@implementation HRAtrialFibrillationOnboardingManager

- (HRAtrialFibrillationOnboardingManager)initWithOnboardingType:(int64_t)a3 isFirstTimeOnboarding:(BOOL)a4 healthStore:(id)a5 dateCache:(id)a6 provenance:(int64_t)a7 delegate:(id)a8
{
  v11 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v27.receiver = self;
  v27.super_class = HRAtrialFibrillationOnboardingManager;
  v17 = [(HRAtrialFibrillationOnboardingManager *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v16);
    v18->_provenance = a7;
    v19 = objc_alloc_init(_HRAtrialFibrillationOnboardingNavigationController);
    navigationController = v18->_navigationController;
    v18->_navigationController = v19;

    v21 = [objc_alloc(MEMORY[0x277D12998]) initWithOnboardingType:a3 isFirstTimeOnboarding:v11 healthStore:v14 dateCache:v15 navigationController:v18->_navigationController];
    onboardingManager = v18->_onboardingManager;
    v18->_onboardingManager = v21;

    [(HKOnboardingManager *)v18->_onboardingManager setDataSource:v18];
    [(HKOnboardingManager *)v18->_onboardingManager setDelegate:v18];
    v23 = objc_alloc(MEMORY[0x277CCD438]);
    v24 = [v23 initWithFeatureIdentifier:*MEMORY[0x277CCC070] healthStore:v14];
    featureAvailabilityStore = v18->_featureAvailabilityStore;
    v18->_featureAvailabilityStore = v24;

    [(_HRAtrialFibrillationOnboardingNavigationController *)v18->_navigationController setOnboardingManager:v18];
  }

  return v18;
}

- (id)onboardingNavigationController
{
  v2 = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
  v3 = [v2 onboardingNavigationController];

  return v3;
}

- (void)dismissOnboarding
{
  v3 = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
  [v3 dismissOnboarding];

  navigationController = self->_navigationController;

  [(_HRAtrialFibrillationOnboardingNavigationController *)navigationController setOnboardingManager:0];
}

- (id)onboardingManager:(id)a3 sequenceForStep:(int64_t)a4 onboardingType:(int64_t)a5
{
  v8 = a3;
  if (a4 == 2)
  {
    if (a5 != 1)
    {
      if (a5)
      {
        goto LABEL_15;
      }

      v9 = [MEMORY[0x277D129A8] firstTimeAtrialFibrillationOnboardingSequence];
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
    if (a4 != 1)
    {
      goto LABEL_15;
    }

    if (a5 != 1)
    {
      if (a5)
      {
        goto LABEL_15;
      }

      v9 = [MEMORY[0x277D129A8] firstTimeAtrialFibrillationAvailabilitySequence];
LABEL_9:
      v5 = v9;
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

- (id)onboardingManager:(id)a3 customViewControllerForPage:(id)a4
{
  if ([a4 sequencePage] == 1)
  {
    v5 = [HROnboardingAtrialFibrillationGateViewController alloc];
    v6 = [(HRAtrialFibrillationOnboardingManager *)self hasAtrialFibrillationDiagnosis];
    v7 = [(HROnboardingAtrialFibrillationGateViewController *)v5 initForOnboarding:1 hasAtrialFibrillationDiagnosis:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didBeginOnboardingForOnboardingManager:(id)a3
{
  v4 = +[HRUIAnalyticsManager sharedManager];
  [v4 trackAtrialFibrillationDetectionOnboardingStep:0 forOnboardingVersion:1 countryCode:0 provenance:{-[HRAtrialFibrillationOnboardingManager provenance](self, "provenance")}];
}

- (void)onboardingManager:(id)a3 willMoveToPage:(id)a4
{
  v5 = [a4 sequencePage];
  if (v5 == 4)
  {
    v13 = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
    v14 = [v13 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"HROnboardingAtrialFibrillationCountryCodeKey"];

    [(HRAtrialFibrillationOnboardingManager *)self _setOnboardingCompletedForCountryCode:v15];
    v6 = +[HRUIAnalyticsManager sharedManager];
    v7 = [v15 ISOCode];
    [v6 trackAtrialFibrillationDetectionOnboardingStep:3 forOnboardingVersion:1 countryCode:v7 provenance:{-[HRAtrialFibrillationOnboardingManager provenance](self, "provenance")}];
  }

  else
  {
    if (v5 == 2)
    {
      v15 = +[HRUIAnalyticsManager sharedManager];
      v6 = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
      v7 = [v6 userInfo];
      v8 = [v7 objectForKeyedSubscript:@"HROnboardingAtrialFibrillationCountryCodeKey"];
      v9 = [v8 ISOCode];
      v10 = [(HRAtrialFibrillationOnboardingManager *)self provenance];
      v11 = v15;
      v12 = 2;
    }

    else
    {
      if (v5 != 1)
      {
        return;
      }

      v15 = +[HRUIAnalyticsManager sharedManager];
      v6 = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
      v7 = [v6 userInfo];
      v8 = [v7 objectForKeyedSubscript:@"HROnboardingAtrialFibrillationCountryCodeKey"];
      v9 = [v8 ISOCode];
      v10 = [(HRAtrialFibrillationOnboardingManager *)self provenance];
      v11 = v15;
      v12 = 1;
    }

    [v11 trackAtrialFibrillationDetectionOnboardingStep:v12 forOnboardingVersion:1 countryCode:v9 provenance:v10];
  }
}

- (void)_setOnboardingCompletedForCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(HRAtrialFibrillationOnboardingManager *)self featureAvailabilityStore];
  v6 = [v4 ISOCode];
  v7 = [v4 provenance];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HRAtrialFibrillationOnboardingManager__setOnboardingCompletedForCountryCode___block_invoke;
  v8[3] = &unk_2796FB850;
  v8[4] = self;
  [v5 setCurrentOnboardingVersionCompletedForCountryCode:v6 countryCodeProvenance:v7 date:0 settings:0 completion:v8];
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

- (void)didCancelOnboardingForOnboardingManager:(id)a3
{
  v4 = [(HRAtrialFibrillationOnboardingManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HRAtrialFibrillationOnboardingManager *)self delegate];
    [v6 didDismissOnboarding];
  }

  navigationController = self->_navigationController;

  [(_HRAtrialFibrillationOnboardingNavigationController *)navigationController setOnboardingManager:0];
}

- (void)didCompleteOnboardingForOnboardingManager:(id)a3
{
  v4 = a3;
  v5 = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"HROnboardingAtrialFibrillationEnableNotificationsKey"];

  -[HRAtrialFibrillationOnboardingManager _wrapUpOnboardingWithNotificationsEnabled:](self, "_wrapUpOnboardingWithNotificationsEnabled:", [v7 BOOLValue]);
  v8 = [(HRAtrialFibrillationOnboardingManager *)self delegate];
  v9 = [v4 onboardingNavigationController];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HRAtrialFibrillationOnboardingManager_didCompleteOnboardingForOnboardingManager___block_invoke;
  v11[3] = &unk_2796FB778;
  v12 = v8;
  v10 = v8;
  [v9 dismissViewControllerAnimated:1 completion:v11];
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

- (void)_wrapUpOnboardingWithNotificationsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(HRAtrialFibrillationOnboardingManager *)self featureAvailabilityStore];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v7 = *MEMORY[0x277CCC120];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__HRAtrialFibrillationOnboardingManager__wrapUpOnboardingWithNotificationsEnabled___block_invoke;
  v13[3] = &unk_2796FB850;
  v13[4] = self;
  [v5 setFeatureSettingNumber:v6 forKey:v7 completion:v13];

  v8 = +[HRUIAnalyticsManager sharedManager];
  v9 = [(HRAtrialFibrillationOnboardingManager *)self onboardingManager];
  v10 = [v9 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"HROnboardingAtrialFibrillationCountryCodeKey"];
  v12 = [v11 ISOCode];
  [v8 trackAtrialFibrillationDetectionOnboardingStep:4 forOnboardingVersion:1 countryCode:v12 provenance:{-[HRAtrialFibrillationOnboardingManager provenance](self, "provenance")}];

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
  v3 = [v2 Discoverability];
  v6 = [v3 Signals];

  v4 = [v6 source];
  v5 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.health.heart.irregular-rhythm-notifications-onboarding-completed" context:0 osBuild:0 userInfo:0];
  [v4 sendEvent:v5];
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