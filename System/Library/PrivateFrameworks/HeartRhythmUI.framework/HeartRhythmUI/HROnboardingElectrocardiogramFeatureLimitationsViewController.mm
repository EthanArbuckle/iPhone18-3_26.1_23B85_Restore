@interface HROnboardingElectrocardiogramFeatureLimitationsViewController
- (BOOL)_hasOnboardedBeforeWithStore:(id)store;
- (id)_makeSpeedBumpItemForUpdateOnboarding:(BOOL)onboarding;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (void)setDelegate:(id)delegate;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
@end

@implementation HROnboardingElectrocardiogramFeatureLimitationsViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v9.receiver = self;
  v9.super_class = HROnboardingElectrocardiogramFeatureLimitationsViewController;
  v5 = [(HRSpeedBumpViewController *)&v9 initWithSpeedBumpItem:0 onboarding:onboarding upgradingFromAlgorithmVersion:version];
  v6 = v5;
  if (v5)
  {
    v7 = !onboardingCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(HKOnboardingBaseViewController *)v5 configureNavigationButtonWithTypeCancelWithConfirmForElectrocardiogram];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = HROnboardingElectrocardiogramFeatureLimitationsViewController;
  delegateCopy = delegate;
  [(HROnboardingElectrocardiogramFeatureLimitationsViewController *)&v8 setDelegate:delegateCopy];
  healthStore = [delegateCopy healthStore];

  v6 = [(HROnboardingElectrocardiogramFeatureLimitationsViewController *)self _hasOnboardedBeforeWithStore:healthStore];
  v7 = [(HROnboardingElectrocardiogramFeatureLimitationsViewController *)self _makeSpeedBumpItemForUpdateOnboarding:v6];
  [(HRSpeedBumpViewController *)self setItem:v7];
}

- (BOOL)_hasOnboardedBeforeWithStore:(id)store
{
  storeCopy = store;
  if ([(HROnboardingElectrocardiogramFeatureLimitationsViewController *)self isOnboarding])
  {
    onboardingCompletion = [MEMORY[0x277CCD380] versionWithHealthStore:storeCopy error:0];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCD438]);
    v7 = [v6 initWithFeatureIdentifier:*MEMORY[0x277CCC010] healthStore:storeCopy];
    v12 = 0;
    v8 = [v7 featureOnboardingRecordWithError:&v12];
    v9 = v12;
    if (!v8)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [(HROnboardingElectrocardiogramFeatureLimitationsViewController *)self _hasOnboardedBeforeWithStore:v9, v10];
      }
    }

    onboardingCompletion = [v8 onboardingCompletion];
  }

  return onboardingCompletion != 0;
}

- (id)_makeSpeedBumpItemForUpdateOnboarding:(BOOL)onboarding
{
  v19[4] = *MEMORY[0x277D85DE8];
  if (onboarding)
  {
    v3 = @"ECG_V2_ONBOARDING_4_TITLE";
  }

  else
  {
    v3 = @"ECG_ONBOARDING_4_TITLE";
  }

  v4 = HRUIECGLocalizedString(v3);
  v16 = HRUIECGLocalizedString(@"ECG_ONBOARDING_4_BODY");
  v18 = HRUIECGLocalizedString(@"ECG_ONBOARDING_4_LIST_CANNOT_DO_HEADING-1");
  v15 = HRUIECGLocalizedString(@"ECG_ONBOARDING_4_LIST_CANNOT_DO_HEADING-2");
  v14 = HRUIECGLocalizedString(@"ECG_ONBOARDING_4_LIST_CANNOT_DO_HEADING-3");
  v17 = HRUIECGLocalizedString(@"ECG_ONBOARDING_4_LIST_CANNOT_DO_BODY-1");
  v5 = [[HRSpeedBumpBubble alloc] initWithTitle:v18 description:v17];
  v6 = [[HRSpeedBumpBubble alloc] initWithTitle:v15 description:0];
  v7 = HRUIECGLocalizedString(@"ECG_ONBOARDING_4_LIST_CANNOT_DO_BODY-3");
  v8 = [[HRSpeedBumpBubble alloc] initWithTitle:v14 description:v7];
  v9 = HRUIECGLocalizedString(@"ECG_ONBOARDING_4_LIST_WARNING");
  v10 = [[HRSpeedBumpBubble alloc] initWithTitle:v9 description:0];
  v19[0] = v5;
  v19[1] = v6;
  v19[2] = v8;
  v19[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  v12 = [[HRSpeedBumpItem alloc] initWithTitle:v4 body:v16 bubbles:v11 category:1];

  return v12;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __101__HROnboardingElectrocardiogramFeatureLimitationsViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  navigationItem = [(HROnboardingElectrocardiogramFeatureLimitationsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __101__HROnboardingElectrocardiogramFeatureLimitationsViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  navigationItem = [(HROnboardingElectrocardiogramFeatureLimitationsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

- (void)_hasOnboardedBeforeWithStore:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2521E7000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get onboarding version completed with error: %@", &v3, 0x16u);
}

@end