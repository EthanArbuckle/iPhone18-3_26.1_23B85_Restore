@interface HUHomeAssistantDeviceLanguageConfigurationViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeAssistantDeviceLanguageConfigurationViewController)initWithSupportedVoiceRecognitionLanguages:(id)a3 languageMismatchedHomeAssistantDevices:(id)a4;
- (id)_configureTitleDescriptionContentViewForCell:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancelLanguageChange;
- (void)_changeLanguage;
- (void)_hideSpinner;
- (void)_showSpinner;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeAssistantDeviceLanguageConfigurationViewController

- (HUHomeAssistantDeviceLanguageConfigurationViewController)initWithSupportedVoiceRecognitionLanguages:(id)a3 languageMismatchedHomeAssistantDevices:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (![v8 count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = NSStringFromSelector(a2);
    [v14 handleFailureInMethod:a2 object:self file:@"HUHomeAssistantDeviceLanguageConfigurationViewController.m" lineNumber:47 description:{@"%@:%@ Should NOT be called with no supported languages", self, v15}];
  }

  if (![v9 count])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = NSStringFromSelector(a2);
    [v16 handleFailureInMethod:a2 object:self file:@"HUHomeAssistantDeviceLanguageConfigurationViewController.m" lineNumber:48 description:{@"%@:%@ Should NOT be called with no HomePods in a mismatched state", self, v17}];
  }

  v10 = _HULocalizedStringWithDefaultValue(@"HULanguageChooseSiriLanguage_Title", @"HULanguageChooseSiriLanguage_Title", 1);
  v11 = _HULocalizedStringWithDefaultValue(@"HULanguageChooseSiriLanguage_Detail", @"HULanguageChooseSiriLanguage_Detail", 1);
  v18.receiver = self;
  v18.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
  v12 = [(OBTableWelcomeController *)&v18 initWithTitle:v10 detailText:v11 icon:0];

  if (v12)
  {
    objc_storeStrong(&v12->_supportedVoiceRecognitionLanguages, a3);
    objc_storeStrong(&v12->_languageMismatchedHomeAssistantDevices, a4);
    v12->_selectedLanguageIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (void)dealloc
{
  v3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageTimer];
  [v3 invalidate];

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
    v70 = self;
    v71 = 2112;
    *v72 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v4 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self languageMismatchedHomeAssistantDevices];
  v5 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self supportedVoiceRecognitionLanguages];
  v6 = [v5 objectAtIndexedSubscript:{-[HUHomeAssistantDeviceLanguageConfigurationViewController selectedLanguageIndex](self, "selectedLanguageIndex")}];

  v50 = [MEMORY[0x277CBEB18] array];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self _showSpinner];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [v4 count];
    *buf = 138413058;
    v70 = self;
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
  obj = v4;
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
            v70 = self;
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
            v20 = [MEMORY[0x277D146E8] sharedDispatcher];
            v21 = [v20 homeManager];
            v22 = [v21 hasOptedToHH2];

            if (v22 || ([v15 accessory], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "hf_isSiriEndpoint"), v28, v29))
            {
              v30 = [v15 hf_siriLanguageOptionsManager];
              v23 = [v30 updateSelectedLanguageOption:v18];
            }

            else
            {
              v31 = [v15 hf_home];
              v32 = [v15 hf_backingAccessory];
              v30 = [v31 hf_mediaSystemForAccessory:v32];

              if (v30)
              {
                [v30 hf_settingsAdapterManager];
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
            [v50 na_safeAddObject:v23];
          }

          else
          {
            v23 = HFLogForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = NSStringFromSelector(a2);
              v25 = [v15 hf_isReachable];
              v26 = [v15 hf_displayName];
              *buf = 138412802;
              v70 = v24;
              v71 = 1024;
              *v72 = v25;
              *&v72[4] = 2112;
              *&v72[6] = v26;
              _os_log_error_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_ERROR, "%@ Controller is reachable? %{BOOL}d. Language change failed for [%@]", buf, 0x1Cu);
            }
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v27 = NSStringFromSelector(a2);
          *buf = v48;
          v70 = v27;
          v71 = 2112;
          *v72 = v6;
          _os_log_error_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_ERROR, "%@ AFVoiceInfo voiceInfoForSessionLanguageCode could not find voice info for %@ - this should NOT happen.", buf, 0x16u);
        }
      }

      v55 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v55);
  }

  v39 = [MEMORY[0x277D2C900] chainFutures:v50];
  v40 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v41 = [v39 reschedule:v40];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setChangeLanguageFuture:v41];

  v42 = [v50 count];
  objc_initWeak(buf, self);
  v43 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageFuture];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __75__HUHomeAssistantDeviceLanguageConfigurationViewController__changeLanguage__block_invoke_24;
  v58[3] = &unk_277DBBE08;
  objc_copyWeak(v60, buf);
  v60[1] = a2;
  v44 = v6;
  v59 = v44;
  v60[2] = v42;
  v45 = [v43 addCompletionBlock:v58];

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
    v11 = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v6 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self delegate];
  v8 = @"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_UserInput";
  v9 = &unk_282491478;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v6 viewController:self didFinishWithConfigurationResults:v7];
}

- (void)_hideSpinner
{
  v3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];

  if (v3)
  {
    v4 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
    [v4 removeFromSuperview];

    [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setSpinner:0];
    v5 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
    [v5 setNeedsLayout];
  }

  v6 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v6 setHidden:0];

  v7 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [v7 setHidden:0];
}

- (void)_showSpinner
{
  v3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];

  if (v3)
  {
    v4 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
    [v4 removeFromSuperview];

    [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setSpinner:0];
  }

  v5 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v5 setHidden:1];

  v6 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [v6 setHidden:1];

  v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setSpinner:v7];

  v8 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [v8 sizeToFit];

  v9 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [v9 startAnimating];

  v10 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [v10 frame];
  v12 = v11;
  v14 = v13;

  v15 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
  [v15 bounds];
  v17 = v16 * 0.5;
  v18 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [v18 bounds];
  v20 = v17 - v19 * 0.5;

  v21 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self buttonTray];
  [v21 frame];
  v23 = v22;
  v24 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v24 frame];
  v26 = v23 + v25;
  v27 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v27 frame];
  v28 = v26 + CGRectGetHeight(v34) * 0.5;

  v29 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [v29 setFrame:{v20, v28, v12, v14}];

  v30 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
  v31 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self spinner];
  [v30 addSubview:v31];

  v32 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
  [v32 setNeedsLayout];
}

- (void)loadView
{
  v27.receiver = self;
  v27.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
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
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setHeightAnchor:v17];

  v18 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self heightAnchor];
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
  v3 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self view];
  [v3 layoutIfNeeded];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 contentSize];
  v6 = v5;
  v7 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self heightAnchor];
  [v7 setConstant:v6];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setBackgroundColor:v8];

  v10.receiver = self;
  v10.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
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
  v4 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self supportedVoiceRecognitionLanguages:a3];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x277CBEAF8];
  v9 = a3;
  v10 = [v8 currentLocale];
  v11 = [v10 languageCode];
  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [v12 countryCode];
  v14 = [v7 stringWithFormat:@"%@-%@", v11, v13];

  v15 = [v9 dequeueReusableCellWithIdentifier:@"language_code_cell_identifier"];

  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"language_code_cell_identifier"];
  }

  [v15 setSelectionStyle:0];
  if ([v6 row])
  {
    v16 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self supportedVoiceRecognitionLanguages];
    v17 = [v16 objectAtIndex:{objc_msgSend(v6, "row") - 1}];

    v18 = [MEMORY[0x277CEF2D8] sharedInstance];
    v19 = [v18 localizedNameForSiriLanguage:v17 inDisplayLanguage:0];

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
      -[HUHomeAssistantDeviceLanguageConfigurationViewController setSelectedLanguageIndex:](self, "setSelectedLanguageIndex:", [v6 row] - 1);
      [v15 setAccessoryType:3];
      v21 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
      [v21 setEnabled:1];
    }

    else
    {
      [v15 setAccessoryType:0];
    }

    v26 = [v15 textLabel];
    [v26 setText:v19];
  }

  else
  {
    v22 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self _configureTitleDescriptionContentViewForCell:v15];
    v23 = _HULocalizedStringWithDefaultValue(@"HULanguageSupportedLangugages_TableHeader_Title", @"HULanguageSupportedLangugages_TableHeader_Title", 1);
    [v22 setTitleText:v23];

    v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v22 setTitleFont:v24];

    v25 = [MEMORY[0x277D75348] systemGrayColor];
    [v22 setTitleTextColor:v25];
  }

  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v6 row] >= 1)
  {
    v7 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self selectedLanguageIndex]+ 1;
    v8 = [v12 cellForRowAtIndexPath:v6];
    [v8 setAccessoryType:3];
    -[HUHomeAssistantDeviceLanguageConfigurationViewController setSelectedLanguageIndex:](self, "setSelectedLanguageIndex:", [v6 row] - 1);
    v9 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
    [v9 setEnabled:1];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 != [v6 row])
    {
      v10 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:0];
      v11 = [v12 cellForRowAtIndexPath:v10];

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
  v4 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282492F18];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setChangeLanguageButton:v6];

  v7 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v8 setEnabled:0];

  v9 = _HULocalizedStringWithDefaultValue(@"HULanguageChangeLanguage_Button_Title", @"HULanguageChangeLanguage_Button_Title", 1);
  v10 = _HULocalizedStringWithDefaultValue(@"HULanguageKeepUsingCurrentHomePodLanguages_Button_Title", @"HULanguageKeepUsingCurrentHomePodLanguages_Button_Title", 1);
  v11 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self languageMismatchedHomeAssistantDevices];
  v12 = [v11 count];

  if (v12 < 2)
  {
    v14 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self languageMismatchedHomeAssistantDevices];
    v15 = [v14 count];

    if (v15 != 1)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    v16 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self languageMismatchedHomeAssistantDevices];
    v13 = [v16 firstObject];
    if (objc_opt_isKindOfClass())
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      v19 = [v18 hf_siriLanguageOptionsManager];
      v20 = [v19 selectedLanguageOption];

      if (!v20)
      {
        v21 = [v18 hf_settingsAdapterManager];
        v22 = [v21 adapterForIdentifier:*MEMORY[0x277D13338]];
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

        v20 = [v25 selectedLanguageOption];
      }

      v26 = [v20 localizedRecognitionLanguage];
      v33 = HULocalizedStringWithFormat(@"HULanguageKeepUsingHomePodLanguage_Button_Title", @"%@", v27, v28, v29, v30, v31, v32, v26);

      v10 = v33;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    _HULocalizedStringWithDefaultValue(@"HULanguageChangeAllSiriLanguages_Button_Title", @"HULanguageChangeAllSiriLanguages_Button_Title", 1);
    v9 = v13 = v9;
  }

LABEL_16:
  v34 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v34 setTitle:v9 forState:0];

  v35 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v35 setAccessibilityIdentifier:@"Home.Onboarding.LanguageSetUp.Configuration.ChangeLanguageButton"];

  v36 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v36 addTarget:self action:sel__changeLanguage forControlEvents:64];

  v37 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self buttonTray];
  v38 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self changeLanguageButton];
  [v37 addButton:v38];

  v39 = [MEMORY[0x277D37650] linkButton];
  [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self setCancelButton:v39];

  v40 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [v41 setTitle:v10 forState:0];

  v42 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [v42 setAccessibilityIdentifier:@"Home.Onboarding.Configuration.LanguageSetUp.CancelButton"];

  v43 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [v43 addTarget:self action:sel__cancelLanguageChange forControlEvents:64];

  v44 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self buttonTray];
  v45 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self cancelButton];
  [v44 addButton:v45];

  v46 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self buttonTray];
  v47 = HULocalizedModelString(@"HULanguageCanRecognizeMultipleVoices_FinePrint");
  [v46 setCaptionText:v47];

  v48 = HFLogForCategory();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = NSStringFromSelector(a2);
    *buf = 138412546;
    v52 = self;
    v53 = 2112;
    v54 = v49;
    _os_log_impl(&dword_20CEB6000, v48, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HADLCVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUHomeAssistantDeviceLanguageConfigurationViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUHomeAssistantDeviceLanguageConfigurationViewController *)self isMovingFromParentViewController])
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

    v7 = [(HUHomeAssistantDeviceLanguageConfigurationViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end