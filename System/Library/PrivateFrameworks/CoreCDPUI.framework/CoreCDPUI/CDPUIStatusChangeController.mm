@interface CDPUIStatusChangeController
+ (id)controllerWithTargetWalrusStatus:(unint64_t)status;
+ (id)controllerWithTargetWalrusStatus:(unint64_t)status altDSID:(id)d;
+ (id)controllerWithTargetWebAccessStatus:(unint64_t)status;
- (CDPUIStatusChangeController)initWithModel:(id)model;
- (id)_configureAlertController;
- (id)_configurePasscodeVerificationControllerWithViewController:(id)controller presentationType:(unint64_t)type;
- (void)_alertWithViewController:(id)controller;
- (void)_handleBuddyFlow;
- (void)_handleUserChoice:(unint64_t)choice error:(id)error;
- (void)_passcodeVerificationflowWithViewController:(id)controller presentationType:(unint64_t)type;
- (void)presentWithViewController:(id)controller presentationType:(unint64_t)type;
@end

@implementation CDPUIStatusChangeController

- (CDPUIStatusChangeController)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = CDPUIStatusChangeController;
  v6 = [(CDPUIStatusChangeController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (void)_handleUserChoice:(unint64_t)choice error:(id)error
{
  errorCopy = error;
  if (objc_opt_respondsToSelector())
  {
    [(CDPUIStatusChangeModel *)self->_model _reportUserChoice:choice error:errorCopy];
  }

  userActionCallback = [(CDPUIStatusChangeController *)self userActionCallback];

  if (userActionCallback)
  {
    userActionCallback2 = [(CDPUIStatusChangeController *)self userActionCallback];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CDPUIStatusChangeController__handleUserChoice_error___block_invoke;
    block[3] = &unk_278E2BE30;
    v21 = userActionCallback2;
    choiceCopy = choice;
    v9 = userActionCallback2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  completionCallback = [(CDPUIStatusChangeController *)self completionCallback];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __55__CDPUIStatusChangeController__handleUserChoice_error___block_invoke_2;
  v17 = &unk_278E2BE80;
  v11 = completionCallback;
  v18 = v11;
  choiceCopy2 = choice;
  v12 = _Block_copy(&v14);
  v13 = v12;
  if (choice - 1 < 2)
  {
    [(CDPUIStatusChangeModel *)self->_model _updateUnderlyingValue:v12, v14, v15, v16, v17];
  }

  else if (!choice || choice == 3)
  {
    (*(v12 + 2))(v12, 0);
  }
}

void __55__CDPUIStatusChangeController__handleUserChoice_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CDPUIStatusChangeController__handleUserChoice_error___block_invoke_3;
    block[3] = &unk_278E2BE58;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    v7 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

+ (id)controllerWithTargetWalrusStatus:(unint64_t)status
{
  v4 = objc_alloc_init(MEMORY[0x277CFD568]);
  v5 = [[CDPUIWalrusStatusChangeModel alloc] initWithTargetStatus:status statusProvider:v4 statusUpdater:v4];
  v6 = [[CDPUIStatusChangeController alloc] initWithModel:v5];

  return v6;
}

+ (id)controllerWithTargetWalrusStatus:(unint64_t)status altDSID:(id)d
{
  v5 = MEMORY[0x277CFD4A8];
  dCopy = d;
  v7 = [v5 contextForAccountWithAltDSID:dCopy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v7 setTelemetryFlowID:uUIDString];

  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  v11 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:dCopy];

  mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
  v13 = [mEMORY[0x277CF0130]2 telemetryDeviceSessionIDForAccount:v11];
  [v7 setTelemetryDeviceSessionID:v13];

  v14 = [objc_alloc(MEMORY[0x277CFD568]) initWithContext:v7];
  v15 = [[CDPUIWalrusStatusChangeModel alloc] initWithTargetStatus:status statusProvider:v14 statusUpdater:v14 context:v7];
  v16 = [[CDPUIStatusChangeController alloc] initWithModel:v15];

  return v16;
}

+ (id)controllerWithTargetWebAccessStatus:(unint64_t)status
{
  v4 = objc_alloc_init(MEMORY[0x277CFD570]);
  v5 = objc_alloc_init(MEMORY[0x277CFD568]);
  v6 = [[CDPUIWebAccessStatusChangeModel alloc] initWithTargetStatus:status statusProvider:v4 statusUpdater:v4 walrusStatusProvider:v5];
  v7 = [[CDPUIStatusChangeController alloc] initWithModel:v6];

  return v7;
}

- (id)_configureAlertController
{
  v3 = MEMORY[0x277D75110];
  model = [(CDPUIStatusChangeController *)self model];
  titleText = [model titleText];
  model2 = [(CDPUIStatusChangeController *)self model];
  messageText = [model2 messageText];
  v8 = [v3 alertControllerWithTitle:titleText message:messageText preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  model3 = [(CDPUIStatusChangeController *)self model];
  primaryButtonText = [model3 primaryButtonText];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__CDPUIStatusChangeController_Presentation___configureAlertController__block_invoke;
  v19[3] = &unk_278E2B708;
  v19[4] = self;
  v12 = [v9 actionWithTitle:primaryButtonText style:0 handler:v19];

  [v8 addAction:v12];
  v13 = MEMORY[0x277D750F8];
  model4 = [(CDPUIStatusChangeController *)self model];
  cancelButtonText = [model4 cancelButtonText];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__CDPUIStatusChangeController_Presentation___configureAlertController__block_invoke_18;
  v18[3] = &unk_278E2B708;
  v18[4] = self;
  v16 = [v13 actionWithTitle:cancelButtonText style:1 handler:v18];

  [v8 addAction:v16];

  return v8;
}

uint64_t __70__CDPUIStatusChangeController_Presentation___configureAlertController__block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__CDPUIStatusChangeController_Presentation___configureAlertController__block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) _handleUserChoice:1];
}

- (id)_configurePasscodeVerificationControllerWithViewController:(id)controller presentationType:(unint64_t)type
{
  controllerCopy = controller;
  v7 = [CDPUIWalrusLocalPasscodeVerificationController alloc];
  model = [(CDPUIStatusChangeController *)self model];
  titleText = [model titleText];
  v10 = [(CDPUIWalrusLocalPasscodeVerificationController *)v7 initWithTitle:titleText presentWithViewController:controllerCopy presentationType:type];

  return v10;
}

- (void)presentWithViewController:(id)controller presentationType:(unint64_t)type
{
  controllerCopy = controller;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPUIStatusChangeController(Presentation) presentWithViewController:presentationType:];
  }

  model = [(CDPUIStatusChangeController *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke;
  v10[3] = &unk_278E2BF30;
  v10[4] = self;
  v11 = controllerCopy;
  typeCopy = type;
  v9 = controllerCopy;
  [model _checkCurrentStatus:v10];
}

uint64_t __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = _CDPLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_4();
      }

      v5 = *(v2 + 32);
      v6 = 2;
    }

    else
    {
      v9 = _CDPLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_5();
      }

      v5 = *(v2 + 32);
      v6 = 3;
    }

    return [v5 _handleUserChoice:v6];
  }

  else
  {
    switch(a2)
    {
      case 2:
        v7 = _CDPLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_3();
        }

        return [*(v2 + 32) _alertWithViewController:*(v2 + 40)];
      case 3:
        v8 = _CDPLogSystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_2();
        }

        return [*(v2 + 32) _passcodeVerificationflowWithViewController:*(v2 + 40) presentationType:*(v2 + 48)];
      case 4:
        v3 = _CDPLogSystem();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_1();
        }

        return [*(v2 + 32) _handleBuddyFlow];
    }
  }

  return result;
}

- (void)_passcodeVerificationflowWithViewController:(id)controller presentationType:(unint64_t)type
{
  v5 = [(CDPUIStatusChangeController *)self _configurePasscodeVerificationControllerWithViewController:controller presentationType:type];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __106__CDPUIStatusChangeController_Presentation___passcodeVerificationflowWithViewController_presentationType___block_invoke;
  v6[3] = &unk_278E2BC98;
  v6[4] = self;
  [v5 finishWalrusLocalPasscodeVerificationWithCompletion:v6];
}

void __106__CDPUIStatusChangeController_Presentation___passcodeVerificationflowWithViewController_presentationType___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __106__CDPUIStatusChangeController_Presentation___passcodeVerificationflowWithViewController_presentationType___block_invoke_cold_1(a1, v5);
    }

    [*(a1 + 32) _handleUserChoice:0 error:v5];
  }

  else if (a2)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __106__CDPUIStatusChangeController_Presentation___passcodeVerificationflowWithViewController_presentationType___block_invoke_cold_2();
    }

    [*(a1 + 32) _handleUserChoice:1];
  }
}

- (void)_handleBuddyFlow
{
  v3 = objc_alloc(MEMORY[0x277CFD548]);
  model = [(CDPUIStatusChangeController *)self model];
  cdpContext = [model cdpContext];
  v6 = [v3 initWithContext:cdpContext];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CDPUIStatusChangeController_Presentation___handleBuddyFlow__block_invoke;
  v7[3] = &unk_278E2BC98;
  v7[4] = self;
  [v6 shouldPerformRepairWithOptionForceFetch:1 completion:v7];
}

void __61__CDPUIStatusChangeController_Presentation___handleBuddyFlow__block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__CDPUIStatusChangeController_Presentation___handleBuddyFlow__block_invoke_cold_1(v5, v7);
    }

    [*(a1 + 32) _handleUserChoice:0 error:v5];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CDPUIStatusChangeController(Presentation) _handleBuddyFlow]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_2451DB000, v7, OS_LOG_TYPE_DEFAULT, "%s: CDP State is good, proceeding: %@", &v8, 0x16u);
    }

    [*(a1 + 32) _handleUserChoice:2];
  }
}

- (void)_alertWithViewController:(id)controller
{
  controllerCopy = controller;
  _configureAlertController = [(CDPUIStatusChangeController *)self _configureAlertController];
  [controllerCopy presentViewController:_configureAlertController animated:1 completion:0];
}

void __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = OUTLINED_FUNCTION_4_0();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3_1() model];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2451DB000, v3, v4, "%@: Performing CDP State Check %@.", v5, v6, v7, v8, v9);
}

void __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  v1 = OUTLINED_FUNCTION_4_0();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3_1() model];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2451DB000, v3, v4, "%@: Presenting passcode entry for %@.", v5, v6, v7, v8, v9);
}

void __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_1();
  v1 = OUTLINED_FUNCTION_4_0();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3_1() model];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2451DB000, v3, v4, "%@: Presenting alert for %@.", v5, v6, v7, v8, v9);
}

void __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_1();
  v1 = OUTLINED_FUNCTION_4_0();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3_1() model];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2451DB000, v3, v4, "%@: Skipping user prompt for %@ user interaction was not needed.", v5, v6, v7, v8, v9);
}

void __88__CDPUIStatusChangeController_Presentation__presentWithViewController_presentationType___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2_1();
  v1 = OUTLINED_FUNCTION_4_0();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3_1() model];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2451DB000, v3, v4, "%@: Skipping user prompt for %@ because no change was needed.", v5, v6, v7, v8, v9);
}

void __106__CDPUIStatusChangeController_Presentation___passcodeVerificationflowWithViewController_presentationType___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromClass(v3);
  v5 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2451DB000, v6, v7, "%@: Error in updating local secret %@.", v8, v9, v10, v11, v12);
}

void __106__CDPUIStatusChangeController_Presentation___passcodeVerificationflowWithViewController_presentationType___block_invoke_cold_2()
{
  v0 = OUTLINED_FUNCTION_4_0();
  v1 = NSStringFromClass(v0);
  v8 = [0 localizedDescription];
  OUTLINED_FUNCTION_1_0(&dword_2451DB000, v2, v3, "%@: Updated local secret successfully %@.", v4, v5, v6, v7, 2u);
}

void __61__CDPUIStatusChangeController_Presentation___handleBuddyFlow__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[CDPUIStatusChangeController(Presentation) _handleBuddyFlow]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2451DB000, a2, OS_LOG_TYPE_ERROR, "%s: Determined that repair is needed, cannot proceed with walrus state change: %@", &v2, 0x16u);
}

@end