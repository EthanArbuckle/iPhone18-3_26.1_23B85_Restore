@interface HUHomePersonalIdentityDeviceConfigurationViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomePersonalIdentityDeviceConfigurationViewController)initWithMediaProfileAndLanguageInfo:(id)info;
- (id)_configureTitleDescriptionContentViewForCell:(id)cell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancelLanguageChange;
- (void)_changeLanguage;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomePersonalIdentityDeviceConfigurationViewController

- (HUHomePersonalIdentityDeviceConfigurationViewController)initWithMediaProfileAndLanguageInfo:(id)info
{
  infoCopy = info;
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
    v11 = [HUHomeFeatureOnboardingUtilities processLanguageAndMediaProfileInfo:infoCopy];
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
    selfCopy2 = self;
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
      selfCopy2 = v7;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "%@ Language selection unavailable", buf, 0xCu);
    }
  }

  else
  {
    mediaProfilesAndLanguageInfoList = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self mediaProfilesAndLanguageInfoList];
    v6 = [mediaProfilesAndLanguageInfoList objectAtIndexedSubscript:{-[HUHomePersonalIdentityDeviceConfigurationViewController selectedLanguageIndex](self, "selectedLanguageIndex")}];

    v9 = [v6 objectForKey:@"languageCodeKey"];
    v10 = HFLogForCategory();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        selfCopy2 = self;
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
      selfCopy2 = v15;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%@ Language code unavailable", buf, 0xCu);
    }
  }

  delegate = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self delegate];
  v16 = @"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput";
  v17 = &unk_2824913D0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v14];
}

- (void)_cancelLanguageChange
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  delegate = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self delegate];
  v8 = @"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput";
  v9 = &unk_2824913E8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v7];
}

- (void)loadView
{
  v27.receiver = self;
  v27.super_class = HUHomePersonalIdentityDeviceConfigurationViewController;
  [(OBTableWelcomeController *)&v27 loadView];
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
  [(HUHomePersonalIdentityDeviceConfigurationViewController *)self setHeightAnchor:v17];

  heightAnchor2 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self heightAnchor];
  [heightAnchor2 setActive:1];

  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 separatorInset];
  v21 = v20;
  v23 = v22;
  v25 = v24;

  tableView11 = [(OBTableWelcomeController *)self tableView];
  [tableView11 setSeparatorInset:{v21, v23, v25, 28.0}];
}

- (void)viewDidLayoutSubviews
{
  view = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self view];
  [view layoutIfNeeded];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView contentSize];
  v6 = v5;
  heightAnchor = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self heightAnchor];
  [heightAnchor setConstant:v6];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setBackgroundColor:clearColor];

  v10.receiver = self;
  v10.super_class = HUHomePersonalIdentityDeviceConfigurationViewController;
  [(OBTableWelcomeController *)&v10 viewDidLayoutSubviews];
}

- (id)_configureTitleDescriptionContentViewForCell:(id)cell
{
  cellCopy = cell;
  contentView = [cellCopy contentView];
  subviews = [contentView subviews];
  if ([subviews count])
  {
    contentView2 = [cellCopy contentView];
    subviews2 = [contentView2 subviews];
    v9 = [subviews2 objectAtIndexedSubscript:0];
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
    contentView3 = [cellCopy contentView];
    [contentView3 addSubview:v13];

    leadingAnchor = [(HUTitleDescriptionContentView *)v13 leadingAnchor];
    contentView4 = [cellCopy contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView separatorInset];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v20];
    [v21 setActive:1];

    topAnchor = [(HUTitleDescriptionContentView *)v13 topAnchor];
    contentView5 = [cellCopy contentView];
    topAnchor2 = [contentView5 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    [v25 setActive:1];

    bottomAnchor = [(HUTitleDescriptionContentView *)v13 bottomAnchor];
    contentView6 = [cellCopy contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    [v29 setActive:1];

    trailingAnchor = [(HUTitleDescriptionContentView *)v13 trailingAnchor];
    contentView7 = [cellCopy contentView];
    trailingAnchor2 = [contentView7 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v33 setActive:1];
  }

  return v13;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self mediaProfilesAndLanguageInfoList:view];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v60 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = MEMORY[0x277CCACA8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale2 countryCode];
  v13 = [v8 stringWithFormat:@"%@-%@", languageCode, countryCode];

  v14 = [viewCopy dequeueReusableCellWithIdentifier:@"language_code_cell_identifier"];
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"language_code_cell_identifier"];
  }

  [v14 setSelectionStyle:0];
  v15 = [pathCopy row];
  v16 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self _configureTitleDescriptionContentViewForCell:v14];
  if (v15)
  {
    v54 = viewCopy;
    selfCopy = self;
    mediaProfilesAndLanguageInfoList = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self mediaProfilesAndLanguageInfoList];
    v53 = pathCopy;
    v18 = [mediaProfilesAndLanguageInfoList objectAtIndex:{objc_msgSend(pathCopy, "row") - 1}];

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
          hf_displayName = [v28 hf_displayName];
          v26 = [(__CFString *)v26 stringByAppendingString:hf_displayName];

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

    pathCopy = v53;
    if (v32 < [v21 count])
    {
      v36 = [v21 count];
      v43 = HULocalizedStringWithFormat(@"HULanguageCount_Detail", @"%lu", v37, v38, v39, v40, v41, v42, v36 - v32);
      v44 = [(__CFString *)v26 stringByAppendingString:v43];

      v26 = v44;
    }

    [v16 setDescriptionText:v26];
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [v16 setDescriptionTextColor:lightGrayColor];

    v46 = [v18 objectForKey:@"languageCodeKey"];
    if ([v46 isEqualToString:v13])
    {
      -[HUHomePersonalIdentityDeviceConfigurationViewController setSelectedLanguageIndex:](selfCopy, "setSelectedLanguageIndex:", [v53 row] - 1);
      v47 = 3;
    }

    else
    {
      v47 = 0;
    }

    [v14 setAccessoryType:v47];

    viewCopy = v54;
  }

  else
  {
    v33 = _HULocalizedStringWithDefaultValue(@"HULanguageSupportedLangugages_TableHeader_Title", @"HULanguageSupportedLangugages_TableHeader_Title", 1);
    [v16 setTitleText:v33];

    v34 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v16 setTitleFont:v34];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [v16 setTitleTextColor:systemGrayColor];
  }

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy row] >= 1)
  {
    v7 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self selectedLanguageIndex]+ 1;
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [v8 setAccessoryType:3];
    -[HUHomePersonalIdentityDeviceConfigurationViewController setSelectedLanguageIndex:](self, "setSelectedLanguageIndex:", [pathCopy row] - 1);
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 != [pathCopy row])
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:0];
      v10 = [viewCopy cellForRowAtIndexPath:v9];

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
  headerView = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492EC8];

  [(HUHomePersonalIdentityDeviceConfigurationViewController *)self setModalInPresentation:1];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomePersonalIdentityDeviceConfigurationViewController *)self setChangeLanguageButton:boldButton];

  changeLanguageButton = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton setTranslatesAutoresizingMaskIntoConstraints:0];

  changeLanguageButton2 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
  [changeLanguageButton2 setTitle:v9 forState:0];

  changeLanguageButton3 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton3 setAccessibilityIdentifier:@"Home.OnboardingView.LanguageSetUp.PersonalIdentity.ContinueButton"];

  changeLanguageButton4 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton4 addTarget:self action:sel__changeLanguage forControlEvents:64];

  buttonTray = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self buttonTray];
  changeLanguageButton5 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [buttonTray addButton:changeLanguageButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUHomePersonalIdentityDeviceConfigurationViewController *)self setCancelButton:linkButton];

  cancelButton = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self cancelButton];
  [cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];

  cancelButton2 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self cancelButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HULanguageDontRecognizeVoiceButton_Title", @"HULanguageDontRecognizeVoiceButton_Title", 1);
  [cancelButton2 setTitle:v17 forState:0];

  changeLanguageButton6 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton6 setAccessibilityIdentifier:@"Home.OnboardingView.LanguageSetUp.PersonalIdentity.DontRecognizeVoiceButton"];

  cancelButton3 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self cancelButton];
  [cancelButton3 addTarget:self action:sel__cancelLanguageChange forControlEvents:64];

  buttonTray2 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self buttonTray];
  cancelButton4 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self cancelButton];
  [buttonTray2 addButton:cancelButton4];

  v22 = _HULocalizedStringWithDefaultValue(@"HULanguagePersonalIdentityDevice_LanguageMismatch_FinePrint", @"HULanguagePersonalIdentityDevice_LanguageMismatch_FinePrint", 1);
  v23 = _HULocalizedStringWithDefaultValue(@"HULanguagePersonalIdentityDevice_SiriEnabledAccessories_LanguageMismatch_FinePrint", @"HULanguagePersonalIdentityDevice_SiriEnabledAccessories_LanguageMismatch_FinePrint", 1);

  buttonTray3 = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self buttonTray];
  [buttonTray3 setCaptionText:v23];

  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v30 = 2112;
    v31 = v26;
    _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HPIDCVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUHomePersonalIdentityDeviceConfigurationViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUHomePersonalIdentityDeviceConfigurationViewController *)self isMovingFromParentViewController])
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

    delegate = [(HUHomePersonalIdentityDeviceConfigurationViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end