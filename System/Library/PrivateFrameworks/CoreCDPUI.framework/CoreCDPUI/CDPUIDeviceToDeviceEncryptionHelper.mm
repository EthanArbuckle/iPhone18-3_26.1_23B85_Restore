@interface CDPUIDeviceToDeviceEncryptionHelper
+ (id)_newLegacyFlowContext;
+ (id)_newLegacyFlowContextForAltDSID:(id)a3;
+ (id)_newLegacyFlowContextWithContext:(id)a3;
- (BOOL)_hasLocalSecret;
- (BOOL)_hasManatee;
- (BOOL)_inCircle;
- (CDPUIDeviceToDeviceEncryptionHelper)initWithContext:(id)a3;
- (CDPUIDeviceToDeviceEncryptionHelper)initWithPresentingViewController:(id)a3;
- (CDPUIDeviceToDeviceEncryptionHelperDelegate)delegate;
- (UIViewController)presentingViewController;
- (id)_authenticationContextForFlowContext:(id)a3;
- (id)_cdpErrorWithUnderlyingError:(id)a3;
- (id)_inAppAuthenticationContextForFlowContext:(id)a3;
- (id)_newSpinnerViewController;
- (id)_presentingNavigationController;
- (id)_presentingViewController;
- (id)_repairContextForFlowContext:(id)a3 withAuthenticationResults:(id)a4;
- (id)_stateControllerForFlowContext:(id)a3 withAuthenticationResults:(id)a4;
- (id)_stateControllerWithRepairContext:(id)a3;
- (void)_beginUpgradeFlowWithContext:(id)a3 completion:(id)a4;
- (void)_configureNavigationController;
- (void)_configurePresentingViewControllerForModalPresentation;
- (void)_continueAuthenticatedUpgradeFlowWithContext:(id)a3 authenticationResults:(id)a4 completion:(id)a5;
- (void)_continueUpgradeFlowWithContext:(id)a3 completion:(id)a4;
- (void)_createLocalSecretForContext:(id)a3 completion:(id)a4;
- (void)_determineEscrowRepairUpgradeEligibilityForContext:(id)a3 completion:(id)a4;
- (void)_determineManateeUpgradeEligibilityForContext:(id)a3 completion:(id)a4;
- (void)_determineSecurityUpgradeEligibilityForContext:(id)a3 completion:(id)a4;
- (void)_determineUpgradeEligibilityForContext:(id)a3 completion:(id)a4;
- (void)_dismissNavigationControllerWithCompletion:(id)a3;
- (void)_legacyRequestPermissionToContinueFlowWithCompletion:(id)a3;
- (void)_performAuthenticatedRepairFlowWithContext:(id)a3 stateController:(id)a4 completion:(id)a5;
- (void)_postBiometricFollowUp;
- (void)_presentIneligibilityAlertForFlowContext:(id)a3 completion:(id)a4;
- (void)_presentSpinnerViewControllerWithCompletion:(id)a3;
- (void)_requestPermissionToCreatePasscodeForFlowContext:(id)a3 completion:(id)a4;
- (void)_validateLocalSecretForContext:(id)a3 withStateController:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)localSecretValidationCanCancelWithViewController:(id)a3 completion:(id)a4;
- (void)performDeviceToDeviceEncryptionStateRepairForContext:(id)a3 withCompletion:(id)a4;
- (void)performDeviceToDeviceEncryptionStateRepairWithCompletion:(id)a3;
@end

@implementation CDPUIDeviceToDeviceEncryptionHelper

- (CDPUIDeviceToDeviceEncryptionHelper)initWithContext:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CDPUIDeviceToDeviceEncryptionHelper;
  v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF0178]);
    authenticationController = v6->_authenticationController;
    v6->_authenticationController = v7;

    objc_storeStrong(&v6->_context, a3);
    if ([MEMORY[0x277CFD560] canEnableMultiUserManatee])
    {
      v9 = objc_alloc(MEMORY[0x277CFDAA0]);
      v10 = [v5 altDSID];
      v11 = [v5 telemetryFlowID];
      v12 = [v9 initWithAltDSID:v10 telemetryFlowID:v11];
      followUpProvider = v6->_followUpProvider;
      v6->_followUpProvider = v12;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CFDAA0]);
      v10 = v6->_followUpProvider;
      v6->_followUpProvider = v14;
    }
  }

  return v6;
}

- (CDPUIDeviceToDeviceEncryptionHelper)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v5 = +[CDPUIDeviceToDeviceEncryptionHelper _newLegacyFlowContext];
  v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)self initWithContext:v5];

  if (v6)
  {
    objc_storeWeak(&v6->_presentingViewController, v4);
  }

  return v6;
}

- (void)dealloc
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_2451DB000, v0, OS_LOG_TYPE_DEBUG, "CDPUIDeviceToDeviceEncryptionHelper (%p) deallocated", v1, 0xCu);
}

- (void)performDeviceToDeviceEncryptionStateRepairWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke;
  aBlock[3] = &unk_278E2BB18;
  v5 = v4;
  aBlock[4] = self;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = _os_activity_create(&dword_2451DB000, "cdp/perform-device-to-device-encryption-state-repair", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__CDPUIDeviceToDeviceEncryptionHelper_performDeviceToDeviceEncryptionStateRepairWithCompletion___block_invoke_3;
  v10[3] = &unk_278E2B2A8;
  v10[4] = self;
  v9 = v6;
  v11 = v9;
  [(CDPUIDeviceToDeviceEncryptionHelper *)self _determineUpgradeEligibilityForContext:v8 completion:v10];

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

- (void)performDeviceToDeviceEncryptionStateRepairForContext:(id)a3 withCompletion:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!self->_context)
  {
    v7 = [v12 altDSID];
    v8 = [CDPUIDeviceToDeviceEncryptionHelper _newLegacyFlowContextForAltDSID:v7];
    context = self->_context;
    self->_context = v8;
  }

  v10 = [v12 securityUpgradeContext];
  [(CDPUIDeviceToDeviceEncryptionFlowContext *)self->_context setSecurityUpgradeContext:v10];

  v11 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
  [(CDPUIDeviceToDeviceEncryptionFlowContext *)self->_context setPresentingViewController:v11];

  [(CDPUIDeviceToDeviceEncryptionHelper *)self performDeviceToDeviceEncryptionStateRepairWithCompletion:v6];
}

- (void)_configurePresentingViewControllerForModalPresentation
{
  v3 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
  [v3 setModalInPresentation:1];

  v4 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  [v4 setModalPresentationStyle:2 * ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  v7 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingNavigationController];

  if (v7)
  {
    v13 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingNavigationController];
    v8 = [v13 navigationBar];
    [v8 setTranslucent:1];

    v9 = [v13 navigationBar];
    v10 = objc_alloc_init(MEMORY[0x277D755B8]);
    [v9 setBackgroundImage:v10 forBarMetrics:0];

    v11 = [v13 navigationBar];
    v12 = objc_alloc_init(MEMORY[0x277D755B8]);
    [v11 setShadowImage:v12];
  }
}

- (void)_beginUpgradeFlowWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E2AF38;
  aBlock[4] = self;
  v8 = v6;
  v22 = v8;
  v9 = v7;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [v8 cdpContext];
  v12 = [v11 isiCDPEligible];

  if ([v8 deviceToDeviceEncryptionUpgradeUIStyle] == 3)
  {
    if (v12)
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
    v13 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newUpgradeUIProvider];
    v14 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)[CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel alloc] initWithContext:v8 is2FA:v12 hasLocalSecret:[(CDPUIDeviceToDeviceEncryptionHelper *)self _hasLocalSecret]];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__beginUpgradeFlowWithContext_completion___block_invoke_9;
    v16[3] = &unk_278E2B2A8;
    v17 = v13;
    v18 = v10;
    v15 = v13;
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

- (void)_continueUpgradeFlowWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke;
  aBlock[3] = &unk_278E2BB40;
  v17 = v6;
  v18 = v7;
  aBlock[4] = self;
  v8 = v6;
  v9 = v7;
  v10 = _Block_copy(aBlock);
  v11 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _inAppAuthenticationContextForFlowContext:v8];
  v12 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _authenticationController];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__CDPUIDeviceToDeviceEncryptionHelper__continueUpgradeFlowWithContext_completion___block_invoke_3;
  v14[3] = &unk_278E2BB90;
  v15 = v10;
  v13 = v10;
  [v12 authenticateWithContext:v11 completion:v14];
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

- (void)_continueAuthenticatedUpgradeFlowWithContext:(id)a3 authenticationResults:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v11, OS_LOG_TYPE_DEFAULT, "Authentication for upgrade succeeded, checking CDP state", buf, 2u);
  }

  v12 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _stateControllerForFlowContext:v8 withAuthenticationResults:v10];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __117__CDPUIDeviceToDeviceEncryptionHelper__continueAuthenticatedUpgradeFlowWithContext_authenticationResults_completion___block_invoke;
  v22 = &unk_278E2BBB8;
  v13 = v8;
  v23 = v13;
  v26 = v9;
  v14 = v12;
  v24 = v14;
  v25 = self;
  v15 = v9;
  v16 = _Block_copy(&v19);
  if ([(CDPUIDeviceToDeviceEncryptionHelper *)self _hasLocalSecret:v19])
  {
    v17 = [v13 cachedLocalSecret];

    if (v17)
    {
      v18 = [v13 cachedLocalSecret];
      v16[2](v16, v18, 0);
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

- (void)_performAuthenticatedRepairFlowWithContext:(id)a3 stateController:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__CDPUIDeviceToDeviceEncryptionHelper__performAuthenticatedRepairFlowWithContext_stateController_completion___block_invoke;
  v13[3] = &unk_278E2AF38;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
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

- (void)_determineUpgradeEligibilityForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 altDSID];

  if (!v8)
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

  if ([v6 isDemoDevice])
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
    v7[2](v7, 0, v13);

    goto LABEL_10;
  }

  v14 = [v6 deviceToDeviceEncryptionUpgradeType];
  if (v14)
  {
    if (v14 == 2)
    {
      [(CDPUIDeviceToDeviceEncryptionHelper *)self _determineEscrowRepairUpgradeEligibilityForContext:v6 completion:v7];
    }

    else if (v14 == 1)
    {
      [(CDPUIDeviceToDeviceEncryptionHelper *)self _determineSecurityUpgradeEligibilityForContext:v6 completion:v7];
    }
  }

  else
  {
    [(CDPUIDeviceToDeviceEncryptionHelper *)self _determineManateeUpgradeEligibilityForContext:v6 completion:v7];
  }

LABEL_10:
}

- (void)_determineSecurityUpgradeEligibilityForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cdpContext];
  v9 = [v8 isiCDPEligible];

  if (v9)
  {
    if (v7)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (*(v7 + 2))(v7, 0, 0);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __97__CDPUIDeviceToDeviceEncryptionHelper__determineSecurityUpgradeEligibilityForContext_completion___block_invoke;
        block[3] = &unk_278E2B1B8;
        v15 = 0;
        v16 = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v10 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _authenticationContextForFlowContext:v6];
    v11 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _authenticationController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__CDPUIDeviceToDeviceEncryptionHelper__determineSecurityUpgradeEligibilityForContext_completion___block_invoke_2;
    v12[3] = &unk_278E2AF10;
    v13 = v7;
    [v11 checkSecurityUpgradeEligibilityForContext:v10 completion:v12];
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

- (void)_determineManateeUpgradeEligibilityForContext:(id)a3 completion:(id)a4
{
  v5 = a4;
  if ([(CDPUIDeviceToDeviceEncryptionHelper *)self _hasManatee])
  {
    v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _inCircle]^ 1;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 1;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5[2](v5, v6, 0);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __96__CDPUIDeviceToDeviceEncryptionHelper__determineManateeUpgradeEligibilityForContext_completion___block_invoke;
    v7[3] = &unk_278E2BBE0;
    v8 = v5;
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

LABEL_8:
}

- (void)_determineEscrowRepairUpgradeEligibilityForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CDPUIDeviceToDeviceEncryptionHelper *)self _hasLocalSecret]&& [(CDPUIDeviceToDeviceEncryptionHelper *)self _hasManatee]&& [(CDPUIDeviceToDeviceEncryptionHelper *)self _inCircle])
  {
    v8 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _stateControllerForFlowContext:v6 withAuthenticationResults:0];
    [v8 shouldPerformRepairWithOptionForceFetch:1 completion:v7];
  }

  else if (v7)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v7[2](v7, 1, 0);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__CDPUIDeviceToDeviceEncryptionHelper__determineEscrowRepairUpgradeEligibilityForContext_completion___block_invoke;
      block[3] = &unk_278E2B118;
      v10 = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_validateLocalSecretForContext:(id)a3 withStateController:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v11, OS_LOG_TYPE_DEFAULT, "Device has a local secret, prompting via CDP UI provider", buf, 2u);
  }

  v12 = objc_alloc(MEMORY[0x277CE44D8]);
  v13 = [v12 initWithEventName:*MEMORY[0x277CFD768] eventCategory:*MEMORY[0x277CFD930] initData:0];
  v14 = [v9 uiProvider];

  v15 = [v10 repairContext];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__CDPUIDeviceToDeviceEncryptionHelper__validateLocalSecretForContext_withStateController_completion___block_invoke;
  v18[3] = &unk_278E2AF60;
  v19 = v13;
  v20 = self;
  v21 = v8;
  v16 = v8;
  v17 = v13;
  [v14 cdpContext:v15 promptForLocalSecretWithCompletion:v18];
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

- (void)_createLocalSecretForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CDPUIDeviceToDeviceEncryptionHelper *)self _hasLocalSecret])
  {
    v8 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:5094];
    v7[2](v7, 0, v8);
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
    v12 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)[CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel alloc] initWithContext:v6 is2FA:1 hasLocalSecret:0];
    v13 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
    v14 = [CDPUIDeviceToDeviceEncryptionPasscodeController passcodeControllerWithPresenter:v13 vm:v12];

    [v14 setDelegate:self];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__CDPUIDeviceToDeviceEncryptionHelper__createLocalSecretForContext_completion___block_invoke;
    v17[3] = &unk_278E2BC08;
    v18 = v14;
    v19 = v11;
    v20 = self;
    v21 = v7;
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

- (void)_presentIneligibilityAlertForFlowContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newUpgradeUIProvider];
  v9 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)[CDPUIDeviceToDeviceEncryptionIneligibilityAlertViewModel alloc] initWithContext:v7 is2FA:0 hasLocalSecret:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__CDPUIDeviceToDeviceEncryptionHelper__presentIneligibilityAlertForFlowContext_completion___block_invoke;
  v12[3] = &unk_278E2B2A8;
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  [v11 promptIneligibilityWithContext:v7 vm:v9 completion:v12];
}

- (void)_requestPermissionToCreatePasscodeForFlowContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 deviceToDeviceEncryptionUpgradeType] == 1 || -[CDPUIDeviceToDeviceEncryptionHelper _hasLocalSecret](self, "_hasLocalSecret") || objc_msgSend(v6, "shouldSuppressPasscodeCreationCancelPrompt"))
  {
    if (v7)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v7[2](v7, 1);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __99__CDPUIDeviceToDeviceEncryptionHelper__requestPermissionToCreatePasscodeForFlowContext_completion___block_invoke;
        block[3] = &unk_278E2B118;
        v15 = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v8 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newUpgradeUIProvider];
    v9 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)[CDPUIDeviceToDeviceEncryptionCancelCreateViewModel alloc] initWithContext:v6 is2FA:0 hasLocalSecret:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __99__CDPUIDeviceToDeviceEncryptionHelper__requestPermissionToCreatePasscodeForFlowContext_completion___block_invoke_2;
    v11[3] = &unk_278E2B2A8;
    v12 = v8;
    v13 = v7;
    v10 = v8;
    [v10 promptForCancelWithContext:v6 vm:v9 completion:v11];
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

- (void)_legacyRequestPermissionToContinueFlowWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CDPUIDeviceToDeviceEncryptionHelper *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __92__CDPUIDeviceToDeviceEncryptionHelper__legacyRequestPermissionToContinueFlowWithCompletion___block_invoke_2;
    v8[3] = &unk_278E2BC30;
    v9 = v4;
    [v5 deviceToDeviceEncryptionHelper:self shouldContinueUpgradingUserToHSA2WithCompletion:v8];
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

  if (v4)
  {
    if (![MEMORY[0x277CCACC8] isMainThread])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__CDPUIDeviceToDeviceEncryptionHelper__legacyRequestPermissionToContinueFlowWithCompletion___block_invoke;
      block[3] = &unk_278E2B118;
      v11 = v4;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v6 = v11;
      goto LABEL_9;
    }

    (*(v4 + 2))(v4, 1, 0);
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

- (void)_presentSpinnerViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newSpinnerViewController];
  v5 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
  [v5 pushViewController:v6 animated:1];

  v4[2](v4);
}

- (id)_authenticationContextForFlowContext:(id)a3
{
  v3 = MEMORY[0x277CF0170];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 altDSID];

  [v5 setAltDSID:v6];

  return v5;
}

- (id)_inAppAuthenticationContextForFlowContext:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0130] sharedInstance];
  v6 = [v4 altDSID];
  v7 = [v5 authKitAccountWithAltDSID:v6];

  v8 = objc_alloc_init(MEMORY[0x277CF0380]);
  v9 = [v7 username];
  [v8 setUsername:v9];

  v10 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_AUTH_TITLE_REBRAND"];
  v11 = [v10 localizedString];
  [v8 setTitle:v11];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_AUTH_MESSAGE"];
  v14 = [v13 localizedString];
  v15 = [v7 username];
  v16 = [v12 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v15];
  [v8 setReason:v16];

  v17 = [v4 altDSID];
  [v8 setAltDSID:v17];

  [v8 setAuthenticationType:0];
  [v8 setAnticipateEscrowAttempt:1];
  [v8 setIsUsernameEditable:0];
  [v8 setSupportsPiggybacking:1];
  [v8 setShouldOfferSecurityUpgrade:1];
  v18 = [v4 telemetryFlowID];

  if (v18)
  {
    v19 = [v4 telemetryFlowID];
    [v8 setTelemetryFlowID:v19];
  }

  v20 = [v4 securityUpgradeContext];
  v21 = [v20 isEqualToString:*MEMORY[0x277CF00A0]];

  if (v21)
  {
    [v8 setSecurityUpgradeContext:*MEMORY[0x277CF00A8]];
  }

  else
  {
    v22 = [v4 securityUpgradeContext];
    [v8 setSecurityUpgradeContext:v22];
  }

  [v8 setForceInlinePresentation:1];
  v23 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
  [v8 setPresentingViewController:v23];

  return v8;
}

- (id)_presentingViewController
{
  v3 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  v4 = [v3 presentingViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)self presentingViewController];
  }

  v7 = v6;

  return v7;
}

- (id)_presentingNavigationController
{
  v2 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  v3 = [v2 presentingViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_configureNavigationController
{
  v3 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  if ([v3 forceInlinePresentation])
  {
    v4 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingNavigationController];

    if (v4)
    {
      v5 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingNavigationController];
      navigationController = self->_navigationController;
      self->_navigationController = v5;

      obj = [(UINavigationController *)self->_navigationController topViewController];
      objc_storeWeak(&self->_initialTopViewController, obj);
      goto LABEL_13;
    }
  }

  else
  {
  }

  v7 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  if ([v7 deviceToDeviceEncryptionUpgradeUIStyle])
  {
    v8 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
    v9 = [v8 deviceToDeviceEncryptionUpgradeUIStyle];

    if (v9 != 3)
    {
      v10 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
      obj = [v10 presentedViewController];

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
  v12 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _newSpinnerViewController];
  v13 = [v11 initWithRootViewController:v12];
  v14 = self->_navigationController;
  self->_navigationController = v13;

  v15 = [(UINavigationController *)self->_navigationController navigationItem];
  [v15 setHidesBackButton:1];

  v16 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  LODWORD(v12) = [v16 configureForModalPresentation];

  if (v12)
  {
    [(UINavigationController *)self->_navigationController setModalInPresentation:1];
    v17 = self->_navigationController;
    v18 = [MEMORY[0x277D75418] currentDevice];
    v19 = [v18 userInterfaceIdiom];

    [(UINavigationController *)v17 setModalPresentationStyle:2 * ((v19 & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  }

  obj = [(UINavigationController *)self->_navigationController transitionCoordinator];
  [obj animateAlongsideTransition:&__block_literal_global_0 completion:&__block_literal_global_86];
  v20 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
  [v20 presentViewController:self->_navigationController animated:1 completion:0];

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

- (void)_dismissNavigationControllerWithCompletion:(id)a3
{
  v12 = a3;
  v4 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  v5 = [v4 forceInlinePresentation];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_initialTopViewController);

    if (WeakRetained)
    {
      v7 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
      v8 = objc_loadWeakRetained(&self->_initialTopViewController);
      v9 = [v7 popToViewController:v8 animated:0];
    }
  }

  else
  {
    v10 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];

    if (v10)
    {
      v11 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _presentingViewController];
      [v11 dismissViewControllerAnimated:1 completion:v12];

      goto LABEL_7;
    }
  }

  v12[2]();
LABEL_7:
}

- (id)_stateControllerForFlowContext:(id)a3 withAuthenticationResults:(id)a4
{
  v5 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _repairContextForFlowContext:a3 withAuthenticationResults:a4];
  v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _stateControllerWithRepairContext:v5];

  return v6;
}

- (id)_repairContextForFlowContext:(id)a3 withAuthenticationResults:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CFD4A8];
  v7 = a3;
  if (v5)
  {
    v8 = [[v6 alloc] initWithAuthenticationResults:v5];
  }

  else
  {
    v8 = [(objc_class *)v6 contextForPrimaryAccount];
  }

  v9 = v8;
  v10 = [v7 requiresSynchronousRepair];

  [v9 set_disableAsyncSecureBackupEnrollment:v10];

  return v9;
}

- (id)_stateControllerWithRepairContext:(id)a3
{
  v4 = MEMORY[0x277CFD548];
  v5 = a3;
  v6 = [[v4 alloc] initWithContext:v5];

  v7 = [CDPUIController alloc];
  v8 = [(CDPUIDeviceToDeviceEncryptionHelper *)self _navigationController];
  v9 = [(CDPUIBaseController *)v7 initWithPresentingViewController:v8];

  [(CDPUIController *)v9 setForceInlinePresentation:1];
  [v6 setUiProvider:v9];

  return v6;
}

- (id)_cdpErrorWithUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CFD418]), v5, !v6))
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
  v2 = [MEMORY[0x277CFD4F8] sharedInstance];
  v3 = [v2 hasLocalSecret];

  return v3;
}

- (BOOL)_hasManatee
{
  v3 = objc_alloc(MEMORY[0x277CFD510]);
  v4 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  v5 = [v4 cdpContext];
  v6 = [v3 initWithContext:v5];

  LOBYTE(v4) = [v6 isManateeAvailable:0];
  return v4;
}

- (BOOL)_inCircle
{
  v3 = objc_alloc(MEMORY[0x277CFD498]);
  v4 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  v5 = [v4 cdpContext];
  v6 = [v3 initWithContext:v5];

  LOBYTE(v4) = [v6 combinedCachedCircleStatus:0] == 1;
  return v4;
}

+ (id)_newLegacyFlowContext
{
  v3 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v4 = [a1 _newLegacyFlowContextWithContext:v3];

  return v4;
}

+ (id)_newLegacyFlowContextForAltDSID:(id)a3
{
  v4 = [MEMORY[0x277CFD4A8] contextForAccountWithAltDSID:a3];
  v5 = [a1 _newLegacyFlowContextWithContext:v4];

  return v5;
}

+ (id)_newLegacyFlowContextWithContext:(id)a3
{
  v3 = a3;
  v4 = [[CDPUIDeviceToDeviceEncryptionFlowContext alloc] initWithCDPContext:v3];

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

  v3 = [MEMORY[0x277CFD4D8] contextForSettingUpBiometrics];
  v4 = objc_alloc_init(MEMORY[0x277CFD4E0]);
  [v4 postFollowUpWithContext:v3 error:0];
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
  v5 = [v4 label];
  v6 = CDPLocalizedString();
  [v5 setText:v6];

  [v4 setSpinning:1];
  return v4;
}

- (void)localSecretValidationCanCancelWithViewController:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(CDPUIDeviceToDeviceEncryptionHelper *)self context];
  [(CDPUIDeviceToDeviceEncryptionHelper *)self _requestPermissionToCreatePasscodeForFlowContext:v6 completion:v5];
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