@interface HUHomePersonalIdentityDeviceConfigurationViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomePersonalIdentityDeviceConfigurationViewController)initWithMediaProfileAndLanguageInfo:(id)a3;
- (id)_configureTitleDescriptionContentViewForCell:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancelLanguageChange;
- (void)_changeLanguage;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomePersonalIdentityDeviceConfigurationViewController

- (HUHomePersonalIdentityDeviceConfigurationViewController)initWithMediaProfileAndLanguageInfo:(id)a3
{
  v4 = a3;
  v5 = HULocalizedModelString(@"HULanguagePersonalIdentityDevice_LanguageMismatch_Title");
  v6 = HULocalizedModelString(@"HULanguagePersonalIdentityDevice_LanguageMultipleMismatch_Detail");
  v7 = _HULocalizedStringWithDefaultValue(@"HULanguagePersonalIdentityDevice_LanguageMismatch_Title", @"HULanguagePersonalIdentityDevice_LanguageMismatch_Title", 1);

  v8 = HUSensitiveLocalizedModelString(@"HULanguagePersonalIdentityDevice_LanguageMultipleMismatch_Detail");

  v14.receiver = self;
  v14.super_class = HUHomePersonalIdentityDeviceConfigurationViewController;
  v9 = [(OBTableWelcomeController *)&v14 initWithTitle:v7 detailText:v8 icon:0];
  v10 = v9;
  if (v9)
  {
    v9->_selectedLanguageIndex = 0x7FFFFFFFFFFFFFFFLL;
    v11 = [HUHomeFeatureOnboardingUtilities processLanguageAndMediaProfileInfo:v4];
    mediaProfilesAndLanguageInfoList = v10->_mediaProfilesAndLanguageInfoList;
    v10->_mediaProfilesAndLanguageInfoList = v11;
  }

  return v10;
}

- (void)_changeLanguage
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  if ([(HUHomePersonalIdentityDeviceConfigurationViewController *)self selectedLanguageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v7;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "%@ Language selection unavailable", buf, 0xCu);
    }
  }

  else
  {
    v8 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self mediaProfilesAndLanguageInfoList];
    v6 = [v8 objectAtIndexedSubscript:{-[HUHomePersonalIdentityDeviceConfigurationViewController selectedLanguageIndex](self, "selectedLanguageIndex")}];

    v9 = [v6 objectForKey:@"languageCodeKey"];
    v10 = HFLogForCategory();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        v19 = self;
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@: Changing Personal Identity Device Language To %@", buf, 0x20u);
      }

      v11 = objc_alloc_init(MEMORY[0x277CEF3A8]);
      [v11 setLanguage:v9];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v15;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%@ Language code unavailable", buf, 0xCu);
    }
  }

  v13 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self delegate];
  v16 = @"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput";
  v17 = &unk_2824913D0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v13 viewController:self didFinishWithConfigurationResults:v14];
}

- (void)_cancelLanguageChange
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v6 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self delegate];
  v8 = @"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput";
  v9 = &unk_2824913E8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v6 viewController:self didFinishWithConfigurationResults:v7];
}

- (void)loadView
{
  v27.receiver = self;
  v27.super_class = HUHomePersonalIdentityDeviceConfigurationViewController;
  [(OBTableWelcomeController *)&v27 loadView];
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
  [(HUHomePersonalIdentityDeviceConfigurationViewController *)self setHeightAnchor:v17];

  v18 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self heightAnchor];
  [v18 setActive:1];

  v19 = [(OBTableWelcomeController *)self tableView];
  [v19 separatorInset];
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(OBTableWelcomeController *)self tableView];
  [v26 setSeparatorInset:{v21, v23, v25, 28.0}];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self view];
  [v3 layoutIfNeeded];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 contentSize];
  v6 = v5;
  v7 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self heightAnchor];
  [v7 setConstant:v6];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setBackgroundColor:v8];

  v10.receiver = self;
  v10.super_class = HUHomePersonalIdentityDeviceConfigurationViewController;
  [(OBTableWelcomeController *)&v10 viewDidLayoutSubviews];
}

- (id)_configureTitleDescriptionContentViewForCell:(id)a3
{
  v4 = a3;
  v5 = [v4 contentView];
  v6 = [v5 subviews];
  if ([v6 count])
  {
    v7 = [v4 contentView];
    v8 = [v7 subviews];
    v9 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = v10;
  if (!v12)
  {
    v14 = [HUTitleDescriptionContentView alloc];
    v13 = [(HUTitleDescriptionContentView *)v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(HUTitleDescriptionContentView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v4 contentView];
    [v15 addSubview:v13];

    v16 = [(HUTitleDescriptionContentView *)v13 leadingAnchor];
    v17 = [v4 contentView];
    v18 = [v17 leadingAnchor];
    v19 = [(OBTableWelcomeController *)self tableView];
    [v19 separatorInset];
    v21 = [v16 constraintEqualToAnchor:v18 constant:v20];
    [v21 setActive:1];

    v22 = [(HUTitleDescriptionContentView *)v13 topAnchor];
    v23 = [v4 contentView];
    v24 = [v23 topAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:5.0];
    [v25 setActive:1];

    v26 = [(HUTitleDescriptionContentView *)v13 bottomAnchor];
    v27 = [v4 contentView];
    v28 = [v27 bottomAnchor];
    v29 = [v26 constraintEqualToAnchor:v28 constant:-5.0];
    [v29 setActive:1];

    v30 = [(HUTitleDescriptionContentView *)v13 trailingAnchor];
    v31 = [v4 contentView];
    v32 = [v31 trailingAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    [v33 setActive:1];
  }

  return v13;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self mediaProfilesAndLanguageInfoList:a3];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v9 languageCode];
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = [v11 countryCode];
  v13 = [v8 stringWithFormat:@"%@-%@", v10, v12];

  v14 = [v6 dequeueReusableCellWithIdentifier:@"language_code_cell_identifier"];
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"language_code_cell_identifier"];
  }

  [v14 setSelectionStyle:0];
  v15 = [v7 row];
  v16 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self _configureTitleDescriptionContentViewForCell:v14];
  if (v15)
  {
    v54 = v6;
    v52 = self;
    v17 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self mediaProfilesAndLanguageInfoList];
    v53 = v7;
    v18 = [v17 objectAtIndex:{objc_msgSend(v7, "row") - 1}];

    v19 = [v18 objectForKey:@"mediaProfilesKey"];
    v20 = [v18 objectForKey:@"localizedLanguageNameKey"];
    [v16 setTitleText:v20];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v22)
    {
      v23 = v22;
      v49 = v18;
      v50 = v16;
      v51 = v13;
      v24 = 0;
      v25 = *v56;
      v26 = &stru_2823E0EE8;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v56 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v55 + 1) + 8 * i);
          if ([(__CFString *)v26 length])
          {
            v29 = [(__CFString *)v26 stringByAppendingString:@", "];

            v26 = v29;
          }

          v30 = v26;
          v31 = [v28 hf_displayName];
          v26 = [(__CFString *)v26 stringByAppendingString:v31];

          if (v24)
          {
            v16 = v50;
            v13 = v51;
            v18 = v49;
            v32 = 2;
            goto LABEL_18;
          }

          v24 = 1;
        }

        v23 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
        v24 = 1;
        if (v23)
        {
          continue;
        }

        break;
      }

      v32 = 1;
      v16 = v50;
      v13 = v51;
      v18 = v49;
    }

    else
    {
      v32 = 0;
      v26 = &stru_2823E0EE8;
    }

LABEL_18:

    v7 = v53;
    if (v32 < [v21 count])
    {
      v36 = [v21 count];
      v43 = HULocalizedStringWithFormat(@"HULanguageCount_Detail", @"%lu", v37, v38, v39, v40, v41, v42, v36 - v32);
      v44 = [(__CFString *)v26 stringByAppendingString:v43];

      v26 = v44;
    }

    [v16 setDescriptionText:v26];
    v45 = [MEMORY[0x277D75348] lightGrayColor];
    [v16 setDescriptionTextColor:v45];

    v46 = [v18 objectForKey:@"languageCodeKey"];
    if ([v46 isEqualToString:v13])
    {
      -[HUHomePersonalIdentityDeviceConfigurationViewController setSelectedLanguageIndex:](v52, "setSelectedLanguageIndex:", [v53 row] - 1);
      v47 = 3;
    }

    else
    {
      v47 = 0;
    }

    [v14 setAccessoryType:v47];

    v6 = v54;
  }

  else
  {
    v33 = _HULocalizedStringWithDefaultValue(@"HULanguageSupportedLangugages_TableHeader_Title", @"HULanguageSupportedLangugages_TableHeader_Title", 1);
    [v16 setTitleText:v33];

    v34 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v16 setTitleFont:v34];

    v35 = [MEMORY[0x277D75348] systemGrayColor];
    [v16 setTitleTextColor:v35];
  }

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v6 row] >= 1)
  {
    v7 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self selectedLanguageIndex]+ 1;
    v8 = [v11 cellForRowAtIndexPath:v6];
    [v8 setAccessoryType:3];
    -[HUHomePersonalIdentityDeviceConfigurationViewController setSelectedLanguageIndex:](self, "setSelectedLanguageIndex:", [v6 row] - 1);
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 != [v6 row])
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:0];
      v10 = [v11 cellForRowAtIndexPath:v9];

      [v10 setAccessoryType:0];
    }
  }
}

- (void)viewDidLoad
{
  v32 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = HUHomePersonalIdentityDeviceConfigurationViewController;
  [(OBTableWelcomeController *)&v27 viewDidLoad];
  v4 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282492EC8];

  [(HUHomePersonalIdentityDeviceConfigurationViewController *)self setModalInPresentation:1];
  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUHomePersonalIdentityDeviceConfigurationViewController *)self setChangeLanguageButton:v6];

  v7 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.LanguageSetUp.PersonalIdentity.ContinueButton"];

  v11 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [v11 addTarget:self action:sel__changeLanguage forControlEvents:64];

  v12 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self buttonTray];
  v13 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [v12 addButton:v13];

  v14 = [MEMORY[0x277D37650] linkButton];
  [(HUHomePersonalIdentityDeviceConfigurationViewController *)self setCancelButton:v14];

  v15 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self cancelButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self cancelButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HULanguageDontRecognizeVoiceButton_Title", @"HULanguageDontRecognizeVoiceButton_Title", 1);
  [v16 setTitle:v17 forState:0];

  v18 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [v18 setAccessibilityIdentifier:@"Home.OnboardingView.LanguageSetUp.PersonalIdentity.DontRecognizeVoiceButton"];

  v19 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self cancelButton];
  [v19 addTarget:self action:sel__cancelLanguageChange forControlEvents:64];

  v20 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self buttonTray];
  v21 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self cancelButton];
  [v20 addButton:v21];

  v22 = _HULocalizedStringWithDefaultValue(@"HULanguagePersonalIdentityDevice_LanguageMismatch_FinePrint", @"HULanguagePersonalIdentityDevice_LanguageMismatch_FinePrint", 1);
  v23 = _HULocalizedStringWithDefaultValue(@"HULanguagePersonalIdentityDevice_SiriEnabledAccessories_LanguageMismatch_FinePrint", @"HULanguagePersonalIdentityDevice_SiriEnabledAccessories_LanguageMismatch_FinePrint", 1);

  v24 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self buttonTray];
  [v24 setCaptionText:v23];

  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = NSStringFromSelector(a2);
    *buf = 138412546;
    v29 = self;
    v30 = 2112;
    v31 = v26;
    _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HPIDCVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUHomePersonalIdentityDeviceConfigurationViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUHomePersonalIdentityDeviceConfigurationViewController *)self isMovingFromParentViewController])
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

    v7 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end