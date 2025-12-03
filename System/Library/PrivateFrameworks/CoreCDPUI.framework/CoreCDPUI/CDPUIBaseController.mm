@interface CDPUIBaseController
- (CDPUIBaseController)initWithPresentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (void)cdpContext:(id)context promptForAdoptionOfMultipleICSC:(id)c;
- (void)cdpContext:(id)context promptForICSCWithIsNumeric:(BOOL)numeric numericLength:(id)length isRandom:(BOOL)random validator:(id)validator;
- (void)cdpContext:(id)context promptForInteractiveAuthenticationWithCompletion:(id)completion;
- (void)cdpContext:(id)context promptForLocalSecretWithCompletion:(id)completion;
- (void)cdpContext:(id)context promptForRemoteSecretWithDevices:(id)devices offeringRemoteApproval:(BOOL)approval validator:(id)validator;
- (void)cdpContext:(id)context showError:(id)error withDefaultIndex:(int64_t)index withCompletion:(id)completion;
- (void)cdpRecoveryFlowContext:(id)context promptForRemoteSecretWithDevices:(id)devices validator:(id)validator;
- (void)createLocalSecretWithCompletion:(id)completion;
@end

@implementation CDPUIBaseController

- (CDPUIBaseController)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CDPUIBaseController *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
  }

  return v6;
}

- (void)cdpContext:(id)context promptForInteractiveAuthenticationWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  appleID = [contextCopy appleID];

  if (appleID)
  {
    v9 = objc_alloc_init(MEMORY[0x277CF0380]);
    appleID2 = [contextCopy appleID];
    [v9 setUsername:appleID2];

    altDSID = [contextCopy altDSID];
    [v9 setAltDSID:altDSID];

    dsid = [contextCopy dsid];
    stringValue = [dsid stringValue];
    [v9 setDSID:stringValue];

    [v9 setAuthenticationType:2];
    [v9 setIgnorePasswordCache:{objc_msgSend(contextCopy, "ignorePasswordCache")}];
    [v9 setAnticipateEscrowAttempt:1];
    [v9 setIsUsernameEditable:0];
    [v9 setSupportsPiggybacking:1];
    [v9 setShouldOfferSecurityUpgrade:1];
    presentingViewController = [(CDPUIBaseController *)self presentingViewController];
    presentedViewController = [presentingViewController presentedViewController];
    if (presentedViewController)
    {
      [v9 setPresentingViewController:presentedViewController];
    }

    else
    {
      presentingViewController2 = [(CDPUIBaseController *)self presentingViewController];
      [v9 setPresentingViewController:presentingViewController2];
    }

    if ([contextCopy type] == 6)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CFD508] builderForKey:@"LOCAL_SECRET_PASSWORD_PROMPT"];
      localizedString = [v18 localizedString];
      appleID3 = [contextCopy appleID];
      v21 = [v17 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, appleID3];
      [v9 setReason:v21];
    }

    v22 = _CDPLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      appleID4 = [contextCopy appleID];
      presentingViewController3 = [v9 presentingViewController];
      *buf = 138740227;
      v29 = appleID4;
      v30 = 2112;
      v31 = presentingViewController3;
      _os_log_impl(&dword_2451DB000, v22, OS_LOG_TYPE_DEFAULT, "Attempting to perform an interactive authentication for %{sensitive}@... using %@", buf, 0x16u);
    }

    v25 = objc_alloc_init(MEMORY[0x277CF0178]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__CDPUIBaseController_cdpContext_promptForInteractiveAuthenticationWithCompletion___block_invoke;
    v26[3] = &unk_278E2BB90;
    v27 = completionCopy;
    [v25 authenticateWithContext:v9 completion:v26];

    goto LABEL_12;
  }

  if (completionCopy)
  {
    v9 = _CDPStateError();
    (*(completionCopy + 2))(completionCopy, 0, v9);
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

- (void)cdpContext:(id)context showError:(id)error withDefaultIndex:(int64_t)index withCompletion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v11 = MEMORY[0x277D75110];
  localizedDescription = [errorCopy localizedDescription];
  localizedFailureReason = [errorCopy localizedFailureReason];
  v14 = [v11 alertControllerWithTitle:localizedDescription message:localizedFailureReason preferredStyle:1];

  localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__CDPUIBaseController_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke;
  v31[3] = &unk_278E2BDB8;
  v16 = completionCopy;
  v34 = v16;
  v17 = v14;
  v32 = v17;
  indexCopy = index;
  v18 = errorCopy;
  v33 = v18;
  [localizedRecoveryOptions enumerateObjectsUsingBlock:v31];

  actions = [v17 actions];
  v20 = [actions count];

  if (!v20)
  {
    v21 = MEMORY[0x277D750F8];
    v22 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
    localizedString = [v22 localizedString];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __76__CDPUIBaseController_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke_3;
    v29[3] = &unk_278E2B370;
    v30 = v16;
    v24 = [v21 actionWithTitle:localizedString style:0 handler:v29];

    [v17 addAction:v24];
  }

  presentingViewController = [(CDPUIBaseController *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];
  v27 = presentedViewController;
  if (presentedViewController)
  {
    [presentedViewController presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    presentingViewController2 = [(CDPUIBaseController *)self presentingViewController];
    [presentingViewController2 presentViewController:v17 animated:1 completion:0];
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

- (void)cdpContext:(id)context promptForLocalSecretWithCompletion:(id)completion
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CDPUIBaseController cdpContext:promptForLocalSecretWithCompletion:];
  }
}

- (void)cdpContext:(id)context promptForRemoteSecretWithDevices:(id)devices offeringRemoteApproval:(BOOL)approval validator:(id)validator
{
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CDPUIBaseController cdpContext:promptForLocalSecretWithCompletion:];
  }
}

- (void)cdpRecoveryFlowContext:(id)context promptForRemoteSecretWithDevices:(id)devices validator:(id)validator
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [CDPUIBaseController cdpRecoveryFlowContext:promptForRemoteSecretWithDevices:validator:];
  }
}

- (void)cdpContext:(id)context promptForICSCWithIsNumeric:(BOOL)numeric numericLength:(id)length isRandom:(BOOL)random validator:(id)validator
{
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CDPUIBaseController cdpContext:promptForLocalSecretWithCompletion:];
  }
}

- (void)cdpContext:(id)context promptForAdoptionOfMultipleICSC:(id)c
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CDPUIBaseController cdpContext:promptForLocalSecretWithCompletion:];
  }
}

- (void)createLocalSecretWithCompletion:(id)completion
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