@interface HUHomeAssistantDevicesUnsupportedLanguageViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeAssistantDevicesUnsupportedLanguageViewController)initWithHomeAssistantDevicesHavingLanguageMismatch:(id)a3 home:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_continue;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeAssistantDevicesUnsupportedLanguageViewController

- (HUHomeAssistantDevicesUnsupportedLanguageViewController)initWithHomeAssistantDevicesHavingLanguageMismatch:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = MEMORY[0x277CEF368];
  v9 = a4;
  v10 = [v8 sharedPreferences];
  v11 = [v10 languageCode];

  v12 = [MEMORY[0x277CEF2D8] sharedInstance];
  v13 = [v12 localizedNameForSiriLanguage:v11 inDisplayLanguage:0];

  v14 = [v9 hf_numberOfHomePods];
  if (v14 == [v7 count])
  {
    if (v14 == 1)
    {
      v21 = _HULocalizedStringWithDefaultValue(@"HUSingleDeviceLanguageNotChanged_Title", @"HUSingleDeviceLanguageNotChanged_Title", 1);
      HULocalizedStringWithFormat(@"HUSingleDeviceLanguageNotChanged_Detail", @"%@", v22, v23, v24, v25, v26, v27, v13);
    }

    else
    {
      v21 = _HULocalizedStringWithDefaultValue(@"HUMultipleDevicesLanguageNotChanged_Title", @"HUMultipleDevicesLanguageNotChanged_Title", 1);
      HULocalizedStringWithFormat(@"HUMultipleDevicesLanguageNotChanged_Detail", @"%@", v29, v30, v31, v32, v33, v34, v13);
    }
    v28 = ;
  }

  else
  {
    v28 = HULocalizedStringWithFormat(@"HULanguageUnsupported_Detail", @"%@", v15, v16, v17, v18, v19, v20, v13);
    v21 = _HULocalizedStringWithDefaultValue(@"HULanguageUnsupported_Title", @"HULanguageUnsupported_Title", 1);
  }

  v38.receiver = self;
  v38.super_class = HUHomeAssistantDevicesUnsupportedLanguageViewController;
  v35 = [(OBTableWelcomeController *)&v38 initWithTitle:v21 detailText:v28 icon:0];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_homeAssistantDevicesHavingLanguageMismatch, a3);
  }

  return v36;
}

- (void)_continue
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v6 = MEMORY[0x277CBEB38];
  v10 = @"HULanguageOnboardingKey_UnsupportedLanguage_UserInput";
  v11 = &unk_282490F08;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v6 dictionaryWithDictionary:v7];

  v9 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self delegate];
  [v9 viewController:self didFinishWithConfigurationResults:v8];
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = HUHomeAssistantDevicesUnsupportedLanguageViewController;
  [(OBTableWelcomeController *)&v19 loadView];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setDelegate:self];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setDataSource:self];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setAllowsSelectionDuringEditing:1];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setAllowsMultipleSelection:0];

  v10 = *MEMORY[0x277D76F30];
  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 setRowHeight:v10];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 setAlwaysBounceVertical:0];

  v13 = [(OBTableWelcomeController *)self tableView];
  v14 = [v13 heightAnchor];
  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 contentSize];
  v17 = [v14 constraintEqualToConstant:v16];
  [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self setHeightAnchor:v17];

  v18 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self heightAnchor];
  [v18 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self view];
  [v3 layoutIfNeeded];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 contentSize];
  v6 = v5;
  v7 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self heightAnchor];
  [v7 setConstant:v6];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setBackgroundColor:v8];

  v10.receiver = self;
  v10.super_class = HUHomeAssistantDevicesUnsupportedLanguageViewController;
  [(OBTableWelcomeController *)&v10 viewDidLayoutSubviews];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self homeAssistantDevicesHavingLanguageMismatch:a3];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"language_code_cell_identifier"];
  if (!v7)
  {
    v7 = [[HUTitleDescriptionCell alloc] initWithStyle:0 reuseIdentifier:@"language_code_cell_identifier"];
  }

  if ([v6 row] >= 1)
  {
    v8 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self homeAssistantDevicesHavingLanguageMismatch];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row") - 1}];

    v10 = [MEMORY[0x277D146E8] sharedDispatcher];
    v11 = [v10 homeManager];
    if ([v11 hasOptedToHH2])
    {
    }

    else
    {
      v12 = [v9 accessory];
      v13 = [v12 hf_isSiriEndpoint];

      if (!v13)
      {
        v14 = [v9 hf_settingsAdapterManager];
        v16 = [v14 adapterForIdentifier:*MEMORY[0x277D13338]];
        objc_opt_class();
        v17 = v16;
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        v15 = [v19 selectedLanguageOption];

        goto LABEL_12;
      }
    }

    v14 = [v9 hf_siriLanguageOptionsManager];
    v15 = [v14 selectedLanguageOption];
LABEL_12:

    v20 = [v15 recognitionLanguage];
    v21 = [v9 hf_displayName];
    [(HUTitleDescriptionCell *)v7 setTitleText:v21];

    if (v20)
    {
      v22 = [MEMORY[0x277CEF2D8] sharedInstance];
      v23 = [v22 localizedNameForSiriLanguage:v20 inDisplayLanguage:0];

      [(HUTitleDescriptionCell *)v7 setDescriptionText:v23];
    }
  }

  [(HUTitleDescriptionCell *)v7 setSelectionStyle:0];
  [(HUIconCell *)v7 setHideIcon:1];

  return v7;
}

- (void)viewDidLoad
{
  v21 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HUHomeAssistantDevicesUnsupportedLanguageViewController;
  [(OBTableWelcomeController *)&v16 viewDidLoad];
  v4 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282492DD8];

  [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self setModalInPresentation:1];
  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self setContinueButton:v6];

  v7 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.LanguageSetup.Unsupported.ContinueButton"];

  v11 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  [v11 addTarget:self action:sel__continue forControlEvents:64];

  v12 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self buttonTray];
  v13 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  [v12 addButton:v13];

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HADULVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUHomeAssistantDevicesUnsupportedLanguageViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self isMovingFromParentViewController])
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

    v7 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end