@interface CNFRegSecureAccountWebViewController
- (CNFRegSecureAccountWebViewController)initWithRegController:(id)a3 account:(id)a4;
- (id)authIdHeaderValue;
- (id)authTokenHeaderValue;
- (void)_incrementSigninFailureCount;
- (void)_launchForgotPasswordUrl;
- (void)_setupAccountHandlers;
- (void)_showBadPasswordAlert;
- (void)_showForgotPasswordAlert;
- (void)_showRegistrationFailureWithError:(id)a3;
- (void)_showRequestPasswordAlert;
@end

@implementation CNFRegSecureAccountWebViewController

- (CNFRegSecureAccountWebViewController)initWithRegController:(id)a3 account:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CNFRegSecureAccountWebViewController;
  v7 = [(CNFRegAccountWebViewController *)&v10 initWithRegController:a3];
  v8 = v7;
  if (v7)
  {
    [(CNFRegSecureAccountWebViewController *)v7 setAccount:v6];
    v8->_gotNewCredential = 0;
  }

  return v8;
}

- (void)_showRegistrationFailureWithError:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 code];
    if ([(CNFRegServerWebViewController *)self _shouldLog])
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = v5;
        v42 = 2048;
        v43 = v6;
        _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Received sign in error : %@ (%ld)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v34 = v5;
        v35 = v6;
        IMLogString();
      }
    }
  }

  v8 = [(CNFRegServerWebViewController *)self regController:v34];
  v9 = [v8 shouldShowAlertForError:v5];

  if (v9)
  {
    v10 = [v5 userInfo];
    v11 = [v10 objectForKey:@"cnf-customTitle"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = CommunicationsSetupUIBundle();
      v15 = CNFRegStringTableName();
      v13 = [v14 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v15];
    }

    v16 = [v5 localizedDescription];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v19 = CommunicationsSetupUIBundle();
      v20 = CNFRegStringTableName();
      v18 = [v19 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_GENERIC" value:&stru_2856D3978 table:v20];
    }

    v21 = [v5 userInfo];
    v22 = [v21 objectForKey:@"cnf-customButton"];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v25 = CommunicationsSetupUIBundle();
      v26 = CNFRegStringTableName();
      v24 = [v25 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v26];
    }

    v27 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v18 preferredStyle:1];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __74__CNFRegSecureAccountWebViewController__showRegistrationFailureWithError___block_invoke;
    v39[3] = &unk_278DE8328;
    v39[4] = self;
    v28 = [MEMORY[0x277D750F8] actionWithTitle:v24 style:0 handler:v39];
    [v27 addAction:v28];

    v29 = [v5 userInfo];
    v30 = [v29 objectForKey:@"cnf-customActionTitle"];

    if (v30)
    {
      v31 = MEMORY[0x277D750F8];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __74__CNFRegSecureAccountWebViewController__showRegistrationFailureWithError___block_invoke_2;
      v36[3] = &unk_278DE8420;
      v37 = v5;
      v38 = self;
      v32 = [v31 actionWithTitle:v30 style:0 handler:v36];
      [v27 addAction:v32];
    }

    [(CNFRegSecureAccountWebViewController *)self presentViewController:v27 animated:1 completion:0];
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __74__CNFRegSecureAccountWebViewController__showRegistrationFailureWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[135] >= 3uLL)
  {
    return [v1 _showForgotPasswordAlert];
  }

  else
  {
    return [v1 _showRequestPasswordAlert];
  }
}

void __74__CNFRegSecureAccountWebViewController__showRegistrationFailureWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKey:@"cnf-customActionURLString"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    if (v6)
    {
      if ([*(a1 + 40) _shouldLog])
      {
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = v6;
          _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Launching URL : %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v10 = v6;
          IMLogString();
        }
      }

      v8 = [*(a1 + 40) regController];
      [v8 openURL:v6];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_showBadPasswordAlert
{
  v3 = _os_feature_enabled_impl();
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  if (v3)
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE_APPLEACCOUNT";
  }

  else
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2856D3978 table:v5];

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_INVALID_CREDENTIALS_FOR_%@" value:&stru_2856D3978 table:v9];

  v11 = [(CNFRegSecureAccountWebViewController *)self account];
  v12 = [v11 loginDisplayString];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v12];
  v14 = CommunicationsSetupUIBundle();
  v15 = CNFRegStringTableName();
  v16 = [v14 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v15];

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v13 preferredStyle:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__CNFRegSecureAccountWebViewController__showBadPasswordAlert__block_invoke;
  v19[3] = &unk_278DE8328;
  v19[4] = self;
  v18 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:0 handler:v19];
  [v17 addAction:v18];

  [(CNFRegSecureAccountWebViewController *)self presentViewController:v17 animated:1 completion:0];
}

uint64_t __61__CNFRegSecureAccountWebViewController__showBadPasswordAlert__block_invoke(uint64_t a1)
{
  CNFRegLogBacktrace();
  v2 = *(a1 + 32);

  return [v2 _showRequestPasswordAlert];
}

- (void)_showRequestPasswordAlert
{
  v3 = _os_feature_enabled_impl();
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  if (v3)
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE_APPLEACCOUNT";
  }

  else
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2856D3978 table:v5];

  v8 = [(CNFRegSecureAccountWebViewController *)self account];
  v9 = [v8 loginDisplayString];

  v10 = CommunicationsSetupUIBundle();
  v11 = CNFRegStringTableName();
  v12 = [v10 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v11];

  v13 = CommunicationsSetupUIBundle();
  v14 = CNFRegStringTableName();
  v15 = [v13 localizedStringForKey:@"FACETIME_SIGNIN_BUTTON_LABEL" value:&stru_2856D3978 table:v14];

  v16 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  [v16 addTextFieldWithConfigurationHandler:&__block_literal_global_9];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __65__CNFRegSecureAccountWebViewController__showRequestPasswordAlert__block_invoke_2;
  v24[3] = &unk_278DE8328;
  v24[4] = self;
  v17 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:v24];
  [v16 addAction:v17];

  v18 = MEMORY[0x277D750F8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__CNFRegSecureAccountWebViewController__showRequestPasswordAlert__block_invoke_3;
  v21[3] = &unk_278DE8420;
  v22 = v16;
  v23 = self;
  v19 = v16;
  v20 = [v18 actionWithTitle:v15 style:0 handler:v21];
  [v19 addAction:v20];

  [(CNFRegSecureAccountWebViewController *)self presentViewController:v19 animated:1 completion:0];
}

void __65__CNFRegSecureAccountWebViewController__showRequestPasswordAlert__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v12 = [v2 firstObject];

  v3 = [v12 text];
  v4 = v3;
  if (v3 && [v3 length])
  {
    [*(a1 + 40) showSpinner];
    v5 = [*(a1 + 40) account];
    v6 = [*(a1 + 40) account];
    v7 = [v6 authorizationID];
    [v5 updateAuthorizationCredentials:v7 token:0];

    v8 = [*(a1 + 40) account];
    [v8 setTemporaryPassword:v4];

    v9 = [MEMORY[0x277D18D28] sharedInstance];
    v10 = [*(a1 + 40) account];
    [v9 activateAccount:v10];

    v11 = [*(a1 + 40) account];
    [v11 registerAccount];

    [*(a1 + 40) _startTimeoutWithDuration:20.0];
  }

  else
  {
    [*(a1 + 40) _showBadPasswordAlert];
  }
}

- (void)_launchForgotPasswordUrl
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v2 = CNFRegiForgotURL();
  [v3 openURL:v2 withCompletionHandler:0];
}

- (void)_incrementSigninFailureCount
{
  signinFailureCount = self->_signinFailureCount;
  if (signinFailureCount != -1)
  {
    self->_signinFailureCount = signinFailureCount + 1;
  }
}

- (void)_showForgotPasswordAlert
{
  v3 = _os_feature_enabled_impl();
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  if (v3)
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE_APPLEACCOUNT";
  }

  else
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2856D3978 table:v5];

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_FORGOT_PASSWORD_ALERT_MESSAGE" value:&stru_2856D3978 table:v9];

  v11 = CommunicationsSetupUIBundle();
  v12 = CNFRegStringTableName();
  v13 = [v11 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v12];

  v14 = CommunicationsSetupUIBundle();
  v15 = CNFRegStringTableName();
  v16 = [v14 localizedStringForKey:@"FACETIME_FORGOT_PASSWORD_ALERT_OK" value:&stru_2856D3978 table:v15];

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v10 preferredStyle:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__CNFRegSecureAccountWebViewController__showForgotPasswordAlert__block_invoke;
  v21[3] = &unk_278DE8328;
  v21[4] = self;
  v18 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:v21];
  [v17 addAction:v18];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__CNFRegSecureAccountWebViewController__showForgotPasswordAlert__block_invoke_2;
  v20[3] = &unk_278DE8328;
  v20[4] = self;
  v19 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:0 handler:v20];
  [v17 addAction:v19];

  [(CNFRegSecureAccountWebViewController *)self presentViewController:v17 animated:1 completion:0];
}

- (id)authIdHeaderValue
{
  v2 = [(CNFRegSecureAccountWebViewController *)self account];
  v3 = [v2 authorizationID];

  return v3;
}

- (id)authTokenHeaderValue
{
  v2 = [(CNFRegSecureAccountWebViewController *)self account];
  v3 = [v2 authorizationToken];

  return v3;
}

- (void)_setupAccountHandlers
{
  v3 = [(CNFRegServerWebViewController *)self regController];
  [v3 removeAllHandlers];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__CNFRegSecureAccountWebViewController__setupAccountHandlers__block_invoke;
  v4[3] = &unk_278DE85A8;
  v4[4] = self;
  [v3 setAccountRegistrationBlock:v4];
}

void __61__CNFRegSecureAccountWebViewController__setupAccountHandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) account];
  if (v7 == v5 && (v8 = *(a1 + 32), v8[1072] == 1) && ([v8 timedOut] & 1) == 0)
  {
    v9 = *(*(a1 + 32) + 1073);

    if ((v9 & 1) == 0)
    {
      if ([v5 CNFRegSignInComplete])
      {
        if ([*(a1 + 32) _shouldLog])
        {
          v10 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "Got new account credentials, reloading page", v11, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            IMLogString();
          }
        }

        *(*(a1 + 32) + 1073) = 1;
        [*(a1 + 32) _resetSigninFailureCount];
        [*(a1 + 32) _stopTimeout];
        [*(a1 + 32) _reloadDelayed];
      }

      else if ([v5 CNFRegSignInFailed])
      {
        [*(a1 + 32) _incrementSigninFailureCount];
        [*(a1 + 32) _stopTimeout];
        [*(a1 + 32) _showRegistrationFailureWithError:v6];
      }
    }
  }

  else
  {
  }
}

@end