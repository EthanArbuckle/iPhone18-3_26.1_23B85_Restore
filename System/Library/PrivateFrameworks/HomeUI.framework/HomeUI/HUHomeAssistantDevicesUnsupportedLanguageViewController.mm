@interface HUHomeAssistantDevicesUnsupportedLanguageViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeAssistantDevicesUnsupportedLanguageViewController)initWithHomeAssistantDevicesHavingLanguageMismatch:(id)mismatch home:(id)home;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_continue;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeAssistantDevicesUnsupportedLanguageViewController

- (HUHomeAssistantDevicesUnsupportedLanguageViewController)initWithHomeAssistantDevicesHavingLanguageMismatch:(id)mismatch home:(id)home
{
  mismatchCopy = mismatch;
  v8 = MEMORY[0x277CEF368];
  homeCopy = home;
  sharedPreferences = [v8 sharedPreferences];
  languageCode = [sharedPreferences languageCode];

  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  v13 = [mEMORY[0x277CEF2D8] localizedNameForSiriLanguage:languageCode inDisplayLanguage:0];

  hf_numberOfHomePods = [homeCopy hf_numberOfHomePods];
  if (hf_numberOfHomePods == [mismatchCopy count])
  {
    if (hf_numberOfHomePods == 1)
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
    objc_storeStrong(&v35->_homeAssistantDevicesHavingLanguageMismatch, mismatch);
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
    selfCopy = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v6 = MEMORY[0x277CBEB38];
  v10 = @"HULanguageOnboardingKey_UnsupportedLanguage_UserInput";
  v11 = &unk_282490F08;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v6 dictionaryWithDictionary:v7];

  delegate = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = HUHomeAssistantDevicesUnsupportedLanguageViewController;
  [(OBTableWelcomeController *)&v19 loadView];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDataSource:self];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setAllowsSelectionDuringEditing:1];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setAllowsMultipleSelection:0];

  v10 = *MEMORY[0x277D76F30];
  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setRowHeight:v10];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setAlwaysBounceVertical:0];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  heightAnchor = [tableView8 heightAnchor];
  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 contentSize];
  v17 = [heightAnchor constraintEqualToConstant:v16];
  [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self setHeightAnchor:v17];

  heightAnchor2 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self heightAnchor];
  [heightAnchor2 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  view = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self view];
  [view layoutIfNeeded];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView contentSize];
  v6 = v5;
  heightAnchor = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self heightAnchor];
  [heightAnchor setConstant:v6];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setBackgroundColor:clearColor];

  v10.receiver = self;
  v10.super_class = HUHomeAssistantDevicesUnsupportedLanguageViewController;
  [(OBTableWelcomeController *)&v10 viewDidLayoutSubviews];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self homeAssistantDevicesHavingLanguageMismatch:view];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"language_code_cell_identifier"];
  if (!v7)
  {
    v7 = [[HUTitleDescriptionCell alloc] initWithStyle:0 reuseIdentifier:@"language_code_cell_identifier"];
  }

  if ([pathCopy row] >= 1)
  {
    homeAssistantDevicesHavingLanguageMismatch = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self homeAssistantDevicesHavingLanguageMismatch];
    v9 = [homeAssistantDevicesHavingLanguageMismatch objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row") - 1}];

    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    homeManager = [mEMORY[0x277D146E8] homeManager];
    if ([homeManager hasOptedToHH2])
    {
    }

    else
    {
      accessory = [v9 accessory];
      hf_isSiriEndpoint = [accessory hf_isSiriEndpoint];

      if (!hf_isSiriEndpoint)
      {
        hf_settingsAdapterManager = [v9 hf_settingsAdapterManager];
        v16 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13338]];
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

        selectedLanguageOption = [v19 selectedLanguageOption];

        goto LABEL_12;
      }
    }

    hf_settingsAdapterManager = [v9 hf_siriLanguageOptionsManager];
    selectedLanguageOption = [hf_settingsAdapterManager selectedLanguageOption];
LABEL_12:

    recognitionLanguage = [selectedLanguageOption recognitionLanguage];
    hf_displayName = [v9 hf_displayName];
    [(HUTitleDescriptionCell *)v7 setTitleText:hf_displayName];

    if (recognitionLanguage)
    {
      mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
      v23 = [mEMORY[0x277CEF2D8] localizedNameForSiriLanguage:recognitionLanguage inDisplayLanguage:0];

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
  headerView = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492DD8];

  [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self setModalInPresentation:1];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self setContinueButton:boldButton];

  continueButton = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  [continueButton setTranslatesAutoresizingMaskIntoConstraints:0];

  continueButton2 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
  [continueButton2 setTitle:v9 forState:0];

  continueButton3 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  [continueButton3 setAccessibilityIdentifier:@"Home.OnboardingView.LanguageSetup.Unsupported.ContinueButton"];

  continueButton4 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  [continueButton4 addTarget:self action:sel__continue forControlEvents:64];

  buttonTray = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self buttonTray];
  continueButton5 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self continueButton];
  [buttonTray addButton:continueButton5];

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HADULVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUHomeAssistantDevicesUnsupportedLanguageViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self isMovingFromParentViewController])
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

    delegate = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end