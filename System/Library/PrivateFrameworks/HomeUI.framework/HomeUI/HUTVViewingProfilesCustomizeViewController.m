@interface HUTVViewingProfilesCustomizeViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUTVViewingProfilesCustomizeViewController)initWithHome:(id)a3;
- (id)hu_preloadContent;
- (void)_dontSetupTVViewingProfiles:(id)a3;
- (void)_setupTVViewingProfiles:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUTVViewingProfilesCustomizeViewController

- (HUTVViewingProfilesCustomizeViewController)initWithHome:(id)a3
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x277D14C98]);
  v7 = [v5 currentUser];
  v8 = [v6 initWithHome:v5 user:v7 nameStyle:0];

  v9 = [[HUTVViewingProfilesEditorTableViewController alloc] initWithUserItem:v8];
  [(HUTVViewingProfilesEditorTableViewController *)v9 setHideHeadersAndFooters:1];
  v10 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesCustomize_Title", @"HUTVViewingProfilesCustomize_Title", 1);
  v11 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesSetup_Detail", @"HUTVViewingProfilesSetup_Detail", 1);
  v14.receiver = self;
  v14.super_class = HUTVViewingProfilesCustomizeViewController;
  v12 = [(HUItemTableOBWelcomeController *)&v14 initWithTitle:v10 detailText:v11 icon:0 contentLayout:2 itemTableViewController:v9];

  if (v12)
  {
    objc_storeStrong(&v12->_home, a3);
  }

  return v12;
}

- (id)hu_preloadContent
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Turning on TV Viewing Profiles for all devices", &v15, 0xCu);
  }

  objc_opt_class();
  v6 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [v8 itemManager];

  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 tvpDevicesModule];

  [v12 turnOnTVViewingProfilesForAllDevices];
  v13 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v13;
}

- (void)_dontSetupTVViewingProfiles:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: Turning off all TV Viewing Profiles devices", buf, 0xCu);
  }

  objc_opt_class();
  v9 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = [v11 itemManager];

  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 tvpDevicesModule];

  [v15 setViewingProfilesDevices:MEMORY[0x277CBEBF8]];
  v16 = [(HUTVViewingProfilesCustomizeViewController *)self delegate];
  v18 = @"HUTVViewingProfilesOnboardingKey_UserInput";
  v19 = &unk_282492750;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v16 viewController:self didFinishWithConfigurationResults:v17];
}

- (void)_setupTVViewingProfiles:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = [(HUTVViewingProfilesCustomizeViewController *)self delegate];
  v9 = @"HUTVViewingProfilesOnboardingKey_UserInput";
  v10 = &unk_282492768;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v7 viewController:self didFinishWithConfigurationResults:v8];
}

- (void)viewDidLoad
{
  v34 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HUTVViewingProfilesCustomizeViewController;
  [(HUItemTableOBWelcomeController *)&v29 viewDidLoad];
  v4 = [(HUTVViewingProfilesCustomizeViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282493260];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUTVViewingProfilesCustomizeViewController *)self setUsePRButton:v6];

  v7 = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesCustomize_ContinueButton", @"HUTVViewingProfilesCustomize_ContinueButton", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  [v10 setAccessibilityIdentifier:@"Home.Onboarding.TVViewing.CustomizeOrContinueButton"];

  v11 = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  [v11 addTarget:self action:sel__setupTVViewingProfiles_ forControlEvents:64];

  v12 = [(HUTVViewingProfilesCustomizeViewController *)self buttonTray];
  v13 = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  [v12 addButton:v13];

  v14 = [MEMORY[0x277D37650] linkButton];
  [(HUTVViewingProfilesCustomizeViewController *)self setCustomizeButton:v14];

  v15 = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesCustomize_DoNotUseButton", @"HUTVViewingProfilesCustomize_DoNotUseButton", 1);
  [v16 setTitle:v17 forState:0];

  v18 = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  [v18 setAccessibilityIdentifier:@"Home.Onboarding.TVViewing.CustomizeOrDoNotUseButton"];

  v19 = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  [v19 addTarget:self action:sel__dontSetupTVViewingProfiles_ forControlEvents:64];

  v20 = [(HUTVViewingProfilesCustomizeViewController *)self buttonTray];
  v21 = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  [v20 addButton:v21];

  v22 = [(HUTVViewingProfilesCustomizeViewController *)self buttonTray];
  v23 = HULocalizedModelString(@"HUTVViewingProfilesSetup_FinePrint");
  [v22 setCaptionText:v23];

  [(HUTVViewingProfilesCustomizeViewController *)self setModalInPresentation:1];
  v24 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  v25 = [v24 itemManager];
  v26 = [v25 reloadAndUpdateAllItemsFromSenderSelector:a2];

  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = NSStringFromSelector(a2);
    *buf = 138412546;
    v31 = self;
    v32 = 2112;
    v33 = v28;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@: presented", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUTVViewingProfilesCustomizeViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUTVViewingProfilesCustomizeViewController *)self isMovingFromParentViewController])
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

    v7 = [(HUTVViewingProfilesCustomizeViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end