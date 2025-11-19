@interface BKMesaSecureIntentProvider
- (BKSecureIntentDisplayHost)displayHost;
- (BOOL)hasFingergprintsEnrolled;
- (BOOL)needsToDisplayUI;
- (UIWindow)alertWindow;
- (id)initInBuddy:(BOOL)a3 withBKUIDevice:(id)a4;
- (void)_getSecureIntentForAccessory:(id)a3 enrollmentOperation:(id)a4 showErrorToRetry:(BOOL)a5 withCompletionHandler:(id)a6;
- (void)_handleTouchIDEventWithParameters:(id)a3;
- (void)_startMonitoringPowerButton;
- (void)_stopMonitoringPowerButton;
- (void)configureIntentView;
- (void)dismissSecureIntentViewForUserInteraction;
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
- (void)getSecureIntentForAccessory:(id)a3 enrollmentOperation:(id)a4 withCompletionHandler:(id)a5;
- (void)invalidateAuthContext;
- (void)showAlert:(id)a3 detailedText:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation BKMesaSecureIntentProvider

- (id)initInBuddy:(BOOL)a3 withBKUIDevice:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BKMesaSecureIntentProvider;
  v8 = [(BKMesaSecureIntentProvider *)&v14 init];
  if (v8)
  {
    v9 = objc_opt_new();
    context = v8->_context;
    v8->_context = v9;

    [(LAContext *)v8->_context setUiDelegate:v8];
    v8->_inBuddy = a3;
    objc_storeStrong(&v8->_currentDevice, a4);
    v11 = os_log_create("com.apple.biometrickitui", "BKMesaSecureIntentProvider");
    authManagerLogs = v8->authManagerLogs;
    v8->authManagerLogs = v11;
  }

  return v8;
}

- (void)getSecureIntentForAccessory:(id)a3 enrollmentOperation:(id)a4 withCompletionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BKMesaSecureIntentProvider *)self _isMonitoringPowerButton];
  authManagerLogs = self->authManagerLogs;
  v13 = os_log_type_enabled(authManagerLogs, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_241B0A000, authManagerLogs, OS_LOG_TYPE_DEFAULT, "Refused to start getSecureIntentForAccessory as we are already monitoring the Power Button for Secure Intent", &v18, 2u);
    }
  }

  else
  {
    if (v13)
    {
      v14 = authManagerLogs;
      v15 = [v8 description];
      v16 = [v9 description];
      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_241B0A000, v14, OS_LOG_TYPE_DEFAULT, "Start getSecureIntentForAccessory with accessory:%@, operation:%@", &v18, 0x16u);
    }

    [(BKMesaSecureIntentProvider *)self _startMonitoringPowerButton];
    [(BKMesaSecureIntentProvider *)self _getSecureIntentForAccessory:v8 enrollmentOperation:v9 showErrorToRetry:0 withCompletionHandler:v10];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_getSecureIntentForAccessory:(id)a3 enrollmentOperation:(id)a4 showErrorToRetry:(BOOL)a5 withCompletionHandler:(id)a6
{
  v7 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  authManagerLogs = self->authManagerLogs;
  if (os_log_type_enabled(authManagerLogs, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v36 = v7;
    _os_log_impl(&dword_241B0A000, authManagerLogs, OS_LOG_TYPE_DEFAULT, "_getSecureIntentForAccessory ... showRetry:%i", buf, 8u);
  }

  v14 = [(BKMesaSecureIntentProvider *)self context];

  if (v14)
  {
    v15 = [(BKMesaSecureIntentProvider *)self context];
    [v15 setUiDelegate:0];

    [(BKMesaSecureIntentProvider *)self setContext:0];
  }

  v16 = [(BKMesaSecureIntentProvider *)self context];

  if (!v16)
  {
    v17 = objc_opt_new();
    [(BKMesaSecureIntentProvider *)self setContext:v17];

    v18 = [(BKMesaSecureIntentProvider *)self context];
    [v18 setUiDelegate:self];
  }

  if (![(BKMesaSecureIntentProvider *)self hasFingergprintsEnrolled]|| v11 || self->_hasAttemptedCrossMatch)
  {
    v19 = [MEMORY[0x277CBEB38] dictionary];
    [v19 setObject:MEMORY[0x277CBEC28] forKey:&unk_2853CCB28];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __118__BKMesaSecureIntentProvider__getSecureIntentForAccessory_enrollmentOperation_showErrorToRetry_withCompletionHandler___block_invoke_26;
    aBlock[3] = &unk_278D0A110;
    v30 = v7;
    aBlock[4] = self;
    v21 = _Block_copy(aBlock);
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v21[2](v21);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __118__BKMesaSecureIntentProvider__getSecureIntentForAccessory_enrollmentOperation_showErrorToRetry_withCompletionHandler___block_invoke_2_28;
      block[3] = &unk_278D09E20;
      v21 = v21;
      v28 = v21;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v19 = [MEMORY[0x277CBEB38] dictionary];
    v20 = self->authManagerLogs;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v20, OS_LOG_TYPE_DEFAULT, "SI has finger print enrolled ... trying crossmatch", buf, 2u);
    }

    if (self->_inBuddy)
    {

      v19 = 0;
      self->_touchIDMatch = 0;
      self->_touchIDMatchAttemptCount = 0;
    }

    else
    {
      v22 = [(BKMesaSecureIntentProvider *)self context];
      [v22 setUiDelegate:0];

      [v19 setObject:MEMORY[0x277CBEC28] forKey:&unk_2853CCAF8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"SI_SETTINGS_CROSS_MATCH_REQUEST_PROMPT" value:&stru_2853BB280 table:@"BiometricKitUI-A222"];

      [v19 setObject:v24 forKey:&unk_2853CCB10];
    }

    v25 = [(BKMesaSecureIntentProvider *)self context];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __118__BKMesaSecureIntentProvider__getSecureIntentForAccessory_enrollmentOperation_showErrorToRetry_withCompletionHandler___block_invoke;
    v31[3] = &unk_278D0A9D8;
    v31[4] = self;
    v34 = v12;
    v32 = v10;
    v33 = 0;
    [v25 evaluatePolicy:1 options:v19 reply:v31];

    v21 = v34;
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __118__BKMesaSecureIntentProvider__getSecureIntentForAccessory_enrollmentOperation_showErrorToRetry_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "SI local auth succeeded, keyboard SI aquired.", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__BKMesaSecureIntentProvider__getSecureIntentForAccessory_enrollmentOperation_showErrorToRetry_withCompletionHandler___block_invoke_15;
    block[3] = &unk_278D0A988;
    block[4] = *(a1 + 32);
    v30 = *(a1 + 56);
    v29 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v9 = v30;
    goto LABEL_5;
  }

  v10 = *(a1 + 32);
  if (!v6)
  {
    *(v10 + 18) = 0;
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"SI_CROSS_MATCH_WRONG_SENSOR_TITLE" value:&stru_2853BB280 table:@"BiometricKitUI-A222"];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SI_CROSS_MATCH_WRONG_SENSOR_BODY" value:&stru_2853BB280 table:@"BiometricKitUI-A222"];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __118__BKMesaSecureIntentProvider__getSecureIntentForAccessory_enrollmentOperation_showErrorToRetry_withCompletionHandler___block_invoke_2;
    v25[3] = &unk_278D0A9B0;
    v24 = *(a1 + 32);
    v20 = *(&v24 + 1);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    *&v23 = v21;
    *(&v23 + 1) = v22;
    v26 = v24;
    v27 = v23;
    [v15 showAlert:v17 detailedText:v19 withCompletionHandler:v25];

    v9 = *(&v26 + 1);
LABEL_5:

    goto LABEL_10;
  }

  v11 = *(v10 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v7 localizedDescription];
    *buf = 138412290;
    v32 = v13;
    _os_log_impl(&dword_241B0A000, v12, OS_LOG_TYPE_DEFAULT, "SI local auth failed ... trying power button press SI. %@", buf, 0xCu);
  }

  *(*(a1 + 32) + 18) = 1;
  [*(a1 + 32) _getSecureIntentForAccessory:*(a1 + 40) enrollmentOperation:*(a1 + 48) showErrorToRetry:0 withCompletionHandler:*(a1 + 56)];
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __118__BKMesaSecureIntentProvider__getSecureIntentForAccessory_enrollmentOperation_showErrorToRetry_withCompletionHandler___block_invoke_15(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 17) = 0;
  *(*(a1 + 32) + 18) = 1;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 32) context];
    v4 = [v3 externalizedContext];
    (*(v2 + 16))(v2, v4, 1, *(a1 + 40));
  }

  v5 = [*(a1 + 32) displayHost];
  [v5 removeSecureIntentView:0 didSucceed:1 wasCancelled:0];

  v6 = *(a1 + 32);

  return [v6 _stopMonitoringPowerButton];
}

void __118__BKMesaSecureIntentProvider__getSecureIntentForAccessory_enrollmentOperation_showErrorToRetry_withCompletionHandler___block_invoke_26(uint64_t a1)
{
  if (*(a1 + 40) == 1 && ([*(a1 + 32) presentingView], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "superview"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v7 = [*(a1 + 32) presentingView];
    [v7 showRetryOnErrorUI];
  }

  else
  {
    [*(a1 + 32) configureIntentView];
    v4 = [*(a1 + 32) presentingView];
    [v4 setNeedsDisplay];

    v5 = [*(a1 + 32) presentingView];
    [v5 showInitialUI];

    v7 = [*(a1 + 32) displayHost];
    v6 = [*(a1 + 32) presentingView];
    [v7 displaySecureIntentView:v6];
  }
}

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  authManagerLogs = self->authManagerLogs;
  if (os_log_type_enabled(authManagerLogs, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = a3;
    _os_log_impl(&dword_241B0A000, authManagerLogs, OS_LOG_TYPE_DEFAULT, "TrustedAccessory local auth event %ld", buf, 0xCu);
  }

  if (a3 == 1)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__BKMesaSecureIntentProvider_event_params_reply___block_invoke;
    v22[3] = &unk_278D09A38;
    v22[4] = self;
    v23 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v22);
  }

  else if (a3 == 9)
  {
    v11 = [v8 objectForKeyedSubscript:&unk_2853CCB40];

    if (v11)
    {
      v12 = [v8 objectForKeyedSubscript:&unk_2853CCB40];
      self->_authParamActive = [v12 BOOLValue];
    }

    authParamActive = self->_authParamActive;
    v14 = self->authManagerLogs;
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (authParamActive)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_241B0A000, v14, OS_LOG_TYPE_DEFAULT, "TrustedAccessory Power Button LAEventParamActive: YES", buf, 2u);
      }

      v16 = [v8 objectForKeyedSubscript:&unk_2853CCB58];

      if (v16)
      {
        v17 = [v8 objectForKeyedSubscript:&unk_2853CCB58];
        self->_pushCredentialPresent = [v17 BOOLValue];
      }

      if (self->_pushCredentialPresent)
      {
        v18 = self->authManagerLogs;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v19 = "TrustedAccessory Power Button LAEventParamPushButtonCredentialPresent: YES";
          v20 = v18;
LABEL_18:
          _os_log_impl(&dword_241B0A000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
        }
      }
    }

    else if (v15)
    {
      *buf = 0;
      v19 = "TrustedAccessory Power Button LAEventParamActive: NO";
      v20 = v14;
      goto LABEL_18;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleTouchIDEventWithParameters:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_touchIDMatch)
  {
    v6 = [v4 objectForKeyedSubscript:&unk_2853CCB40];

    if (v6)
    {
      v7 = [v5 objectForKeyedSubscript:&unk_2853CCB40];
      self->_authParamActive = [v7 BOOLValue];
    }

    authParamActive = self->_authParamActive;
    authManagerLogs = self->authManagerLogs;
    v10 = os_log_type_enabled(authManagerLogs, OS_LOG_TYPE_DEFAULT);
    if (authParamActive)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_241B0A000, authManagerLogs, OS_LOG_TYPE_DEFAULT, "TrustedAccessory Touch ID LAEventParamActive: YES", buf, 2u);
      }

      v11 = [v5 objectForKeyedSubscript:&unk_2853CCB70];
      v12 = v11;
      if (!v11)
      {
        goto LABEL_27;
      }

      v13 = [v11 integerValue];
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          if (v13 == 3)
          {
            v17 = self->_touchIDMatchAttemptCount + 1;
            self->_touchIDMatchAttemptCount = v17;
            if (v17 > 2)
            {
              v22 = self->authManagerLogs;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *v24 = 0;
                _os_log_impl(&dword_241B0A000, v22, OS_LOG_TYPE_DEFAULT, "TrustedAccessory Touch ID Max match exceeded triggering auth fail.", v24, 2u);
              }

              v23 = [(BKMesaSecureIntentProvider *)self context];
              [v23 invalidate];
            }

            else
            {
              v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v19 = [v18 localizedStringForKey:@"SI_CROSS_MATCH_AUTH_FAIL_TITLE" value:&stru_2853BB280 table:@"BiometricKitUI-A222"];
              v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v21 = [v20 localizedStringForKey:@"SI_CROSS_MATCH_AUTH_FAIL_BODY" value:&stru_2853BB280 table:@"BiometricKitUI-A222"];
              [(BKMesaSecureIntentProvider *)self showAlert:v19 detailedText:v21 withCompletionHandler:0];
            }
          }

          goto LABEL_27;
        }

        self->_touchIDMatch = 1;
        v14 = self->authManagerLogs;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          v15 = "TrustedAccessory Touch ID LATouchIDSimpleStatusMatch";
          v16 = v25;
          goto LABEL_23;
        }
      }

      else
      {
        if (v13)
        {
          if (v13 != 1)
          {
            goto LABEL_27;
          }

          v14 = self->authManagerLogs;
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          v26 = 0;
          v15 = "TrustedAccessory Touch ID LATouchIDSimpleStatusFingerOff";
          v16 = &v26;
          goto LABEL_23;
        }

        v14 = self->authManagerLogs;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 0;
          v15 = "TrustedAccessory Touch ID LATouchIDSimpleStatusFingerOn";
          v16 = &v27;
LABEL_23:
          _os_log_impl(&dword_241B0A000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
        }
      }

LABEL_27:

      goto LABEL_28;
    }

    if (v10)
    {
      *v29 = 0;
      _os_log_impl(&dword_241B0A000, authManagerLogs, OS_LOG_TYPE_DEFAULT, "TrustedAccessory Touch ID LAEventParamActive: NO", v29, 2u);
    }
  }

LABEL_28:
}

- (void)configureIntentView
{
  v3 = [(BKMesaSecureIntentProvider *)self presentingView];

  if (!v3)
  {
    v4 = [(BKMesaSecureIntentProvider *)self displayHost];
    v5 = [v4 inBuddy];

    if (v5)
    {
      v9 = [(BKMesaSecureIntentProvider *)self currentDevice];
      v6 = [BuddySecureIntentClientView instanceForBKUIDevice:?];
      [(BKMesaSecureIntentProvider *)self setPresentingView:v6];
    }

    else
    {
      if ([(BKMesaSecureIntentProvider *)self inDemo]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        v7 = [BKUISettingsSecureIntentClientView instanceForDemo:1];
        [(BKMesaSecureIntentProvider *)self setPresentingView:v7];
      }

      else
      {
        v7 = [(BKMesaSecureIntentProvider *)self currentDevice];
        v8 = [BKUISettingsSecureIntentClientView instanceForBKUIDevice:v7];
        [(BKMesaSecureIntentProvider *)self setPresentingView:v8];
      }

      v9 = [(BKMesaSecureIntentProvider *)self presentingView];
      [v9 setSecureIntentProvider:self];
    }
  }
}

- (void)dismissSecureIntentViewForUserInteraction
{
  [(BKMesaSecureIntentProvider *)self invalidateAuthContext];
  v4 = [(BKMesaSecureIntentProvider *)self displayHost];
  v3 = [(BKMesaSecureIntentProvider *)self presentingView];
  [v4 removeSecureIntentView:v3 didSucceed:0 wasCancelled:0];
}

- (void)invalidateAuthContext
{
  v3 = [(BKMesaSecureIntentProvider *)self context];
  [v3 invalidate];

  [(BKMesaSecureIntentProvider *)self setContext:0];
}

- (void)_startMonitoringPowerButton
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6(&dword_241B0A000, a2, a3, "%@ Failed to set up HID client", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoringPowerButton
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6(&dword_241B0A000, a2, a3, "%@ is not monitoring Power button", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasFingergprintsEnrolled
{
  v2 = [(BKMesaSecureIntentProvider *)self displayHost];
  v3 = [v2 _bkIdentityCount] != 0;

  return v3;
}

- (void)showAlert:(id)a3 detailedText:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__BKMesaSecureIntentProvider_showAlert_detailedText_withCompletionHandler___block_invoke;
  v14[3] = &unk_278D0A9B0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __75__BKMesaSecureIntentProvider_showAlert_detailedText_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayHost];
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 40) message:*(a1 + 48) preferredStyle:1];
  v4 = MEMORY[0x277D750F8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_2853BB280 table:@"BiometricKitUI-A222"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__BKMesaSecureIntentProvider_showAlert_detailedText_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_278D0AA00;
  v9 = *(a1 + 56);
  v7 = [v4 actionWithTitle:v6 style:2 handler:v8];
  [v3 addAction:v7];

  [v2 presentViewController:v3 animated:1 completion:0];
}

uint64_t __75__BKMesaSecureIntentProvider_showAlert_detailedText_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)needsToDisplayUI
{
  v3 = [(BKMesaSecureIntentProvider *)self presentingView];
  v4 = [v3 superview];
  if (v4)
  {
    v5 = 1;
  }

  else if ([(BKMesaSecureIntentProvider *)self hasFingergprintsEnrolled])
  {
    v5 = !self->_hasAttemptedCrossMatch;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIWindow)alertWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_alertWindow);

  return WeakRetained;
}

- (BKSecureIntentDisplayHost)displayHost
{
  WeakRetained = objc_loadWeakRetained(&self->_displayHost);

  return WeakRetained;
}

@end