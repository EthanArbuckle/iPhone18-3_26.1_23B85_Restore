@interface DMCEnrollmentInterface
+ (Class)preferredViewControllerClassForAccount:(id)a3 preferiCloudAccount:(BOOL)a4;
+ (id)accountControllerFromSpecifier:(id)a3 baseViewController:(id)a4 preferiCloudAccount:(BOOL)a5;
+ (id)mdmMigrationAlert;
- (DMCEnrollmentDelegate)delegate;
- (UIViewController)parentViewController;
- (id)_specifierForButtonNamed:(id)a3;
- (id)_specifiersForSignInButtonWithSelector:(SEL)a3;
- (id)initFromViewController:(id)a3 delegate:(id)a4;
- (id)initFromViewController:(id)a3 enrollmentResultBlock:(id)a4;
- (id)initFromViewController:(id)a3 enrollmentResultBlock:(id)a4 managedConfigurationHelper:(id)a5;
- (id)specifiersForDebuggingEnrollment;
- (id)specifiersForMDMMigration;
- (id)specifiersForManagedAccounts;
- (void)_presentMDMMigrationAlert;
- (void)_presentSignInUnavailableAccountModificationRestricted;
- (void)_presentSignInUnavailableAlertWithMessage:(id)a3;
- (void)_presentSignInUnavailableLockdownMode;
- (void)_setDismissedCompletionBlockForPresenter:(id)a3;
- (void)setManagedSignInButtonEnabled:(BOOL)a3;
- (void)startBYODEnrollment;
- (void)startInBuddyEnrollment;
- (void)startInBuddyMigrationEnrollment;
- (void)startReauthWithRMAccountID:(id)a3;
- (void)startUnenrollmentWithAltDSID:(id)a3 silent:(BOOL)a4;
@end

@implementation DMCEnrollmentInterface

- (id)initFromViewController:(id)a3 enrollmentResultBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(DMCEnrollmentInterface *)self initFromViewController:v7 enrollmentResultBlock:v6 managedConfigurationHelper:v8];

  return v9;
}

- (id)initFromViewController:(id)a3 delegate:(id)a4
{
  v6 = a3;
  [(DMCEnrollmentInterface *)self setDelegate:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__DMCEnrollmentInterface_initFromViewController_delegate___block_invoke;
  v10[3] = &unk_278EE7CA8;
  v11 = self;
  v7 = objc_opt_new();
  v8 = [(DMCEnrollmentInterface *)v11 initFromViewController:v6 enrollmentResultBlock:v10 managedConfigurationHelper:v7];

  return v8;
}

void __58__DMCEnrollmentInterface_initFromViewController_delegate___block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v9 = a4;
  v7 = [*(a1 + 32) delegate];
  v8 = v7;
  if (a2)
  {
    [v7 enrollmentDidSucceed];
  }

  else if (a3)
  {
    [v7 enrollmentWasCanceled];
  }

  else
  {
    [v7 enrollmentDidFailWithError:v9];
  }
}

- (id)initFromViewController:(id)a3 enrollmentResultBlock:(id)a4 managedConfigurationHelper:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DMCEnrollmentInterface;
  v11 = [(DMCEnrollmentInterface *)&v19 init];
  if (v11)
  {
    v12 = [DMCAccountSpecifierProvider alloc];
    v13 = [MEMORY[0x277CB8F48] defaultStore];
    v14 = [(DMCAccountSpecifierProvider *)v12 initWithAccountStore:v13];
    accountSpecifierProvider = v11->_accountSpecifierProvider;
    v11->_accountSpecifierProvider = v14;

    objc_storeWeak(&v11->_parentViewController, v8);
    v16 = _Block_copy(v9);
    enrollmentResultBlock = v11->_enrollmentResultBlock;
    v11->_enrollmentResultBlock = v16;

    objc_storeStrong(&v11->_mcHelper, a5);
    v11->_isUpdatingEnrollment = 0;
  }

  return v11;
}

- (void)startBYODEnrollment
{
  v3 = [DMCBYODEnrollmentFlowUIPresenter alloc];
  v4 = [(DMCEnrollmentInterface *)self parentViewController];
  v5 = [(DMCEnrollmentFlowUIPresenterBase *)v3 initWithBaseViewController:v4];

  [(DMCEnrollmentInterface *)self _setDismissedCompletionBlockForPresenter:v5];
  v6 = objc_opt_new();
  [v6 setPresenter:v5];
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277D031A0] enrollmentFlowControllerWithPresenter:v5 managedConfigurationHelper:v6 rmStoreHelper:v7];
  [(DMCEnrollmentInterface *)self setEnrollmentFlowController:v8];

  [(DMCEnrollmentInterface *)self setIsUpdatingEnrollment:1];
  v9 = [(DMCEnrollmentInterface *)self delegate];
  [v9 enrollmentDidBegin];

  objc_initWeak(&location, self);
  v10 = [(DMCEnrollmentInterface *)self enrollmentFlowController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__DMCEnrollmentInterface_startBYODEnrollment__block_invoke;
  v11[3] = &unk_278EE7CD0;
  objc_copyWeak(&v12, &location);
  [v10 startBYODEnrollmentFlowRestartIfFail:1 completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __45__DMCEnrollmentInterface_startBYODEnrollment__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIsUpdatingEnrollment:0];
    v9 = [v8 enrollmentResultBlock];
    (v9)[2](v9, a2, a3, v10);
  }
}

- (void)startInBuddyEnrollment
{
  if ([MEMORY[0x277D034F8] isAppleInternal])
  {
    if ([MEMORY[0x277D034E8] ADETestModeEnabled])
    {
      v3 = [DMCBYODEnrollmentFlowUIPresenter alloc];
      v4 = [(DMCEnrollmentInterface *)self parentViewController];
      v5 = [(DMCEnrollmentFlowUIPresenterBase *)v3 initWithBaseViewController:v4];

      v6 = objc_opt_new();
      [v6 setPresenter:v5];
      v7 = [MEMORY[0x277D031A0] enrollmentFlowControllerWithPresenter:v5 managedConfigurationHelper:v6];
      [(DMCEnrollmentInterface *)self setEnrollmentFlowController:v7];

      [(DMCEnrollmentInterface *)self setIsUpdatingEnrollment:1];
      v8 = [(DMCEnrollmentInterface *)self delegate];
      [v8 enrollmentDidBegin];

      objc_initWeak(&location, self);
      v9 = [(DMCEnrollmentInterface *)self enrollmentFlowController];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __48__DMCEnrollmentInterface_startInBuddyEnrollment__block_invoke;
      v10[3] = &unk_278EE7CD0;
      objc_copyWeak(&v11, &location);
      [v9 startInBuddyEnrollmentFlowRestartIfFail:1 completionHandler:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __48__DMCEnrollmentInterface_startInBuddyEnrollment__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIsUpdatingEnrollment:0];
    v9 = [v8 enrollmentResultBlock];
    (v9)[2](v9, a2, a3, v11);

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"kMCUIUpdatedNotification" object:0];
  }
}

- (void)startInBuddyMigrationEnrollment
{
  if ([MEMORY[0x277D034F8] isAppleInternal] && objc_msgSend(MEMORY[0x277D034E8], "ADETestModeEnabled"))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_247E7D000, v3, OS_LOG_TYPE_DEFAULT, "Launching into Buddy migration now!", buf, 2u);
    }

    v4 = [DMCBYODEnrollmentFlowUIPresenter alloc];
    v5 = [(DMCEnrollmentInterface *)self parentViewController];
    v6 = [(DMCEnrollmentFlowUIPresenterBase *)v4 initWithBaseViewController:v5];

    v7 = objc_opt_new();
    [v7 setPresenter:v6];
    v8 = [objc_alloc(MEMORY[0x277D031A8]) initWithPresenter:v6 managedConfigurationHelper:v7];
    [(DMCEnrollmentInterface *)self setMigrationFlowController:v8];

    [(DMCEnrollmentInterface *)self setIsUpdatingEnrollment:1];
    v9 = [(DMCEnrollmentInterface *)self delegate];
    [v9 enrollmentDidBegin];

    objc_initWeak(buf, self);
    v10 = [(DMCEnrollmentInterface *)self migrationFlowController];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__DMCEnrollmentInterface_startInBuddyMigrationEnrollment__block_invoke;
    v11[3] = &unk_278EE7CD0;
    objc_copyWeak(&v12, buf);
    [v10 startMDMMigrationWithCompletionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __57__DMCEnrollmentInterface_startInBuddyMigrationEnrollment__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setIsUpdatingEnrollment:0];
    v2 = [v4 delegate];
    [v2 enrollmentDidSucceed];

    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"kMCUIUpdatedNotification" object:0];

    WeakRetained = v4;
  }
}

- (void)startUnenrollmentWithAltDSID:(id)a3 silent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v8 = [DMCUnenrollmentFlowUIPresenter alloc];
    v9 = [(DMCEnrollmentInterface *)self parentViewController];
    v7 = [(DMCEnrollmentFlowUIPresenterBase *)v8 initWithBaseViewController:v9];
  }

  v10 = objc_opt_new();
  v11 = [objc_alloc(MEMORY[0x277D031C8]) initWithPresenter:v7 managedConfigurationHelper:v10];
  [(DMCEnrollmentInterface *)self setUnenrollmentFlowController:v11];

  [(DMCEnrollmentInterface *)self setIsUpdatingEnrollment:1];
  objc_initWeak(&location, self);
  v12 = [(DMCEnrollmentInterface *)self unenrollmentFlowController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__DMCEnrollmentInterface_startUnenrollmentWithAltDSID_silent___block_invoke;
  v13[3] = &unk_278EE7CD0;
  objc_copyWeak(&v14, &location);
  [v12 unenrollAccountWithAltDSID:v6 silent:v4 completionHandler:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __62__DMCEnrollmentInterface_startUnenrollmentWithAltDSID_silent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIsUpdatingEnrollment:0];
    v9 = [v8 enrollmentResultBlock];
    (v9)[2](v9, a2, a3, v10);
  }
}

- (void)startReauthWithRMAccountID:(id)a3
{
  v4 = a3;
  v5 = [DMCBYODEnrollmentFlowUIPresenter alloc];
  v6 = [(DMCEnrollmentInterface *)self parentViewController];
  v7 = [(DMCEnrollmentFlowUIPresenterBase *)v5 initWithBaseViewController:v6];

  [(DMCEnrollmentInterface *)self _setDismissedCompletionBlockForPresenter:v7];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277D031A0] enrollmentFlowControllerWithPresenter:v7 managedConfigurationHelper:v8];
  [(DMCEnrollmentInterface *)self setEnrollmentFlowController:v9];

  objc_initWeak(&location, self);
  v10 = [(DMCEnrollmentInterface *)self enrollmentFlowController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__DMCEnrollmentInterface_startReauthWithRMAccountID___block_invoke;
  v11[3] = &unk_278EE7CD0;
  objc_copyWeak(&v12, &location);
  [v10 reauthBYODEnrollmentFlowRestartIfFail:0 rmAccountIdentifier:v4 completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __53__DMCEnrollmentInterface_startReauthWithRMAccountID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained enrollmentResultBlock];
    (v9)[2](v9, a2, a3, v10);
  }
}

- (void)_setDismissedCompletionBlockForPresenter:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__DMCEnrollmentInterface__setDismissedCompletionBlockForPresenter___block_invoke;
  v5[3] = &unk_278EE7880;
  objc_copyWeak(&v6, &location);
  [v4 setDismissedCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__DMCEnrollmentInterface__setDismissedCompletionBlockForPresenter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained enrollmentFlowController];
    [v2 terminateEnrollmentFlow];

    WeakRetained = v3;
  }
}

- (void)setManagedSignInButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(DMCEnrollmentInterface *)self managedSignInButton];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v5 setProperty:v4 forKey:*MEMORY[0x277D3FF38]];
}

- (id)_specifierForButtonNamed:(id)a3
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:a3 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v4 = MEMORY[0x277CBEC38];
  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  [v3 setProperty:v4 forKey:*MEMORY[0x277D3FF38]];

  return v3;
}

- (id)_specifiersForSignInButtonWithSelector:(SEL)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D3FAD8];
  v6 = +[DMCAccountSpecifierProvider groupSpecifierID];
  v7 = [v5 groupSpecifierWithID:v6];

  v8 = [(DMCEnrollmentInterface *)self managedSignInButton];

  if (!v8)
  {
    v9 = DMCLocalizedString();
    v10 = [(DMCEnrollmentInterface *)self _specifierForButtonNamed:v9];
    [(DMCEnrollmentInterface *)self setManagedSignInButton:v10];
  }

  v11 = [(DMCEnrollmentInterface *)self managedSignInButton];
  [v11 setButtonAction:a3];

  v15[0] = v7;
  v12 = [(DMCEnrollmentInterface *)self managedSignInButton];
  v15[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  return v13;
}

- (id)specifiersForManagedAccounts
{
  if ([(DMCEnrollmentInterface *)self isUpdatingEnrollment])
  {
    v3 = [(DMCEnrollmentInterface *)self _specifiersForSignInButtonWithSelector:sel_startBYODEnrollment];
    goto LABEL_38;
  }

  v4 = [(DMCEnrollmentInterface *)self accountSpecifierProvider];
  v5 = [v4 specifiersWithTitle:1 includePrimaryAccounts:1];

  if ([v5 count])
  {
    v6 = v5;
LABEL_36:
    v3 = v6;
    goto LABEL_37;
  }

  v7 = [(DMCEnrollmentInterface *)self mcHelper];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(DMCEnrollmentInterface *)self mcHelper];
    v9 = [v8 isDeviceMDMEnrolled];

    if (v9)
    {
      v10 = *DMCLogObjects();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v33 = 0;
        v11 = "No Managed Sign In button because we are enrolled in MDM";
        v12 = &v33;
LABEL_19:
        _os_log_impl(&dword_247E7D000, v10, OS_LOG_TYPE_INFO, v11, v12, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  v13 = [(DMCEnrollmentInterface *)self mcHelper];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_15:
    v16 = [(DMCEnrollmentInterface *)self mcHelper];
    if (objc_opt_respondsToSelector())
    {
      v17 = [(DMCEnrollmentInterface *)self mcHelper];
      v18 = [v17 isDeviceSharediPad];

      if (v18)
      {
        v10 = *DMCLogObjects();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v11 = "No Managed Sign In button because we are in Shared iPad";
          v12 = buf;
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v19 = [(DMCEnrollmentInterface *)self mcHelper];
    if (objc_opt_respondsToSelector())
    {
      v20 = [(DMCEnrollmentInterface *)self mcHelper];
      v21 = [v20 isAccountModificationAllowed];

      if ((v21 & 1) == 0)
      {
        v22 = *DMCLogObjects();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v30 = 0;
          _os_log_impl(&dword_247E7D000, v22, OS_LOG_TYPE_INFO, "No-op Managed Sign In button because account modification is restricted", v30, 2u);
        }

        v23 = sel__presentSignInUnavailableAccountModificationRestricted;
        goto LABEL_35;
      }
    }

    else
    {
    }

    v24 = [(DMCEnrollmentInterface *)self mcHelper];
    if (objc_opt_respondsToSelector())
    {
      v25 = [(DMCEnrollmentInterface *)self mcHelper];
      v26 = [v25 isLockdownModeEnabled];

      if (v26)
      {
        v27 = *DMCLogObjects();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v29 = 0;
          _os_log_impl(&dword_247E7D000, v27, OS_LOG_TYPE_INFO, "No-op Managed Sign In button because Lockdown Mode is enabled", v29, 2u);
        }

        v23 = sel__presentSignInUnavailableLockdownMode;
        goto LABEL_35;
      }
    }

    else
    {
    }

    v23 = sel_startBYODEnrollment;
LABEL_35:
    v6 = [(DMCEnrollmentInterface *)self _specifiersForSignInButtonWithSelector:v23];
    goto LABEL_36;
  }

  v14 = [(DMCEnrollmentInterface *)self mcHelper];
  v15 = [v14 isDeviceSupervised];

  if (!v15)
  {
    goto LABEL_15;
  }

  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v32 = 0;
    v11 = "No Managed Sign In button because we are Supervised";
    v12 = &v32;
    goto LABEL_19;
  }

LABEL_20:
  v3 = 0;
LABEL_37:

LABEL_38:

  return v3;
}

- (id)specifiersForDebuggingEnrollment
{
  v10[3] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D034F8] isAppleInternal] && objc_msgSend(MEMORY[0x277D034E8], "ADETestModeEnabled"))
  {
    v3 = [(DMCEnrollmentInterface *)self debugSpecifiers];

    if (v3)
    {
      v4 = [(DMCEnrollmentInterface *)self debugSpecifiers];
    }

    else
    {
      v6 = [(DMCEnrollmentInterface *)self _specifierForButtonNamed:@"Start Setup Assistant Enrollment…"];
      [v6 setButtonAction:sel_startInBuddyEnrollment];
      v7 = [(DMCEnrollmentInterface *)self _specifierForButtonNamed:@"Start Setup Assistant Migration Enrollment…"];
      [v7 setButtonAction:sel_startInBuddyMigrationEnrollment];
      v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DebugEnrollmentGroup"];
      v10[0] = v8;
      v10[1] = v6;
      v10[2] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
      [(DMCEnrollmentInterface *)self setDebugSpecifiers:v9];

      v4 = [(DMCEnrollmentInterface *)self debugSpecifiers];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)specifiersForMDMMigration
{
  v10[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D031A8] isMigrationNeeded])
  {
    v3 = [(DMCEnrollmentInterface *)self migrationSpecifiers];

    if (v3)
    {
      v4 = [(DMCEnrollmentInterface *)self migrationSpecifiers];
    }

    else
    {
      v5 = DMCLocalizedString();
      v6 = [(DMCEnrollmentInterface *)self _specifierForButtonNamed:v5];

      [v6 setButtonAction:sel__presentMDMMigrationAlert];
      [v6 setIdentifier:*MEMORY[0x277D24D18]];
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MDMMigrationGroup"];
      v10[0] = v7;
      v10[1] = v6;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
      [(DMCEnrollmentInterface *)self setMigrationSpecifiers:v8];

      v4 = [(DMCEnrollmentInterface *)self migrationSpecifiers];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)preferredViewControllerClassForAccount:(id)a3 preferiCloudAccount:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v4)
  {
    v6 = [MEMORY[0x277CB8F48] defaultStore];
    v7 = [v5 dmc_altDSID];
    v8 = [v6 dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:v7];

    if (v8)
    {
      v9 = v8;

      v5 = v9;
    }

    else
    {
      v10 = *DMCLogObjects();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v5;
        _os_log_impl(&dword_247E7D000, v10, OS_LOG_TYPE_INFO, "No iCloud account for DMC account %@", &v16, 0xCu);
      }
    }
  }

  v11 = [MEMORY[0x277CE8570] sharedInstance];
  v12 = [v11 viewControllerClassForViewingAccount:v5];

  if (!v12)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_247E7D000, v13, OS_LOG_TYPE_ERROR, "No view controller available for DMC account %@", &v16, 0xCu);
    }
  }

  v14 = v12;

  return v12;
}

+ (id)accountControllerFromSpecifier:(id)a3 baseViewController:(id)a4 preferiCloudAccount:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 propertyForKey:*MEMORY[0x277CE8550]];
  if (v10)
  {
    v11 = [a1 preferredViewControllerClassForAccount:v10 preferiCloudAccount:v5];
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = objc_opt_new();
    [v12 setSpecifier:v8];
    if (v9)
    {
      if (([v11 isSubclassOfClass:objc_opt_class()] & 1) == 0 && (objc_msgSend(v11, "isSubclassOfClass:", objc_opt_class()) & 1) == 0)
      {
        v17 = *DMCLogObjects();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v11;
          _os_log_impl(&dword_247E7D000, v17, OS_LOG_TYPE_INFO, "DMC is returning a dataclass configuration account page controller: %@", &v18, 0xCu);
        }

        v11 = [objc_alloc(MEMORY[0x277D3FAC8]) initWithRootViewController:v12];
        [v11 setSpecifier:v8];
        [v11 setParentController:v9];
        [v12 setParentController:v11];
        [v12 setRootController:v11];
        goto LABEL_10;
      }

      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_247E7D000, v13, OS_LOG_TYPE_INFO, "DMC is returning an account page controller: %@", &v18, 0xCu);
      }

      [v12 setParentController:v9];
      v14 = [v9 rootController];
      [v12 setRootController:v14];
    }

    v11 = v12;
LABEL_10:

    goto LABEL_14;
  }

  v15 = *DMCLogObjects();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&dword_247E7D000, v15, OS_LOG_TYPE_ERROR, "A DMC account cell was tapped but had no account associated with it! %@", &v18, 0xCu);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

+ (id)mdmMigrationAlert
{
  v2 = DMCLocalizedString();
  v3 = DMCLocalizedStringByDevice();
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:v2 message:v3 preferredStyle:1];
  v5 = MEMORY[0x277D031B0];
  v6 = [MEMORY[0x277D031B0] readPendingCloudConfigDetails];
  v7 = [v5 isMigrationMandatoryWithPendingCloudConfig:v6];

  v8 = *DMCLogObjects();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *v17 = 0;
      _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_DEFAULT, "Not adding Cancel button to reboot alert because deadline has passed!", v17, 2u);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_DEFAULT, "Adding Cancel button to reboot alert because deadline has not passed.", buf, 2u);
    }

    v10 = MEMORY[0x277D750F8];
    v11 = DMCLocalizedString();
    v12 = [v10 actionWithTitle:v11 style:1 handler:0];
    [v4 addAction:v12];
  }

  v13 = MEMORY[0x277D750F8];
  v14 = DMCLocalizedString();
  v15 = [v13 actionWithTitle:v14 style:0 handler:&__block_literal_global_4];
  [v4 addAction:v15];

  return v4;
}

- (void)_presentMDMMigrationAlert
{
  v3 = [(DMCEnrollmentInterface *)self parentViewController];
  v2 = +[DMCEnrollmentInterface mdmMigrationAlert];
  [v3 dmc_presentAlert:v2 completion:0];
}

- (void)_presentSignInUnavailableLockdownMode
{
  v3 = DMCLocalizedString();
  [(DMCEnrollmentInterface *)self _presentSignInUnavailableAlertWithMessage:v3];
}

- (void)_presentSignInUnavailableAccountModificationRestricted
{
  v3 = DMCLocalizedString();
  [(DMCEnrollmentInterface *)self _presentSignInUnavailableAlertWithMessage:v3];
}

- (void)_presentSignInUnavailableAlertWithMessage:(id)a3
{
  v4 = a3;
  v10 = DMCLocalizedString();
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = DMCLocalizedString();
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];
  [v5 addAction:v8];

  v9 = [(DMCEnrollmentInterface *)self parentViewController];
  [v9 dmc_presentAlert:v5 completion:0];
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (DMCEnrollmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end