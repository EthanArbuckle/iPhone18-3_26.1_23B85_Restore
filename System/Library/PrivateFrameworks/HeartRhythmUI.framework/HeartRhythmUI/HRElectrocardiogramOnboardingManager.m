@interface HRElectrocardiogramOnboardingManager
+ (BOOL)hasOverriddenOnboardingSettings;
+ (id)electrocardiogramPossibleResultsViewControllerForAlgorithmVersion:(int64_t)a3 forOnboarding:(BOOL)a4;
+ (id)electrocardiogramPossibleResultsViewControllerForSample:(id)a3;
+ (id)electrocardiogramPossibleResultsViewControllerForSample:(id)a3 forAlgorithmVersion:(int64_t)a4;
+ (int64_t)algorithmVersionForSample:(id)a3;
- (HRElectrocardiogramOnboardingManager)initWithOnboardingType:(int64_t)a3 isFirstTimeOnboarding:(BOOL)a4 healthStore:(id)a5 dateCache:(id)a6 provenance:(int64_t)a7 delegate:(id)a8 isSampleInteractive:(BOOL)a9;
- (HRElectrocardiogramOnboardingManagerDelegate)delegate;
- (id)onboardingManager:(id)a3 customViewControllerForPage:(id)a4;
- (id)onboardingManager:(id)a3 sequenceForStep:(int64_t)a4 onboardingType:(int64_t)a5;
- (id)onboardingNavigationController;
- (int64_t)availableAlgorithmVersion;
- (void)availableAlgorithmVersion;
- (void)didBeginOnboardingForOnboardingManager:(id)a3;
- (void)didCancelOnboardingForOnboardingManager:(id)a3;
- (void)didCompleteOnboardingForOnboardingManager:(id)a3;
- (void)didTapOnElectrocardiogram:(id)a3;
- (void)didTapOnShowDevicesInWatchApp;
- (void)dismissOnboarding;
- (void)onboardingManager:(id)a3 willMoveToPage:(id)a4;
- (void)recordOnboardingAsCompleted;
@end

@implementation HRElectrocardiogramOnboardingManager

+ (id)electrocardiogramPossibleResultsViewControllerForSample:(id)a3 forAlgorithmVersion:(int64_t)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v6 = off_2796FAE48;
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v6 = off_2796FAE28;
LABEL_5:
    v7 = [objc_alloc(*v6) initWithSample:v5];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)electrocardiogramPossibleResultsViewControllerForSample:(id)a3
{
  v4 = a3;
  v5 = [a1 electrocardiogramPossibleResultsViewControllerForSample:v4 forAlgorithmVersion:{+[HRElectrocardiogramOnboardingManager algorithmVersionForSample:](HRElectrocardiogramOnboardingManager, "algorithmVersionForSample:", v4)}];

  return v5;
}

+ (id)electrocardiogramPossibleResultsViewControllerForAlgorithmVersion:(int64_t)a3 forOnboarding:(BOOL)a4
{
  if (a3 == 1)
  {
    v4 = off_2796FAE48;
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v4 = off_2796FAE28;
LABEL_5:
    v5 = [objc_alloc(*v4) initForOnboarding:a4];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (int64_t)algorithmVersionForSample:(id)a3
{
  v3 = [a3 _algorithmVersion];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (BOOL)hasOverriddenOnboardingSettings
{
  v2 = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    v4 = [v3 objectForKey:*MEMORY[0x277CCBCC0]];
    v5 = [v4 unsignedIntegerValue];

    LOBYTE(v2) = [MEMORY[0x277CCD690] isOverridePresent];
    if (v5)
    {
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

- (HRElectrocardiogramOnboardingManager)initWithOnboardingType:(int64_t)a3 isFirstTimeOnboarding:(BOOL)a4 healthStore:(id)a5 dateCache:(id)a6 provenance:(int64_t)a7 delegate:(id)a8 isSampleInteractive:(BOOL)a9
{
  v12 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = HRElectrocardiogramOnboardingManager;
  v18 = [(HRElectrocardiogramOnboardingManager *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, v17);
    v19->_isFirstTimeOnboarding = v12;
    v19->_isSampleInteractive = a9;
    v19->_provenance = a7;
    v20 = objc_alloc(MEMORY[0x277CCD438]);
    v21 = [v20 initWithFeatureIdentifier:*MEMORY[0x277CCC010] healthStore:v15];
    availabilityStore = v19->_availabilityStore;
    v19->_availabilityStore = v21;

    v23 = [objc_alloc(MEMORY[0x277D12998]) initWithOnboardingType:a3 isFirstTimeOnboarding:v12 healthStore:v15 dateCache:v16];
    onboardingManager = v19->_onboardingManager;
    v19->_onboardingManager = v23;

    [(HKOnboardingManager *)v19->_onboardingManager setDataSource:v19];
    [(HKOnboardingManager *)v19->_onboardingManager setDelegate:v19];
  }

  return v19;
}

- (id)onboardingNavigationController
{
  v2 = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
  v3 = [v2 onboardingNavigationController];

  return v3;
}

- (void)dismissOnboarding
{
  v2 = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
  [v2 dismissOnboarding];
}

- (int64_t)availableAlgorithmVersion
{
  v4 = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HROnboardingElectrocardiogramAlgorithmVersionKey"];

  if (!v6 || (v7 = [v6 integerValue], v7 == *MEMORY[0x277CCDEA8]))
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [(HRElectrocardiogramOnboardingManager *)self availableAlgorithmVersion];
    }
  }

  v9 = [v6 integerValue];

  return v9;
}

- (id)onboardingManager:(id)a3 sequenceForStep:(int64_t)a4 onboardingType:(int64_t)a5
{
  v9 = a3;
  if (a4 == 2)
  {
    goto LABEL_6;
  }

  if (a4 != 1)
  {
    goto LABEL_12;
  }

  if (a5 == 1)
  {
    v10 = [MEMORY[0x277D129A8] upgradingElectrocardiogramAvailabilitySequence];
    goto LABEL_11;
  }

  if (a5)
  {
LABEL_6:
    v11 = [(HRElectrocardiogramOnboardingManager *)self availableAlgorithmVersion];
    if (a5 == 1)
    {
      v12 = [(HRElectrocardiogramOnboardingManager *)self upgradingFromAlgorithmVersion];
      v10 = [MEMORY[0x277D129A8] upgradingElectrocardiogramSequenceFromAlgorithmVersion:v12 toAlgorithmVersion:v11];
    }

    else
    {
      if (a5)
      {
        goto LABEL_12;
      }

      v10 = [MEMORY[0x277D129A8] firstTimeElectrocardiogramOnboardingSequenceWithAlgorithmVersion:v11];
    }
  }

  else
  {
    v10 = [MEMORY[0x277D129A8] firstTimeElectrocardiogramAvailabilitySequence];
  }

LABEL_11:
  v5 = v10;
LABEL_12:

  return v5;
}

- (id)onboardingManager:(id)a3 customViewControllerForPage:(id)a4
{
  v5 = [a4 sequencePage];
  if (v5 == 8)
  {
    v6 = [[HROnboardingElectrocardiogramUpdateCompleteViewController alloc] initForOnboarding:1 upgradingFromAlgorithmVersion:[(HRElectrocardiogramOnboardingManager *)self upgradingFromAlgorithmVersion] electrocardiogramDelegate:self];
  }

  else if (v5 == 7)
  {
    v6 = [[HROnboardingElectrocardiogramSetupCompleteViewController alloc] initForOnboarding:1 isSampleInteractive:[(HRElectrocardiogramOnboardingManager *)self isSampleInteractive] electrocardiogramDelegate:self];
  }

  else if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[HROnboardingElectrocardiogramAvailabilityViewController alloc] initForOnboarding:1 provenance:[(HRElectrocardiogramOnboardingManager *)self provenance]];
  }

  return v6;
}

- (void)didBeginOnboardingForOnboardingManager:(id)a3
{
  if (![a3 onboardingType])
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
    v6 = [v5 userInfo];
    [v6 setObject:v4 forKeyedSubscript:@"HROnboardingElectrocardiogramStartDateKey"];

    v7 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    [v7 hk_setElectrocardiogramFirstRecordingCompleted:0];
  }
}

- (void)onboardingManager:(id)a3 willMoveToPage:(id)a4
{
  v20 = a3;
  v6 = [a4 sequencePage];
  if (v6 <= 4)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = 2;
      }

      else
      {
        if (v6 != 4)
        {
          goto LABEL_23;
        }

        v7 = 5;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else if (v6 > 6)
  {
    if (v6 == 7)
    {
      v8 = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
      v9 = [v8 userInfo];
      v10 = [v9 objectForKeyedSubscript:@"HROnboardingElectrocardiogramDidCompleteRecordingKey"];
      v11 = [v10 BOOLValue];

      if (v11)
      {
        v7 = 9;
      }

      else
      {
        v7 = 10;
      }
    }

    else
    {
      if (v6 != 8)
      {
        goto LABEL_23;
      }

      [(HRElectrocardiogramOnboardingManager *)self recordOnboardingAsCompleted];
      v7 = 8;
    }
  }

  else if (v6 == 5)
  {
    v7 = 6;
  }

  else
  {
    [(HRElectrocardiogramOnboardingManager *)self recordOnboardingAsCompleted];
    v7 = 7;
  }

  if (([objc_opt_class() hasOverriddenOnboardingSettings] & 1) == 0)
  {
    v12 = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
    v13 = [v12 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"HROnboardingElectrocardiogramAlgorithmVersionKey"];

    if (v14)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CCD380], "onboardingVersionForKnownAlgorithmVersion:", objc_msgSend(v14, "integerValue"))}];
    }

    else
    {
      v15 = 0;
    }

    v16 = +[HRUIAnalyticsManager sharedManager];
    v17 = [v20 onboardingType];
    v18 = [v20 userInfo];
    v19 = [v18 objectForKeyedSubscript:@"HROnboardingElectrocardiogramCountryCodeKey"];
    [v16 trackElectrocardiogramOnboardingStep:v7 forOnboardingType:v17 onboardingVersion:v15 countryCode:v19 provenance:{-[HRElectrocardiogramOnboardingManager provenance](self, "provenance")}];
  }

LABEL_23:
}

- (void)recordOnboardingAsCompleted
{
  v3 = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
  v4 = [v3 userInfo];
  v7 = [v4 objectForKeyedSubscript:@"HROnboardingElectrocardiogramCountryCodeKey"];

  v5 = [(HRElectrocardiogramOnboardingManager *)self availabilityStore];
  v6 = [MEMORY[0x277CBEAA8] date];
  [v5 setCurrentOnboardingVersionCompletedForCountryCode:v7 countryCodeProvenance:0 date:v6 settings:0 completion:&__block_literal_global_2];
}

void __67__HRElectrocardiogramOnboardingManager_recordOnboardingAsCompleted__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  [v0 removeObjectForKey:*MEMORY[0x277CCBCC0]];

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"HRElectrocardiogramOnboardingCompletedNotificationName" object:0];
}

- (void)didCancelOnboardingForOnboardingManager:(id)a3
{
  v4 = [(HRElectrocardiogramOnboardingManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HRElectrocardiogramOnboardingManager *)self delegate];
    [v6 didDismissOnboarding];
  }
}

- (void)didCompleteOnboardingForOnboardingManager:(id)a3
{
  v4 = a3;
  v5 = [(HRElectrocardiogramOnboardingManager *)self delegate];
  v6 = [v4 onboardingNavigationController];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HRElectrocardiogramOnboardingManager_didCompleteOnboardingForOnboardingManager___block_invoke;
  v8[3] = &unk_2796FB778;
  v9 = v5;
  v7 = v5;
  [v6 dismissViewControllerAnimated:1 completion:v8];
}

uint64_t __82__HRElectrocardiogramOnboardingManager_didCompleteOnboardingForOnboardingManager___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 didCompleteOnboarding];
  }

  return result;
}

- (void)didTapOnElectrocardiogram:(id)a3
{
  v7 = a3;
  v4 = [(HRElectrocardiogramOnboardingManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HRElectrocardiogramOnboardingManager *)self delegate];
    [v6 didTapOnElectrocardiogram:v7];
  }
}

- (void)didTapOnShowDevicesInWatchApp
{
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=ActiveWatch"];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (HRElectrocardiogramOnboardingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)availableAlgorithmVersion
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = NSStringFromSelector(a3);
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_2521E7000, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Available algorithm version accessed without being set first.", &v7, 0x16u);
}

@end