@interface HUTVViewingProfilesSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUTVViewingProfilesSetupViewController)initWithHome:(id)home;
- (void)_customizeOrOffButton:(id)button;
- (void)_setupTVViewingProfilesItemInfrastructure;
- (void)_turnOnAllTVViewingProfiles:(id)profiles;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUTVViewingProfilesSetupViewController

- (HUTVViewingProfilesSetupViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesSetup_Title", @"HUTVViewingProfilesSetup_Title", 1);
  v7 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesSetup_Detail", @"HUTVViewingProfilesSetup_Detail", 1);
  v8 = HUImageNamed(@"Onboarding-TVViewingProfiles");
  v11.receiver = self;
  v11.super_class = HUTVViewingProfilesSetupViewController;
  v9 = [(HUImageOBWelcomeController *)&v11 initWithTitle:v6 detailText:v7 icon:0 contentImage:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
  }

  return v9;
}

- (void)_setupTVViewingProfilesItemInfrastructure
{
  v4 = objc_alloc(MEMORY[0x277D14C98]);
  home = [(HUTVViewingProfilesSetupViewController *)self home];
  home2 = [(HUTVViewingProfilesSetupViewController *)self home];
  currentUser = [home2 currentUser];
  v11 = [v4 initWithHome:home user:currentUser nameStyle:0];

  v8 = [[HUTVViewingProfilesEditorItemManager alloc] initWithDelegate:self userItem:v11];
  [(HUTVViewingProfilesSetupViewController *)self setTvVPEditorItemManager:v8];

  tvVPEditorItemManager = [(HUTVViewingProfilesSetupViewController *)self tvVPEditorItemManager];
  v10 = [tvVPEditorItemManager reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (void)_customizeOrOffButton:(id)button
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v13, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  home = [(HUTVViewingProfilesSetupViewController *)self home];
  hf_appleTVs = [home hf_appleTVs];
  v10 = [hf_appleTVs count];

  if (v10 <= 1)
  {
    v11 = &unk_282491418;
  }

  else
  {
    v11 = &unk_282491430;
  }

  [dictionary setObject:v11 forKeyedSubscript:@"HUTVViewingProfilesOnboardingKey_UserInput"];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUMultiUserKey_SetIsEnabled"];
  delegate = [(HUTVViewingProfilesSetupViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:dictionary];
}

- (void)_turnOnAllTVViewingProfiles:(id)profiles
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412290;
    selfCopy = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: Turning on TV Viewing Profiles for all devices", buf, 0xCu);
  }

  tvVPEditorItemManager = [(HUTVViewingProfilesSetupViewController *)self tvVPEditorItemManager];
  tvpDevicesModule = [tvVPEditorItemManager tvpDevicesModule];
  [tvpDevicesModule turnOnTVViewingProfilesForAllDevices];

  v11 = MEMORY[0x277CBEB38];
  v15 = @"HUTVViewingProfilesOnboardingKey_UserInput";
  v16 = &unk_282491448;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v11 dictionaryWithDictionary:v12];

  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUMultiUserKey_SetIsEnabled"];
  delegate = [(HUTVViewingProfilesSetupViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:v13];
}

- (void)viewDidLoad
{
  v36 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HUTVViewingProfilesSetupViewController;
  [(HUImageOBWelcomeController *)&v31 viewDidLoad];
  headerView = [(HUTVViewingProfilesSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492EF0];

  home = [(HUTVViewingProfilesSetupViewController *)self home];
  hf_appleTVs = [home hf_appleTVs];
  v8 = [hf_appleTVs count];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUTVViewingProfilesSetupViewController *)self setUseTVVPButton:boldButton];

  useTVVPButton = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
  [useTVVPButton setTranslatesAutoresizingMaskIntoConstraints:0];

  useTVVPButton2 = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
  if (v8 == 1)
  {
    v12 = @"HUTVViewingProfilesSetup_UseTVViewingProfilesButton_Single";
  }

  else
  {
    v12 = @"HUTVViewingProfilesSetup_UseTVViewingProfilesButton_Multiple";
  }

  if (v8 == 1)
  {
    v13 = @"HUTVViewingProfilesSetup_CustomizeButton_Single";
  }

  else
  {
    v13 = @"HUTVViewingProfilesSetup_CustomizeButton_Multiple";
  }

  v14 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
  [useTVVPButton2 setTitle:v14 forState:0];

  useTVVPButton3 = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
  [useTVVPButton3 setAccessibilityIdentifier:@"Home.OnboardingView.TVViewing.SetUp.SingleOrMultipleButton"];

  useTVVPButton4 = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
  [useTVVPButton4 addTarget:self action:sel__turnOnAllTVViewingProfiles_ forControlEvents:64];

  buttonTray = [(HUTVViewingProfilesSetupViewController *)self buttonTray];
  useTVVPButton5 = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
  [buttonTray addButton:useTVVPButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUTVViewingProfilesSetupViewController *)self setCustomizeButton:linkButton];

  customizeButton = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  [customizeButton setTranslatesAutoresizingMaskIntoConstraints:0];

  customizeButton2 = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  v22 = _HULocalizedStringWithDefaultValue(v13, v13, 1);
  [customizeButton2 setTitle:v22 forState:0];

  customizeButton3 = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  [customizeButton3 setAccessibilityIdentifier:@"Home.OnboardingView.TVViewing.SetUp.SingleOrMultipleCustomizeButton"];

  customizeButton4 = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  [customizeButton4 addTarget:self action:sel__customizeOrOffButton_ forControlEvents:64];

  buttonTray2 = [(HUTVViewingProfilesSetupViewController *)self buttonTray];
  customizeButton5 = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  [buttonTray2 addButton:customizeButton5];

  buttonTray3 = [(HUTVViewingProfilesSetupViewController *)self buttonTray];
  v28 = HULocalizedModelString(@"HUTVViewingProfilesSetup_FinePrint");
  [buttonTray3 addCaptionText:v28];

  [(HUTVViewingProfilesSetupViewController *)self setModalInPresentation:1];
  [(HUTVViewingProfilesSetupViewController *)self _setupTVViewingProfilesItemInfrastructure];
  v29 = HFLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v34 = 2112;
    v35 = v30;
    _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: TVVPSVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUTVViewingProfilesSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUTVViewingProfilesSetupViewController *)self isMovingFromParentViewController])
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

    delegate = [(HUTVViewingProfilesSetupViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end