@interface CNFAccountRegistrar
- (CNFAccountRegistrar)initWithServiceType:(int64_t)a3 presentationViewController:(id)a4;
- (void)_accountRegistrationStatusChanged:(id)a3;
- (void)_configureAliasesForAccount:(id)a3;
- (void)_continueRegisteringAuthenticatedAccount:(id)a3;
- (void)_registrationTimerFired:(id)a3;
- (void)_startTimer;
- (void)_stopTimer;
- (void)continueRegistrationForAccount:(id)a3 completionBlock:(id)a4;
- (void)dealloc;
- (void)registerAccountWithUsername:(id)a3 password:(id)a4 service:(id)a5 completionBlock:(id)a6;
@end

@implementation CNFAccountRegistrar

- (CNFAccountRegistrar)initWithServiceType:(int64_t)a3 presentationViewController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CNFAccountRegistrar;
  v7 = [(CNFAccountRegistrar *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CNFAccountRegistrar *)v7 setServiceType:a3];
    [(CNFAccountRegistrar *)v8 setPresentationViewController:v6];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277D18D68] sharedInstance];
  [v4 removeListenerID:@"CNFAccountRegistrar"];

  v5.receiver = self;
  v5.super_class = CNFAccountRegistrar;
  [(CNFAccountRegistrar *)&v5 dealloc];
}

- (void)_startTimer
{
  [(CNFAccountRegistrar *)self _stopTimer];
  v3 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__registrationTimerFired_ selector:0 userInfo:0 repeats:180.0];
  [(CNFAccountRegistrar *)self setRegistrationTimer:v3];

  v5 = [MEMORY[0x277CBEB88] mainRunLoop];
  v4 = [(CNFAccountRegistrar *)self registrationTimer];
  [v5 addTimer:v4 forMode:*MEMORY[0x277CBE640]];
}

- (void)_stopTimer
{
  v3 = [(CNFAccountRegistrar *)self registrationTimer];
  [v3 invalidate];

  [(CNFAccountRegistrar *)self setRegistrationTimer:0];
}

- (void)_configureAliasesForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 aliasesToRegister];
  [v3 addAliases:v4];

  v5 = [v3 aliasesToRegister];
  [v3 validateAliases:v5];

  v6 = [MEMORY[0x277D07DB0] sharedInstance];
  if ([v6 supportsSMS])
  {
    v7 = [v3 accountType];

    if (v7 == 1)
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

      [v3 addAlias:*MEMORY[0x277D18AB8]];
    }
  }

  else
  {
  }
}

- (void)_continueRegisteringAuthenticatedAccount:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Continuing registration for authenticated account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v22 = v4;
    IMLogString();
  }

  if ([v4 profileValidationStatus] != 3)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 profileValidationStatus];
      *buf = 134217984;
      v28 = v8;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Profile is not validated. Current status: %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v23 = [v4 profileValidationStatus];
      IMLogString();
    }

    [(CNFAccountRegistrar *)self _stopTimer];
    v9 = [CNFRegLocaleController alloc];
    v10 = [CNFRegController controllerForServiceType:[(CNFAccountRegistrar *)self serviceType]];
    v11 = [(CNFRegFirstRunController *)v9 initWithRegController:v10 account:v4];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__CNFAccountRegistrar__continueRegisteringAuthenticatedAccount___block_invoke;
    v24[3] = &unk_278DE8640;
    v24[4] = self;
    v25 = v4;
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

    v17 = [(CNFAccountRegistrar *)self presentationViewController];
    v18 = [v17 presentedViewController];

    if (v18)
    {
      v19 = [(CNFAccountRegistrar *)self completionBlock];

      if (!v19)
      {
LABEL_28:

        goto LABEL_29;
      }

      v20 = [(CNFAccountRegistrar *)self completionBlock];
      (v20)[2](v20, 0, v13);
    }

    else
    {
      v20 = [(CNFAccountRegistrar *)self presentationViewController];
      [v20 presentModalViewController:v13 withTransition:3];
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

  [(CNFAccountRegistrar *)self _configureAliasesForAccount:v4];
  [v4 registerAccount];
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

- (void)continueRegistrationForAccount:(id)a3 completionBlock:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Continuing registration for account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v12 = v6;
    IMLogString();
  }

  [(CNFAccountRegistrar *)self setAccount:v6, v12];
  [(CNFAccountRegistrar *)self setCompletionBlock:v7];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 removeObserver:self];
  [v9 addObserver:self selector:sel__accountRegistrationStatusChanged_ name:*MEMORY[0x277D18CA8] object:0];
  v10 = [MEMORY[0x277D18D28] sharedInstance];
  [v10 activateAccount:v6];

  if ([v6 registrationStatus] > 1)
  {
    if ([v6 registrationStatus] == 3)
    {
      [(CNFAccountRegistrar *)self _continueRegisteringAuthenticatedAccount:v6];
    }
  }

  else
  {
    [v6 authenticateAccount];
  }

  [(CNFAccountRegistrar *)self _startTimer];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerAccountWithUsername:(id)a3 password:(id)a4 service:(id)a5 completionBlock:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && v11 && v12)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v10;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Registering account: %@ (service: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v18 = v10;
      v19 = v12;
      IMLogString();
    }

    [(CNFAccountRegistrar *)self setCompletionBlock:v13, v18, v19];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:self selector:sel__accountRegistrationStatusChanged_ name:*MEMORY[0x277D18CA8] object:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__CNFAccountRegistrar_registerAccountWithUsername_password_service_completionBlock___block_invoke;
    v22[3] = &unk_278DE8668;
    v23 = v12;
    v24 = v10;
    v25 = v11;
    v26 = self;
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

- (void)_registrationTimerFired:(id)a3
{
  v4 = a3;
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
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  v7 = [MEMORY[0x277D18D28] sharedInstance];
  v8 = [(CNFAccountRegistrar *)self account];
  [v7 deactivateAccount:v8];

  v9 = [MEMORY[0x277D18D28] sharedInstance];
  v10 = [(CNFAccountRegistrar *)self account];
  [v9 deleteAccount:v10];

  [(CNFAccountRegistrar *)self setAccount:0];
  v11 = [(CNFAccountRegistrar *)self completionBlock];

  if (v11)
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

    v23 = [(CNFAccountRegistrar *)self completionBlock];
    (v23)[2](v23, 0, v21);
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

- (void)_accountRegistrationStatusChanged:(id)a3
{
  v105 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(CNFAccountRegistrar *)self account];

  v7 = 0x277CCA000uLL;
  if (v5 != v6)
  {
    goto LABEL_2;
  }

  v10 = [v5 registrationStatus];
  if (v10 <= 1)
  {
    if (v10 != -1)
    {
      if (v10)
      {
        if (v10 == 1)
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

    v24 = [v5 registrationFailureReason];
    v94 = [v5 registrationFailureAlertInfo];
    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
      *buf = 138412802;
      v100 = v5;
      v101 = 2112;
      v102 = v26;
      v103 = 2112;
      v104 = v94;
      _os_log_impl(&dword_243BE5000, v25, OS_LOG_TYPE_DEFAULT, "Account (%@) failed with failure reason: %@ and alert info %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v88 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
      v89 = v94;
      v87 = v5;
      IMLogString();
    }

    v91 = v94 == 0;
    if (v94)
    {
      v27 = [v94 objectForKey:*MEMORY[0x277D18C98]];
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

      v49 = [v94 objectForKey:*MEMORY[0x277D18C90]];
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

      v53 = [v94 objectForKey:*MEMORY[0x277D18C88]];
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

      v40 = [v94 objectForKey:*MEMORY[0x277D18C70]];
      v45 = [v40 valueForKey:*MEMORY[0x277D18C68]];
      v44 = [v40 valueForKey:*MEMORY[0x277D18C80]];
      v41 = [v40 valueForKey:*MEMORY[0x277D18C78]];
      v43 = [v41 integerValue] == 1;
      goto LABEL_66;
    }

    if (_os_feature_enabled_impl())
    {
      if (v24 == 28)
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

      if (v24 == 29)
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
    v62 = [(CNFAccountRegistrar *)self registrationTimer];
    [v62 invalidate];

    [(CNFAccountRegistrar *)self setRegistrationTimer:0];
    v63 = [(CNFAccountRegistrar *)self completionBlock];

    if (v63)
    {
      v64 = [(CNFAccountRegistrar *)self completionBlock];
      (v64)[2](v64, v16, v15);
    }

    [(CNFAccountRegistrar *)self setAccount:0];
    v65 = [MEMORY[0x277CCAB98] defaultCenter];
    [v65 removeObserver:self];

    goto LABEL_77;
  }

  if (v10 > 3)
  {
    if (v10 != 4)
    {
      if (v10 != 5)
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
    if (v10 != 2)
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

      v12 = [v5 aliasesToRegister];
      if ([v12 count] || (objc_msgSend(v5, "canSendMessages") & 1) != 0)
      {
        [(CNFAccountRegistrar *)self _continueRegisteringAuthenticatedAccount:v5];

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
      v79 = [MEMORY[0x277D18D28] sharedInstance];
      [v79 deactivateAccount:v5];

      v80 = [MEMORY[0x277D18D28] sharedInstance];
      [v80 deleteAccount:v5];

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
  v8 = [*(v7 + 2968) defaultCenter];
  [v8 postNotificationName:@"CNFAccountRegistarStateChangedNotification" object:0];

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