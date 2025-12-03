@interface HRElectrocardiogramOnboardingManager
+ (BOOL)hasOverriddenOnboardingSettings;
+ (id)electrocardiogramPossibleResultsViewControllerForAlgorithmVersion:(int64_t)version forOnboarding:(BOOL)onboarding;
+ (id)electrocardiogramPossibleResultsViewControllerForSample:(id)sample;
+ (id)electrocardiogramPossibleResultsViewControllerForSample:(id)sample forAlgorithmVersion:(int64_t)version;
+ (int64_t)algorithmVersionForSample:(id)sample;
- (HRElectrocardiogramOnboardingManager)initWithOnboardingType:(int64_t)type isFirstTimeOnboarding:(BOOL)onboarding healthStore:(id)store dateCache:(id)cache provenance:(int64_t)provenance delegate:(id)delegate isSampleInteractive:(BOOL)interactive;
- (HRElectrocardiogramOnboardingManagerDelegate)delegate;
- (id)onboardingManager:(id)manager customViewControllerForPage:(id)page;
- (id)onboardingManager:(id)manager sequenceForStep:(int64_t)step onboardingType:(int64_t)type;
- (id)onboardingNavigationController;
- (int64_t)availableAlgorithmVersion;
- (void)availableAlgorithmVersion;
- (void)didBeginOnboardingForOnboardingManager:(id)manager;
- (void)didCancelOnboardingForOnboardingManager:(id)manager;
- (void)didCompleteOnboardingForOnboardingManager:(id)manager;
- (void)didTapOnElectrocardiogram:(id)electrocardiogram;
- (void)didTapOnShowDevicesInWatchApp;
- (void)dismissOnboarding;
- (void)onboardingManager:(id)manager willMoveToPage:(id)page;
- (void)recordOnboardingAsCompleted;
@end

@implementation HRElectrocardiogramOnboardingManager

+ (id)electrocardiogramPossibleResultsViewControllerForSample:(id)sample forAlgorithmVersion:(int64_t)version
{
  sampleCopy = sample;
  if (version == 1)
  {
    v6 = off_2796FAE48;
    goto LABEL_5;
  }

  if (version == 2)
  {
    v6 = off_2796FAE28;
LABEL_5:
    v7 = [objc_alloc(*v6) initWithSample:sampleCopy];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)electrocardiogramPossibleResultsViewControllerForSample:(id)sample
{
  sampleCopy = sample;
  v5 = [self electrocardiogramPossibleResultsViewControllerForSample:sampleCopy forAlgorithmVersion:{+[HRElectrocardiogramOnboardingManager algorithmVersionForSample:](HRElectrocardiogramOnboardingManager, "algorithmVersionForSample:", sampleCopy)}];

  return v5;
}

+ (id)electrocardiogramPossibleResultsViewControllerForAlgorithmVersion:(int64_t)version forOnboarding:(BOOL)onboarding
{
  if (version == 1)
  {
    v4 = off_2796FAE48;
    goto LABEL_5;
  }

  if (version == 2)
  {
    v4 = off_2796FAE28;
LABEL_5:
    v5 = [objc_alloc(*v4) initForOnboarding:onboarding];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (int64_t)algorithmVersionForSample:(id)sample
{
  _algorithmVersion = [sample _algorithmVersion];
  v4 = _algorithmVersion;
  if (_algorithmVersion)
  {
    integerValue = [_algorithmVersion integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

+ (BOOL)hasOverriddenOnboardingSettings
{
  isAppleInternalInstall = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  if (isAppleInternalInstall)
  {
    hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    v4 = [hk_heartRhythmDefaults objectForKey:*MEMORY[0x277CCBCC0]];
    unsignedIntegerValue = [v4 unsignedIntegerValue];

    LOBYTE(isAppleInternalInstall) = [MEMORY[0x277CCD690] isOverridePresent];
    if (unsignedIntegerValue)
    {
      LOBYTE(isAppleInternalInstall) = 1;
    }
  }

  return isAppleInternalInstall;
}

- (HRElectrocardiogramOnboardingManager)initWithOnboardingType:(int64_t)type isFirstTimeOnboarding:(BOOL)onboarding healthStore:(id)store dateCache:(id)cache provenance:(int64_t)provenance delegate:(id)delegate isSampleInteractive:(BOOL)interactive
{
  onboardingCopy = onboarding;
  storeCopy = store;
  cacheCopy = cache;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = HRElectrocardiogramOnboardingManager;
  v18 = [(HRElectrocardiogramOnboardingManager *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, delegateCopy);
    v19->_isFirstTimeOnboarding = onboardingCopy;
    v19->_isSampleInteractive = interactive;
    v19->_provenance = provenance;
    v20 = objc_alloc(MEMORY[0x277CCD438]);
    v21 = [v20 initWithFeatureIdentifier:*MEMORY[0x277CCC010] healthStore:storeCopy];
    availabilityStore = v19->_availabilityStore;
    v19->_availabilityStore = v21;

    v23 = [objc_alloc(MEMORY[0x277D12998]) initWithOnboardingType:type isFirstTimeOnboarding:onboardingCopy healthStore:storeCopy dateCache:cacheCopy];
    onboardingManager = v19->_onboardingManager;
    v19->_onboardingManager = v23;

    [(HKOnboardingManager *)v19->_onboardingManager setDataSource:v19];
    [(HKOnboardingManager *)v19->_onboardingManager setDelegate:v19];
  }

  return v19;
}

- (id)onboardingNavigationController
{
  onboardingManager = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
  onboardingNavigationController = [onboardingManager onboardingNavigationController];

  return onboardingNavigationController;
}

- (void)dismissOnboarding
{
  onboardingManager = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
  [onboardingManager dismissOnboarding];
}

- (int64_t)availableAlgorithmVersion
{
  onboardingManager = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
  userInfo = [onboardingManager userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HROnboardingElectrocardiogramAlgorithmVersionKey"];

  if (!v6 || (v7 = [v6 integerValue], v7 == *MEMORY[0x277CCDEA8]))
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [(HRElectrocardiogramOnboardingManager *)self availableAlgorithmVersion];
    }
  }

  integerValue = [v6 integerValue];

  return integerValue;
}

- (id)onboardingManager:(id)manager sequenceForStep:(int64_t)step onboardingType:(int64_t)type
{
  managerCopy = manager;
  if (step == 2)
  {
    goto LABEL_6;
  }

  if (step != 1)
  {
    goto LABEL_12;
  }

  if (type == 1)
  {
    upgradingElectrocardiogramAvailabilitySequence = [MEMORY[0x277D129A8] upgradingElectrocardiogramAvailabilitySequence];
    goto LABEL_11;
  }

  if (type)
  {
LABEL_6:
    availableAlgorithmVersion = [(HRElectrocardiogramOnboardingManager *)self availableAlgorithmVersion];
    if (type == 1)
    {
      upgradingFromAlgorithmVersion = [(HRElectrocardiogramOnboardingManager *)self upgradingFromAlgorithmVersion];
      upgradingElectrocardiogramAvailabilitySequence = [MEMORY[0x277D129A8] upgradingElectrocardiogramSequenceFromAlgorithmVersion:upgradingFromAlgorithmVersion toAlgorithmVersion:availableAlgorithmVersion];
    }

    else
    {
      if (type)
      {
        goto LABEL_12;
      }

      upgradingElectrocardiogramAvailabilitySequence = [MEMORY[0x277D129A8] firstTimeElectrocardiogramOnboardingSequenceWithAlgorithmVersion:availableAlgorithmVersion];
    }
  }

  else
  {
    upgradingElectrocardiogramAvailabilitySequence = [MEMORY[0x277D129A8] firstTimeElectrocardiogramAvailabilitySequence];
  }

LABEL_11:
  v5 = upgradingElectrocardiogramAvailabilitySequence;
LABEL_12:

  return v5;
}

- (id)onboardingManager:(id)manager customViewControllerForPage:(id)page
{
  sequencePage = [page sequencePage];
  if (sequencePage == 8)
  {
    v6 = [[HROnboardingElectrocardiogramUpdateCompleteViewController alloc] initForOnboarding:1 upgradingFromAlgorithmVersion:[(HRElectrocardiogramOnboardingManager *)self upgradingFromAlgorithmVersion] electrocardiogramDelegate:self];
  }

  else if (sequencePage == 7)
  {
    v6 = [[HROnboardingElectrocardiogramSetupCompleteViewController alloc] initForOnboarding:1 isSampleInteractive:[(HRElectrocardiogramOnboardingManager *)self isSampleInteractive] electrocardiogramDelegate:self];
  }

  else if (sequencePage)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[HROnboardingElectrocardiogramAvailabilityViewController alloc] initForOnboarding:1 provenance:[(HRElectrocardiogramOnboardingManager *)self provenance]];
  }

  return v6;
}

- (void)didBeginOnboardingForOnboardingManager:(id)manager
{
  if (![manager onboardingType])
  {
    date = [MEMORY[0x277CBEAA8] date];
    onboardingManager = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
    userInfo = [onboardingManager userInfo];
    [userInfo setObject:date forKeyedSubscript:@"HROnboardingElectrocardiogramStartDateKey"];

    hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    [hk_heartRhythmDefaults hk_setElectrocardiogramFirstRecordingCompleted:0];
  }
}

- (void)onboardingManager:(id)manager willMoveToPage:(id)page
{
  managerCopy = manager;
  sequencePage = [page sequencePage];
  if (sequencePage <= 4)
  {
    if (sequencePage)
    {
      if (sequencePage == 1)
      {
        v7 = 2;
      }

      else
      {
        if (sequencePage != 4)
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

  else if (sequencePage > 6)
  {
    if (sequencePage == 7)
    {
      onboardingManager = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
      userInfo = [onboardingManager userInfo];
      v10 = [userInfo objectForKeyedSubscript:@"HROnboardingElectrocardiogramDidCompleteRecordingKey"];
      bOOLValue = [v10 BOOLValue];

      if (bOOLValue)
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
      if (sequencePage != 8)
      {
        goto LABEL_23;
      }

      [(HRElectrocardiogramOnboardingManager *)self recordOnboardingAsCompleted];
      v7 = 8;
    }
  }

  else if (sequencePage == 5)
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
    onboardingManager2 = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
    userInfo2 = [onboardingManager2 userInfo];
    v14 = [userInfo2 objectForKeyedSubscript:@"HROnboardingElectrocardiogramAlgorithmVersionKey"];

    if (v14)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CCD380], "onboardingVersionForKnownAlgorithmVersion:", objc_msgSend(v14, "integerValue"))}];
    }

    else
    {
      v15 = 0;
    }

    v16 = +[HRUIAnalyticsManager sharedManager];
    onboardingType = [managerCopy onboardingType];
    userInfo3 = [managerCopy userInfo];
    v19 = [userInfo3 objectForKeyedSubscript:@"HROnboardingElectrocardiogramCountryCodeKey"];
    [v16 trackElectrocardiogramOnboardingStep:v7 forOnboardingType:onboardingType onboardingVersion:v15 countryCode:v19 provenance:{-[HRElectrocardiogramOnboardingManager provenance](self, "provenance")}];
  }

LABEL_23:
}

- (void)recordOnboardingAsCompleted
{
  onboardingManager = [(HRElectrocardiogramOnboardingManager *)self onboardingManager];
  userInfo = [onboardingManager userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"HROnboardingElectrocardiogramCountryCodeKey"];

  availabilityStore = [(HRElectrocardiogramOnboardingManager *)self availabilityStore];
  date = [MEMORY[0x277CBEAA8] date];
  [availabilityStore setCurrentOnboardingVersionCompletedForCountryCode:v7 countryCodeProvenance:0 date:date settings:0 completion:&__block_literal_global_2];
}

void __67__HRElectrocardiogramOnboardingManager_recordOnboardingAsCompleted__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  [v0 removeObjectForKey:*MEMORY[0x277CCBCC0]];

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"HRElectrocardiogramOnboardingCompletedNotificationName" object:0];
}

- (void)didCancelOnboardingForOnboardingManager:(id)manager
{
  delegate = [(HRElectrocardiogramOnboardingManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HRElectrocardiogramOnboardingManager *)self delegate];
    [delegate2 didDismissOnboarding];
  }
}

- (void)didCompleteOnboardingForOnboardingManager:(id)manager
{
  managerCopy = manager;
  delegate = [(HRElectrocardiogramOnboardingManager *)self delegate];
  onboardingNavigationController = [managerCopy onboardingNavigationController];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HRElectrocardiogramOnboardingManager_didCompleteOnboardingForOnboardingManager___block_invoke;
  v8[3] = &unk_2796FB778;
  v9 = delegate;
  v7 = delegate;
  [onboardingNavigationController dismissViewControllerAnimated:1 completion:v8];
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

- (void)didTapOnElectrocardiogram:(id)electrocardiogram
{
  electrocardiogramCopy = electrocardiogram;
  delegate = [(HRElectrocardiogramOnboardingManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HRElectrocardiogramOnboardingManager *)self delegate];
    [delegate2 didTapOnElectrocardiogram:electrocardiogramCopy];
  }
}

- (void)didTapOnShowDevicesInWatchApp
{
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=ActiveWatch"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
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
  selfCopy = self;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_2521E7000, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Available algorithm version accessed without being set first.", &v7, 0x16u);
}

@end