@interface HUPersonalRequestsCustomizeViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUPersonalRequestsCustomizeViewController)initWithLocationDevice:(id)device home:(id)home;
- (id)hu_preloadContent;
- (void)_dontSetupPersonalRequests:(id)requests;
- (void)_setupPersonalRequests:(id)requests;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUPersonalRequestsCustomizeViewController

- (HUPersonalRequestsCustomizeViewController)initWithLocationDevice:(id)device home:(id)home
{
  deviceCopy = device;
  homeCopy = home;
  if (!deviceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUPersonalRequestsCustomizeViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"locationDevice"}];
  }

  v9 = objc_alloc(MEMORY[0x277D14C98]);
  currentUser = [homeCopy currentUser];
  v11 = [v9 initWithHome:homeCopy user:currentUser nameStyle:0];

  name = [deviceCopy name];
  v19 = HULocalizedStringWithFormat(@"HUPersonalRequestsCustomize_Detail", @"%@", v13, v14, v15, v16, v17, v18, name);

  name2 = [deviceCopy name];
  v27 = HULocalizedStringWithFormat(@"HUPersonalRequestsCustomize_Detail", @"%@", v21, v22, v23, v24, v25, v26, name2);

  v28 = [[HUPersonalRequestsEditorTableViewController alloc] initWithUserItem:v11 onlyShowDeviceSwitches:1];
  v29 = _HULocalizedStringWithDefaultValue(@"HUPersonalContentCustomize_Title", @"HUPersonalContentCustomize_Title", 1);
  v42.receiver = self;
  v42.super_class = HUPersonalRequestsCustomizeViewController;
  v30 = [(HUItemTableOBWelcomeController *)&v42 initWithTitle:v29 detailText:v27 icon:0 contentLayout:2 itemTableViewController:v28];

  if (v30)
  {
    objc_storeStrong(&v30->_home, home);
    if ([deviceCopy isCurrentDevice])
    {
      v31 = [MEMORY[0x277D75418] hu_modelAndNetworkLocalizedStringKeyForKey:@"HUPersonalContentCustomize_ThisDevice_FinePrint"];
      v32 = _HULocalizedStringWithDefaultValue(v31, v31, 1);
      finePrintFooterText = v30->_finePrintFooterText;
      v30->_finePrintFooterText = v32;
    }

    else
    {
      v34 = MEMORY[0x277CCACA8];
      v35 = HULocalizedWiFiString(@"HUPersonalContentCustomize_OtherDevice_FinePrint");
      v41 = 0;
      name3 = [deviceCopy name];
      v37 = [v34 stringWithValidatedFormat:v35 validFormatSpecifiers:@"%@" error:&v41, name3];
      v31 = v41;
      v38 = v30->_finePrintFooterText;
      v30->_finePrintFooterText = v37;

      if (!v30->_finePrintFooterText)
      {
        NSLog(&cfstr_CouldnTLocaliz.isa, @"HUPersonalContentCustomize_OtherDevice_FinePrint", v31);
      }
    }
  }

  return v30;
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
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Turning on Personal Requests for all multi user capable devices", &v15, 0xCu);
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

  prDevicesModule = [v11 prDevicesModule];

  [prDevicesModule turnOnPersonalRequestsForAllVoiceRecognitionCapablePersonalRequestsDevices];
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (void)_dontSetupPersonalRequests:(id)requests
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
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: Turning off all Personal Requests devices", buf, 0xCu);
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

  prDevicesModule = [v14 prDevicesModule];

  [prDevicesModule setPersonalRequestsDevices:MEMORY[0x277CBEBF8]];
  delegate = [(HUPersonalRequestsCustomizeViewController *)self delegate];
  v18 = @"HUPersonalRequestsOnboardingKey_UserInput";
  v19 = &unk_282490B90;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v17];
}

- (void)_setupPersonalRequests:(id)requests
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

  delegate = [(HUPersonalRequestsCustomizeViewController *)self delegate];
  v9 = @"HUPersonalRequestsOnboardingKey_UserInput";
  v10 = &unk_282490BA8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (void)viewDidLoad
{
  v34 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HUPersonalRequestsCustomizeViewController;
  [(HUItemTableOBWelcomeController *)&v29 viewDidLoad];
  headerView = [(HUPersonalRequestsCustomizeViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492D38];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUPersonalRequestsCustomizeViewController *)self setUsePRButton:boldButton];

  usePRButton = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  [usePRButton setTranslatesAutoresizingMaskIntoConstraints:0];

  usePRButton2 = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUPersonalRequestsCustomize_ContinueButton", @"HUPersonalRequestsCustomize_ContinueButton", 1);
  [usePRButton2 setTitle:v9 forState:0];

  usePRButton3 = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  [usePRButton3 setAccessibilityIdentifier:@"Home.OnboardingView.PersonalRequests.ContinueButton"];

  usePRButton4 = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  [usePRButton4 addTarget:self action:sel__setupPersonalRequests_ forControlEvents:64];

  buttonTray = [(HUPersonalRequestsCustomizeViewController *)self buttonTray];
  usePRButton5 = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  [buttonTray addButton:usePRButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUPersonalRequestsCustomizeViewController *)self setCustomizeButton:linkButton];

  customizeButton = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  [customizeButton setTranslatesAutoresizingMaskIntoConstraints:0];

  customizeButton2 = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HUPersonalContentCustomize_DoNotUseButton", @"HUPersonalContentCustomize_DoNotUseButton", 1);
  [customizeButton2 setTitle:v17 forState:0];

  customizeButton3 = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  [customizeButton3 setAccessibilityIdentifier:@"Home.OnboardingView.PersonalRequests.DoNotUseButton"];

  customizeButton4 = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  [customizeButton4 addTarget:self action:sel__dontSetupPersonalRequests_ forControlEvents:64];

  buttonTray2 = [(HUPersonalRequestsCustomizeViewController *)self buttonTray];
  customizeButton5 = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  [buttonTray2 addButton:customizeButton5];

  buttonTray3 = [(HUPersonalRequestsCustomizeViewController *)self buttonTray];
  finePrintFooterText = [(HUPersonalRequestsCustomizeViewController *)self finePrintFooterText];
  [buttonTray3 setCaptionText:finePrintFooterText];

  [(HUPersonalRequestsCustomizeViewController *)self setModalInPresentation:1];
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
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: PRCVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUPersonalRequestsCustomizeViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUPersonalRequestsCustomizeViewController *)self isMovingFromParentViewController])
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

    delegate = [(HUPersonalRequestsCustomizeViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end