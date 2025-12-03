@interface CNFAccountRegistrar
- (CNFAccountRegistrar)initWithServiceType:(int64_t)type presentationViewController:(id)controller;
- (void)_accountRegistrationStatusChanged:(id)changed;
- (void)_configureAliasesForAccount:(id)account;
- (void)_continueRegisteringAuthenticatedAccount:(id)account;
- (void)_registrationTimerFired:(id)fired;
- (void)_startTimer;
- (void)_stopTimer;
- (void)continueRegistrationForAccount:(id)account completionBlock:(id)block;
- (void)dealloc;
- (void)registerAccountWithUsername:(id)username password:(id)password service:(id)service completionBlock:(id)block;
@end

@implementation CNFAccountRegistrar

- (CNFAccountRegistrar)initWithServiceType:(int64_t)type presentationViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CNFAccountRegistrar;
  v7 = [(CNFAccountRegistrar *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CNFAccountRegistrar *)v7 setServiceType:type];
    [(CNFAccountRegistrar *)v8 setPresentationViewController:controllerCopy];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
  [mEMORY[0x277D18D68] removeListenerID:@"CNFAccountRegistrar"];

  v5.receiver = self;
  v5.super_class = CNFAccountRegistrar;
  [(CNFAccountRegistrar *)&v5 dealloc];
}

- (void)_startTimer
{
  [(CNFAccountRegistrar *)self _stopTimer];
  v3 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__registrationTimerFired_ selector:0 userInfo:0 repeats:180.0];
  [(CNFAccountRegistrar *)self setRegistrationTimer:v3];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  registrationTimer = [(CNFAccountRegistrar *)self registrationTimer];
  [mainRunLoop addTimer:registrationTimer forMode:*MEMORY[0x277CBE640]];
}

- (void)_stopTimer
{
  registrationTimer = [(CNFAccountRegistrar *)self registrationTimer];
  [registrationTimer invalidate];

  [(CNFAccountRegistrar *)self setRegistrationTimer:0];
}

- (void)_configureAliasesForAccount:(id)account
{
  accountCopy = account;
  aliasesToRegister = [accountCopy aliasesToRegister];
  [accountCopy addAliases:aliasesToRegister];

  aliasesToRegister2 = [accountCopy aliasesToRegister];
  [accountCopy validateAliases:aliasesToRegister2];

  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  if ([mEMORY[0x277D07DB0] supportsSMS])
  {
    accountType = [accountCopy accountType];

    if (accountType == 1)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Adding sentinel alias since this is an AppleID account", v9, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      [accountCopy addAlias:*MEMORY[0x277D18AB8]];
    }
  }

  else
  {
  }
}

- (void)_continueRegisteringAuthenticatedAccount:(id)account
{
  v29 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = accountCopy;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Continuing registration for authenticated account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v22 = accountCopy;
    IMLogString();
  }

  if ([accountCopy profileValidationStatus] != 3)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      profileValidationStatus = [accountCopy profileValidationStatus];
      *buf = 134217984;
      v28 = profileValidationStatus;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Profile is not validated. Current status: %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      profileValidationStatus2 = [accountCopy profileValidationStatus];
      IMLogString();
    }

    [(CNFAccountRegistrar *)self _stopTimer];
    v9 = [CNFRegLocaleController alloc];
    v10 = [CNFRegController controllerForServiceType:[(CNFAccountRegistrar *)self serviceType]];
    v11 = [(CNFRegFirstRunController *)v9 initWithRegController:v10 account:accountCopy];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__CNFAccountRegistrar__continueRegisteringAuthenticatedAccount___block_invoke;
    v24[3] = &unk_278DE8640;
    v24[4] = self;
    v25 = accountCopy;
    [(CNFRegLocaleController *)v11 setCompletionBlock:v24];
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Showing region chooser.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v13 = objc_alloc_init(MEMORY[0x277D3FAC8]);
    [(CNFRegLocaleController *)v11 setRootController:v13];
    [(CNFRegLocaleController *)v11 setParentController:v13];
    v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v11 action:sel_dismiss];
    [(CNFRegFirstRunController *)v11 setCustomLeftButton:v14];
    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:3 target:0 action:0];
    [(CNFRegFirstRunController *)v11 setCustomRightButton:v15];
    v26 = v11;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    [v13 setViewControllers:v16];

    presentationViewController = [(CNFAccountRegistrar *)self presentationViewController];
    presentedViewController = [presentationViewController presentedViewController];

    if (presentedViewController)
    {
      completionBlock = [(CNFAccountRegistrar *)self completionBlock];

      if (!completionBlock)
      {
LABEL_28:

        goto LABEL_29;
      }

      completionBlock2 = [(CNFAccountRegistrar *)self completionBlock];
      (completionBlock2)[2](completionBlock2, 0, v13);
    }

    else
    {
      completionBlock2 = [(CNFAccountRegistrar *)self presentationViewController];
      [completionBlock2 presentModalViewController:v13 withTransition:3];
    }

    goto LABEL_28;
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Profile is validated. Continuing on with registration.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFAccountRegistrar *)self _configureAliasesForAccount:accountCopy];
  [accountCopy registerAccount];
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
}

void __64__CNFAccountRegistrar__continueRegisteringAuthenticatedAccount___block_invoke(uint64_t a1, int a2)
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Region chooser completed.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  if (a2)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Success setting region. Continuing on with registration", v10, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    [*(a1 + 32) _startTimer];
    [*(a1 + 32) _configureAliasesForAccount:*(a1 + 40)];
    [*(a1 + 40) registerAccount];
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Failure setting region. Unregistering and calling out to completion block", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v7 = [*(a1 + 32) completionBlock];

    if (v7)
    {
      [*(a1 + 40) unregisterAccount];
      v8 = [*(a1 + 32) completionBlock];
      v8[2](v8, 0, 0);
    }
  }
}

- (void)continueRegistrationForAccount:(id)account completionBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  blockCopy = block;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = accountCopy;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Continuing registration for account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v12 = accountCopy;
    IMLogString();
  }

  [(CNFAccountRegistrar *)self setAccount:accountCopy, v12];
  [(CNFAccountRegistrar *)self setCompletionBlock:blockCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  [defaultCenter addObserver:self selector:sel__accountRegistrationStatusChanged_ name:*MEMORY[0x277D18CA8] object:0];
  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  [mEMORY[0x277D18D28] activateAccount:accountCopy];

  if ([accountCopy registrationStatus] > 1)
  {
    if ([accountCopy registrationStatus] == 3)
    {
      [(CNFAccountRegistrar *)self _continueRegisteringAuthenticatedAccount:accountCopy];
    }
  }

  else
  {
    [accountCopy authenticateAccount];
  }

  [(CNFAccountRegistrar *)self _startTimer];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerAccountWithUsername:(id)username password:(id)password service:(id)service completionBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  passwordCopy = password;
  serviceCopy = service;
  blockCopy = block;
  if (usernameCopy && passwordCopy && serviceCopy)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = usernameCopy;
      v29 = 2112;
      v30 = serviceCopy;
      _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Registering account: %@ (service: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v18 = usernameCopy;
      v19 = serviceCopy;
      IMLogString();
    }

    [(CNFAccountRegistrar *)self setCompletionBlock:blockCopy, v18, v19];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__accountRegistrationStatusChanged_ name:*MEMORY[0x277D18CA8] object:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__CNFAccountRegistrar_registerAccountWithUsername_password_service_completionBlock___block_invoke;
    v22[3] = &unk_278DE8668;
    v23 = serviceCopy;
    v24 = usernameCopy;
    v25 = passwordCopy;
    selfCopy = self;
    v16 = MEMORY[0x245D4D850](v22);
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v16[2](v16);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__CNFAccountRegistrar_registerAccountWithUsername_password_service_completionBlock___block_invoke_2;
      block[3] = &unk_278DE8690;
      v21 = v16;
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }

    [(CNFAccountRegistrar *)self _startTimer];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __84__CNFAccountRegistrar_registerAccountWithUsername_password_service_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D18D68] sharedInstance];
  [v2 addListenerID:@"CNFAccountRegistrar" capabilities:*MEMORY[0x277D19338]];

  v3 = [MEMORY[0x277D18D68] sharedInstance];
  [v3 blockUntilConnected];

  v6 = [objc_alloc(MEMORY[0x277D18D20]) initWithService:*(a1 + 32)];
  [v6 setLogin:*(a1 + 40)];
  [v6 setAutoLogin:1];
  v4 = [MEMORY[0x277D18D28] sharedInstance];
  [v4 addAccount:v6];

  [v6 updateAuthorizationCredentials:0 token:0];
  [v6 setTemporaryPassword:*(a1 + 48)];
  v5 = [MEMORY[0x277D18D28] sharedInstance];
  [v5 activateAccount:v6];

  [v6 authenticateAccount];
  [*(a1 + 56) setAccount:v6];
}

- (void)_registrationTimerFired:(id)fired
{
  firedCopy = fired;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Timed out internally, waiting on registration. Forcing failed state.", v24, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFAccountRegistrar *)self _stopTimer];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  account = [(CNFAccountRegistrar *)self account];
  [mEMORY[0x277D18D28] deactivateAccount:account];

  mEMORY[0x277D18D28]2 = [MEMORY[0x277D18D28] sharedInstance];
  account2 = [(CNFAccountRegistrar *)self account];
  [mEMORY[0x277D18D28]2 deleteAccount:account2];

  [(CNFAccountRegistrar *)self setAccount:0];
  completionBlock = [(CNFAccountRegistrar *)self completionBlock];

  if (completionBlock)
  {
    v12 = CommunicationsSetupUIBundle();
    v13 = CNFRegStringTableName();
    v14 = [v12 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v13];

    v15 = CommunicationsSetupUIBundle();
    v16 = CNFRegStringTableName();
    v17 = [v15 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_GENERIC" value:&stru_2856D3978 table:v16];

    v18 = CommunicationsSetupUIBundle();
    v19 = CNFRegStringTableName();
    v20 = [v18 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v19];

    v21 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v17 preferredStyle:1];
    v22 = [MEMORY[0x277D750F8] actionWithTitle:v20 style:0 handler:0];
    [v21 addAction:v22];

    completionBlock2 = [(CNFAccountRegistrar *)self completionBlock];
    (completionBlock2)[2](completionBlock2, 0, v21);
  }

  if (_registrationTimerFired__onceToken != -1)
  {
    [CNFAccountRegistrar _registrationTimerFired:];
  }
}

void __47__CNFAccountRegistrar__registrationTimerFired___block_invoke_2()
{
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_243BE5000, v0, OS_LOG_TYPE_DEFAULT, "First time we've timed out internally for this process.  Forcing imagent death.", v2, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v1 = [MEMORY[0x277D18D68] sharedInstance];
  [v1 killDaemon];
}

- (void)_accountRegistrationStatusChanged:(id)changed
{
  v105 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  account = [(CNFAccountRegistrar *)self account];

  v7 = 0x277CCA000uLL;
  if (object != account)
  {
    goto LABEL_2;
  }

  registrationStatus = [object registrationStatus];
  if (registrationStatus <= 1)
  {
    if (registrationStatus != -1)
    {
      if (registrationStatus)
      {
        if (registrationStatus == 1)
        {
          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Account is unregistered.", buf, 2u);
          }

          v7 = 0x277CCA000;
          if (os_log_shim_legacy_logging_enabled())
          {
            if (IMShouldLog())
            {
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        v32 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v32, OS_LOG_TYPE_DEFAULT, "Account is unknown.", buf, 2u);
        }

        v7 = 0x277CCA000;
        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          goto LABEL_52;
        }
      }

      goto LABEL_2;
    }

    v17 = CommunicationsSetupUIBundle();
    v18 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
    v19 = [v17 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v18];

    v20 = CommunicationsSetupUIBundle();
    v21 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
    v92 = [v20 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_GENERIC" value:&stru_2856D3978 table:v21];

    v22 = CommunicationsSetupUIBundle();
    v23 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
    v93 = [v22 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v23];

    registrationFailureReason = [object registrationFailureReason];
    registrationFailureAlertInfo = [object registrationFailureAlertInfo];
    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:registrationFailureReason];
      *buf = 138412802;
      v100 = object;
      v101 = 2112;
      v102 = v26;
      v103 = 2112;
      v104 = registrationFailureAlertInfo;
      _os_log_impl(&dword_243BE5000, v25, OS_LOG_TYPE_DEFAULT, "Account (%@) failed with failure reason: %@ and alert info %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v88 = [MEMORY[0x277CCABB0] numberWithInteger:registrationFailureReason];
      v89 = registrationFailureAlertInfo;
      v87 = object;
      IMLogString();
    }

    v91 = registrationFailureAlertInfo == 0;
    if (registrationFailureAlertInfo)
    {
      v27 = [registrationFailureAlertInfo objectForKey:*MEMORY[0x277D18C98]];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v47 = CommunicationsSetupUIBundle();
        v48 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v29 = [v47 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v48];

        v19 = v47;
      }

      v49 = [registrationFailureAlertInfo objectForKey:*MEMORY[0x277D18C90]];
      v50 = v49;
      if (v49)
      {
        v90 = v49;
        v51 = v92;
      }

      else
      {
        v51 = CommunicationsSetupUIBundle();
        v52 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v90 = [v51 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_GENERIC" value:&stru_2856D3978 table:v52];
      }

      v53 = [registrationFailureAlertInfo objectForKey:*MEMORY[0x277D18C88]];
      v54 = v53;
      if (v53)
      {
        v39 = v53;
        v55 = v93;
      }

      else
      {
        v55 = CommunicationsSetupUIBundle();
        v56 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v39 = [v55 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v56];
      }

      v40 = [registrationFailureAlertInfo objectForKey:*MEMORY[0x277D18C70]];
      v45 = [v40 valueForKey:*MEMORY[0x277D18C68]];
      v44 = [v40 valueForKey:*MEMORY[0x277D18C80]];
      v41 = [v40 valueForKey:*MEMORY[0x277D18C78]];
      v43 = [v41 integerValue] == 1;
      goto LABEL_66;
    }

    if (_os_feature_enabled_impl())
    {
      if (registrationFailureReason == 28)
      {
        v81 = CommunicationsSetupUIBundle();
        v82 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v29 = [v81 localizedStringForKey:@"MESSAGES_ACTIVATION_ERROR_TITLE_VERBOSE" value:&stru_2856D3978 table:v82];

        v83 = CommunicationsSetupUIBundle();
        v84 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v90 = [v83 localizedStringForKey:@"UPDATE_APPLEID_ERROR_MESSAGE" value:&stru_2856D3978 table:v84];

        v85 = CommunicationsSetupUIBundle();
        v86 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v39 = [v85 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v86];

        v40 = CommunicationsSetupUIBundle();
        v41 = CNFRegStringTableName();
        v42 = [v40 localizedStringForKey:@"UPDATE_APPLEID_ERROR_ACTION" value:&stru_2856D3978 table:v41];
        goto LABEL_80;
      }

      if (registrationFailureReason == 29)
      {
        v33 = CommunicationsSetupUIBundle();
        v34 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v29 = [v33 localizedStringForKey:@"MESSAGES_ACTIVATION_ERROR_TITLE_VERBOSE" value:&stru_2856D3978 table:v34];

        v35 = CommunicationsSetupUIBundle();
        v36 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v90 = [v35 localizedStringForKey:@"WAITING_FOR_ICLOUD_ERROR_MESSAGE" value:&stru_2856D3978 table:v36];

        v37 = CommunicationsSetupUIBundle();
        v38 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v39 = [v37 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v38];

        v40 = CommunicationsSetupUIBundle();
        v41 = CNFRegStringTableNameForServiceType([(CNFAccountRegistrar *)self serviceType]);
        v42 = [v40 localizedStringForKey:@"WAITING_FOR_ICLOUD_ERROR_ACTION" value:&stru_2856D3978 table:v41];
LABEL_80:
        v45 = v42;
        v44 = @"settings-navigation://com.apple.Settings.AppleAccount/TRANSPARENCY";
        v43 = 1;
LABEL_66:

        v93 = v39;
        v46 = v90;
        v19 = v29;
        goto LABEL_67;
      }
    }

    v91 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v92;
LABEL_67:
    v57 = v46;
    v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v19 message:v87 preferredStyle:{v88, v89}];
    if (v44)
    {
      v58 = v43;
    }

    else
    {
      v58 = 0;
    }

    if (v58)
    {
      v59 = MEMORY[0x277D750F8];
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __57__CNFAccountRegistrar__accountRegistrationStatusChanged___block_invoke_186;
      v96[3] = &unk_278DE86B8;
      v97 = v44;
      v98 = v91;
      v60 = [v59 actionWithTitle:v45 style:0 handler:v96];
      [v15 addAction:v60];
    }

    v61 = [MEMORY[0x277D750F8] actionWithTitle:v93 style:1 handler:0];
    [v15 addAction:v61];

LABEL_73:
    v16 = 0;
LABEL_74:
    registrationTimer = [(CNFAccountRegistrar *)self registrationTimer];
    [registrationTimer invalidate];

    [(CNFAccountRegistrar *)self setRegistrationTimer:0];
    completionBlock = [(CNFAccountRegistrar *)self completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [(CNFAccountRegistrar *)self completionBlock];
      (completionBlock2)[2](completionBlock2, v16, v15);
    }

    [(CNFAccountRegistrar *)self setAccount:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    goto LABEL_77;
  }

  if (registrationStatus > 3)
  {
    if (registrationStatus != 4)
    {
      if (registrationStatus != 5)
      {
        goto LABEL_2;
      }

      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Account is registered.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      v15 = 0;
      v16 = 1;
      goto LABEL_74;
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v31, OS_LOG_TYPE_DEFAULT, "Account is registering.", buf, 2u);
    }

    v7 = 0x277CCA000;
    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (registrationStatus != 2)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "Account is authenticated.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      aliasesToRegister = [object aliasesToRegister];
      if ([aliasesToRegister count] || (objc_msgSend(object, "canSendMessages") & 1) != 0)
      {
        [(CNFAccountRegistrar *)self _continueRegisteringAuthenticatedAccount:object];

LABEL_77:
        v7 = 0x277CCA000;
        goto LABEL_2;
      }

      v66 = CommunicationsSetupUIBundle();
      v67 = CNFRegStringTableName();
      v95 = [v66 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_NO_VALID_ALIASES_TITLE" value:&stru_2856D3978 table:v67];

      v68 = CommunicationsSetupUIBundle();
      v69 = CNFRegStringTableName();
      v70 = [v68 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_NO_VALID_ALIASES_MESSAGE" value:&stru_2856D3978 table:v69];

      v71 = CommunicationsSetupUIBundle();
      v72 = CNFRegStringTableName();
      v73 = [v71 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_NO_VALID_ALIASES_ACTION_TITLE" value:&stru_2856D3978 table:v72];

      v74 = CommunicationsSetupUIBundle();
      v75 = CNFRegStringTableName();
      v76 = [v74 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v75];

      v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v95 message:v70 preferredStyle:1];
      v77 = [MEMORY[0x277D750F8] actionWithTitle:v73 style:0 handler:&__block_literal_global_150];
      [v15 addAction:v77];

      v78 = [MEMORY[0x277D750F8] actionWithTitle:v76 style:1 handler:0];
      [v15 addAction:v78];

      [(CNFAccountRegistrar *)self setAccount:0];
      mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
      [mEMORY[0x277D18D28] deactivateAccount:object];

      mEMORY[0x277D18D28]2 = [MEMORY[0x277D18D28] sharedInstance];
      [mEMORY[0x277D18D28]2 deleteAccount:object];

      goto LABEL_73;
    }

    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v30, OS_LOG_TYPE_DEFAULT, "Account is authenticating.", buf, 2u);
    }

    v7 = 0x277CCA000;
    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
LABEL_52:
      IMLogString();
    }
  }

LABEL_2:
  defaultCenter2 = [*(v7 + 2968) defaultCenter];
  [defaultCenter2 postNotificationName:@"CNFAccountRegistarStateChangedNotification" object:0];

  v9 = *MEMORY[0x277D85DE8];
}

void __57__CNFAccountRegistrar__accountRegistrationStatusChanged___block_invoke()
{
  v1 = [MEMORY[0x277D75128] sharedApplication];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"https://appleid.apple.com"];
  [v1 openURL:v0 withCompletionHandler:0];
}

void __57__CNFAccountRegistrar__accountRegistrationStatusChanged___block_invoke_186(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  if (v4)
  {
    if (*(a1 + 40) == 1)
    {
      v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v5 openSensitiveURL:v4 withOptions:0];
    }

    else
    {
      v5 = [MEMORY[0x277D75128] sharedApplication];
      [v5 openURL:v4 withCompletionHandler:0];
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Invalid action URL %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v9 = *(a1 + 32);
      IMLogString();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end