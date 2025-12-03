@interface HUTVViewingProfilesCustomizeViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUTVViewingProfilesCustomizeViewController)initWithHome:(id)home;
- (id)hu_preloadContent;
- (void)_dontSetupTVViewingProfiles:(id)profiles;
- (void)_setupTVViewingProfiles:(id)profiles;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUTVViewingProfilesCustomizeViewController

- (HUTVViewingProfilesCustomizeViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = objc_alloc(MEMORY[0x277D14C98]);
  currentUser = [homeCopy currentUser];
  v8 = [v6 initWithHome:homeCopy user:currentUser nameStyle:0];

  v9 = [[HUTVViewingProfilesEditorTableViewController alloc] initWithUserItem:v8];
  [(HUTVViewingProfilesEditorTableViewController *)v9 setHideHeadersAndFooters:1];
  v10 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesCustomize_Title", @"HUTVViewingProfilesCustomize_Title", 1);
  v11 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesSetup_Detail", @"HUTVViewingProfilesSetup_Detail", 1);
  v14.receiver = self;
  v14.super_class = HUTVViewingProfilesCustomizeViewController;
  v12 = [(HUItemTableOBWelcomeController *)&v14 initWithTitle:v10 detailText:v11 icon:0 contentLayout:2 itemTableViewController:v9];

  if (v12)
  {
    objc_storeStrong(&v12->_home, home);
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
  itemTableViewController = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  if (objc_opt_isKindOfClass())
  {
    v7 = itemTableViewController;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  itemManager = [v8 itemManager];

  if (objc_opt_isKindOfClass())
  {
    v10 = itemManager;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  tvpDevicesModule = [v11 tvpDevicesModule];

  [tvpDevicesModule turnOnTVViewingProfilesForAllDevices];
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (void)_dontSetupTVViewingProfiles:(id)profiles
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412290;
    selfCopy = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: Turning off all TV Viewing Profiles devices", buf, 0xCu);
  }

  objc_opt_class();
  itemTableViewController = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  if (objc_opt_isKindOfClass())
  {
    v10 = itemTableViewController;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  itemManager = [v11 itemManager];

  if (objc_opt_isKindOfClass())
  {
    v13 = itemManager;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  tvpDevicesModule = [v14 tvpDevicesModule];

  [tvpDevicesModule setViewingProfilesDevices:MEMORY[0x277CBEBF8]];
  delegate = [(HUTVViewingProfilesCustomizeViewController *)self delegate];
  v18 = @"HUTVViewingProfilesOnboardingKey_UserInput";
  v19 = &unk_282492750;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v17];
}

- (void)_setupTVViewingProfiles:(id)profiles
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  delegate = [(HUTVViewingProfilesCustomizeViewController *)self delegate];
  v9 = @"HUTVViewingProfilesOnboardingKey_UserInput";
  v10 = &unk_282492768;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (void)viewDidLoad
{
  v34 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HUTVViewingProfilesCustomizeViewController;
  [(HUItemTableOBWelcomeController *)&v29 viewDidLoad];
  headerView = [(HUTVViewingProfilesCustomizeViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282493260];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUTVViewingProfilesCustomizeViewController *)self setUsePRButton:boldButton];

  usePRButton = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  [usePRButton setTranslatesAutoresizingMaskIntoConstraints:0];

  usePRButton2 = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesCustomize_ContinueButton", @"HUTVViewingProfilesCustomize_ContinueButton", 1);
  [usePRButton2 setTitle:v9 forState:0];

  usePRButton3 = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  [usePRButton3 setAccessibilityIdentifier:@"Home.Onboarding.TVViewing.CustomizeOrContinueButton"];

  usePRButton4 = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  [usePRButton4 addTarget:self action:sel__setupTVViewingProfiles_ forControlEvents:64];

  buttonTray = [(HUTVViewingProfilesCustomizeViewController *)self buttonTray];
  usePRButton5 = [(HUTVViewingProfilesCustomizeViewController *)self usePRButton];
  [buttonTray addButton:usePRButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUTVViewingProfilesCustomizeViewController *)self setCustomizeButton:linkButton];

  customizeButton = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  [customizeButton setTranslatesAutoresizingMaskIntoConstraints:0];

  customizeButton2 = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HUTVViewingProfilesCustomize_DoNotUseButton", @"HUTVViewingProfilesCustomize_DoNotUseButton", 1);
  [customizeButton2 setTitle:v17 forState:0];

  customizeButton3 = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  [customizeButton3 setAccessibilityIdentifier:@"Home.Onboarding.TVViewing.CustomizeOrDoNotUseButton"];

  customizeButton4 = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  [customizeButton4 addTarget:self action:sel__dontSetupTVViewingProfiles_ forControlEvents:64];

  buttonTray2 = [(HUTVViewingProfilesCustomizeViewController *)self buttonTray];
  customizeButton5 = [(HUTVViewingProfilesCustomizeViewController *)self customizeButton];
  [buttonTray2 addButton:customizeButton5];

  buttonTray3 = [(HUTVViewingProfilesCustomizeViewController *)self buttonTray];
  v23 = HULocalizedModelString(@"HUTVViewingProfilesSetup_FinePrint");
  [buttonTray3 setCaptionText:v23];

  [(HUTVViewingProfilesCustomizeViewController *)self setModalInPresentation:1];
  itemTableViewController = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  itemManager = [itemTableViewController itemManager];
  v26 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:a2];

  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v32 = 2112;
    v33 = v28;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@: presented", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUTVViewingProfilesCustomizeViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUTVViewingProfilesCustomizeViewController *)self isMovingFromParentViewController])
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

    delegate = [(HUTVViewingProfilesCustomizeViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end