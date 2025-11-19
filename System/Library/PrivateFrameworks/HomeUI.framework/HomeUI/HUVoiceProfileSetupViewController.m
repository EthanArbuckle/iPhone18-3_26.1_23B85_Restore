@interface HUVoiceProfileSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUVoiceProfileSetupViewController)initWithHome:(id)a3;
- (void)_dontSetupVoiceProfile;
- (void)_dontSetupVoiceProfileWithWarning:(id)a3;
- (void)_resetVoiceProfileSetup;
- (void)_setupPersonalRequestsItemInfrastructure;
- (void)_setupVoiceProfile:(id)a3;
- (void)_turnOffPersonalRequests;
- (void)_turnOffVoiceRecognition;
- (void)continueSetup;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUVoiceProfileSetupViewController

- (HUVoiceProfileSetupViewController)initWithHome:(id)a3
{
  v5 = a3;
  v6 = HULocalizedSiriTriggerPhrase(v5);
  v7 = [MEMORY[0x277CEF368] sharedPreferences];
  v8 = [v7 assistantIsEnabled];

  if (v8)
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUVoiceProfileSetup_Title", @"HUVoiceProfileSetup_Title", 1);
    v16 = HULocalizedStringWithFormat(@"HUVoiceProfileSetup_Detail", @"%@", v10, v11, v12, v13, v14, v15, v6);
    v17 = HULocalizedSiriTriggerPhrase(v5);
    v24 = HULocalizedStringWithFormat(@"HUVoiceProfileSetup_SetupButton", @"%@", v18, v19, v20, v21, v22, v23, v17);
    buttonOneText = self->_buttonOneText;
    self->_buttonOneText = v24;
  }

  else
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUSiriSetup_Title", @"HUSiriSetup_Title", 1);
    v26 = HULocalizedModelString(@"HUSiriSetup_Detail");
    v35 = 0;
    v16 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v26 validFormatSpecifiers:@"%@" error:&v35, v6];
    v27 = v35;
    v28 = v27;
    if (!v16)
    {
      NSLog(&cfstr_CouldnTLocaliz.isa, v26, v27);
    }

    v29 = _HULocalizedStringWithDefaultValue(@"HUSiriSetup_SetupButton", @"HUSiriSetup_SetupButton", 1);
    v30 = self->_buttonOneText;
    self->_buttonOneText = v29;
  }

  v31 = HUImageNamed(@"Onboarding-Siri");
  v34.receiver = self;
  v34.super_class = HUVoiceProfileSetupViewController;
  v32 = [(HUImageOBWelcomeController *)&v34 initWithTitle:v9 detailText:v16 icon:0 contentImage:v31];

  if (v32)
  {
    objc_storeStrong(&v32->_home, a3);
  }

  return v32;
}

- (void)_setupPersonalRequestsItemInfrastructure
{
  v4 = objc_alloc(MEMORY[0x277D14C98]);
  v5 = [(HUVoiceProfileSetupViewController *)self home];
  v6 = [(HUVoiceProfileSetupViewController *)self home];
  v7 = [v6 currentUser];
  v11 = [v4 initWithHome:v5 user:v7 nameStyle:0];

  v8 = [[HUPersonalRequestsEditorItemManager alloc] initWithDelegate:0 userItem:v11 onlyShowDeviceSwitches:1];
  [(HUVoiceProfileSetupViewController *)self setPrEditorItemManager:v8];

  v9 = [(HUVoiceProfileSetupViewController *)self prEditorItemManager];
  v10 = [v9 reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (void)_dontSetupVoiceProfileWithWarning:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v16 = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v16, 0x16u);
  }

  v7 = [(HUVoiceProfileSetupViewController *)self prEditorItemManager];
  v8 = [v7 prDevicesModule];
  v9 = [v8 personalRequestsDevices];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(HUVoiceProfileSetupViewController *)self home];
    if ([v11 hf_currentUserIsAdministrator])
    {

LABEL_7:
      v14 = 0;
      v15 = 1;
      goto LABEL_9;
    }

    v12 = [(HUVoiceProfileSetupViewController *)self home];
    v13 = [v12 hf_currentUserIsOwner];

    if (v13)
    {
      goto LABEL_7;
    }
  }

  v15 = 0;
  v14 = 1;
LABEL_9:
  if ([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || (objc_msgSend(MEMORY[0x277D14CE8], "isAVisionPro"))
  {
    goto LABEL_11;
  }

  if (v14)
  {
    [HUHomeFeatureOnboardingUtilities presentAlertConfirmingTurningOfVoiceRecognitionFrom:self];
    return;
  }

  if (!v15)
  {
LABEL_11:
    [(HUVoiceProfileSetupViewController *)self _dontSetupVoiceProfile];
  }

  else
  {
    [HUHomeFeatureOnboardingUtilities presentAlertConfirmingTurningOffPersonalRequestsFrom:self];
  }
}

- (void)_dontSetupVoiceProfile
{
  v6[1] = *MEMORY[0x277D85DE8];
  [(HUVoiceProfileSetupViewController *)self _turnOffVoiceRecognition];
  [(HUVoiceProfileSetupViewController *)self _turnOffPersonalRequests];
  v3 = [(HUVoiceProfileSetupViewController *)self delegate];
  v5 = @"HUVoiceProfileOnboardingKey_UserInput";
  v6[0] = &unk_2824926F0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v3 viewController:self didFinishWithConfigurationResults:v4];
}

- (void)_setupVoiceProfile:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v18 = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v18, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277D7A8F8]) init:2];
  [(HUVoiceProfileSetupViewController *)self setVoiceProfileVC:v7];

  v8 = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [v8 setDelegate:self];

  v9 = [(HUVoiceProfileSetupViewController *)self navigationController];
  [v9 setNavigationBarHidden:0 animated:1];

  v10 = [(HUVoiceProfileSetupViewController *)self navigationController];
  v11 = [v10 navigationBar];
  v12 = objc_alloc_init(MEMORY[0x277D755B8]);
  [v11 setBackgroundImage:v12 forBarPosition:0 barMetrics:0];

  v13 = [(HUVoiceProfileSetupViewController *)self navigationController];
  v14 = [v13 navigationBar];
  v15 = objc_alloc_init(MEMORY[0x277D755B8]);
  [v14 setShadowImage:v15];

  v16 = [(HUVoiceProfileSetupViewController *)self navigationController];
  v17 = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [v16 pushViewController:v17 animated:1];
}

- (void)_resetVoiceProfileSetup
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v14 = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v14, 0x16u);
  }

  v6 = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [v6 setDelegate:0];

  v7 = [objc_alloc(MEMORY[0x277D7A8F8]) init:2];
  [(HUVoiceProfileSetupViewController *)self setVoiceProfileVC:v7];

  v8 = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [v8 setDelegate:self];

  v9 = [(HUVoiceProfileSetupViewController *)self navigationController];
  v10 = [v9 viewControllers];
  v11 = [v10 mutableCopy];

  [v11 removeLastObject];
  v12 = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [v11 addObject:v12];

  v13 = [(HUVoiceProfileSetupViewController *)self navigationController];
  [v13 setViewControllers:v11 animated:0];
}

- (void)_turnOffVoiceRecognition
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Turning off Recognize My Voice", &v12, 0x16u);
  }

  v6 = objc_alloc(MEMORY[0x277D14C98]);
  v7 = [(HUVoiceProfileSetupViewController *)self home];
  v8 = [(HUVoiceProfileSetupViewController *)self home];
  v9 = [v8 currentUser];
  v10 = [v6 initWithHome:v7 user:v9 nameStyle:0];

  v11 = [v10 setEnableIdentifyVoice:0];
}

- (void)_turnOffPersonalRequests
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Turning off all Personal Requests devices", &v8, 0x16u);
  }

  v6 = [(HUVoiceProfileSetupViewController *)self prEditorItemManager];
  v7 = [v6 prDevicesModule];
  [v7 setPersonalRequestsDevices:MEMORY[0x277CBEBF8]];
}

- (void)continueSetup
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(HUVoiceProfileSetupViewController *)self navigationController];
  [v3 setNavigationBarHidden:1 animated:1];

  v4 = [(HUVoiceProfileSetupViewController *)self delegate];
  v6 = @"HUVoiceProfileOnboardingKey_UserInput";
  v7[0] = &unk_282492708;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v4 viewController:self didFinishWithConfigurationResults:v5];
}

- (void)viewDidLoad
{
  v31[1] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = HUVoiceProfileSetupViewController;
  [(HUImageOBWelcomeController *)&v26 viewDidLoad];
  v4 = [(HUVoiceProfileSetupViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282493238];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUVoiceProfileSetupViewController *)self setSetupButton:v6];

  v7 = [(HUVoiceProfileSetupViewController *)self setupButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUVoiceProfileSetupViewController *)self setupButton];
  v9 = [(HUVoiceProfileSetupViewController *)self buttonOneText];
  [v8 setTitle:v9 forState:0];

  v10 = [(HUVoiceProfileSetupViewController *)self setupButton];
  [v10 setAccessibilityIdentifier:@"Home.Onboarding.Voice.SetupButton"];

  v11 = [(HUVoiceProfileSetupViewController *)self setupButton];
  [v11 addTarget:self action:sel__setupVoiceProfile_ forControlEvents:64];

  v12 = [(HUVoiceProfileSetupViewController *)self buttonTray];
  v13 = [(HUVoiceProfileSetupViewController *)self setupButton];
  [v12 addButton:v13];

  v14 = [MEMORY[0x277D37650] linkButton];
  [(HUVoiceProfileSetupViewController *)self setNotNowButton:v14];

  v15 = [(HUVoiceProfileSetupViewController *)self notNowButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HUVoiceProfileSetupViewController *)self notNowButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HUVoiceProfileSetup_NotNowButton", @"HUVoiceProfileSetup_NotNowButton", 1);
  [v16 setTitle:v17 forState:0];

  v18 = [(HUVoiceProfileSetupViewController *)self notNowButton];
  [v18 setAccessibilityIdentifier:@"Home.Onboarding.Voice.NotNowButton"];

  v19 = [(HUVoiceProfileSetupViewController *)self notNowButton];
  [v19 addTarget:self action:sel__dontSetupVoiceProfileWithWarning_ forControlEvents:64];

  v20 = [(HUVoiceProfileSetupViewController *)self buttonTray];
  v21 = [(HUVoiceProfileSetupViewController *)self notNowButton];
  [v20 addButton:v21];

  v22 = [(HUVoiceProfileSetupViewController *)self buttonTray];
  v31[0] = *MEMORY[0x277D376B8];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v22 setPrivacyLinkForBundles:v23];

  [(HUVoiceProfileSetupViewController *)self setModalInPresentation:1];
  [(HUVoiceProfileSetupViewController *)self _setupPersonalRequestsItemInfrastructure];
  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = NSStringFromSelector(a2);
    *buf = 138412546;
    v28 = self;
    v29 = 2112;
    v30 = v25;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: VPSVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUVoiceProfileSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUVoiceProfileSetupViewController *)self isMovingFromParentViewController])
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

    v7 = [(HUVoiceProfileSetupViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end