@interface CDPUIWalrusLocalPasscodeVerificationController
- (CDPUIWalrusLocalPasscodeVerificationController)initWithTitle:(id)a3 presentWithViewController:(id)a4 presentationType:(unint64_t)a5;
- (void)_setupControllers;
- (void)finishWalrusLocalPasscodeVerificationWithCompletion:(id)a3;
- (void)uiController:(id)a3 prepareAlertContext:(id)a4;
- (void)uiController:(id)a3 preparePresentationContext:(id)a4;
@end

@implementation CDPUIWalrusLocalPasscodeVerificationController

- (CDPUIWalrusLocalPasscodeVerificationController)initWithTitle:(id)a3 presentWithViewController:(id)a4 presentationType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = CDPUIWalrusLocalPasscodeVerificationController;
  v11 = [(CDPUIWalrusLocalPasscodeVerificationController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a3);
    v13 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    context = v12->_context;
    v12->_context = v13;

    objc_storeStrong(&v12->_viewController, a4);
    v12->_presentationType = a5;
  }

  [(CDPUIWalrusLocalPasscodeVerificationController *)v12 _setupControllers];

  return v12;
}

- (void)_setupControllers
{
  v3 = [objc_alloc(MEMORY[0x277CFD548]) initWithContext:self->_context];
  stateController = self->_stateController;
  self->_stateController = v3;

  v5 = objc_alloc_init(CDPUIController);
  uiController = self->_uiController;
  self->_uiController = v5;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:1];
  if (self->_presentationType == 2)
  {
    [(CDPUIController *)self->_uiController setForceInlinePresentation:0];
  }

  [(CDPUIBaseController *)self->_uiController setPresentingViewController:self->_viewController];
  [(CDPUIController *)self->_uiController setTitleText:self->_title];
  [(CDPUIController *)self->_uiController setDelegate:self];
  v7 = self->_uiController;
  v8 = self->_stateController;

  [(CDPStateController *)v8 setUiProvider:v7];
}

- (void)finishWalrusLocalPasscodeVerificationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CE44D8]);
  v6 = [v5 initWithEventName:*MEMORY[0x277CFD768] eventCategory:*MEMORY[0x277CFD930] initData:0];
  v7 = [(CDPContext *)self->_context telemetryFlowID];

  if (v7)
  {
    v8 = [(CDPContext *)self->_context telemetryFlowID];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CE45A8]];
  }

  v9 = [(CDPContext *)self->_context telemetryDeviceSessionID];

  if (v9)
  {
    v10 = [(CDPContext *)self->_context telemetryDeviceSessionID];
    [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277CE4578]];
  }

  uiController = self->_uiController;
  context = self->_context;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__CDPUIWalrusLocalPasscodeVerificationController_finishWalrusLocalPasscodeVerificationWithCompletion___block_invoke;
  v15[3] = &unk_278E2AF60;
  v16 = v6;
  v17 = self;
  v18 = v4;
  v13 = v4;
  v14 = v6;
  [(CDPUIController *)uiController cdpContext:context promptForLocalSecretWithCompletion:v15];
}

void __102__CDPUIWalrusLocalPasscodeVerificationController_finishWalrusLocalPasscodeVerificationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[CDPUIWalrusLocalPasscodeVerificationController finishWalrusLocalPasscodeVerificationWithCompletion:]_block_invoke";
      _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "%s Validated local secret successfully.", buf, 0xCu);
    }

    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    v9 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v9 sendEvent:*(a1 + 32)];

    v10 = *(a1 + 40);
    v11 = *(v10 + 16);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __102__CDPUIWalrusLocalPasscodeVerificationController_finishWalrusLocalPasscodeVerificationWithCompletion___block_invoke_26;
    v14[3] = &unk_278E2AF38;
    v14[4] = v10;
    v15 = v5;
    v16 = *(a1 + 48);
    [v11 shouldPerformRepairWithOptionForceFetch:1 completion:v14];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __102__CDPUIWalrusLocalPasscodeVerificationController_finishWalrusLocalPasscodeVerificationWithCompletion___block_invoke_cold_1(v6, v8);
    }

    [*(a1 + 32) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
    v12 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v12 sendEvent:*(a1 + 32)];

    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v6);
    }
  }
}

void __102__CDPUIWalrusLocalPasscodeVerificationController_finishWalrusLocalPasscodeVerificationWithCompletion___block_invoke_26(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(*(a1 + 32) + 8) setType:14];
    v6 = *(*(a1 + 32) + 16);
    v7 = [*(a1 + 40) validatedSecret];
    v8 = [*(a1 + 40) secretType];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __102__CDPUIWalrusLocalPasscodeVerificationController_finishWalrusLocalPasscodeVerificationWithCompletion___block_invoke_2;
    v10[3] = &unk_278E2AF10;
    v11 = *(a1 + 48);
    [v6 localSecretChangedTo:v7 secretType:v8 completion:v10];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }
}

uint64_t __102__CDPUIWalrusLocalPasscodeVerificationController_finishWalrusLocalPasscodeVerificationWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)uiController:(id)a3 preparePresentationContext:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)uiController:(id)a3 prepareAlertContext:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

void __102__CDPUIWalrusLocalPasscodeVerificationController_finishWalrusLocalPasscodeVerificationWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[CDPUIWalrusLocalPasscodeVerificationController finishWalrusLocalPasscodeVerificationWithCompletion:]_block_invoke_3";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2451DB000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to validate local secret with error %@", &v2, 0x16u);
}

@end