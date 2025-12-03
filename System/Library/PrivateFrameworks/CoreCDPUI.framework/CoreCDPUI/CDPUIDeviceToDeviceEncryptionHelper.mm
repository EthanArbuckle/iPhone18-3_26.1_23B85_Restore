@interface CDPUIDeviceToDeviceEncryptionHelper
+ (id)_newLegacyFlowContext;
+ (id)_newLegacyFlowContextForAltDSID:(id)d;
+ (id)_newLegacyFlowContextWithContext:(id)context;
- (BOOL)_hasLocalSecret;
- (BOOL)_hasManatee;
- (BOOL)_inCircle;
- (CDPUIDeviceToDeviceEncryptionHelper)initWithContext:(id)context;
- (CDPUIDeviceToDeviceEncryptionHelper)initWithPresentingViewController:(id)controller;
- (CDPUIDeviceToDeviceEncryptionHelperDelegate)delegate;
- (UIViewController)presentingViewController;
- (id)_authenticationContextForFlowContext:(id)context;
- (id)_cdpErrorWithUnderlyingError:(id)error;
- (id)_inAppAuthenticationContextForFlowContext:(id)context;
- (id)_newSpinnerViewController;
- (id)_presentingNavigationController;
- (id)_presentingViewController;
- (id)_repairContextForFlowContext:(id)context withAuthenticationResults:(id)results;
- (id)_stateControllerForFlowContext:(id)context withAuthenticationResults:(id)results;
- (id)_stateControllerWithRepairContext:(id)context;
- (void)_beginUpgradeFlowWithContext:(id)context completion:(id)completion;
- (void)_configureNavigationController;
- (void)_configurePresentingViewControllerForModalPresentation;
- (void)_continueAuthenticatedUpgradeFlowWithContext:(id)context authenticationResults:(id)results completion:(id)completion;
- (void)_continueUpgradeFlowWithContext:(id)context completion:(id)completion;
- (void)_createLocalSecretForContext:(id)context completion:(id)completion;
- (void)_determineEscrowRepairUpgradeEligibilityForContext:(id)context completion:(id)completion;
- (void)_determineManateeUpgradeEligibilityForContext:(id)context completion:(id)completion;
- (void)_determineSecurityUpgradeEligibilityForContext:(id)context completion:(id)completion;
- (void)_determineUpgradeEligibilityForContext:(id)context completion:(id)completion;
- (void)_dismissNavigationControllerWithCompletion:(id)completion;
- (void)_legacyRequestPermissionToContinueFlowWithCompletion:(id)completion;
- (void)_performAuthenticatedRepairFlowWithContext:(id)context stateController:(id)controller completion:(id)completion;
- (void)_postBiometricFollowUp;
- (void)_presentIneligibilityAlertForFlowContext:(id)context completion:(id)completion;
- (void)_presentSpinnerViewControllerWithCompletion:(id)completion;
- (void)_requestPermissionToCreatePasscodeForFlowContext:(id)context completion:(id)completion;
- (void)_validateLocalSecretForContext:(id)context withStateController:(id)controller completion:(id)completion;
- (void)dealloc;
- (void)localSecretValidationCanCancelWithViewController:(id)controller completion:(id)completion;
- (void)performDeviceToDeviceEncryptionStateRepairForContext:(id)context withCompletion:(id)completion;
- (void)performDeviceToDeviceEncryptionStateRepairWithCompletion:(id)completion;
@end

@implementation CDPUIDeviceToDeviceEncryptionHelper

- (CDPUIDeviceToDeviceEncryptionHelper)initWithContext:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = CDPUIDeviceToDeviceEncryptionHelper;
  v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF0178]);
    authenticationController = v6->_authenticationController;
    v6->_authenticationController = v7;

    objc_storeStrong(&v6->_context, context);
    if ([MEMORY[0x277CFD560] canEnableMultiUserManatee])
    {
      v9 = objc_alloc(MEMORY[0x277CFDAA0]);
      altDSID = [contextCopy altDSID];
      telemetryFlowID = [contextCopy telemetryFlowID];
      v12 = [v9 initWithAltDSID:altDSID telemetryFlowID:telemetryFlowID];
      followUpProvider = v6->_followUpProvider;
      v6->_followUpProvider = v12;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CFDAA0]);
      altDSID = v6->_followUpProvider;
      v6->_followUpProvider = v14;
    }
  }

  return v6;
}

- (CDPUIDeviceToDeviceEncryptionHelper)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v5 = +[CDPUIDeviceToDeviceEncryptionHelper _newLegacyFlowContext];
  v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)self initWithContext:v5];

  if (v6)
  {
    objc_storeWeak(&v6->_presentingViewController, controllerCopy);
  }

  return v6;
}

- (void)dealloc
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_2451DB000, v0, OS_LOG_TYPE_DEBUG, "CDPUIDeviceToDeviceEncryptionHelper (%p) deallocated", v1, 0xCu);
}

- (void)performDeviceToDeviceEncryptionStateRepairWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke;
  aBlock[3] = &unk_278E2BB18;
  v5 = completionCopy;
  aBlock[4] = self;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = _os_activity_create(&dword_2451DB000, "cdp/perform-device-to-device-encryption-state-repair", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  context = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke_3;
  v10[3] = &unk_278E2B2A8;
  v10[4] = self;
  v9 = v6;
  v11 = v9;
  [(CDPUIDeviceToDeviceEncryptionHelper *)self _determineUpgradeEligibilityForContext:context completion:v10];

  os_activity_scope_leave(&state);
}

void __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _cdpErrorWithUnderlyingError:v5];
      (*(v6 + 16))(v6, a2, v7);
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke_2;
      v10[3] = &unk_278E2BAF0;
      v8 = *(a1 + 40);
      v13 = a2;
      v9 = *(a1 + 32);
      v12 = v8;
      v10[4] = v9;
      v11 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }
  }
}

void __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) _cdpErrorWithUnderlyingError:*(a1 + 40)];
  (*(v1 + 16))(v1, v2, v3);
}

void __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v6, OS_LOG_TYPE_DEFAULT, "Determined to be eligible for upgrade, proceeding with repair", buf, 2u);
    }

    v7 = *(a1 + 32);
    v8 = [v7 context];
    [v7 _beginUpgradeFlowWithContext:v8 completion:*(a1 + 40)];

    goto LABEL_20;
  }

  v9 = _CDPLogSystem();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke_3_cold_1();
    }

    if (*(a1 + 40))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v11 = *(*(a1 + 40) + 16);
LABEL_16:
        v11();
        goto LABEL_20;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke_39;
      block[3] = &unk_278E2B1B8;
      v17 = *(a1 + 40);
      v16 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v12 = v17;
      goto LABEL_19;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v10, OS_LOG_TYPE_DEFAULT, "No error and no repair needed. Signaling successful completion.", buf, 2u);
    }

    if (*(a1 + 40))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v11 = *(*(a1 + 40) + 16);
        goto LABEL_16;
      }

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke_40;
      v13[3] = &unk_278E2B118;
      v14 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v13);
      v12 = v14;
LABEL_19:
    }
  }

LABEL_20:
}

- (void)performDeviceToDeviceEncryptionStateRepairForContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!self->_context)
  {
    altDSID = [contextCopy altDSID];
    v8 = [CDPUIDeviceToDeviceEncryptionHelper _newLegacyFlowContextForAltDSID:altDSID];
    context = self->_context;
    self->_context = v8;
  }

  securityUpgradeContext = [contextCopy securityUpgradeContext];
  [(CDPUIDeviceToDeviceEncryptionFlowContext *)self->_context setSecurityUpgradeContext:securityUpgradeContext];

  _presentingViewController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
  [(CDPUIDeviceToDeviceEncryptionFlowContext *)self->_context setPresentingViewController:_presentingViewController];

  [(CDPUIDeviceToDeviceEncryptionHelper *)self performDeviceToDeviceEncryptionStateRepairWithCompletion:completionCopy];
}

- (void)_configurePresentingViewControllerForModalPresentation
{
  _presentingViewController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
  [_presentingViewController setModalInPresentation:1];

  _presentingViewController2 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [_presentingViewController2 setModalPresentationStyle:2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  _presentingNavigationController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingNavigationController];

  if (_presentingNavigationController)
  {
    _presentingNavigationController2 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingNavigationController];
    navigationBar = [_presentingNavigationController2 navigationBar];
    [navigationBar setTranslucent:1];

    navigationBar2 = [_presentingNavigationController2 navigationBar];
    v10 = objc_alloc_init(MEMORY[0x277D755B8]);
    [navigationBar2 setBackgroundImage:v10 forBarMetrics:0];

    navigationBar3 = [_presentingNavigationController2 navigationBar];
    v12 = objc_alloc_init(MEMORY[0x277D755B8]);
    [navigationBar3 setShadowImage:v12];
  }
}

- (void)_beginUpgradeFlowWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E2AF38;
  aBlock[4] = self;
  v8 = contextCopy;
  v22 = v8;
  v9 = completionCopy;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  cdpContext = [v8 cdpContext];
  isiCDPEligible = [cdpContext isiCDPEligible];

  if ([v8 deviceToDeviceEncryptionUpgradeUIStyle] == 3)
  {
    if (isiCDPEligible)
    {
      if (v10)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          v10[2](v10, 1, 0);
        }

        else
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_8;
          block[3] = &unk_278E2B118;
          v20 = v10;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }

    else
    {
      [(CDPUIDeviceToDeviceEncryptionHelper *)self _legacyRequestPermissionToContinueFlowWithCompletion:v10];
    }
  }

  else
  {
    _newUpgradeUIProvider = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newUpgradeUIProvider];
    v14 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)[CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel alloc] initWithContext:v8 is2FA:isiCDPEligible hasLocalSecret:[(CDPUIDeviceToDeviceEncryptionHelper *)self _hasLocalSecret]];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_9;
    v16[3] = &unk_278E2B2A8;
    v17 = _newUpgradeUIProvider;
    v18 = v10;
    v15 = _newUpgradeUIProvider;
    [v15 promptForUpgradeWithContext:v8 vm:v14 completion:v16];
  }
}

void __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) _configureNavigationController];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_2;
    v17[3] = &unk_278E2B2A8;
    v17[4] = v7;
    v18 = *(a1 + 48);
    [v7 _continueUpgradeFlowWithContext:v8 completion:v17];
    v9 = v18;
LABEL_9:

    goto LABEL_10;
  }

  if ([v5 cdp_isCDPErrorWithCode:-5307])
  {
    v10 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_5;
    v14[3] = &unk_278E2B1B8;
    v16 = *(a1 + 48);
    v15 = v6;
    [v10 _dismissNavigationControllerWithCompletion:v14];

    v9 = v16;
    goto LABEL_9;
  }

  if (*(a1 + 48))
  {
    if (![MEMORY[0x277CCACC8] isMainThread])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_7;
      v11[3] = &unk_278E2B1B8;
      v13 = *(a1 + 48);
      v12 = v6;
      dispatch_async(MEMORY[0x277D85CD0], v11);

      v9 = v13;
      goto LABEL_9;
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_10:
}

void __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_3;
  v9[3] = &unk_278E2B258;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 _dismissNavigationControllerWithCompletion:v9];
}

void __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v2 = *(*(a1 + 40) + 16);

      v2();
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_4;
      block[3] = &unk_278E2B258;
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v4 = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v2 = *(*(a1 + 40) + 16);

      v2();
    }

    else
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_6;
      v3[3] = &unk_278E2B1B8;
      v5 = *(a1 + 40);
      v4 = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], v3);
    }
  }
}

void __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_9(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_10;
      block[3] = &unk_278E2B258;
      v8 = *(a1 + 40);
      v9 = a2;
      v7 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_continueUpgradeFlowWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E2BB40;
  v17 = contextCopy;
  v18 = completionCopy;
  aBlock[4] = self;
  v8 = contextCopy;
  v9 = completionCopy;
  v10 = _Block_copy(aBlock);
  v11 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _inAppAuthenticationContextForFlowContext:v8];
  _authenticationController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _authenticationController];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_3;
  v14[3] = &unk_278E2BB90;
  v15 = v10;
  v13 = v10;
  [_authenticationController authenticateWithContext:v11 completion:v14];
}

void __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_cold_1();
    }

    if (*(a1 + 48))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(*(a1 + 48) + 16))();
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_43;
        block[3] = &unk_278E2B1B8;
        v27 = *(a1 + 48);
        v26 = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CFD4A8]) initWithAuthenticationResults:v5];
    if ([v8 isiCDPEligible])
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_2;
      aBlock[3] = &unk_278E2B028;
      v9 = *(a1 + 40);
      aBlock[4] = *(a1 + 32);
      v22 = v9;
      v10 = v5;
      v23 = v10;
      v24 = *(a1 + 48);
      v11 = _Block_copy(aBlock);
      v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFF90]];
      if ([v12 BOOLValue])
      {
        [*(a1 + 32) _presentSpinnerViewControllerWithCompletion:v11];
      }

      else
      {
        v11[2](v11);
      }

      v17 = v22;
    }

    else
    {
      v14 = _CDPLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2451DB000, v14, OS_LOG_TYPE_DEFAULT, "Account is still not iCDP eligible, upgrade failed without an error", buf, 2u);
      }

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_45;
      v18[3] = &unk_278E2B118;
      v19 = *(a1 + 48);
      [v15 _presentIneligibilityAlertForFlowContext:v16 completion:v18];
      v17 = v19;
    }
  }
}

void __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_45(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v2 = *(a1 + 32);
      v3 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:5095];
      (*(v2 + 16))(v2, 0, v3);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_2_47;
      block[3] = &unk_278E2B118;
      v5 = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_2_47(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:5095];
  (*(v1 + 16))(v1, 0, v2);
}

void __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_4;
      block[3] = &unk_278E2BB68;
      v10 = *(a1 + 32);
      v8 = v5;
      v9 = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_continueAuthenticatedUpgradeFlowWithContext:(id)context authenticationResults:(id)results completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  resultsCopy = results;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v11, OS_LOG_TYPE_DEFAULT, "Authentication for upgrade succeeded, checking CDP state", buf, 2u);
  }

  v12 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _stateControllerForFlowContext:contextCopy withAuthenticationResults:resultsCopy];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __117__CDPUIDeviceToDeviceEncryptionHelper__continueAuthenticatedUpgradeFlowWithContext_authenticationResults_completion___block_invoke;
  v22 = &unk_278E2BBB8;
  v13 = contextCopy;
  v23 = v13;
  v26 = completionCopy;
  v14 = v12;
  v24 = v14;
  selfCopy = self;
  v15 = completionCopy;
  v16 = _Block_copy(&v19);
  if ([(CDPUIDeviceToDeviceEncryptionHelper *)self _hasLocalSecret:v19])
  {
    cachedLocalSecret = [v13 cachedLocalSecret];

    if (cachedLocalSecret)
    {
      cachedLocalSecret2 = [v13 cachedLocalSecret];
      v16[2](v16, cachedLocalSecret2, 0);
    }

    else if ([v13 deviceToDeviceEncryptionUpgradeType] == 2)
    {
      [(CDPUIDeviceToDeviceEncryptionHelper *)self _validateLocalSecretForContext:v13 withStateController:v14 completion:v16];
    }

    else
    {
      v16[2](v16, 0, 0);
    }
  }

  else
  {
    [(CDPUIDeviceToDeviceEncryptionHelper *)self _createLocalSecretForContext:v13 completion:v16];
  }
}

void __117__CDPUIDeviceToDeviceEncryptionHelper__continueAuthenticatedUpgradeFlowWithContext_authenticationResults_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 cdp_isCDPErrorWithCode:-5307] && objc_msgSend(a1[4], "deviceToDeviceEncryptionUpgradeType") == 1)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v7, OS_LOG_TYPE_DEFAULT, "Passcode creation cancelled but not required for 2FA-only upgrade, returning success", buf, 2u);
    }

    if (a1[7])
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v8 = *(a1[7] + 2);
LABEL_16:
        v8();
        goto LABEL_20;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __117__CDPUIDeviceToDeviceEncryptionHelper__continueAuthenticatedUpgradeFlowWithContext_authenticationResults_completion___block_invoke_49;
      block[3] = &unk_278E2B118;
      v18 = a1[7];
      dispatch_async(MEMORY[0x277D85CD0], block);
      v13 = v18;
      goto LABEL_19;
    }
  }

  else if (v6 && ([v6 cdp_isCDPErrorWithCode:5094] & 1) == 0)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __117__CDPUIDeviceToDeviceEncryptionHelper__continueAuthenticatedUpgradeFlowWithContext_authenticationResults_completion___block_invoke_cold_1();
    }

    if (a1[7])
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v8 = *(a1[7] + 2);
        goto LABEL_16;
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __117__CDPUIDeviceToDeviceEncryptionHelper__continueAuthenticatedUpgradeFlowWithContext_authenticationResults_completion___block_invoke_50;
      v14[3] = &unk_278E2B1B8;
      v16 = a1[7];
      v15 = v6;
      dispatch_async(MEMORY[0x277D85CD0], v14);

      v13 = v16;
LABEL_19:
    }
  }

  else
  {
    v9 = [a1[5] context];
    v10 = [v5 validatedSecret];
    [v9 setCachedLocalSecret:v10];

    v11 = [a1[5] context];
    [v11 setCachedLocalSecretType:{objc_msgSend(v5, "secretType")}];

    [a1[6] _performAuthenticatedRepairFlowWithContext:a1[4] stateController:a1[5] completion:a1[7]];
  }

LABEL_20:
}

- (void)_performAuthenticatedRepairFlowWithContext:(id)context stateController:(id)controller completion:(id)completion
{
  contextCopy = context;
  controllerCopy = controller;
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__CDPUIDeviceToDeviceEncryptionHelper__performAuthenticatedRepairFlowWithContext_stateController_completion___block_invoke;
  v13[3] = &unk_278E2AF38;
  v14 = contextCopy;
  v15 = controllerCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = controllerCopy;
  v12 = contextCopy;
  [v11 repairCloudDataProtectionStateWithCompletion:v13];
}

void __109__CDPUIDeviceToDeviceEncryptionHelper__performAuthenticatedRepairFlowWithContext_stateController_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) context];
    [v6 setRepairContext:v7];
  }

  v8 = _CDPLogSystem();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __109__CDPUIDeviceToDeviceEncryptionHelper__performAuthenticatedRepairFlowWithContext_stateController_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = a2;
    _os_log_impl(&dword_2451DB000, v9, OS_LOG_TYPE_DEFAULT, "Finished repairing CDP state: %{BOOL}d", buf, 8u);
  }

  if (*(a1 + 48))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __109__CDPUIDeviceToDeviceEncryptionHelper__performAuthenticatedRepairFlowWithContext_stateController_completion___block_invoke_52;
      block[3] = &unk_278E2B258;
      v12 = *(a1 + 48);
      v13 = a2;
      v11 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_determineUpgradeEligibilityForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  altDSID = [contextCopy altDSID];

  if (!altDSID)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CDPUIDeviceToDeviceEncryptionHelper _determineUpgradeEligibilityForContext:completion:];
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = -5003;
    goto LABEL_9;
  }

  if ([contextCopy isDemoDevice])
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CDPUIDeviceToDeviceEncryptionHelper _determineUpgradeEligibilityForContext:completion:];
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = -5314;
LABEL_9:
    v13 = [v10 cdp_errorWithCode:v11];
    completionCopy[2](completionCopy, 0, v13);

    goto LABEL_10;
  }

  deviceToDeviceEncryptionUpgradeType = [contextCopy deviceToDeviceEncryptionUpgradeType];
  if (deviceToDeviceEncryptionUpgradeType)
  {
    if (deviceToDeviceEncryptionUpgradeType == 2)
    {
      [(CDPUIDeviceToDeviceEncryptionHelper *)self _determineEscrowRepairUpgradeEligibilityForContext:contextCopy completion:completionCopy];
    }

    else if (deviceToDeviceEncryptionUpgradeType == 1)
    {
      [(CDPUIDeviceToDeviceEncryptionHelper *)self _determineSecurityUpgradeEligibilityForContext:contextCopy completion:completionCopy];
    }
  }

  else
  {
    [(CDPUIDeviceToDeviceEncryptionHelper *)self _determineManateeUpgradeEligibilityForContext:contextCopy completion:completionCopy];
  }

LABEL_10:
}

- (void)_determineSecurityUpgradeEligibilityForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  cdpContext = [contextCopy cdpContext];
  isiCDPEligible = [cdpContext isiCDPEligible];

  if (isiCDPEligible)
  {
    if (completionCopy)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(completionCopy + 2))(completionCopy, 0, 0);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __97__CDPUIDeviceToDeviceEncryptionHelper__determineSecurityUpgradeEligibilityForContext_completion___block_invoke;
        block[3] = &unk_278E2B1B8;
        v15 = 0;
        v16 = completionCopy;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v10 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _authenticationContextForFlowContext:contextCopy];
    _authenticationController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _authenticationController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__CDPUIDeviceToDeviceEncryptionHelper__determineSecurityUpgradeEligibilityForContext_completion___block_invoke_2;
    v12[3] = &unk_278E2AF10;
    v13 = completionCopy;
    [_authenticationController checkSecurityUpgradeEligibilityForContext:v10 completion:v12];
  }
}

void __97__CDPUIDeviceToDeviceEncryptionHelper__determineSecurityUpgradeEligibilityForContext_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (*(a1 + 32))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __97__CDPUIDeviceToDeviceEncryptionHelper__determineSecurityUpgradeEligibilityForContext_completion___block_invoke_3;
        block[3] = &unk_278E2B118;
        v12 = *(a1 + 32);
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:5900 underlyingError:v5];
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __97__CDPUIDeviceToDeviceEncryptionHelper__determineSecurityUpgradeEligibilityForContext_completion___block_invoke_2_cold_1();
    }

    if (*(a1 + 32))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __97__CDPUIDeviceToDeviceEncryptionHelper__determineSecurityUpgradeEligibilityForContext_completion___block_invoke_53;
        v8[3] = &unk_278E2B1B8;
        v10 = *(a1 + 32);
        v9 = v6;
        dispatch_async(MEMORY[0x277D85CD0], v8);
      }
    }
  }
}

- (void)_determineManateeUpgradeEligibilityForContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  if ([(CDPUIDeviceToDeviceEncryptionHelper *)self _hasManatee])
  {
    v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _inCircle]^ 1;
    if (!completionCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 1;
    if (!completionCopy)
    {
      goto LABEL_8;
    }
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    completionCopy[2](completionCopy, v6, 0);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __96__CDPUIDeviceToDeviceEncryptionHelper__determineManateeUpgradeEligibilityForContext_completion___block_invoke;
    v7[3] = &unk_278E2BBE0;
    v8 = completionCopy;
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

LABEL_8:
}

- (void)_determineEscrowRepairUpgradeEligibilityForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if ([(CDPUIDeviceToDeviceEncryptionHelper *)self _hasLocalSecret]&& [(CDPUIDeviceToDeviceEncryptionHelper *)self _hasManatee]&& [(CDPUIDeviceToDeviceEncryptionHelper *)self _inCircle])
  {
    v8 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _stateControllerForFlowContext:contextCopy withAuthenticationResults:0];
    [v8 shouldPerformRepairWithOptionForceFetch:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__CDPUIDeviceToDeviceEncryptionHelper__determineEscrowRepairUpgradeEligibilityForContext_completion___block_invoke;
      block[3] = &unk_278E2B118;
      v10 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_validateLocalSecretForContext:(id)context withStateController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  contextCopy = context;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v11, OS_LOG_TYPE_DEFAULT, "Device has a local secret, prompting via CDP UI provider", buf, 2u);
  }

  v12 = objc_alloc(MEMORY[0x277CE44D8]);
  v13 = [v12 initWithEventName:*MEMORY[0x277CFD768] eventCategory:*MEMORY[0x277CFD930] initData:0];
  uiProvider = [controllerCopy uiProvider];

  repairContext = [contextCopy repairContext];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__CDPUIDeviceToDeviceEncryptionHelper__validateLocalSecretForContext_withStateController_completion___block_invoke;
  v18[3] = &unk_278E2AF60;
  v19 = v13;
  selfCopy = self;
  v21 = completionCopy;
  v16 = completionCopy;
  v17 = v13;
  [uiProvider cdpContext:repairContext promptForLocalSecretWithCompletion:v18];
}

void __101__CDPUIDeviceToDeviceEncryptionHelper__validateLocalSecretForContext_withStateController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "Validated local secret successfully", buf, 2u);
    }

    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __101__CDPUIDeviceToDeviceEncryptionHelper__validateLocalSecretForContext_withStateController_completion___block_invoke_cold_1();
    }

    [*(a1 + 32) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
  }

  v9 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v9 sendEvent:*(a1 + 32)];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__CDPUIDeviceToDeviceEncryptionHelper__validateLocalSecretForContext_withStateController_completion___block_invoke_56;
  v14[3] = &unk_278E2BB68;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v16 = v6;
  v17 = v11;
  v15 = v5;
  v12 = v6;
  v13 = v5;
  [v10 _presentSpinnerViewControllerWithCompletion:v14];
}

void __101__CDPUIDeviceToDeviceEncryptionHelper__validateLocalSecretForContext_withStateController_completion___block_invoke_56(id *a1)
{
  if (a1[6])
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v2 = *(a1[6] + 2);

      v2();
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__CDPUIDeviceToDeviceEncryptionHelper__validateLocalSecretForContext_withStateController_completion___block_invoke_2;
      block[3] = &unk_278E2BB68;
      v6 = a1[6];
      v4 = a1[4];
      v5 = a1[5];
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_createLocalSecretForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if ([(CDPUIDeviceToDeviceEncryptionHelper *)self _hasLocalSecret])
  {
    v8 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:5094];
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v9, OS_LOG_TYPE_DEFAULT, "Device does not have a local secret, showing secret creation flow", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x277CE44D8]);
    v11 = [v10 initWithEventName:*MEMORY[0x277CFD768] eventCategory:*MEMORY[0x277CFD930] initData:0];
    v12 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)[CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel alloc] initWithContext:contextCopy is2FA:1 hasLocalSecret:0];
    _navigationController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
    v14 = [CDPUIDeviceToDeviceEncryptionPasscodeController passcodeControllerWithPresenter:_navigationController vm:v12];

    [v14 setDelegate:self];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__createLocalSecretForContext_completion___block_invoke;
    v17[3] = &unk_278E2BC08;
    v18 = v14;
    v19 = v11;
    selfCopy = self;
    v21 = completionCopy;
    v15 = v11;
    v16 = v14;
    [v16 createPasscodeStateWithCompletion:v17];
  }
}

void __79__CDPUIDeviceToDeviceEncryptionHelper__createLocalSecretForContext_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "Created local secret successfully", buf, 2u);
    }

    [a1[5] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    [a1[6] _postBiometricFollowUp];
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __79__CDPUIDeviceToDeviceEncryptionHelper__createLocalSecretForContext_completion___block_invoke_cold_1();
    }

    v10 = [a1[6] followUpProvider];
    [v10 deleteCreatePasscodeFollowUp];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__CDPUIDeviceToDeviceEncryptionHelper__createLocalSecretForContext_completion___block_invoke_cold_2();
    }

    [a1[5] setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    [a1[5] populateUnderlyingErrorsStartingWithRootError:v6];
  }

  v11 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v11 sendEvent:a1[5]];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__createLocalSecretForContext_completion___block_invoke_59;
  v16[3] = &unk_278E2BB68;
  v12 = a1[6];
  v13 = a1[7];
  v18 = v6;
  v19 = v13;
  v17 = v5;
  v14 = v6;
  v15 = v5;
  [v12 _presentSpinnerViewControllerWithCompletion:v16];
}

void __79__CDPUIDeviceToDeviceEncryptionHelper__createLocalSecretForContext_completion___block_invoke_59(id *a1)
{
  if (a1[6])
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v2 = *(a1[6] + 2);

      v2();
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__createLocalSecretForContext_completion___block_invoke_2;
      block[3] = &unk_278E2BB68;
      v6 = a1[6];
      v4 = a1[4];
      v5 = a1[5];
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_presentIneligibilityAlertForFlowContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  _newUpgradeUIProvider = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newUpgradeUIProvider];
  v9 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)[CDPUIDeviceToDeviceEncryptionIneligibilityAlertViewModel alloc] initWithContext:contextCopy is2FA:0 hasLocalSecret:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__CDPUIDeviceToDeviceEncryptionHelper__presentIneligibilityAlertForFlowContext_completion___block_invoke;
  v12[3] = &unk_278E2B2A8;
  v13 = _newUpgradeUIProvider;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = _newUpgradeUIProvider;
  [v11 promptIneligibilityWithContext:contextCopy vm:v9 completion:v12];
}

- (void)_requestPermissionToCreatePasscodeForFlowContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if ([contextCopy deviceToDeviceEncryptionUpgradeType] == 1 || -[CDPUIDeviceToDeviceEncryptionHelper _hasLocalSecret](self, "_hasLocalSecret") || objc_msgSend(contextCopy, "shouldSuppressPasscodeCreationCancelPrompt"))
  {
    if (completionCopy)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        completionCopy[2](completionCopy, 1);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __99__CDPUIDeviceToDeviceEncryptionHelper__requestPermissionToCreatePasscodeForFlowContext_completion___block_invoke;
        block[3] = &unk_278E2B118;
        v15 = completionCopy;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    _newUpgradeUIProvider = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newUpgradeUIProvider];
    v9 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)[CDPUIDeviceToDeviceEncryptionCancelCreateViewModel alloc] initWithContext:contextCopy is2FA:0 hasLocalSecret:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __99__CDPUIDeviceToDeviceEncryptionHelper__requestPermissionToCreatePasscodeForFlowContext_completion___block_invoke_2;
    v11[3] = &unk_278E2B2A8;
    v12 = _newUpgradeUIProvider;
    v13 = completionCopy;
    v10 = _newUpgradeUIProvider;
    [v10 promptForCancelWithContext:contextCopy vm:v9 completion:v11];
  }
}

void __99__CDPUIDeviceToDeviceEncryptionHelper__requestPermissionToCreatePasscodeForFlowContext_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __99__CDPUIDeviceToDeviceEncryptionHelper__requestPermissionToCreatePasscodeForFlowContext_completion___block_invoke_3;
      v6[3] = &unk_278E2BBE0;
      v7 = *(a1 + 40);
      v8 = a2;
      dispatch_async(MEMORY[0x277D85CD0], v6);
    }
  }
}

- (void)_legacyRequestPermissionToContinueFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(CDPUIDeviceToDeviceEncryptionHelper *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __92__CDPUIDeviceToDeviceEncryptionHelper__legacyRequestPermissionToContinueFlowWithCompletion___block_invoke_2;
    v8[3] = &unk_278E2BC30;
    v9 = completionCopy;
    [delegate deviceToDeviceEncryptionHelper:self shouldContinueUpgradingUserToHSA2WithCompletion:v8];
    v6 = v9;
LABEL_9:

    goto LABEL_10;
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v7, OS_LOG_TYPE_DEFAULT, "No delegate for requesting permission, continuing encryption upgrade", buf, 2u);
  }

  if (completionCopy)
  {
    if (![MEMORY[0x277CCACC8] isMainThread])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__CDPUIDeviceToDeviceEncryptionHelper__legacyRequestPermissionToContinueFlowWithCompletion___block_invoke;
      block[3] = &unk_278E2B118;
      v11 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v6 = v11;
      goto LABEL_9;
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

LABEL_10:
}

void __92__CDPUIDeviceToDeviceEncryptionHelper__legacyRequestPermissionToContinueFlowWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v4 = _CDPLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v4, OS_LOG_TYPE_DEFAULT, "Permission to continue upgrading received, continuing encryption upgrade", buf, 2u);
    }

    if (*(a1 + 32))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(*(a1 + 32) + 16))();
        return;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__CDPUIDeviceToDeviceEncryptionHelper__legacyRequestPermissionToContinueFlowWithCompletion___block_invoke_64;
      block[3] = &unk_278E2B118;
      v12 = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
      v8 = v12;
LABEL_14:
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v4, OS_LOG_TYPE_DEFAULT, "D2D encryption helper requested the flow to not proceed, cancelling the upgrade", buf, 2u);
    }

    if (*(a1 + 32))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v6 = *(a1 + 32);
        v7 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5307];
        (*(v6 + 16))(v6, 0, v7);

        return;
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __92__CDPUIDeviceToDeviceEncryptionHelper__legacyRequestPermissionToContinueFlowWithCompletion___block_invoke_65;
      v9[3] = &unk_278E2B118;
      v10 = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], v9);
      v8 = v10;
      goto LABEL_14;
    }
  }
}

void __92__CDPUIDeviceToDeviceEncryptionHelper__legacyRequestPermissionToContinueFlowWithCompletion___block_invoke_65(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5307];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_presentSpinnerViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  _newSpinnerViewController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newSpinnerViewController];
  _navigationController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
  [_navigationController pushViewController:_newSpinnerViewController animated:1];

  completionCopy[2](completionCopy);
}

- (id)_authenticationContextForFlowContext:(id)context
{
  v3 = MEMORY[0x277CF0170];
  contextCopy = context;
  v5 = objc_alloc_init(v3);
  altDSID = [contextCopy altDSID];

  [v5 setAltDSID:altDSID];

  return v5;
}

- (id)_inAppAuthenticationContextForFlowContext:(id)context
{
  contextCopy = context;
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  altDSID = [contextCopy altDSID];
  v7 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:altDSID];

  v8 = objc_alloc_init(MEMORY[0x277CF0380]);
  username = [v7 username];
  [v8 setUsername:username];

  v10 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_AUTH_TITLE_REBRAND"];
  localizedString = [v10 localizedString];
  [v8 setTitle:localizedString];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_AUTH_MESSAGE"];
  localizedString2 = [v13 localizedString];
  username2 = [v7 username];
  v16 = [v12 stringWithValidatedFormat:localizedString2 validFormatSpecifiers:@"%@" error:0, username2];
  [v8 setReason:v16];

  altDSID2 = [contextCopy altDSID];
  [v8 setAltDSID:altDSID2];

  [v8 setAuthenticationType:0];
  [v8 setAnticipateEscrowAttempt:1];
  [v8 setIsUsernameEditable:0];
  [v8 setSupportsPiggybacking:1];
  [v8 setShouldOfferSecurityUpgrade:1];
  telemetryFlowID = [contextCopy telemetryFlowID];

  if (telemetryFlowID)
  {
    telemetryFlowID2 = [contextCopy telemetryFlowID];
    [v8 setTelemetryFlowID:telemetryFlowID2];
  }

  securityUpgradeContext = [contextCopy securityUpgradeContext];
  v21 = [securityUpgradeContext isEqualToString:*MEMORY[0x277CF00A0]];

  if (v21)
  {
    [v8 setSecurityUpgradeContext:*MEMORY[0x277CF00A8]];
  }

  else
  {
    securityUpgradeContext2 = [contextCopy securityUpgradeContext];
    [v8 setSecurityUpgradeContext:securityUpgradeContext2];
  }

  [v8 setForceInlinePresentation:1];
  _navigationController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
  [v8 setPresentingViewController:_navigationController];

  return v8;
}

- (id)_presentingViewController
{
  context = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  presentingViewController = [context presentingViewController];
  v5 = presentingViewController;
  if (presentingViewController)
  {
    presentingViewController2 = presentingViewController;
  }

  else
  {
    presentingViewController2 = [(CDPUIDeviceToDeviceEncryptionHelper *)self presentingViewController];
  }

  v7 = presentingViewController2;

  return v7;
}

- (id)_presentingNavigationController
{
  context = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  presentingViewController = [context presentingViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = presentingViewController;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_configureNavigationController
{
  context = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  if ([context forceInlinePresentation])
  {
    _presentingNavigationController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingNavigationController];

    if (_presentingNavigationController)
    {
      _presentingNavigationController2 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingNavigationController];
      navigationController = self->_navigationController;
      self->_navigationController = _presentingNavigationController2;

      obj = [(UINavigationController *)self->_navigationController topViewController];
      objc_storeWeak(&self->_initialTopViewController, obj);
      goto LABEL_13;
    }
  }

  else
  {
  }

  context2 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  if ([context2 deviceToDeviceEncryptionUpgradeUIStyle])
  {
    context3 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
    deviceToDeviceEncryptionUpgradeUIStyle = [context3 deviceToDeviceEncryptionUpgradeUIStyle];

    if (deviceToDeviceEncryptionUpgradeUIStyle != 3)
    {
      _presentingViewController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
      obj = [_presentingViewController presentedViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_navigationController, obj);
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = objc_alloc(MEMORY[0x277D757A0]);
  _newSpinnerViewController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newSpinnerViewController];
  v13 = [v11 initWithRootViewController:_newSpinnerViewController];
  v14 = self->_navigationController;
  self->_navigationController = v13;

  navigationItem = [(UINavigationController *)self->_navigationController navigationItem];
  [navigationItem setHidesBackButton:1];

  context4 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  LODWORD(_newSpinnerViewController) = [context4 configureForModalPresentation];

  if (_newSpinnerViewController)
  {
    [(UINavigationController *)self->_navigationController setModalInPresentation:1];
    v17 = self->_navigationController;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    [(UINavigationController *)v17 setModalPresentationStyle:2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  }

  obj = [(UINavigationController *)self->_navigationController transitionCoordinator];
  [obj animateAlongsideTransition:&__block_literal_global_0 completion:&__block_literal_global_86];
  _presentingViewController2 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
  [_presentingViewController2 presentViewController:self->_navigationController animated:1 completion:0];

LABEL_13:
}

void __69__CDPUIDeviceToDeviceEncryptionHelper__configureNavigationController__block_invoke()
{
  v0 = _CDPLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __69__CDPUIDeviceToDeviceEncryptionHelper__configureNavigationController__block_invoke_cold_1();
  }
}

void __69__CDPUIDeviceToDeviceEncryptionHelper__configureNavigationController__block_invoke_84()
{
  v0 = _CDPLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __69__CDPUIDeviceToDeviceEncryptionHelper__configureNavigationController__block_invoke_84_cold_1();
  }
}

- (void)_dismissNavigationControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  context = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  forceInlinePresentation = [context forceInlinePresentation];

  if (forceInlinePresentation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_initialTopViewController);

    if (WeakRetained)
    {
      _navigationController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
      v8 = objc_loadWeakRetained(&self->_initialTopViewController);
      v9 = [_navigationController popToViewController:v8 animated:0];
    }
  }

  else
  {
    _presentingViewController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];

    if (_presentingViewController)
    {
      _presentingViewController2 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
      [_presentingViewController2 dismissViewControllerAnimated:1 completion:completionCopy];

      goto LABEL_7;
    }
  }

  completionCopy[2]();
LABEL_7:
}

- (id)_stateControllerForFlowContext:(id)context withAuthenticationResults:(id)results
{
  v5 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _repairContextForFlowContext:context withAuthenticationResults:results];
  v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _stateControllerWithRepairContext:v5];

  return v6;
}

- (id)_repairContextForFlowContext:(id)context withAuthenticationResults:(id)results
{
  resultsCopy = results;
  v6 = MEMORY[0x277CFD4A8];
  contextCopy = context;
  if (resultsCopy)
  {
    contextForPrimaryAccount = [[v6 alloc] initWithAuthenticationResults:resultsCopy];
  }

  else
  {
    contextForPrimaryAccount = [(objc_class *)v6 contextForPrimaryAccount];
  }

  v9 = contextForPrimaryAccount;
  requiresSynchronousRepair = [contextCopy requiresSynchronousRepair];

  [v9 set_disableAsyncSecureBackupEnrollment:requiresSynchronousRepair];

  return v9;
}

- (id)_stateControllerWithRepairContext:(id)context
{
  v4 = MEMORY[0x277CFD548];
  contextCopy = context;
  v6 = [[v4 alloc] initWithContext:contextCopy];

  v7 = [CDPUIController alloc];
  _navigationController = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
  v9 = [(CDPUIBaseController *)v7 initWithPresentingViewController:_navigationController];

  [(CDPUIController *)v9 setForceInlinePresentation:1];
  [v6 setUiProvider:v9];

  return v6;
}

- (id)_cdpErrorWithUnderlyingError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy && ([errorCopy domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CFD418]), v5, !v6))
  {
    if ([v4 ak_isUserCancelError] & 1) != 0 || (objc_msgSend(v4, "ak_isAuthenticationErrorWithCode:", -7064))
    {
      v8 = -5307;
    }

    else if ([v4 ak_isUserSkippedError])
    {
      v8 = -5308;
    }

    else
    {
      v8 = 5901;
    }

    v7 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:v8 underlyingError:v4];
  }

  else
  {
    v7 = v4;
  }

  v9 = v7;

  return v9;
}

- (BOOL)_hasLocalSecret
{
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  return hasLocalSecret;
}

- (BOOL)_hasManatee
{
  v3 = objc_alloc(MEMORY[0x277CFD510]);
  context = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  cdpContext = [context cdpContext];
  v6 = [v3 initWithContext:cdpContext];

  LOBYTE(context) = [v6 isManateeAvailable:0];
  return context;
}

- (BOOL)_inCircle
{
  v3 = objc_alloc(MEMORY[0x277CFD498]);
  context = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  cdpContext = [context cdpContext];
  v6 = [v3 initWithContext:cdpContext];

  LOBYTE(context) = [v6 combinedCachedCircleStatus:0] == 1;
  return context;
}

+ (id)_newLegacyFlowContext
{
  contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v4 = [self _newLegacyFlowContextWithContext:contextForPrimaryAccount];

  return v4;
}

+ (id)_newLegacyFlowContextForAltDSID:(id)d
{
  v4 = [MEMORY[0x277CFD4A8] contextForAccountWithAltDSID:d];
  v5 = [self _newLegacyFlowContextWithContext:v4];

  return v5;
}

+ (id)_newLegacyFlowContextWithContext:(id)context
{
  contextCopy = context;
  v4 = [[CDPUIDeviceToDeviceEncryptionFlowContext alloc] initWithCDPContext:contextCopy];

  [(CDPUIDeviceToDeviceEncryptionFlowContext *)v4 setDeviceToDeviceEncryptionUpgradeUIStyle:3];
  [(CDPUIDeviceToDeviceEncryptionFlowContext *)v4 setDeviceToDeviceEncryptionUpgradeType:0];
  return v4;
}

- (void)_postBiometricFollowUp
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "Posting biometric follow up.", v5, 2u);
  }

  contextForSettingUpBiometrics = [MEMORY[0x277CFD4D8] contextForSettingUpBiometrics];
  v4 = objc_alloc_init(MEMORY[0x277CFD4E0]);
  [v4 postFollowUpWithContext:contextForSettingUpBiometrics error:0];
}

- (id)_newSpinnerViewController
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getAAUISpinnerViewControllerClass_softClass;
  v12 = getAAUISpinnerViewControllerClass_softClass;
  if (!getAAUISpinnerViewControllerClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getAAUISpinnerViewControllerClass_block_invoke;
    v8[3] = &unk_278E2BA40;
    v8[4] = &v9;
    __getAAUISpinnerViewControllerClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = objc_alloc_init(v2);
  label = [v4 label];
  v6 = CDPLocalizedString();
  [label setText:v6];

  [v4 setSpinning:1];
  return v4;
}

- (void)localSecretValidationCanCancelWithViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  context = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  [(CDPUIDeviceToDeviceEncryptionHelper *)self _requestPermissionToCreatePasscodeForFlowContext:context completion:completionCopy];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (CDPUIDeviceToDeviceEncryptionHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end