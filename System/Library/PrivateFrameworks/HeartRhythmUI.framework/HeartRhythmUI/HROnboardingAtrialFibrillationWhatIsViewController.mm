@interface HROnboardingAtrialFibrillationWhatIsViewController
- (id)bodyString;
- (id)buttonTitleString;
- (id)createHeroView;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (id)titleString;
- (void)setUpUI;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HROnboardingAtrialFibrillationWhatIsViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v9.receiver = self;
  v9.super_class = HROnboardingAtrialFibrillationWhatIsViewController;
  v5 = [(HROnboardingAtrialFibrillationWhatIsViewController *)&v9 initForOnboarding:onboarding upgradingFromAlgorithmVersion:version];
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
    [v5 configureNavigationButtonWithTypeCancelWithConfirmForAtrialFibrillation];
  }

  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HROnboardingAtrialFibrillationWhatIsViewController;
  [(HROnboardingAtrialFibrillationWhatIsViewController *)&v6 viewWillAppear:appear];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] error:0];

  videoPlayerView = [(HROnboardingAtrialFibrillationWhatIsViewController *)self videoPlayerView];
  [videoPlayerView play];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HROnboardingAtrialFibrillationWhatIsViewController;
  [(HROnboardingAtrialFibrillationWhatIsViewController *)&v5 viewDidDisappear:disappear];
  videoPlayerView = [(HROnboardingAtrialFibrillationWhatIsViewController *)self videoPlayerView];
  [videoPlayerView pause];
}

- (void)setUpUI
{
  v3.receiver = self;
  v3.super_class = HROnboardingAtrialFibrillationWhatIsViewController;
  [(HROnboardingHeroExplanationViewController *)&v3 setUpUI];
  [(HROnboardingHeroExplanationViewController *)self setTextAlignment:4];
}

- (id)createHeroView
{
  videoPlayerView = self->_videoPlayerView;
  if (!videoPlayerView)
  {
    v4 = HRHeartRhythmUIFrameworkBundle();
    v5 = [v4 URLForResource:@"Atrial_Fibrillation_Detection_HowitWorks_h264" withExtension:@"mov"];

    v6 = [HRVideoPlayerView playerViewWithURL:v5 looping:1];
    [(UIView *)v6 hrui_maskAllCornersWithRadius:*MEMORY[0x277D12798]];
    v7 = self->_videoPlayerView;
    self->_videoPlayerView = v6;

    videoPlayerView = self->_videoPlayerView;
  }

  return videoPlayerView;
}

- (id)titleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_HOW_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)bodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_HOW_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)buttonTitleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ONBOARDING_CONTINUE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];

  return v3;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __90__HROnboardingAtrialFibrillationWhatIsViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  navigationItem = [(HROnboardingAtrialFibrillationWhatIsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __90__HROnboardingAtrialFibrillationWhatIsViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  navigationItem = [(HROnboardingAtrialFibrillationWhatIsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

@end