@interface CNFRegWizardController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)shouldShowFirstRunController;
- (CNFRegWizardController)initWithRegController:(id)a3;
- (CNFRegWizardController)initWithServiceTypes:(int64_t)a3;
- (id)controllerClassesToShow:(BOOL)a3;
- (int)_firstRunState:(id)a3;
- (void)_applicationDidEnterBackground;
- (void)_checkRestrictions;
- (void)_doCancel;
- (void)_startListeningForResignResume;
- (void)_stopListeningForResignResume;
- (void)_updateNavigationBarHiddenForCurrentState;
- (void)_updateNavigationBarHiddenForPop;
- (void)_updateNavigationBarHiddenForPush;
- (void)_updateNavigationBarTitle;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)dealloc;
- (void)setAllowCancel:(BOOL)a3;
- (void)setAllowSMS:(BOOL)a3;
- (void)setCanShowDisabledScreen:(BOOL)a3;
- (void)setCanShowSplashScreen:(BOOL)a3;
- (void)setCanStartNested:(BOOL)a3;
- (void)setHideLearnMoreButton:(BOOL)a3;
- (void)setShouldListenForSuspension:(BOOL)a3;
- (void)setShouldTerminateInBackground:(BOOL)a3;
- (void)setShowSplashOnSignin:(BOOL)a3;
- (void)setSkipReloadOnNextViewWillAppear:(BOOL)a3;
- (void)setupController;
- (void)viewDidLoad;
@end

@implementation CNFRegWizardController

- (CNFRegWizardController)initWithRegController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNFRegWizardController;
  v5 = [(PSSetupController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_wizardFlags |= 2u;
    if (!v4)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v5->_serviceType = [v4 serviceType];
    [(CNFRegWizardController *)v6 setRegController:v4];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__restrictionsChanged name:*MEMORY[0x277D07DA8] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v6 selector:sel__applicationDidFinishLaunching name:*MEMORY[0x277D76668] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v6 selector:sel__applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];
  }

  v10 = v6;
LABEL_6:

  return v10;
}

- (CNFRegWizardController)initWithServiceTypes:(int64_t)a3
{
  v4 = [CNFRegController controllerForServiceType:a3];
  v5 = [(CNFRegWizardController *)self initWithRegController:v4];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  self->_firstRunDelegate = 0;
  [(CNFRegWizardController *)self _stopListeningForResignResume];
  v4.receiver = self;
  v4.super_class = CNFRegWizardController;
  [(PSRootController *)&v4 dealloc];
}

- (int)_firstRunState:(id)a3
{
  v4 = a3;
  v5 = [(CNFRegWizardController *)self regController];
  if (([v5 isConnected] & 1) == 0)
  {
    [v5 connect:1];
  }

  v6 = [v5 accountState:v4];
  if ((v6 & 4) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if ((v6 & 2) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if ((v6 & 0x20000000) != 0)
  {
    v10 = 5;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (void)_checkRestrictions
{
  if ([(CNFRegWizardController *)self shouldShowFirstRunController]&& ![(CNFRegWizardController *)self shouldTerminateInBackground])
  {
    v3 = [MEMORY[0x277D07DB0] sharedInstance];
    v4 = [v3 accountModificationRestricted];

    if (v4)
    {
      CNFRegSetStringTableForServiceType(self->_serviceType);
      v5 = CommunicationsSetupUIBundle();
      v6 = CNFRegStringTableName();
      v7 = [v5 localizedStringForKey:@"FACETIME_ACCOUNT_RESTRICTION_ERROR_TITLE" value:&stru_2856D3978 table:v6];

      v8 = CNFRegStringTableName();
      v9 = CommunicationsSetupUIBundle();
      v10 = CNFLocalizedStringFromTableInBundleWithFallback(@"FACETIME_ACCOUNT_CREATION_ERROR_MESSAGE", v8, v9);

      v11 = CommunicationsSetupUIBundle();
      v12 = CNFRegStringTableName();
      v13 = [v11 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v12];

      [(CNFRegWizardController *)self setShouldTerminateInBackground:1];
      v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v10 preferredStyle:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __44__CNFRegWizardController__checkRestrictions__block_invoke;
      v16[3] = &unk_278DE8328;
      v16[4] = self;
      v15 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:0 handler:v16];
      [v14 addAction:v15];

      [(CNFRegWizardController *)self presentViewController:v14 animated:1 completion:0];
    }
  }
}

void __44__CNFRegWizardController__checkRestrictions__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D07DB0] sharedInstance];
  v3 = [v2 accountModificationRestricted];

  if (v3)
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 suspend];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 setShouldTerminateInBackground:0];
  }
}

- (id)controllerClassesToShow:(BOOL)a3
{
  v5 = [(CNFRegWizardController *)self regController];
  v6 = [v5 isServiceSupported];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v7 = [(CNFRegWizardController *)self regController];
  v8 = [v7 appleIDAccounts];
  v9 = [(CNFRegWizardController *)self _firstRunState:v8];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v9 < 4 || (-[CNFRegWizardController regController](self, "regController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 hasFailedLogin], v11, v12))
  {
    if ((*&self->_wizardFlags & 0x40) != 0)
    {
      v13 = off_278DE7338;
    }

    else
    {
      v13 = off_278DE7320;
    }

    v14 = *v13;
    v15 = objc_opt_class();
    if (v9 == 2)
    {
      v16 = off_278DE7310;
    }

    else
    {
      if (v9 != 3)
      {
        v17 = [(CNFRegWizardController *)self canShowSplashScreen];
        v18 = v15;
        if (!v17)
        {
LABEL_19:
          [v10 addObject:v18];
          goto LABEL_20;
        }

        v16 = off_278DE7330;
LABEL_18:
        v19 = *v16;
        v18 = objc_opt_class();
        goto LABEL_19;
      }

      if (!a3)
      {
LABEL_20:

        goto LABEL_22;
      }

      v16 = off_278DE7308;
    }

    [v10 addObject:v15];
    goto LABEL_18;
  }

  if (v9 == 5)
  {
    [(CNFRegWizardController *)self canShowDisabledScreen];
  }

  [v10 addObject:objc_opt_class()];
LABEL_22:

  return v10;
}

- (BOOL)shouldShowFirstRunController
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "shouldShowFirstRunController", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = [(CNFRegWizardController *)self regController];
  v5 = [v4 isServiceSupported];

  if ((v5 & 1) == 0)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Service is not supported", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !IMShouldLog())
    {
      goto LABEL_19;
    }

LABEL_18:
    IMLogString();
LABEL_19:
    v10 = 0;
    goto LABEL_41;
  }

  v6 = [MEMORY[0x277D07DB0] sharedInstance];
  if ([v6 supportsSMSIdentification])
  {
    v7 = (*&self->_wizardFlags & 0x200) == 0;

    if (v7)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "SMS identification is supported", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !IMShouldLog())
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v11 = [(CNFRegWizardController *)self regController];
  v12 = [v11 isConnected];

  if ((v12 & 1) == 0)
  {
    v13 = [(CNFRegWizardController *)self regController];
    [v13 connect:1];
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Checking to see if we need to show the first-run experience", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegLogIndent();
  v15 = [(CNFRegWizardController *)self regController];
  v16 = [v15 accounts];
  v17 = [(CNFRegWizardController *)self _firstRunState:v16];

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v28) = v17;
    _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_DEFAULT, "State: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v26 = v17;
    IMLogString();
  }

  v19 = v17 < 4;
  v20 = [(CNFRegWizardController *)self regController];
  v21 = [v20 isServiceEnabled];

  v10 = v21 ^ 1 | v19;
  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"NO";
    if (v10)
    {
      v23 = @"YES";
    }

    *buf = 138412290;
    v28 = v23;
    _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "Should show first run controller:%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegLogOutdent();
LABEL_41:
  v24 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v6 viewDidLoad];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "View did load", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = [(CNFRegWizardController *)self view];
  [v4 setClipsToBounds:1];

  [(CNFRegWizardController *)self setupController];
}

- (void)setupController
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Setting up wizard controller", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegSetStringTableForServiceType(self->_serviceType);
  v3 = CNFRegGlobalAppearanceStyle();
  switch(v3)
  {
    case 6:
      v5 = [(CNFRegWizardController *)self navigationBar];
      [v5 setBarStyle:1];

      [(CNFRegWizardController *)self _setClipUnderlapWhileTransitioning:1];
      break;
    case 5:
      [(CNFRegWizardController *)self _setClipUnderlapWhileTransitioning:1];
      break;
    case 3:
      v4 = [(CNFRegWizardController *)self navigationBar];
      [v4 setBarStyle:1];

      break;
  }

  v50 = CNFRegGlobalAppearanceController();
  v6 = [v50 navigationBarTintColor];
  v7 = [(CNFRegWizardController *)self navigationBar];
  [v7 setBarTintColor:v6];

  v8 = [v50 navigationBarTranslucent];
  v9 = [(CNFRegWizardController *)self navigationBar];
  [v9 setTranslucent:v8];

  v10 = [v50 navigationBarHidesShadow];
  v11 = [(CNFRegWizardController *)self navigationBar];
  [v11 _setHidesShadow:v10];

  v49 = [v50 navigationBarBackgroundImage];
  if (v49)
  {
    v12 = [(CNFRegWizardController *)self navigationBar];
    [v12 setBackgroundImage:v49 forBarPosition:0 barMetrics:0];
  }

  v13 = [(CNFRegWizardController *)self controllerClassesToShow:1];
  v51 = [(CNFRegWizardController *)self viewControllers];
  if ((*&self->_wizardFlags & 4) == 0 && [v13 count])
  {
    v14 = MEMORY[0x277CBEA60];
    v15 = [v13 objectAtIndex:0];
    v16 = [v14 arrayWithObject:v15];

    v13 = v16;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "  => Controller classes to show:", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v13;
  v18 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v18)
  {
    v19 = *v64;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v63 + 1) + 8 * i);
        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = v21;
          _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "    => %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v48 = v21;
          IMLogString();
        }
      }

      v18 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v18);
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v23, OS_LOG_TYPE_DEFAULT, "  => Current controller stack:", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v52 = v51;
  v24 = [v52 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v24)
  {
    v25 = *v60;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v60 != v25)
        {
          objc_enumerationMutation(v52);
        }

        v27 = *(*(&v59 + 1) + 8 * j);
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = v27;
          _os_log_impl(&dword_243BE5000, v28, OS_LOG_TYPE_DEFAULT, "    => %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v48 = v27;
          IMLogString();
        }
      }

      v24 = [v52 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v24);
  }

  if ([v52 count])
  {
    v29 = [obj count];
    if (v29 == [v52 count])
    {
      if (![obj count])
      {
        goto LABEL_81;
      }

      v30 = 0;
      while (1)
      {
        v31 = [v52 objectAtIndex:{v30, v48}];
        v32 = [obj objectAtIndex:v30];
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        if ([obj count] <= ++v30)
        {
          goto LABEL_81;
        }
      }
    }
  }

  v34 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v34, OS_LOG_TYPE_DEFAULT, "  => Should reload controllers", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v35 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = (*&self->_wizardFlags >> 2) & 1;
    *buf = 67109120;
    LODWORD(v70) = v36;
    _os_log_impl(&dword_243BE5000, v35, OS_LOG_TYPE_DEFAULT, "  => Can start nested: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v48 = (*&self->_wizardFlags >> 2) & 1;
    IMLogString();
  }

  v37 = [(CNFRegWizardController *)self controllersToShow:1, v48];
  v38 = v37;
  if ((*&self->_wizardFlags & 4) != 0)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v42 = v37;
    v43 = [v42 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v43)
    {
      v44 = *v56;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v56 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v55 + 1) + 8 * k);
          [v46 setRootController:self];
          [v46 setParentController:self];
          [v46 setDelegate:self];
        }

        v43 = [v42 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v43);
    }

    [(CNFRegWizardController *)self setViewControllers:v42];
  }

  else
  {
    v39 = [v37 objectAtIndex:0];
    v40 = v39;
    if (v39)
    {
      [v39 setRootController:self];
      [v40 setParentController:self];
      [v40 setDelegate:self];
      v41 = [MEMORY[0x277CBEA60] arrayWithObject:v40];
      [(CNFRegWizardController *)self setViewControllers:v41];
    }
  }

LABEL_81:
  v47 = *MEMORY[0x277D85DE8];
}

- (void)_updateNavigationBarTitle
{
  v7 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v7 navigationBarHidesTitle])
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = [v3 initWithSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    v5 = [(CNFRegWizardController *)self navigationBar];
    v6 = [v5 topItem];
    [v6 setTitleView:v4];
  }
}

- (void)_updateNavigationBarHiddenForPush
{
  v3 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v3 firstNavigationBarHidden])
  {
    [(CNFRegWizardController *)self setNavigationBarHidden:0];
  }

  [(CNFRegWizardController *)self _updateNavigationBarTitle];
}

- (void)_updateNavigationBarHiddenForPop
{
  v4 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v4 firstNavigationBarHidden])
  {
    v3 = [(CNFRegWizardController *)self viewControllers];
    -[CNFRegWizardController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [v3 count] == 2, 1);
  }

  [(CNFRegWizardController *)self _updateNavigationBarTitle];
}

- (void)_updateNavigationBarHiddenForCurrentState
{
  v4 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v4 firstNavigationBarHidden])
  {
    v3 = [(CNFRegWizardController *)self viewControllers];
    -[CNFRegWizardController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [v3 count] == 1, 0);
  }

  [(CNFRegWizardController *)self _updateNavigationBarTitle];
}

- (void)_startListeningForResignResume
{
  if (!self->_resignListener && (*&self->_wizardFlags & 2) != 0)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277D76768];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__CNFRegWizardController__startListeningForResignResume__block_invoke;
    v17[3] = &unk_278DE8900;
    v18 = v3;
    v5 = v3;
    v6 = MEMORY[0x245D4D850](v17);
    v7 = [v5 addObserverForName:v4 object:0 queue:0 usingBlock:v6];
    resignListener = self->_resignListener;
    self->_resignListener = v7;
  }

  if (!self->_resumeListener && (*&self->_wizardFlags & 2) != 0)
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277D76648];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__CNFRegWizardController__startListeningForResignResume__block_invoke_2;
    v15[3] = &unk_278DE8928;
    v15[4] = self;
    v16 = v9;
    v11 = v9;
    v12 = MEMORY[0x245D4D850](v15);
    v13 = [v11 addObserverForName:v10 object:0 queue:0 usingBlock:v12];
    resumeListener = self->_resumeListener;
    self->_resumeListener = v13;
  }
}

uint64_t __56__CNFRegWizardController__startListeningForResignResume__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) regController];
  [v2 resetNetworkFirstRunAlert];

  v3 = *(a1 + 40);

  return [v3 postNotificationName:@"com.apple.PreferencesApp.willBecomeActive" object:0];
}

- (void)_stopListeningForResignResume
{
  if (self->_resignListener)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_resignListener];
    resignListener = self->_resignListener;
    self->_resignListener = 0;
  }

  if (self->_resumeListener)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self->_resumeListener];
    resumeListener = self->_resumeListener;
    self->_resumeListener = 0;
  }
}

- (void)applicationWillSuspend
{
  v2.receiver = self;
  v2.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v2 applicationWillSuspend];
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v3 applicationDidResume];
  [(CNFRegWizardController *)self _checkRestrictions];
}

- (void)_applicationDidEnterBackground
{
  if ([(CNFRegWizardController *)self shouldTerminateInBackground])
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    [v2 terminateWithSuccess];
  }
}

- (void)_doCancel
{
  v5 = [(CNFRegWizardController *)self regController];
  v3 = [(CNFRegWizardController *)self regController];
  v4 = [v3 appleIDAccounts];
  -[CNFRegWizardController dismissWithState:](self, "dismissWithState:", [v5 accountState:v4]);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v5 = [(CNFRegWizardController *)self topViewController];

  if (!v5)
  {
    return a3 == 1;
  }

  v6 = [(CNFRegWizardController *)self topViewController];
  v7 = [v6 _isSupportedInterfaceOrientation:a3];

  return v7;
}

- (void)setCanStartNested:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFFB | v3;
}

- (void)setCanShowSplashScreen:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFF7 | v3;
}

- (void)setCanShowDisabledScreen:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFEF | v3;
}

- (void)setSkipReloadOnNextViewWillAppear:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFF7F | v3;
}

- (void)setShouldListenForSuspension:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFFD | v3;
}

- (void)setAllowCancel:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFEFF | v3;
}

- (void)setAllowSMS:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFDFF | v3;
}

- (void)setHideLearnMoreButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFDF | v3;
}

- (void)setShowSplashOnSignin:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFBF | v3;
}

- (void)setShouldTerminateInBackground:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFBFF | v3;
}

@end