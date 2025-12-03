@interface HUHomeAssistantDeviceLanguageConfigurationViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeAssistantDeviceLanguageConfigurationViewController)initWithSupportedVoiceRecognitionLanguages:(id)languages languageMismatchedHomeAssistantDevices:(id)devices;
- (id)_configureTitleDescriptionContentViewForCell:(id)cell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancelLanguageChange;
- (void)_changeLanguage;
- (void)_hideSpinner;
- (void)_showSpinner;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeAssistantDeviceLanguageConfigurationViewController

- (HUHomeAssistantDeviceLanguageConfigurationViewController)initWithSupportedVoiceRecognitionLanguages:(id)languages languageMismatchedHomeAssistantDevices:(id)devices
{
  languagesCopy = languages;
  devicesCopy = devices;
  if (![languagesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeAssistantDeviceLanguageConfigurationViewController.m" lineNumber:47 description:{@"%@:%@ Should NOT be called with no supported languages", self, v15}];
  }

  if (![devicesCopy count])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v17 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUHomeAssistantDeviceLanguageConfigurationViewController.m" lineNumber:48 description:{@"%@:%@ Should NOT be called with no HomePods in a mismatched state", self, v17}];
  }

  v10 = _HULocalizedStringWithDefaultValue(@"HULanguageChooseSiriLanguage_Title", @"HULanguageChooseSiriLanguage_Title", 1);
  v11 = _HULocalizedStringWithDefaultValue(@"HULanguageChooseSiriLanguage_Detail", @"HULanguageChooseSiriLanguage_Detail", 1);
  v18.receiver = self;
  v18.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
  v12 = [(OBTableWelcomeController *)&v18 initWithTitle:v10 detailText:v11 icon:0];

  if (v12)
  {
    objc_storeStrong(&v12->_supportedVoiceRecognitionLanguages, languages);
    objc_storeStrong(&v12->_languageMismatchedHomeAssistantDevices, devices);
    v12->_selectedLanguageIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (void)dealloc
{
  changeLanguageTimer = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageTimer];
  [changeLanguageTimer invalidate];

  v4.receiver = self;
  v4.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)&v4 dealloc];
}

- (void)_changeLanguage
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy3 = self;
    v71 = 2112;
    *v72 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  languageMismatchedHomeAssistantDevices = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self languageMismatchedHomeAssistantDevices];
  supportedVoiceRecognitionLanguages = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self supportedVoiceRecognitionLanguages];
  v6 = [supportedVoiceRecognitionLanguages objectAtIndexedSubscript:{-[HUHomeAssistantDeviceLanguageConfigurationViewController selectedLanguageIndex](self, "selectedLanguageIndex")}];

  array = [MEMORY[0x277CBEB18] array];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self _showSpinner];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [languageMismatchedHomeAssistantDevices count];
    *buf = 138413058;
    selfCopy3 = self;
    v71 = 2112;
    *v72 = v8;
    *&v72[8] = 2112;
    *&v72[10] = v6;
    v73 = 2048;
    v74 = v9;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@: Must change Siri language to [%@] for %lu HomePods", buf, 0x2Au);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = languageMismatchedHomeAssistantDevices;
  v55 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v55)
  {
    v54 = *v65;
    v49 = *MEMORY[0x277D13338];
    *&v10 = 138412546;
    v48 = v10;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v65 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v64 + 1) + 8 * i);
        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v16 = [MEMORY[0x277CEF528] voiceInfoForSessionLanguageCode:v6];
        v17 = HFLogForCategory();
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v19 = NSStringFromSelector(a2);
            *buf = 138413058;
            selfCopy3 = self;
            v71 = 2112;
            *v72 = v19;
            *&v72[8] = 2112;
            *&v72[10] = v6;
            v73 = 2112;
            v74 = v15;
            _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@: Changing Siri language to [%@] for [%@]", buf, 0x2Au);
          }

          v18 = [objc_alloc(MEMORY[0x277D14B10]) initWithRecognitionLanguage:v6 outputVoice:v16 defaultVoiceForRecognitionLanguage:1];
          if (v18 && [v15 hf_isReachable])
          {
            mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
            homeManager = [mEMORY[0x277D146E8] homeManager];
            hasOptedToHH2 = [homeManager hasOptedToHH2];

            if (hasOptedToHH2 || ([v15 accessory], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "hf_isSiriEndpoint"), v28, v29))
            {
              hf_siriLanguageOptionsManager = [v15 hf_siriLanguageOptionsManager];
              v23 = [hf_siriLanguageOptionsManager updateSelectedLanguageOption:v18];
            }

            else
            {
              hf_home = [v15 hf_home];
              hf_backingAccessory = [v15 hf_backingAccessory];
              hf_siriLanguageOptionsManager = [hf_home hf_mediaSystemForAccessory:hf_backingAccessory];

              if (hf_siriLanguageOptionsManager)
              {
                [hf_siriLanguageOptionsManager hf_settingsAdapterManager];
              }

              else
              {
                [v15 hf_settingsAdapterManager];
              }
              v33 = ;
              v34 = [v33 adapterForIdentifier:{v49, v48}];
              objc_opt_class();
              v35 = v34;
              if (objc_opt_isKindOfClass())
              {
                v36 = v35;
              }

              else
              {
                v36 = 0;
              }

              v37 = v36;

              v23 = [v37 updateSelectedLanguageOption:v18];
            }

            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __75__HUHomeAssistantDeviceLanguageConfigurationViewController__changeLanguage__block_invoke;
            v61[3] = &unk_277DB8E70;
            v63 = a2;
            v62 = v15;
            v38 = [v23 addFailureBlock:v61];
            [array na_safeAddObject:v23];
          }

          else
          {
            v23 = HFLogForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = NSStringFromSelector(a2);
              hf_isReachable = [v15 hf_isReachable];
              hf_displayName = [v15 hf_displayName];
              *buf = 138412802;
              selfCopy3 = v24;
              v71 = 1024;
              *v72 = hf_isReachable;
              *&v72[4] = 2112;
              *&v72[6] = hf_displayName;
              _os_log_error_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_ERROR, "%@ Controller is reachable? %{BOOL}d. Language change failed for [%@]", buf, 0x1Cu);
            }
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v27 = NSStringFromSelector(a2);
          *buf = v48;
          selfCopy3 = v27;
          v71 = 2112;
          *v72 = v6;
          _os_log_error_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_ERROR, "%@ AFVoiceInfo voiceInfoForSessionLanguageCode could not find voice info for %@ - this should NOT happen.", buf, 0x16u);
        }
      }

      v55 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v55);
  }

  v39 = [MEMORY[0x277D2C900] chainFutures:array];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v41 = [v39 reschedule:mainThreadScheduler];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setChangeLanguageFuture:v41];

  v42 = [array count];
  objc_initWeak(buf, self);
  changeLanguageFuture = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageFuture];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __75__HUHomeAssistantDeviceLanguageConfigurationViewController__changeLanguage__block_invoke_24;
  v58[3] = &unk_277DBBE08;
  objc_copyWeak(v60, buf);
  v60[1] = a2;
  v44 = v6;
  v59 = v44;
  v60[2] = v42;
  v45 = [changeLanguageFuture addCompletionBlock:v58];

  v46 = MEMORY[0x277CBEBB8];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __75__HUHomeAssistantDeviceLanguageConfigurationViewController__changeLanguage__block_invoke_29;
  v56[3] = &unk_277DBC5E0;
  objc_copyWeak(&v57, buf);
  v47 = [v46 scheduledTimerWithTimeInterval:0 repeats:v56 block:240.0];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setChangeLanguageTimer:v47];

  objc_destroyWeak(&v57);
  objc_destroyWeak(v60);
  objc_destroyWeak(buf);
}

void __75__HUHomeAssistantDeviceLanguageConfigurationViewController__changeLanguage__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = [*(a1 + 32) hf_displayName];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_error_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_ERROR, "%@ Language change failed for %@", &v5, 0x16u);
  }
}

void __75__HUHomeAssistantDeviceLanguageConfigurationViewController__changeLanguage__block_invoke_24(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _hideSpinner];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    *buf = 138413058;
    v20 = WeakRetained;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@: Finished changing Siri language to [%@] for %lu HomePods", buf, 0x2Au);
  }

  if (v4)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(*(a1 + 48));
      v15 = *(a1 + 32);
      v16 = *(a1 + 56);
      *buf = 138413314;
      v20 = WeakRetained;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v27 = 2112;
      v28 = v4;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%@:%@: Changing Siri language to [%@] for %lu HomePods, FAILED: %@", buf, 0x34u);
    }
  }

  v11 = [WeakRetained delegate];
  v17[0] = @"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_UserInput";
  v17[1] = @"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_IntendedLanguage";
  v12 = *(a1 + 32);
  v18[0] = &unk_282491460;
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v11 viewController:WeakRetained didFinishWithConfigurationResults:v13];
}

void __75__HUHomeAssistantDeviceLanguageConfigurationViewController__changeLanguage__block_invoke_29(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained changeLanguageFuture];
  v3 = [v2 isFinished];

  if ((v3 & 1) == 0)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "FAILED to change some HomePod languages due to timeout", v7, 2u);
    }

    v5 = [WeakRetained changeLanguageFuture];
    v6 = [MEMORY[0x277CCA9B8] na_timeoutError];
    [v5 finishWithError:v6];
  }
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

  delegate = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self delegate];
  v8 = @"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_UserInput";
  v9 = &unk_282491478;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v7];
}

- (void)_hideSpinner
{
  spinner = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];

  if (spinner)
  {
    spinner2 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
    [spinner2 removeFromSuperview];

    [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setSpinner:0];
    view = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
    [view setNeedsLayout];
  }

  changeLanguageButton = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton setHidden:0];

  cancelButton = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [cancelButton setHidden:0];
}

- (void)_showSpinner
{
  spinner = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];

  if (spinner)
  {
    spinner2 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
    [spinner2 removeFromSuperview];

    [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setSpinner:0];
  }

  changeLanguageButton = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton setHidden:1];

  cancelButton = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [cancelButton setHidden:1];

  v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setSpinner:v7];

  spinner3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [spinner3 sizeToFit];

  spinner4 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [spinner4 startAnimating];

  spinner5 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [spinner5 frame];
  v12 = v11;
  v14 = v13;

  view = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
  [view bounds];
  v17 = v16 * 0.5;
  spinner6 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [spinner6 bounds];
  v20 = v17 - v19 * 0.5;

  buttonTray = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self buttonTray];
  [buttonTray frame];
  v23 = v22;
  changeLanguageButton2 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton2 frame];
  v26 = v23 + v25;
  changeLanguageButton3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton3 frame];
  v28 = v26 + CGRectGetHeight(v34) * 0.5;

  spinner7 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [spinner7 setFrame:{v20, v28, v12, v14}];

  view2 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
  spinner8 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [view2 addSubview:spinner8];

  view3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
  [view3 setNeedsLayout];
}

- (void)loadView
{
  v27.receiver = self;
  v27.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
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
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setHeightAnchor:v17];

  heightAnchor2 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self heightAnchor];
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
  view = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
  [view layoutIfNeeded];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView contentSize];
  v6 = v5;
  heightAnchor = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self heightAnchor];
  [heightAnchor setConstant:v6];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setBackgroundColor:clearColor];

  v10.receiver = self;
  v10.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
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
  v4 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self supportedVoiceRecognitionLanguages:view];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v34 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x277CBEAF8];
  viewCopy = view;
  currentLocale = [v8 currentLocale];
  languageCode = [currentLocale languageCode];
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale2 countryCode];
  v14 = [v7 stringWithFormat:@"%@-%@", languageCode, countryCode];

  v15 = [viewCopy dequeueReusableCellWithIdentifier:@"language_code_cell_identifier"];

  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"language_code_cell_identifier"];
  }

  [v15 setSelectionStyle:0];
  if ([pathCopy row])
  {
    supportedVoiceRecognitionLanguages = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self supportedVoiceRecognitionLanguages];
    v17 = [supportedVoiceRecognitionLanguages objectAtIndex:{objc_msgSend(pathCopy, "row") - 1}];

    mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
    v19 = [mEMORY[0x277CEF2D8] localizedNameForSiriLanguage:v17 inDisplayLanguage:0];

    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = v17;
      v30 = 2112;
      v31 = v19;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "languageCode = %@ localizedLanguageName = %@ localeString = %@", buf, 0x20u);
    }

    if ([v17 isEqualToString:v14])
    {
      -[HUHomeAssistantDeviceLanguageConfigurationViewController setSelectedLanguageIndex:](self, "setSelectedLanguageIndex:", [pathCopy row] - 1);
      [v15 setAccessoryType:3];
      changeLanguageButton = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
      [changeLanguageButton setEnabled:1];
    }

    else
    {
      [v15 setAccessoryType:0];
    }

    textLabel = [v15 textLabel];
    [textLabel setText:v19];
  }

  else
  {
    v22 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self _configureTitleDescriptionContentViewForCell:v15];
    v23 = _HULocalizedStringWithDefaultValue(@"HULanguageSupportedLangugages_TableHeader_Title", @"HULanguageSupportedLangugages_TableHeader_Title", 1);
    [v22 setTitleText:v23];

    v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v22 setTitleFont:v24];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [v22 setTitleTextColor:systemGrayColor];
  }

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy row] >= 1)
  {
    v7 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self selectedLanguageIndex]+ 1;
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [v8 setAccessoryType:3];
    -[HUHomeAssistantDeviceLanguageConfigurationViewController setSelectedLanguageIndex:](self, "setSelectedLanguageIndex:", [pathCopy row] - 1);
    changeLanguageButton = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
    [changeLanguageButton setEnabled:1];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 != [pathCopy row])
    {
      v10 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:0];
      v11 = [viewCopy cellForRowAtIndexPath:v10];

      [v11 setAccessoryType:0];
    }
  }
}

- (void)viewDidLoad
{
  v55 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
  [(OBTableWelcomeController *)&v50 viewDidLoad];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setModalInPresentation:1];
  headerView = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492F18];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setChangeLanguageButton:boldButton];

  changeLanguageButton = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton setTranslatesAutoresizingMaskIntoConstraints:0];

  changeLanguageButton2 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton2 setEnabled:0];

  v9 = _HULocalizedStringWithDefaultValue(@"HULanguageChangeLanguage_Button_Title", @"HULanguageChangeLanguage_Button_Title", 1);
  v10 = _HULocalizedStringWithDefaultValue(@"HULanguageKeepUsingCurrentHomePodLanguages_Button_Title", @"HULanguageKeepUsingCurrentHomePodLanguages_Button_Title", 1);
  languageMismatchedHomeAssistantDevices = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self languageMismatchedHomeAssistantDevices];
  v12 = [languageMismatchedHomeAssistantDevices count];

  if (v12 < 2)
  {
    languageMismatchedHomeAssistantDevices2 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self languageMismatchedHomeAssistantDevices];
    v15 = [languageMismatchedHomeAssistantDevices2 count];

    if (v15 != 1)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    languageMismatchedHomeAssistantDevices3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self languageMismatchedHomeAssistantDevices];
    firstObject = [languageMismatchedHomeAssistantDevices3 firstObject];
    if (objc_opt_isKindOfClass())
    {
      v17 = firstObject;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      hf_siriLanguageOptionsManager = [v18 hf_siriLanguageOptionsManager];
      selectedLanguageOption = [hf_siriLanguageOptionsManager selectedLanguageOption];

      if (!selectedLanguageOption)
      {
        hf_settingsAdapterManager = [v18 hf_settingsAdapterManager];
        v22 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13338]];
        objc_opt_class();
        v23 = v22;
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        selectedLanguageOption = [v25 selectedLanguageOption];
      }

      localizedRecognitionLanguage = [selectedLanguageOption localizedRecognitionLanguage];
      v33 = HULocalizedStringWithFormat(@"HULanguageKeepUsingHomePodLanguage_Button_Title", @"%@", v27, v28, v29, v30, v31, v32, localizedRecognitionLanguage);

      v10 = v33;
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    _HULocalizedStringWithDefaultValue(@"HULanguageChangeAllSiriLanguages_Button_Title", @"HULanguageChangeAllSiriLanguages_Button_Title", 1);
    v9 = firstObject = v9;
  }

LABEL_16:
  changeLanguageButton3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton3 setTitle:v9 forState:0];

  changeLanguageButton4 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton4 setAccessibilityIdentifier:@"Home.Onboarding.LanguageSetUp.Configuration.ChangeLanguageButton"];

  changeLanguageButton5 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [changeLanguageButton5 addTarget:self action:sel__changeLanguage forControlEvents:64];

  buttonTray = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self buttonTray];
  changeLanguageButton6 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [buttonTray addButton:changeLanguageButton6];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setCancelButton:linkButton];

  cancelButton = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];

  cancelButton2 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [cancelButton2 setTitle:v10 forState:0];

  cancelButton3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [cancelButton3 setAccessibilityIdentifier:@"Home.Onboarding.Configuration.LanguageSetUp.CancelButton"];

  cancelButton4 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [cancelButton4 addTarget:self action:sel__cancelLanguageChange forControlEvents:64];

  buttonTray2 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self buttonTray];
  cancelButton5 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [buttonTray2 addButton:cancelButton5];

  buttonTray3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self buttonTray];
  v47 = HULocalizedModelString(@"HULanguageCanRecognizeMultipleVoices_FinePrint");
  [buttonTray3 setCaptionText:v47];

  v48 = HFLogForCategory();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v53 = 2112;
    v54 = v49;
    _os_log_impl(&dword_20CEB6000, v48, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HADLCVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUHomeAssistantDeviceLanguageConfigurationViewController *)self isMovingFromParentViewController])
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

    delegate = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end