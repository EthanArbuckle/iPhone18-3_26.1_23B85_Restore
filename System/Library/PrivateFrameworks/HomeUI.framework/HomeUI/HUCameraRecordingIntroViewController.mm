@interface HUCameraRecordingIntroViewController
- (HUCameraRecordingIntroViewController)init;
- (HUCameraRecordingIntroViewController)initWithIntroVariant:(unint64_t)a3 home:(id)a4;
- (HUCameraRecordingIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentImage:(id)a6;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_buttonOne:(id)a3;
- (void)_buttonTwo:(id)a3;
- (void)showCameraRecordingLearnMore;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUCameraRecordingIntroViewController

- (HUCameraRecordingIntroViewController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithIntroVariant_home_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUCameraRecordingIntroViewController.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HUCameraRecordingIntroViewController init]", v5}];

  return 0;
}

- (HUCameraRecordingIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentImage:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithIntroVariant_home_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUCameraRecordingIntroViewController.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HUCameraRecordingIntroViewController initWithTitle:detailText:icon:contentImage:]", v9}];

  return 0;
}

- (HUCameraRecordingIntroViewController)initWithIntroVariant:(unint64_t)a3 home:(id)a4
{
  v7 = a4;
  v8 = HUImageNamed(@"Onboarding-Camera");
  v9 = 0;
  v10 = 1;
  if (a3 <= 2)
  {
    switch(a3)
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

  if (a3 > 4)
  {
    if (a3 == 5)
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

    if (a3 == 6)
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

  if (a3 == 3)
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
    v36->_variant = a3;
    objc_storeStrong(&v36->_home, a4);
    [(HUTopContentOBWelcomeController *)v37 setContentMode:v10];
  }

  return v37;
}

- (void)_buttonOne:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    v22 = 2048;
    v23 = [(HUCameraRecordingIntroViewController *)self variant];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button: variant %lu", buf, 0x20u);
  }

  v7 = [(HUCameraRecordingIntroViewController *)self variant];
  if (v7 <= 6)
  {
    if (v7 == 2)
    {
      v9 = [(HUCameraRecordingIntroViewController *)self delegate];
      v14 = @"HUCameraRecordingOnboardingKey_UserInput";
      v15 = &unk_2824927C8;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v15;
      v12 = &v14;
    }

    else
    {
      v8 = [(HUCameraRecordingIntroViewController *)self home];
      [v8 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];

      v9 = [(HUCameraRecordingIntroViewController *)self delegate];
      v16 = @"HUCameraRecordingOnboardingKey_UserInput";
      v17 = &unk_2824927B0;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v17;
      v12 = &v16;
    }

    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:{1, v14, v15, v16, v17}];
    [v9 viewController:self didFinishWithConfigurationResults:v13];
  }
}

- (void)_buttonTwo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    v22 = 2048;
    v23 = [(HUCameraRecordingIntroViewController *)self variant];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button: variant %lu", buf, 0x20u);
  }

  v7 = [(HUCameraRecordingIntroViewController *)self variant];
  if (v7 > 3)
  {
    if (v7 != 6)
    {
      if (v7 == 5)
      {
        v9 = [(HUCameraRecordingIntroViewController *)self delegate];
        v14 = @"HUCameraRecordingOnboardingKey_UserInput";
        v15 = &unk_2824927C8;
        v10 = MEMORY[0x277CBEAC0];
        v11 = &v15;
        v12 = &v14;
        goto LABEL_14;
      }

      if (v7 != 4)
      {
        return;
      }
    }

LABEL_11:
    NSLog(&cfstr_TheseViewsShou.isa);
    return;
  }

  if (v7 < 2)
  {
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = [(HUCameraRecordingIntroViewController *)self home];
    [v8 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];

    v9 = [(HUCameraRecordingIntroViewController *)self delegate];
    v16 = @"HUCameraRecordingOnboardingKey_UserInput";
    v17 = &unk_2824927B0;
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v17;
    v12 = &v16;
LABEL_14:
    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:{1, v14, v15, v16, v17}];
    [v9 viewController:self didFinishWithConfigurationResults:v13];

    return;
  }

  if (v7 == 3)
  {
    [(HUCameraRecordingIntroViewController *)self showCameraRecordingLearnMore];
  }
}

- (void)showCameraRecordingLearnMore
{
  v3 = [(HUCameraRecordingIntroViewController *)self navigationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  v7 = objc_alloc_init(HUCameraRecordingLearnMoreViewController);
  [(HUCameraRecordingIntroViewController *)v6 presentViewController:v7 animated:1 completion:0];
}

- (void)viewDidLoad
{
  v33 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = HUCameraRecordingIntroViewController;
  [(HUImageOBWelcomeController *)&v28 viewDidLoad];
  v4 = [(HUCameraRecordingIntroViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_2824932B0];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUCameraRecordingIntroViewController *)self setSetupButton:v6];

  v7 = [(HUCameraRecordingIntroViewController *)self setupButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUCameraRecordingIntroViewController *)self setupButton];
  v9 = [(HUCameraRecordingIntroViewController *)self continueButtonText];
  [v8 setTitle:v9 forState:0];

  v10 = [(HUCameraRecordingIntroViewController *)self setupButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.CameraRecording.Intro.ContinueButton"];

  v11 = [(HUCameraRecordingIntroViewController *)self setupButton];
  [v11 addTarget:self action:sel__buttonOne_ forControlEvents:64];

  v12 = [(HUCameraRecordingIntroViewController *)self buttonTray];
  v13 = [(HUCameraRecordingIntroViewController *)self setupButton];
  [v12 addButton:v13];

  v14 = [(HUCameraRecordingIntroViewController *)self notNowButtonText];

  if (v14)
  {
    v15 = [MEMORY[0x277D37650] linkButton];
    [(HUCameraRecordingIntroViewController *)self setNotNowButton:v15];

    v16 = [(HUCameraRecordingIntroViewController *)self notNowButton];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [(HUCameraRecordingIntroViewController *)self notNowButton];
    v18 = [(HUCameraRecordingIntroViewController *)self notNowButtonText];
    [v17 setTitle:v18 forState:0];

    v19 = [(HUCameraRecordingIntroViewController *)self notNowButton];
    [v19 setAccessibilityIdentifier:@"Home.OnboardingView.CameraRecording.Intro.NotNowButton"];

    v20 = [(HUCameraRecordingIntroViewController *)self notNowButton];
    [v20 addTarget:self action:sel__buttonTwo_ forControlEvents:64];

    v21 = [(HUCameraRecordingIntroViewController *)self buttonTray];
    v22 = [(HUCameraRecordingIntroViewController *)self notNowButton];
    [v21 addButton:v22];
  }

  v23 = [(HUCameraRecordingIntroViewController *)self captionText];

  if (v23)
  {
    v24 = [(HUCameraRecordingIntroViewController *)self buttonTray];
    v25 = [(HUCameraRecordingIntroViewController *)self captionText];
    [v24 setCaptionText:v25];
  }

  [(HUCameraRecordingIntroViewController *)self setModalInPresentation:1];
  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = NSStringFromSelector(a2);
    *buf = 138412546;
    v30 = self;
    v31 = 2112;
    v32 = v27;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: CRIVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUCameraRecordingIntroViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUCameraRecordingIntroViewController *)self isMovingFromParentViewController])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped BACK button", buf, 0x16u);
    }

    v7 = [(HUCameraRecordingIntroViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end