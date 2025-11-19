@interface CDPUIBaseController
- (CDPUIBaseController)initWithPresentingViewController:(id)a3;
- (UIViewController)presentingViewController;
- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4;
- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7;
- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForLocalSecretWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6;
- (void)cdpContext:(id)a3 showError:(id)a4 withDefaultIndex:(int64_t)a5 withCompletion:(id)a6;
- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5;
- (void)createLocalSecretWithCompletion:(id)a3;
@end

@implementation CDPUIBaseController

- (CDPUIBaseController)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v5 = [(CDPUIBaseController *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
  }

  return v6;
}

- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 appleID];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CF0380]);
    v10 = [v6 appleID];
    [v9 setUsername:v10];

    v11 = [v6 altDSID];
    [v9 setAltDSID:v11];

    v12 = [v6 dsid];
    v13 = [v12 stringValue];
    [v9 setDSID:v13];

    [v9 setAuthenticationType:2];
    [v9 setIgnorePasswordCache:{objc_msgSend(v6, "ignorePasswordCache")}];
    [v9 setAnticipateEscrowAttempt:1];
    [v9 setIsUsernameEditable:0];
    [v9 setSupportsPiggybacking:1];
    [v9 setShouldOfferSecurityUpgrade:1];
    v14 = [(CDPUIBaseController *)self presentingViewController];
    v15 = [v14 presentedViewController];
    if (v15)
    {
      [v9 setPresentingViewController:v15];
    }

    else
    {
      v16 = [(CDPUIBaseController *)self presentingViewController];
      [v9 setPresentingViewController:v16];
    }

    if ([v6 type] == 6)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CFD508] builderForKey:@"LOCAL_SECRET_PASSWORD_PROMPT"];
      v19 = [v18 localizedString];
      v20 = [v6 appleID];
      v21 = [v17 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:0, v20];
      [v9 setReason:v21];
    }

    v22 = _CDPLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v6 appleID];
      v24 = [v9 presentingViewController];
      *buf = 138740227;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_2451DB000, v22, OS_LOG_TYPE_DEFAULT, "Attempting to perform an interactive authentication for %{sensitive}@... using %@", buf, 0x16u);
    }

    v25 = objc_alloc_init(MEMORY[0x277CF0178]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__CDPUIBaseController_cdpContext_promptForInteractiveAuthenticationWithCompletion___block_invoke;
    v26[3] = &unk_278E2BB90;
    v27 = v7;
    [v25 authenticateWithContext:v9 completion:v26];

    goto LABEL_12;
  }

  if (v7)
  {
    v9 = _CDPStateError();
    (*(v7 + 2))(v7, 0, v9);
LABEL_12:
  }
}

uint64_t __83__CDPUIBaseController_cdpContext_promptForInteractiveAuthenticationWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cdpContext:(id)a3 showError:(id)a4 withDefaultIndex:(int64_t)a5 withCompletion:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = MEMORY[0x277D75110];
  v12 = [v9 localizedDescription];
  v13 = [v9 localizedFailureReason];
  v14 = [v11 alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  v15 = [v9 localizedRecoveryOptions];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__CDPUIBaseController_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke;
  v31[3] = &unk_278E2BDB8;
  v16 = v10;
  v34 = v16;
  v17 = v14;
  v32 = v17;
  v35 = a5;
  v18 = v9;
  v33 = v18;
  [v15 enumerateObjectsUsingBlock:v31];

  v19 = [v17 actions];
  v20 = [v19 count];

  if (!v20)
  {
    v21 = MEMORY[0x277D750F8];
    v22 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
    v23 = [v22 localizedString];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __76__CDPUIBaseController_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke_3;
    v29[3] = &unk_278E2B370;
    v30 = v16;
    v24 = [v21 actionWithTitle:v23 style:0 handler:v29];

    [v17 addAction:v24];
  }

  v25 = [(CDPUIBaseController *)self presentingViewController];
  v26 = [v25 presentedViewController];
  v27 = v26;
  if (v26)
  {
    [v26 presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    v28 = [(CDPUIBaseController *)self presentingViewController];
    [v28 presentViewController:v17 animated:1 completion:0];
  }
}

void __76__CDPUIBaseController_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D750F8];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __76__CDPUIBaseController_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke_2;
  v13 = &unk_278E2BD90;
  v14 = *(a1 + 48);
  v15 = a3;
  v7 = [v6 actionWithTitle:a2 style:0 handler:&v10];
  [*(a1 + 32) addAction:{v7, v10, v11, v12, v13}];
  if (*(a1 + 56) == a3)
  {
    if (![MEMORY[0x277CFD560] isICSCHarmonizationEnabled] || (objc_msgSend(*(a1 + 40), "localizedRecoveryOptions"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9 <= 2))
    {
      [*(a1 + 32) setPreferredAction:v7];
    }
  }
}

- (void)cdpContext:(id)a3 promptForLocalSecretWithCompletion:(id)a4
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CDPUIBaseController cdpContext:promptForLocalSecretWithCompletion:];
  }
}

- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6
{
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CDPUIBaseController cdpContext:promptForLocalSecretWithCompletion:];
  }
}

- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [CDPUIBaseController cdpRecoveryFlowContext:promptForRemoteSecretWithDevices:validator:];
  }
}

- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7
{
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CDPUIBaseController cdpContext:promptForLocalSecretWithCompletion:];
  }
}

- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CDPUIBaseController cdpContext:promptForLocalSecretWithCompletion:];
  }
}

- (void)createLocalSecretWithCompletion:(id)a3
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CDPUIBaseController cdpContext:promptForLocalSecretWithCompletion:];
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end