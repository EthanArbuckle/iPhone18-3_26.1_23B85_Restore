@interface HUCameraRecordingIntroViewController
- (HUCameraRecordingIntroViewController)init;
- (HUCameraRecordingIntroViewController)initWithIntroVariant:(unint64_t)variant home:(id)home;
- (HUCameraRecordingIntroViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentImage:(id)image;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_buttonOne:(id)one;
- (void)_buttonTwo:(id)two;
- (void)showCameraRecordingLearnMore;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUCameraRecordingIntroViewController

- (HUCameraRecordingIntroViewController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithIntroVariant_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraRecordingIntroViewController.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HUCameraRecordingIntroViewController init]", v5}];

  return 0;
}

- (HUCameraRecordingIntroViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentImage:(id)image
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithIntroVariant_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraRecordingIntroViewController.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HUCameraRecordingIntroViewController initWithTitle:detailText:icon:contentImage:]", v9}];

  return 0;
}

- (HUCameraRecordingIntroViewController)initWithIntroVariant:(unint64_t)variant home:(id)home
{
  homeCopy = home;
  v8 = HUImageNamed(@"Onboarding-Camera");
  v9 = 0;
  v10 = 1;
  if (variant <= 2)
  {
    switch(variant)
    {
      case 0uLL:
        v10 = 1;
        v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_Title", @"HUCameraRecordingIntro_Title", 1);
        v11 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_Detail", @"HUCameraRecordingIntro_Detail", 1);
        v22 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
        continueButtonText = self->_continueButtonText;
        self->_continueButtonText = v22;

        v24 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_Footer", @"HUCameraRecordingIntro_Footer", 1);
        captionText = self->_captionText;
        self->_captionText = v24;

        v16 = 0;
        v13 = &OBJC_IVAR___HUCameraRecordingIntroViewController__notNowButtonText;
        goto LABEL_18;
      case 1uLL:
        v10 = 1;
        v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingUnsupportedIntro_Title", @"HUCameraRecordingUnsupportedIntro_Title", 1);
        v11 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingUnsupportedIntro_Detail", @"HUCameraRecordingUnsupportedIntro_Detail", 1);
        v32 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
        v13 = &OBJC_IVAR___HUCameraRecordingIntroViewController__notNowButtonText;
        v33 = self->_continueButtonText;
        self->_continueButtonText = v32;

        v16 = 0;
        goto LABEL_18;
      case 2uLL:
        v10 = 1;
        v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_Title", @"HUCameraRecordingIntro_Title", 1);
        v11 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_Detail", @"HUCameraRecordingIntro_Detail", 1);
        v17 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
        v13 = &OBJC_IVAR___HUCameraRecordingIntroViewController__notNowButtonText;
        v18 = self->_continueButtonText;
        self->_continueButtonText = v17;

        v19 = @"HUCameraRecordingIntro_NotNowButton";
LABEL_15:
        v16 = _HULocalizedStringWithDefaultValue(v19, v19, 1);
        goto LABEL_18;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_19;
  }

  if (variant > 4)
  {
    if (variant == 5)
    {
      v10 = 1;
      v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_AlreadySetup_Title", @"HUCameraRecordingIntro_AlreadySetup_Title", 1);
      v11 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_AlreadySetup_Detail", @"HUCameraRecordingIntro_AlreadySetup_Detail", 1);
      v28 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
      v29 = self->_continueButtonText;
      self->_continueButtonText = v28;

      v30 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_AlreadySetup_ReviewButton", @"HUCameraRecordingIntro_AlreadySetup_ReviewButton", 1);
      notNowButtonText = self->_notNowButtonText;
      self->_notNowButtonText = v30;

      v16 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_Footer", @"HUCameraRecordingIntro_Footer", 1);
      v13 = &OBJC_IVAR___HUCameraRecordingIntroViewController__captionText;
      goto LABEL_18;
    }

    if (variant == 6)
    {
      v10 = 1;
      v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_AlreadySetup_Title", @"HUCameraRecordingIntro_AlreadySetup_Title", 1);
      v11 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_AlreadySetup_Detail", @"HUCameraRecordingIntro_AlreadySetup_Detail", 1);
      v20 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
      v13 = &OBJC_IVAR___HUCameraRecordingIntroViewController__captionText;
      v21 = self->_continueButtonText;
      self->_continueButtonText = v20;

      v19 = @"HUCameraRecordingIntro_Footer";
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (variant == 3)
  {
    v10 = 1;
    v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_NeedsHub_Title", @"HUCameraRecordingIntro_NeedsHub_Title", 1);
    v11 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_NeedsHub_Detail", @"HUCameraRecordingIntro_NeedsHub_Detail", 1);
    v26 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
    v13 = &OBJC_IVAR___HUCameraRecordingIntroViewController__notNowButtonText;
    v27 = self->_continueButtonText;
    self->_continueButtonText = v26;

    v19 = @"HUCameraRecordingIntro_NeedsHub_LearnMoreButton";
    goto LABEL_15;
  }

  v9 = _HULocalizedStringWithDefaultValue(@"HUUpgradeMultiUserDevices_Title", @"HUUpgradeMultiUserDevices_Title", 1);
  v11 = _HULocalizedStringWithDefaultValue(@"HUUpgradeMultiUserDevices_Generic_Detail", @"HUUpgradeMultiUserDevices_Generic_Detail", 1);
  v12 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
  v13 = &OBJC_IVAR___HUCameraRecordingIntroViewController__notNowButtonText;
  v14 = self->_continueButtonText;
  self->_continueButtonText = v12;

  v15 = HUImageNamed(@"Onboarding-UpdateSoftware");

  v16 = 0;
  v10 = 0;
  v8 = v15;
LABEL_18:
  v34 = *v13;
  v35 = *(&self->super.super.super.super.super.super.super.isa + v34);
  *(&self->super.super.super.super.super.super.super.isa + v34) = v16;

LABEL_19:
  v39.receiver = self;
  v39.super_class = HUCameraRecordingIntroViewController;
  v36 = [(HUImageOBWelcomeController *)&v39 initWithTitle:v9 detailText:v11 icon:0 contentImage:v8];
  v37 = v36;
  if (v36)
  {
    v36->_variant = variant;
    objc_storeStrong(&v36->_home, home);
    [(HUTopContentOBWelcomeController *)v37 setContentMode:v10];
  }

  return v37;
}

- (void)_buttonOne:(id)one
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = v6;
    v22 = 2048;
    variant = [(HUCameraRecordingIntroViewController *)self variant];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button: variant %lu", buf, 0x20u);
  }

  variant2 = [(HUCameraRecordingIntroViewController *)self variant];
  if (variant2 <= 6)
  {
    if (variant2 == 2)
    {
      delegate = [(HUCameraRecordingIntroViewController *)self delegate];
      v14 = @"HUCameraRecordingOnboardingKey_UserInput";
      v15 = &unk_2824927C8;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v15;
      v12 = &v14;
    }

    else
    {
      home = [(HUCameraRecordingIntroViewController *)self home];
      [home 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];

      delegate = [(HUCameraRecordingIntroViewController *)self delegate];
      v16 = @"HUCameraRecordingOnboardingKey_UserInput";
      v17 = &unk_2824927B0;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v17;
      v12 = &v16;
    }

    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:{1, v14, v15, v16, v17}];
    [delegate viewController:self didFinishWithConfigurationResults:v13];
  }
}

- (void)_buttonTwo:(id)two
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = v6;
    v22 = 2048;
    variant = [(HUCameraRecordingIntroViewController *)self variant];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button: variant %lu", buf, 0x20u);
  }

  variant2 = [(HUCameraRecordingIntroViewController *)self variant];
  if (variant2 > 3)
  {
    if (variant2 != 6)
    {
      if (variant2 == 5)
      {
        delegate = [(HUCameraRecordingIntroViewController *)self delegate];
        v14 = @"HUCameraRecordingOnboardingKey_UserInput";
        v15 = &unk_2824927C8;
        v10 = MEMORY[0x277CBEAC0];
        v11 = &v15;
        v12 = &v14;
        goto LABEL_14;
      }

      if (variant2 != 4)
      {
        return;
      }
    }

LABEL_11:
    NSLog(&cfstr_TheseViewsShou.isa);
    return;
  }

  if (variant2 < 2)
  {
    goto LABEL_11;
  }

  if (variant2 == 2)
  {
    home = [(HUCameraRecordingIntroViewController *)self home];
    [home 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];

    delegate = [(HUCameraRecordingIntroViewController *)self delegate];
    v16 = @"HUCameraRecordingOnboardingKey_UserInput";
    v17 = &unk_2824927B0;
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v17;
    v12 = &v16;
LABEL_14:
    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:{1, v14, v15, v16, v17}];
    [delegate viewController:self didFinishWithConfigurationResults:v13];

    return;
  }

  if (variant2 == 3)
  {
    [(HUCameraRecordingIntroViewController *)self showCameraRecordingLearnMore];
  }
}

- (void)showCameraRecordingLearnMore
{
  navigationController = [(HUCameraRecordingIntroViewController *)self navigationController];
  v4 = navigationController;
  if (navigationController)
  {
    selfCopy = navigationController;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  v7 = objc_alloc_init(HUCameraRecordingLearnMoreViewController);
  [(HUCameraRecordingIntroViewController *)v6 presentViewController:v7 animated:1 completion:0];
}

- (void)viewDidLoad
{
  v33 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = HUCameraRecordingIntroViewController;
  [(HUImageOBWelcomeController *)&v28 viewDidLoad];
  headerView = [(HUCameraRecordingIntroViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_2824932B0];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUCameraRecordingIntroViewController *)self setSetupButton:boldButton];

  setupButton = [(HUCameraRecordingIntroViewController *)self setupButton];
  [setupButton setTranslatesAutoresizingMaskIntoConstraints:0];

  setupButton2 = [(HUCameraRecordingIntroViewController *)self setupButton];
  continueButtonText = [(HUCameraRecordingIntroViewController *)self continueButtonText];
  [setupButton2 setTitle:continueButtonText forState:0];

  setupButton3 = [(HUCameraRecordingIntroViewController *)self setupButton];
  [setupButton3 setAccessibilityIdentifier:@"Home.OnboardingView.CameraRecording.Intro.ContinueButton"];

  setupButton4 = [(HUCameraRecordingIntroViewController *)self setupButton];
  [setupButton4 addTarget:self action:sel__buttonOne_ forControlEvents:64];

  buttonTray = [(HUCameraRecordingIntroViewController *)self buttonTray];
  setupButton5 = [(HUCameraRecordingIntroViewController *)self setupButton];
  [buttonTray addButton:setupButton5];

  notNowButtonText = [(HUCameraRecordingIntroViewController *)self notNowButtonText];

  if (notNowButtonText)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    [(HUCameraRecordingIntroViewController *)self setNotNowButton:linkButton];

    notNowButton = [(HUCameraRecordingIntroViewController *)self notNowButton];
    [notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];

    notNowButton2 = [(HUCameraRecordingIntroViewController *)self notNowButton];
    notNowButtonText2 = [(HUCameraRecordingIntroViewController *)self notNowButtonText];
    [notNowButton2 setTitle:notNowButtonText2 forState:0];

    notNowButton3 = [(HUCameraRecordingIntroViewController *)self notNowButton];
    [notNowButton3 setAccessibilityIdentifier:@"Home.OnboardingView.CameraRecording.Intro.NotNowButton"];

    notNowButton4 = [(HUCameraRecordingIntroViewController *)self notNowButton];
    [notNowButton4 addTarget:self action:sel__buttonTwo_ forControlEvents:64];

    buttonTray2 = [(HUCameraRecordingIntroViewController *)self buttonTray];
    notNowButton5 = [(HUCameraRecordingIntroViewController *)self notNowButton];
    [buttonTray2 addButton:notNowButton5];
  }

  captionText = [(HUCameraRecordingIntroViewController *)self captionText];

  if (captionText)
  {
    buttonTray3 = [(HUCameraRecordingIntroViewController *)self buttonTray];
    captionText2 = [(HUCameraRecordingIntroViewController *)self captionText];
    [buttonTray3 setCaptionText:captionText2];
  }

  [(HUCameraRecordingIntroViewController *)self setModalInPresentation:1];
  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v31 = 2112;
    v32 = v27;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: CRIVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUCameraRecordingIntroViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUCameraRecordingIntroViewController *)self isMovingFromParentViewController])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped BACK button", buf, 0x16u);
    }

    delegate = [(HUCameraRecordingIntroViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end