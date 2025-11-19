@interface HUTVViewingProfilesSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUTVViewingProfilesSetupViewController)initWithHome:(id)a3;
- (void)_customizeOrOffButton:(id)a3;
- (void)_setupTVViewingProfilesItemInfrastructure;
- (void)_turnOnAllTVViewingProfiles:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUTVViewingProfilesSetupViewController

- (HUTVViewingProfilesSetupViewController)initWithHome:(id)a3
{
  v5 = a3;
  v6 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesSetup_Title", @"HUTVViewingProfilesSetup_Title", 1);
  v7 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesSetup_Detail", @"HUTVViewingProfilesSetup_Detail", 1);
  v8 = HUImageNamed(@"Onboarding-TVViewingProfiles");
  v11.receiver = self;
  v11.super_class = HUTVViewingProfilesSetupViewController;
  v9 = [(HUImageOBWelcomeController *)&v11 initWithTitle:v6 detailText:v7 icon:0 contentImage:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
  }

  return v9;
}

- (void)_setupTVViewingProfilesItemInfrastructure
{
  v4 = objc_alloc(MEMORY[0x277D14C98]);
  v5 = [(HUTVViewingProfilesSetupViewController *)self home];
  v6 = [(HUTVViewingProfilesSetupViewController *)self home];
  v7 = [v6 currentUser];
  v11 = [v4 initWithHome:v5 user:v7 nameStyle:0];

  v8 = [[HUTVViewingProfilesEditorItemManager alloc] initWithDelegate:self userItem:v11];
  [(HUTVViewingProfilesSetupViewController *)self setTvVPEditorItemManager:v8];

  v9 = [(HUTVViewingProfilesSetupViewController *)self tvVPEditorItemManager];
  v10 = [v9 reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (void)_customizeOrOffButton:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v13, 0x16u);
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(HUTVViewingProfilesSetupViewController *)self home];
  v9 = [v8 hf_appleTVs];
  v10 = [v9 count];

  if (v10 <= 1)
  {
    v11 = &unk_282491418;
  }

  else
  {
    v11 = &unk_282491430;
  }

  [v7 setObject:v11 forKeyedSubscript:@"HUTVViewingProfilesOnboardingKey_UserInput"];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUMultiUserKey_SetIsEnabled"];
  v12 = [(HUTVViewingProfilesSetupViewController *)self delegate];
  [v12 viewController:self didFinishWithConfigurationResults:v7];
}

- (void)_turnOnAllTVViewingProfiles:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: Turning on TV Viewing Profiles for all devices", buf, 0xCu);
  }

  v9 = [(HUTVViewingProfilesSetupViewController *)self tvVPEditorItemManager];
  v10 = [v9 tvpDevicesModule];
  [v10 turnOnTVViewingProfilesForAllDevices];

  v11 = MEMORY[0x277CBEB38];
  v15 = @"HUTVViewingProfilesOnboardingKey_UserInput";
  v16 = &unk_282491448;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v11 dictionaryWithDictionary:v12];

  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUMultiUserKey_SetIsEnabled"];
  v14 = [(HUTVViewingProfilesSetupViewController *)self delegate];
  [v14 viewController:self didFinishWithConfigurationResults:v13];
}

- (void)viewDidLoad
{
  v36 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HUTVViewingProfilesSetupViewController;
  [(HUImageOBWelcomeController *)&v31 viewDidLoad];
  v4 = [(HUTVViewingProfilesSetupViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282492EF0];

  v6 = [(HUTVViewingProfilesSetupViewController *)self home];
  v7 = [v6 hf_appleTVs];
  v8 = [v7 count];

  v9 = [MEMORY[0x277D37618] boldButton];
  [(HUTVViewingProfilesSetupViewController *)self setUseTVVPButton:v9];

  v10 = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
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
  [v11 setTitle:v14 forState:0];

  v15 = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
  [v15 setAccessibilityIdentifier:@"Home.OnboardingView.TVViewing.SetUp.SingleOrMultipleButton"];

  v16 = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
  [v16 addTarget:self action:sel__turnOnAllTVViewingProfiles_ forControlEvents:64];

  v17 = [(HUTVViewingProfilesSetupViewController *)self buttonTray];
  v18 = [(HUTVViewingProfilesSetupViewController *)self useTVVPButton];
  [v17 addButton:v18];

  v19 = [MEMORY[0x277D37650] linkButton];
  [(HUTVViewingProfilesSetupViewController *)self setCustomizeButton:v19];

  v20 = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  v22 = _HULocalizedStringWithDefaultValue(v13, v13, 1);
  [v21 setTitle:v22 forState:0];

  v23 = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  [v23 setAccessibilityIdentifier:@"Home.OnboardingView.TVViewing.SetUp.SingleOrMultipleCustomizeButton"];

  v24 = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  [v24 addTarget:self action:sel__customizeOrOffButton_ forControlEvents:64];

  v25 = [(HUTVViewingProfilesSetupViewController *)self buttonTray];
  v26 = [(HUTVViewingProfilesSetupViewController *)self customizeButton];
  [v25 addButton:v26];

  v27 = [(HUTVViewingProfilesSetupViewController *)self buttonTray];
  v28 = HULocalizedModelString(@"HUTVViewingProfilesSetup_FinePrint");
  [v27 addCaptionText:v28];

  [(HUTVViewingProfilesSetupViewController *)self setModalInPresentation:1];
  [(HUTVViewingProfilesSetupViewController *)self _setupTVViewingProfilesItemInfrastructure];
  v29 = HFLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = NSStringFromSelector(a2);
    *buf = 138412546;
    v33 = self;
    v34 = 2112;
    v35 = v30;
    _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: TVVPSVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUTVViewingProfilesSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUTVViewingProfilesSetupViewController *)self isMovingFromParentViewController])
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

    v7 = [(HUTVViewingProfilesSetupViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end