@interface FACreateChildController
- (FACreateChildController)initWithAppleAccount:(id)account;
- (FACreateChildControllerDelegate)delegate;
- (UIViewController)presentingViewController;
- (id)_createNewAccountContextForAgeRange:(unint64_t)range;
- (id)_repairAuthContextWithAuthResults:(id)results;
- (id)_repairFAContextWithAuthResults:(id)results;
- (id)_repairParametersFromAuthResults:(id)results;
- (void)_createAccountWithAgeRange:(unint64_t)range completion:(id)completion;
- (void)_dismissPresentedViewControllerWithCompletion:(id)completion;
- (void)_repairAccountWithAuthenticationResults:(id)results completion:(id)completion;
- (void)_setupPresentedViewController;
- (void)navigationController:(id)controller didPresentInitialViewController:(id)viewController;
- (void)navigationController:(id)controller presentViewController:(id)viewController;
@end

@implementation FACreateChildController

- (FACreateChildController)initWithAppleAccount:(id)account
{
  accountCopy = account;
  v6 = [(FACreateChildController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appleAccount, account);
  }

  return v7;
}

- (void)_createAccountWithAgeRange:(unint64_t)range completion:(id)completion
{
  completionCopy = completion;
  [(FACreateChildController *)self _setupPresentedViewController];
  v7 = [(FACreateChildController *)self _createNewAccountContextForAgeRange:range];
  v8 = objc_alloc_init(MEMORY[0x277CF0178]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__FACreateChildController__createAccountWithAgeRange_completion___block_invoke;
  v10[3] = &unk_2782F2F98;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 authenticateWithContext:v7 completion:v10];
}

void __65__FACreateChildController__createAccountWithAgeRange_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _FALogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __65__FACreateChildController__createAccountWithAgeRange_completion___block_invoke_cold_1();
    }

    [*(a1 + 32) repairChildAccountWithAuthenticationResults:v5 completion:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__FACreateChildController__createAccountWithAgeRange_completion___block_invoke_cold_2();
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__FACreateChildController__createAccountWithAgeRange_completion___block_invoke_40;
    v10[3] = &unk_2782F2F70;
    v9 = *(a1 + 32);
    v12 = *(a1 + 40);
    v11 = v6;
    [v9 _dismissPresentedViewControllerWithCompletion:v10];
  }
}

void __65__FACreateChildController__createAccountWithAgeRange_completion___block_invoke_40(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1006 underlyingError:*(a1 + 32)];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (void)_repairAccountWithAuthenticationResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  [(FACreateChildController *)self _setupPresentedViewController];
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FACreateChildController _repairAccountWithAuthenticationResults:completion:];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke;
  aBlock[3] = &unk_2782F2FC0;
  v9 = completionCopy;
  v24 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(FACreateChildController *)self _repairFAContextWithAuthResults:resultsCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = [[FACircleStateController alloc] initWithPresenter:self->_navController];
  v12 = v18[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke_46;
  v14[3] = &unk_2782F3060;
  v16 = &v17;
  v14[4] = self;
  v13 = v10;
  v15 = v13;
  [v12 performOperationWithContext:v11 completion:v14];

  _Block_object_dispose(&v17, 8);
}

uint64_t __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke_46(void *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke_46_cold_1(a2, v5, v8);
  }

  v9 = MEMORY[0x277D08250];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke_54;
  v11[3] = &unk_2782F3038;
  v10 = a1[5];
  v11[4] = a1[4];
  v12 = v10;
  v13 = a2;
  [v9 handleDidSetupFamilyWithCompletion:v11];
}

void __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke_54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke_2;
  v8[3] = &unk_2782F3010;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v6 = v5;
  v11 = *(a1 + 48);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke_3;
  v3[3] = &unk_2782F2FE8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  [v2 _dismissPresentedViewControllerWithCompletion:v3];
}

- (id)_createNewAccountContextForAgeRange:(unint64_t)range
{
  v5 = objc_alloc_init(MEMORY[0x277CF0380]);
  aa_altDSID = [(ACAccount *)self->_appleAccount aa_altDSID];
  [v5 setAltDSID:aa_altDSID];

  username = [(ACAccount *)self->_appleAccount username];
  [v5 setUsername:username];

  [v5 setIsUsernameEditable:0];
  v8 = objc_opt_respondsToSelector();
  v9 = _FALogSystem();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(FACreateChildController *)v5 _createNewAccountContextForAgeRange:range, v10];
    }

    [v5 setRequestedNewAccountAgeRange:range];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FACreateChildController _createNewAccountContextForAgeRange:];
    }

    [v5 setNeedsNewChildAccount:1];
  }

  [v5 setAppProvidedContext:@"parent"];
  [v5 setServiceType:1];
  [v5 setPresentingViewController:self->_navController];
  [v5 setForceInlinePresentation:1];

  return v5;
}

- (void)_setupPresentedViewController
{
  if (!self->_navController)
  {
    v4 = objc_alloc_init(FANavigationController);
    navController = self->_navController;
    self->_navController = v4;

    [(FANavigationController *)self->_navController setFamilyDelegate:self];
    v6 = self->_navController;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = -2;
    }

    [(FANavigationController *)v6 setModalPresentationStyle:v9];
  }
}

- (void)_dismissPresentedViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(FANavigationController *)self->_navController presentingViewController];

  if (presentingViewController)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__FACreateChildController__dismissPresentedViewControllerWithCompletion___block_invoke;
    v6[3] = &unk_2782F3088;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __73__FACreateChildController__dismissPresentedViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__FACreateChildController__dismissPresentedViewControllerWithCompletion___block_invoke_2;
  v3[3] = &unk_2782F2ED8;
  v4 = *(a1 + 40);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

- (id)_repairFAContextWithAuthResults:(id)results
{
  resultsCopy = results;
  v5 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeFamilyRepair"];
  v6 = [(FACreateChildController *)self _repairParametersFromAuthResults:resultsCopy];
  [(FACircleContext *)v5 setAdditionalParameters:v6];

  v7 = [(FACreateChildController *)self _repairAuthContextWithAuthResults:resultsCopy];

  [(FACircleContext *)v5 setAuthContext:v7];

  return v5;
}

- (id)_repairParametersFromAuthResults:(id)results
{
  resultsCopy = results;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = *MEMORY[0x277CEFF88];
  v6 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFF88]];

  if (v6)
  {
    v7 = [resultsCopy objectForKeyedSubscript:v5];
    [v4 setObject:v7 forKeyedSubscript:@"memberId"];
  }

  else
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FACreateChildController _repairParametersFromAuthResults:];
    }
  }

  v8 = *MEMORY[0x277CEFF78];
  v9 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFF78]];

  if (v9)
  {
    v10 = [resultsCopy objectForKeyedSubscript:v8];
    [v4 setObject:v10 forKeyedSubscript:@"altDSID"];
  }

  else
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FACreateChildController _repairParametersFromAuthResults:];
    }
  }

  v11 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFFA0]];
  v12 = *MEMORY[0x277CED1C8];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CED1C8]];

  if (v13)
  {
    v14 = [v11 objectForKeyedSubscript:v12];
    [v4 setObject:v14 forKeyedSubscript:v12];
  }

  else
  {
    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FACreateChildController _repairParametersFromAuthResults:];
    }
  }

  return v4;
}

- (id)_repairAuthContextWithAuthResults:(id)results
{
  v3 = MEMORY[0x277CF0170];
  resultsCopy = results;
  v5 = objc_alloc_init(v3);
  [v5 setNeedsNewAppleID:1];
  v6 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFFD8]];

  [v5 setUsername:v6];

  return v5;
}

- (void)navigationController:(id)controller didPresentInitialViewController:(id)viewController
{
  controllerCopy = controller;
  presentingViewController = [controllerCopy presentingViewController];

  if (!presentingViewController)
  {
    presentingViewController2 = [(FACreateChildController *)self presentingViewController];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__FACreateChildController_navigationController_didPresentInitialViewController___block_invoke;
    v8[3] = &unk_2782F29E8;
    v8[4] = self;
    [presentingViewController2 presentViewController:controllerCopy animated:1 completion:v8];
  }
}

void __80__FACreateChildController_navigationController_didPresentInitialViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 createChildControllerDidPresentInitialViewController:*(a1 + 32)];
}

- (void)navigationController:(id)controller presentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  presentingViewController = [(FACreateChildController *)self presentingViewController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__FACreateChildController_navigationController_presentViewController___block_invoke;
  v7[3] = &unk_2782F29E8;
  v7[4] = self;
  [presentingViewController presentViewController:viewControllerCopy animated:1 completion:v7];
}

void __70__FACreateChildController_navigationController_presentViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 createChildControllerDidPresentInitialViewController:*(a1 + 32)];
}

- (FACreateChildControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

void __65__FACreateChildController__createAccountWithAgeRange_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__FACreateChildController__repairAccountWithAuthenticationResults_completion___block_invoke_46_cold_1(char a1, uint64_t a2, NSObject *a3)
{
  v3 = @"YES";
  if ((a1 & 1) == 0)
  {
    v3 = @"NO";
  }

  *v5 = 138412546;
  *&v5[4] = v3;
  *&v5[12] = 2112;
  *&v5[14] = a2;
  OUTLINED_FUNCTION_2(&dword_21BB35000, a2, a3, "Child account repair flow %@ error: %@", *v5, *&v5[8], *&v5[16], *MEMORY[0x277D85DE8]);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_createNewAccountContextForAgeRange:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_createNewAccountContextForAgeRange:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2048;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2(&dword_21BB35000, a2, a3, "Configuring create context: %@ for new account of age range: %lu", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_repairParametersFromAuthResults:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_repairParametersFromAuthResults:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_repairParametersFromAuthResults:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end