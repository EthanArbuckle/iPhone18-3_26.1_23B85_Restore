@interface HROnboardingAtrialFibrillationLimitationViewController
+ (id)makeSpeedBumpItem;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
@end

@implementation HROnboardingAtrialFibrillationLimitationViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v7 = +[HROnboardingAtrialFibrillationLimitationViewController makeSpeedBumpItem];
  v11.receiver = self;
  v11.super_class = HROnboardingAtrialFibrillationLimitationViewController;
  v8 = [(HRSpeedBumpViewController *)&v11 initWithSpeedBumpItem:v7 onboarding:onboardingCopy upgradingFromAlgorithmVersion:version];

  if (v8)
  {
    v9 = !onboardingCopy;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [(HKOnboardingBaseViewController *)v8 configureNavigationButtonWithTypeCancelWithConfirmForAtrialFibrillation];
  }

  return v8;
}

+ (id)makeSpeedBumpItem
{
  v25[4] = *MEMORY[0x277D85DE8];
  v2 = HRHeartRhythmUIFrameworkBundle();
  v22 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v3 = HRHeartRhythmUIFrameworkBundle();
  v24 = [v3 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_1_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v4 = HRHeartRhythmUIFrameworkBundle();
  v23 = [v4 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_1_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v5 = [[HRSpeedBumpBubble alloc] initWithTitle:v24 description:v23];
  v6 = HRHeartRhythmUIFrameworkBundle();
  v21 = [v6 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_2_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v7 = HRHeartRhythmUIFrameworkBundle();
  v20 = [v7 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_2_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v8 = [[HRSpeedBumpBubble alloc] initWithTitle:v21 description:v20];
  v9 = HRHeartRhythmUIFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_3_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v11 = HRHeartRhythmUIFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_3_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v13 = [[HRSpeedBumpBubble alloc] initWithTitle:v10 description:v12];
  v14 = HRHeartRhythmUIFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_4_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v16 = [[HRSpeedBumpBubble alloc] initWithTitle:v15 description:0];
  v25[0] = v5;
  v25[1] = v8;
  v25[2] = v13;
  v25[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v18 = [[HRSpeedBumpItem alloc] initWithTitle:v22 body:0 bubbles:v17 category:2];

  return v18;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __94__HROnboardingAtrialFibrillationLimitationViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  navigationItem = [(HROnboardingAtrialFibrillationLimitationViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __94__HROnboardingAtrialFibrillationLimitationViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  navigationItem = [(HROnboardingAtrialFibrillationLimitationViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

@end