@interface HUPersonalRequestsSetupViewController
+ (id)_bulletImageWithSystemName:(id)name color:(id)color;
- (BOOL)_allPersonalRequestsDevicesSupportVoiceRecognition;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUPersonalRequestsSetupViewController)initWithHome:(id)home;
- (HUPersonalRequestsSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (HUPersonalRequestsSetupViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)hu_preloadContent;
- (unint64_t)_numberOfDevicesSupportingVR;
- (void)_customizePersonalRequests:(id)requests;
- (void)_dontUsePersonalRequests:(id)requests;
- (void)_setupPersonalRequestsItemInfrastructure;
- (void)_turnOnAllPersonalRequests:(id)requests;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUPersonalRequestsSetupViewController

- (HUPersonalRequestsSetupViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = _HULocalizedStringWithDefaultValue(@"HUPersonalContentSetup_Title", @"HUPersonalContentSetup_Title", 1);
  v9.receiver = self;
  v9.super_class = HUPersonalRequestsSetupViewController;
  v7 = [(HUPersonalRequestsSetupViewController *)&v9 initWithTitle:v6 detailText:0 icon:0 contentLayout:2];

  if (v7)
  {
    objc_storeStrong(&v7->_home, home);
  }

  return v7;
}

- (HUPersonalRequestsSetupViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPersonalRequestsSetupViewController.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HUPersonalRequestsSetupViewController initWithTitle:detailText:symbolName:contentLayout:]", v9}];

  return 0;
}

- (HUPersonalRequestsSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPersonalRequestsSetupViewController.m" lineNumber:65 description:{@"%s is unavailable; use %@ instead", "-[HUPersonalRequestsSetupViewController initWithTitle:detailText:icon:contentLayout:]", v9}];

  return 0;
}

+ (id)_bulletImageWithSystemName:(id)name color:(id)color
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277D75348];
  colorCopy = color;
  nameCopy = name;
  systemWhiteColor = [v6 systemWhiteColor];
  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:22.0];
  v11 = [v5 hu_systemImageNamed:nameCopy withBackgroundColor:colorCopy symbolColor:systemWhiteColor size:v10 cornerRadius:40.0 configuration:{40.0, 10.0}];

  return v11;
}

- (void)_setupPersonalRequestsItemInfrastructure
{
  v4 = objc_alloc(MEMORY[0x277D14C98]);
  home = [(HUPersonalRequestsSetupViewController *)self home];
  home2 = [(HUPersonalRequestsSetupViewController *)self home];
  currentUser = [home2 currentUser];
  v15 = [v4 initWithHome:home user:currentUser nameStyle:0];

  v8 = [[HUPersonalRequestsEditorItemManager alloc] initWithDelegate:self userItem:v15 onlyShowDeviceSwitches:0];
  [(HUPersonalRequestsSetupViewController *)self setPrEditorItemManager:v8];

  v9 = [HUPersonalRequestsDevicesModuleController alloc];
  prEditorItemManager = [(HUPersonalRequestsSetupViewController *)self prEditorItemManager];
  prDevicesModule = [prEditorItemManager prDevicesModule];
  v12 = [(HUPersonalRequestsDevicesModuleController *)v9 initWithModule:prDevicesModule host:self];
  [(HUPersonalRequestsSetupViewController *)self setPrDevicesModuleController:v12];

  prEditorItemManager2 = [(HUPersonalRequestsSetupViewController *)self prEditorItemManager];
  v14 = [prEditorItemManager2 reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (void)_customizePersonalRequests:(id)requests
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  delegate = [(HUPersonalRequestsSetupViewController *)self delegate];
  v8 = [(HUPersonalRequestsSetupViewController *)self locationDevice:@"HUPersonalRequestsOnboardingKey_UserInput"];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:2];
  [delegate viewController:self didFinishWithConfigurationResults:v9];
}

- (void)_dontUsePersonalRequests:(id)requests
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = v6;
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

  prDevicesModuleController = [(HUPersonalRequestsSetupViewController *)self prDevicesModuleController];
  array = [MEMORY[0x277CBEB18] array];
  v11 = [prDevicesModuleController setPersonalRequestsDevices:array];

  delegate = [(HUPersonalRequestsSetupViewController *)self delegate];
  v14 = @"HUPersonalRequestsOnboardingKey_UserInput";
  v15 = &unk_282490E00;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v13];
}

- (void)_turnOnAllPersonalRequests:(id)requests
{
  v19 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412290;
    selfCopy = v9;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: Turning on Personal Requests for all multi-user capable devices", buf, 0xCu);
  }

  prDevicesModuleController = [(HUPersonalRequestsSetupViewController *)self prDevicesModuleController];
  turnOnPersonalRequestsForAllMultiUserCapableDevices = [prDevicesModuleController turnOnPersonalRequestsForAllMultiUserCapableDevices];

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HUPersonalRequestsSetupViewController__turnOnAllPersonalRequests___block_invoke;
  v13[3] = &unk_277DB99B8;
  objc_copyWeak(&v14, buf);
  v12 = [turnOnPersonalRequestsForAllMultiUserCapableDevices addSuccessBlock:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __68__HUPersonalRequestsSetupViewController__turnOnAllPersonalRequests___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v4 = @"HUPersonalRequestsOnboardingKey_UserInput";
  v5[0] = &unk_282490E18;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 viewController:WeakRetained didFinishWithConfigurationResults:v3];
}

- (BOOL)_allPersonalRequestsDevicesSupportVoiceRecognition
{
  v17 = *MEMORY[0x277D85DE8];
  home = [(HUPersonalRequestsSetupViewController *)self home];
  hf_numberOfHomePods = [home hf_numberOfHomePods];

  home2 = [(HUPersonalRequestsSetupViewController *)self home];
  hf_siriEndPointAccessories = [home2 hf_siriEndPointAccessories];
  v8 = [hf_siriEndPointAccessories count] + hf_numberOfHomePods;

  _numberOfDevicesSupportingVR = [(HUPersonalRequestsSetupViewController *)self _numberOfDevicesSupportingVR];
  if (_numberOfDevicesSupportingVR != v8)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: NO: Not all HomePods and Siri endpoints are on the supported Voice Recognition language", &v13, 0x16u);
    }
  }

  return _numberOfDevicesSupportingVR == v8;
}

- (unint64_t)_numberOfDevicesSupportingVR
{
  v24 = *MEMORY[0x277D85DE8];
  home = [(HUPersonalRequestsSetupViewController *)self home];
  hf_homePods = [home hf_homePods];
  v6 = [hf_homePods na_any:&__block_literal_global_42];

  home2 = [(HUPersonalRequestsSetupViewController *)self home];
  hf_siriEndPointAccessories = [home2 hf_siriEndPointAccessories];
  v9 = [hf_siriEndPointAccessories na_any:&__block_literal_global_25];

  if ((v6 & 1) != 0 || v9)
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      v20 = 138412546;
      selfCopy = self;
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@: NO: Some HomePods do NOT support voice recognition", &v20, 0x16u);
    }

    return 0;
  }

  else
  {
    home3 = [(HUPersonalRequestsSetupViewController *)self home];
    supportedVoiceRecognitionLanguages = [(HUPersonalRequestsSetupViewController *)self supportedVoiceRecognitionLanguages];
    v12 = [HUHomeFeatureOnboardingUtilities home:home3 createMultiUserLanguageToHomePodsMapping:supportedVoiceRecognitionLanguages];

    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    languageCode = [mEMORY[0x277CEF368] languageCode];

    v15 = [v12 objectForKeyedSubscript:languageCode];
    v16 = [v15 count];

    return v16;
  }
}

- (id)hu_preloadContent
{
  home = [(HUPersonalRequestsSetupViewController *)self home];
  if ([home hf_atleastOneMediaAccessorySupportingJustSiri])
  {
    home2 = [(HUPersonalRequestsSetupViewController *)self home];
    if ([home2 siriPhraseOptions] == 2)
    {
      v6 = 1;
    }

    else
    {
      home3 = [(HUPersonalRequestsSetupViewController *)self home];
      v6 = [home3 siriPhraseOptions] == 3;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = HUSiriLocalizedString(@"HUPersonalRequestsSetup_CalendarBulletText");
  v9 = objc_opt_class();
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v11 = [v9 _bulletImageWithSystemName:@"calendar" color:systemRedColor];
  [(HUPersonalRequestsSetupViewController *)self addBulletedListItemWithTitle:&stru_2823E0EE8 description:v8 image:v11];

  v12 = HUSiriLocalizedString(@"HUPersonalRequestsSetup_MessagesBulletText_HEY_SIRI");
  if (v6)
  {
    v13 = HUSiriLocalizedString(@"HUPersonalRequestsSetup_MessagesBulletText_JUST_SIRI");

    v12 = v13;
  }

  v14 = objc_opt_class();
  systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  v16 = [v14 _bulletImageWithSystemName:@"message.fill" color:systemGreenColor];
  [(HUPersonalRequestsSetupViewController *)self addBulletedListItemWithTitle:&stru_2823E0EE8 description:v12 image:v16];

  v17 = HUSiriLocalizedString(@"HUPersonalRequestsSetup_RemindersBulletText");
  v18 = objc_opt_class();
  systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  v20 = [v18 _bulletImageWithSystemName:@"list.bullet" color:systemYellowColor];
  [(HUPersonalRequestsSetupViewController *)self addBulletedListItemWithTitle:&stru_2823E0EE8 description:v17 image:v20];

  v21 = HUSiriLocalizedString(@"HUPersonalRequestsSetup_PersonalUpdateBulletText_HEY_SIRI");
  if (v6)
  {
    v22 = HUSiriLocalizedString(@"HUPersonalRequestsSetup_PersonalUpdateBulletText_JUST_SIRI");

    v21 = v22;
  }

  v23 = objc_opt_class();
  systemIndigoColor = [MEMORY[0x277D75348] systemIndigoColor];
  v25 = [v23 _bulletImageWithSystemName:@"heart.text.square.fill" color:systemIndigoColor];
  [(HUPersonalRequestsSetupViewController *)self addBulletedListItemWithTitle:&stru_2823E0EE8 description:v21 image:v25];

  objc_initWeak(location, self);
  v26 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:&__block_literal_global_64];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_2;
  v34[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v34[4] = a2;
  v27 = [v26 addFailureBlock:v34];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_66;
  v33[3] = &__block_descriptor_40_e17_v16__0__NSArray_8l;
  v33[4] = a2;
  v28 = [v26 addSuccessBlock:v33];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_69;
  v31[3] = &unk_277DB9BB8;
  objc_copyWeak(v32, location);
  v32[1] = a2;
  v29 = [v26 flatMap:v31];
  objc_destroyWeak(v32);

  objc_destroyWeak(location);

  return v29;
}

void __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages %@", &v6, 0x16u);
  }
}

void __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_66(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ fetchSupportedVoiceRecognitionLanguagesWithCompletion returned %@", &v6, 0x16u);
  }
}

id __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_69(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSupportedVoiceRecognitionLanguages:v3];
  v5 = +[HULocationDeviceManager sharedInstance];
  v6 = [v5 activeLocationDeviceFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_2_71;
  v12[3] = &unk_277DB9B68;
  objc_copyWeak(&v13, (a1 + 32));
  v7 = [v6 flatMap:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_3;
  v11[3] = &unk_277DB9B90;
  v8 = *(a1 + 40);
  v11[4] = WeakRetained;
  v11[5] = v8;
  v9 = [v7 recover:v11];

  objc_destroyWeak(&v13);

  return v9;
}

id __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_2_71(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLocationDevice:v3];

  v5 = [WeakRetained locationDevice];
  v6 = [v5 name];
  v13 = HULocalizedStringWithFormat(@"HUPersonalRequestsSetup_Detail", @"%@", v7, v8, v9, v10, v11, v12, v6);

  v14 = [WeakRetained locationDevice];
  v15 = [v14 name];
  v22 = HULocalizedStringWithFormat(@"HUPersonalRequestsSetup_Detail", @"%@", v16, v17, v18, v19, v20, v21, v15);

  v23 = [WeakRetained home];
  v24 = [v23 hf_numberOfHomePods];

  v25 = [WeakRetained home];
  v26 = [v25 hf_siriEndPointAccessories];
  v27 = [v26 count] + v24;

  v28 = [WeakRetained _allPersonalRequestsDevicesSupportVoiceRecognition];
  if (v27 >= 2 && [WeakRetained _numberOfDevicesSupportingVR])
  {
    if (v28)
    {
      v29 = _HULocalizedStringWithDefaultValue(@"HUPersonalRequestsSetup_UsePersonalRequests_EveryHomePod_Button", @"HUPersonalRequestsSetup_UsePersonalRequests_EveryHomePod_Button", 1);
      v30 = _HULocalizedStringWithDefaultValue(@"HUPersonalRequestsSetup_UsePersonalRequests_EveryAccessory_Button", @"HUPersonalRequestsSetup_UsePersonalRequests_EveryAccessory_Button", 1);
    }

    else
    {
      v39 = _HULocalizedStringWithDefaultValue(@"HUPersonalRequestsSetup_UsePersonalRequests_EverySupportedHomePod_Button", @"HUPersonalRequestsSetup_UsePersonalRequests_EverySupportedHomePod_Button", 1);
      v30 = _HULocalizedStringWithDefaultValue(@"HUPersonalRequestsSetup_UsePersonalRequests_EverySupportedAccessory_Button", @"HUPersonalRequestsSetup_UsePersonalRequests_EverySupportedAccessory_Button", 1);

      v40 = [WeakRetained locationDevice];
      v41 = [v40 name];
      v42 = [WeakRetained locationDevice];
      v43 = [v42 name];
      v50 = HULocalizedStringWithFormat(@"HUPersonalContentSetup_Detail_WithSomeUnsupportedHomePods", @"%@%@", v44, v45, v46, v47, v48, v49, v41);

      v29 = [WeakRetained locationDevice];
      v51 = [v29 name];
      v52 = [WeakRetained locationDevice];
      v64 = [v52 name];
      v22 = HULocalizedStringWithFormat(@"HUPersonalContentSetup_Detail_WithSomeUnsupportedSiriEnabledAccessories", @"%@%@", v53, v54, v55, v56, v57, v58, v51);
    }

    v31 = [WeakRetained usePRButton];
    [v31 setTitle:v30 forState:0];
  }

  else
  {
    if (v28)
    {
      goto LABEL_10;
    }

    v30 = [WeakRetained locationDevice];
    v31 = [v30 name];
    v38 = HULocalizedStringWithFormat(@"HUPersonalRequestsSetup_Detail_UnsupportedLocale", @"%@", v32, v33, v34, v35, v36, v37, v31);

    v22 = v38;
  }

LABEL_10:
  v59 = [WeakRetained headerView];
  [v59 setDetailText:v22];

  v60 = [WeakRetained buttonTray];
  v61 = _HULocalizedStringWithDefaultValue(@"HUPersonalRequestsSetup_FinePrint", @"HUPersonalRequestsSetup_FinePrint", 1);
  [v60 setCaptionText:v61];

  v62 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v62;
}

id __58__HUPersonalRequestsSetupViewController_hu_preloadContent__block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "%@:%@ Location Device future failed with %@", &v9, 0x20u);
  }

  v5 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v5;
}

- (void)viewDidLoad
{
  v34 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HUPersonalRequestsSetupViewController;
  [(OBBaseWelcomeController *)&v29 viewDidLoad];
  headerView = [(HUPersonalRequestsSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492D88];

  home = [(HUPersonalRequestsSetupViewController *)self home];
  hf_numberOfHomePods = [home hf_numberOfHomePods];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUPersonalRequestsSetupViewController *)self setUsePRButton:boldButton];

  usePRButton = [(HUPersonalRequestsSetupViewController *)self usePRButton];
  [usePRButton setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = _HULocalizedStringWithDefaultValue(@"HUPersonalContentSetup_UsePersonalContentButton", @"HUPersonalContentSetup_UsePersonalContentButton", 1);
  usePRButton2 = [(HUPersonalRequestsSetupViewController *)self usePRButton];
  [usePRButton2 setTitle:v10 forState:0];

  usePRButton3 = [(HUPersonalRequestsSetupViewController *)self usePRButton];
  [usePRButton3 setAccessibilityIdentifier:@"Home.OnboardingView.PersonalRequests.SetUp.UsePersonalRequestsButton"];

  usePRButton4 = [(HUPersonalRequestsSetupViewController *)self usePRButton];
  [usePRButton4 addTarget:self action:sel__turnOnAllPersonalRequests_ forControlEvents:64];

  buttonTray = [(HUPersonalRequestsSetupViewController *)self buttonTray];
  usePRButton5 = [(HUPersonalRequestsSetupViewController *)self usePRButton];
  [buttonTray addButton:usePRButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUPersonalRequestsSetupViewController *)self setCustomizeButton:linkButton];

  customizeButton = [(HUPersonalRequestsSetupViewController *)self customizeButton];
  [customizeButton setTranslatesAutoresizingMaskIntoConstraints:0];

  customizeButton2 = [(HUPersonalRequestsSetupViewController *)self customizeButton];
  v19 = hf_numberOfHomePods > 1;
  if (hf_numberOfHomePods <= 1)
  {
    v20 = @"HUPersonalContentCustomize_DoNotUseButton";
  }

  else
  {
    v20 = @"HUPersonalRequestsSetup_CustomizeButton";
  }

  if (hf_numberOfHomePods <= 1)
  {
    v21 = @"Home.OnboardingView.PersonalRequests.SetUp.DoNotUseLinkButton";
  }

  else
  {
    v21 = @"Home.OnboardingView.PersonalRequests.SetUp.CustomizeLinkButton";
  }

  if (v19)
  {
    v22 = &selRef__customizePersonalRequests_;
  }

  else
  {
    v22 = &selRef__dontUsePersonalRequests_;
  }

  v23 = _HULocalizedStringWithDefaultValue(v20, v20, 1);
  [customizeButton2 setTitle:v23 forState:0];

  customizeButton3 = [(HUPersonalRequestsSetupViewController *)self customizeButton];
  [customizeButton3 setAccessibilityIdentifier:v21];

  customizeButton4 = [(HUPersonalRequestsSetupViewController *)self customizeButton];
  [customizeButton4 addTarget:self action:*v22 forControlEvents:64];

  buttonTray2 = [(HUPersonalRequestsSetupViewController *)self buttonTray];
  [buttonTray2 addButton:self->_customizeButton];

  [(HUPersonalRequestsSetupViewController *)self setModalInPresentation:1];
  [(HUPersonalRequestsSetupViewController *)self _setupPersonalRequestsItemInfrastructure];
  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v32 = 2112;
    v33 = v28;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: PRSVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUPersonalRequestsSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUPersonalRequestsSetupViewController *)self isMovingFromParentViewController])
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

    delegate = [(HUPersonalRequestsSetupViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end