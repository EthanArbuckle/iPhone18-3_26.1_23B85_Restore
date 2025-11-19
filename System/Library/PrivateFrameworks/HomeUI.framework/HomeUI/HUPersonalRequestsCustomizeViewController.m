@interface HUPersonalRequestsCustomizeViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUPersonalRequestsCustomizeViewController)initWithLocationDevice:(id)a3 home:(id)a4;
- (id)hu_preloadContent;
- (void)_dontSetupPersonalRequests:(id)a3;
- (void)_setupPersonalRequests:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUPersonalRequestsCustomizeViewController

- (HUPersonalRequestsCustomizeViewController)initWithLocationDevice:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"HUPersonalRequestsCustomizeViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"locationDevice"}];
  }

  v9 = objc_alloc(MEMORY[0x277D14C98]);
  v10 = [v8 currentUser];
  v11 = [v9 initWithHome:v8 user:v10 nameStyle:0];

  v12 = [v7 name];
  v19 = HULocalizedStringWithFormat(@"HUPersonalRequestsCustomize_Detail", @"%@", v13, v14, v15, v16, v17, v18, v12);

  v20 = [v7 name];
  v27 = HULocalizedStringWithFormat(@"HUPersonalRequestsCustomize_Detail", @"%@", v21, v22, v23, v24, v25, v26, v20);

  v28 = [[HUPersonalRequestsEditorTableViewController alloc] initWithUserItem:v11 onlyShowDeviceSwitches:1];
  v29 = _HULocalizedStringWithDefaultValue(@"HUPersonalContentCustomize_Title", @"HUPersonalContentCustomize_Title", 1);
  v42.receiver = self;
  v42.super_class = HUPersonalRequestsCustomizeViewController;
  v30 = [(HUItemTableOBWelcomeController *)&v42 initWithTitle:v29 detailText:v27 icon:0 contentLayout:2 itemTableViewController:v28];

  if (v30)
  {
    objc_storeStrong(&v30->_home, a4);
    if ([v7 isCurrentDevice])
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
      v36 = [v7 name];
      v37 = [v34 stringWithValidatedFormat:v35 validFormatSpecifiers:@"%@" error:&v41, v36];
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

  v12 = [v11 prDevicesModule];

  [v12 turnOnPersonalRequestsForAllVoiceRecognitionCapablePersonalRequestsDevices];
  v13 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v13;
}

- (void)_dontSetupPersonalRequests:(id)a3
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
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: Turning off all Personal Requests devices", buf, 0xCu);
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

  v15 = [v14 prDevicesModule];

  [v15 setPersonalRequestsDevices:MEMORY[0x277CBEBF8]];
  v16 = [(HUPersonalRequestsCustomizeViewController *)self delegate];
  v18 = @"HUPersonalRequestsOnboardingKey_UserInput";
  v19 = &unk_282490B90;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v16 viewController:self didFinishWithConfigurationResults:v17];
}

- (void)_setupPersonalRequests:(id)a3
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

  v7 = [(HUPersonalRequestsCustomizeViewController *)self delegate];
  v9 = @"HUPersonalRequestsOnboardingKey_UserInput";
  v10 = &unk_282490BA8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v7 viewController:self didFinishWithConfigurationResults:v8];
}

- (void)viewDidLoad
{
  v34 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HUPersonalRequestsCustomizeViewController;
  [(HUItemTableOBWelcomeController *)&v29 viewDidLoad];
  v4 = [(HUPersonalRequestsCustomizeViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282492D38];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUPersonalRequestsCustomizeViewController *)self setUsePRButton:v6];

  v7 = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUPersonalRequestsCustomize_ContinueButton", @"HUPersonalRequestsCustomize_ContinueButton", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.PersonalRequests.ContinueButton"];

  v11 = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  [v11 addTarget:self action:sel__setupPersonalRequests_ forControlEvents:64];

  v12 = [(HUPersonalRequestsCustomizeViewController *)self buttonTray];
  v13 = [(HUPersonalRequestsCustomizeViewController *)self usePRButton];
  [v12 addButton:v13];

  v14 = [MEMORY[0x277D37650] linkButton];
  [(HUPersonalRequestsCustomizeViewController *)self setCustomizeButton:v14];

  v15 = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HUPersonalContentCustomize_DoNotUseButton", @"HUPersonalContentCustomize_DoNotUseButton", 1);
  [v16 setTitle:v17 forState:0];

  v18 = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  [v18 setAccessibilityIdentifier:@"Home.OnboardingView.PersonalRequests.DoNotUseButton"];

  v19 = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  [v19 addTarget:self action:sel__dontSetupPersonalRequests_ forControlEvents:64];

  v20 = [(HUPersonalRequestsCustomizeViewController *)self buttonTray];
  v21 = [(HUPersonalRequestsCustomizeViewController *)self customizeButton];
  [v20 addButton:v21];

  v22 = [(HUPersonalRequestsCustomizeViewController *)self buttonTray];
  v23 = [(HUPersonalRequestsCustomizeViewController *)self finePrintFooterText];
  [v22 setCaptionText:v23];

  [(HUPersonalRequestsCustomizeViewController *)self setModalInPresentation:1];
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
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: PRCVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUPersonalRequestsCustomizeViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUPersonalRequestsCustomizeViewController *)self isMovingFromParentViewController])
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

    v7 = [(HUPersonalRequestsCustomizeViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end