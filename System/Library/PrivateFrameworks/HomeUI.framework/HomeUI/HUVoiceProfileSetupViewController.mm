@interface HUVoiceProfileSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUVoiceProfileSetupViewController)initWithHome:(id)home;
- (void)_dontSetupVoiceProfile;
- (void)_dontSetupVoiceProfileWithWarning:(id)warning;
- (void)_resetVoiceProfileSetup;
- (void)_setupPersonalRequestsItemInfrastructure;
- (void)_setupVoiceProfile:(id)profile;
- (void)_turnOffPersonalRequests;
- (void)_turnOffVoiceRecognition;
- (void)continueSetup;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUVoiceProfileSetupViewController

- (HUVoiceProfileSetupViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = HULocalizedSiriTriggerPhrase(homeCopy);
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUVoiceProfileSetup_Title", @"HUVoiceProfileSetup_Title", 1);
    v16 = HULocalizedStringWithFormat(@"HUVoiceProfileSetup_Detail", @"%@", v10, v11, v12, v13, v14, v15, v6);
    v17 = HULocalizedSiriTriggerPhrase(homeCopy);
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
    objc_storeStrong(&v32->_home, home);
  }

  return v32;
}

- (void)_setupPersonalRequestsItemInfrastructure
{
  v4 = objc_alloc(MEMORY[0x277D14C98]);
  home = [(HUVoiceProfileSetupViewController *)self home];
  home2 = [(HUVoiceProfileSetupViewController *)self home];
  currentUser = [home2 currentUser];
  v11 = [v4 initWithHome:home user:currentUser nameStyle:0];

  v8 = [[HUPersonalRequestsEditorItemManager alloc] initWithDelegate:0 userItem:v11 onlyShowDeviceSwitches:1];
  [(HUVoiceProfileSetupViewController *)self setPrEditorItemManager:v8];

  prEditorItemManager = [(HUVoiceProfileSetupViewController *)self prEditorItemManager];
  v10 = [prEditorItemManager reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (void)_dontSetupVoiceProfileWithWarning:(id)warning
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v16 = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v16, 0x16u);
  }

  prEditorItemManager = [(HUVoiceProfileSetupViewController *)self prEditorItemManager];
  prDevicesModule = [prEditorItemManager prDevicesModule];
  personalRequestsDevices = [prDevicesModule personalRequestsDevices];
  v10 = [personalRequestsDevices count];

  if (v10)
  {
    home = [(HUVoiceProfileSetupViewController *)self home];
    if ([home hf_currentUserIsAdministrator])
    {

LABEL_7:
      v14 = 0;
      v15 = 1;
      goto LABEL_9;
    }

    home2 = [(HUVoiceProfileSetupViewController *)self home];
    hf_currentUserIsOwner = [home2 hf_currentUserIsOwner];

    if (hf_currentUserIsOwner)
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
  delegate = [(HUVoiceProfileSetupViewController *)self delegate];
  v5 = @"HUVoiceProfileOnboardingKey_UserInput";
  v6[0] = &unk_2824926F0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v4];
}

- (void)_setupVoiceProfile:(id)profile
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v18 = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v18, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277D7A8F8]) init:2];
  [(HUVoiceProfileSetupViewController *)self setVoiceProfileVC:v7];

  voiceProfileVC = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [voiceProfileVC setDelegate:self];

  navigationController = [(HUVoiceProfileSetupViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];

  navigationController2 = [(HUVoiceProfileSetupViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  v12 = objc_alloc_init(MEMORY[0x277D755B8]);
  [navigationBar setBackgroundImage:v12 forBarPosition:0 barMetrics:0];

  navigationController3 = [(HUVoiceProfileSetupViewController *)self navigationController];
  navigationBar2 = [navigationController3 navigationBar];
  v15 = objc_alloc_init(MEMORY[0x277D755B8]);
  [navigationBar2 setShadowImage:v15];

  navigationController4 = [(HUVoiceProfileSetupViewController *)self navigationController];
  voiceProfileVC2 = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [navigationController4 pushViewController:voiceProfileVC2 animated:1];
}

- (void)_resetVoiceProfileSetup
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v14 = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v14, 0x16u);
  }

  voiceProfileVC = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [voiceProfileVC setDelegate:0];

  v7 = [objc_alloc(MEMORY[0x277D7A8F8]) init:2];
  [(HUVoiceProfileSetupViewController *)self setVoiceProfileVC:v7];

  voiceProfileVC2 = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [voiceProfileVC2 setDelegate:self];

  navigationController = [(HUVoiceProfileSetupViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v11 = [viewControllers mutableCopy];

  [v11 removeLastObject];
  voiceProfileVC3 = [(HUVoiceProfileSetupViewController *)self voiceProfileVC];
  [v11 addObject:voiceProfileVC3];

  navigationController2 = [(HUVoiceProfileSetupViewController *)self navigationController];
  [navigationController2 setViewControllers:v11 animated:0];
}

- (void)_turnOffVoiceRecognition
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Turning off Recognize My Voice", &v12, 0x16u);
  }

  v6 = objc_alloc(MEMORY[0x277D14C98]);
  home = [(HUVoiceProfileSetupViewController *)self home];
  home2 = [(HUVoiceProfileSetupViewController *)self home];
  currentUser = [home2 currentUser];
  v10 = [v6 initWithHome:home user:currentUser nameStyle:0];

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
    selfCopy = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Turning off all Personal Requests devices", &v8, 0x16u);
  }

  prEditorItemManager = [(HUVoiceProfileSetupViewController *)self prEditorItemManager];
  prDevicesModule = [prEditorItemManager prDevicesModule];
  [prDevicesModule setPersonalRequestsDevices:MEMORY[0x277CBEBF8]];
}

- (void)continueSetup
{
  v7[1] = *MEMORY[0x277D85DE8];
  navigationController = [(HUVoiceProfileSetupViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:1];

  delegate = [(HUVoiceProfileSetupViewController *)self delegate];
  v6 = @"HUVoiceProfileOnboardingKey_UserInput";
  v7[0] = &unk_282492708;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v5];
}

- (void)viewDidLoad
{
  v31[1] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = HUVoiceProfileSetupViewController;
  [(HUImageOBWelcomeController *)&v26 viewDidLoad];
  headerView = [(HUVoiceProfileSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282493238];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUVoiceProfileSetupViewController *)self setSetupButton:boldButton];

  setupButton = [(HUVoiceProfileSetupViewController *)self setupButton];
  [setupButton setTranslatesAutoresizingMaskIntoConstraints:0];

  setupButton2 = [(HUVoiceProfileSetupViewController *)self setupButton];
  buttonOneText = [(HUVoiceProfileSetupViewController *)self buttonOneText];
  [setupButton2 setTitle:buttonOneText forState:0];

  setupButton3 = [(HUVoiceProfileSetupViewController *)self setupButton];
  [setupButton3 setAccessibilityIdentifier:@"Home.Onboarding.Voice.SetupButton"];

  setupButton4 = [(HUVoiceProfileSetupViewController *)self setupButton];
  [setupButton4 addTarget:self action:sel__setupVoiceProfile_ forControlEvents:64];

  buttonTray = [(HUVoiceProfileSetupViewController *)self buttonTray];
  setupButton5 = [(HUVoiceProfileSetupViewController *)self setupButton];
  [buttonTray addButton:setupButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUVoiceProfileSetupViewController *)self setNotNowButton:linkButton];

  notNowButton = [(HUVoiceProfileSetupViewController *)self notNowButton];
  [notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];

  notNowButton2 = [(HUVoiceProfileSetupViewController *)self notNowButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HUVoiceProfileSetup_NotNowButton", @"HUVoiceProfileSetup_NotNowButton", 1);
  [notNowButton2 setTitle:v17 forState:0];

  notNowButton3 = [(HUVoiceProfileSetupViewController *)self notNowButton];
  [notNowButton3 setAccessibilityIdentifier:@"Home.Onboarding.Voice.NotNowButton"];

  notNowButton4 = [(HUVoiceProfileSetupViewController *)self notNowButton];
  [notNowButton4 addTarget:self action:sel__dontSetupVoiceProfileWithWarning_ forControlEvents:64];

  buttonTray2 = [(HUVoiceProfileSetupViewController *)self buttonTray];
  notNowButton5 = [(HUVoiceProfileSetupViewController *)self notNowButton];
  [buttonTray2 addButton:notNowButton5];

  buttonTray3 = [(HUVoiceProfileSetupViewController *)self buttonTray];
  v31[0] = *MEMORY[0x277D376B8];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [buttonTray3 setPrivacyLinkForBundles:v23];

  [(HUVoiceProfileSetupViewController *)self setModalInPresentation:1];
  [(HUVoiceProfileSetupViewController *)self _setupPersonalRequestsItemInfrastructure];
  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v29 = 2112;
    v30 = v25;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: VPSVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUVoiceProfileSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUVoiceProfileSetupViewController *)self isMovingFromParentViewController])
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

    delegate = [(HUVoiceProfileSetupViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end