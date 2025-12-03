@interface DKAccountProvider
- (AAUIRecoveryFactorController)recoveryFactorController;
- (DKAccountProvider)initWithFindMyProvider:(id)provider appleCareProvider:(id)careProvider;
- (UIViewController)presentingViewController;
- (id)accountsForAccountManager:(id)manager;
- (void)_addAccountDataForAccounts:(id)accounts toAccountsData:(id)data completion:(id)completion;
- (void)_determineEligibilityWithCompletion:(id)completion;
- (void)_fetchAccountDataForAccount:(id)account completion:(id)completion;
- (void)_performLastDeviceCheckWithCompletion:(id)completion;
- (void)_presentLastDeviceAlertWithCompletion:(id)completion;
- (void)_presentLastDeviceAlertWithRecoveryFactors:(unint64_t)factors withCompletion:(id)completion;
- (void)_verifyAndRepairManateeWithPresentingViewController:(id)controller completion:(id)completion;
- (void)_walrusStatusWithCompletion:(id)completion;
- (void)cacheLocalDevicePasscode:(id)passcode passcodeType:(int)type;
- (void)fetchAccounts:(id)accounts;
- (void)preparationRequiredForPrimaryAppleAccountWithCompletion:(id)completion;
- (void)preparePrimaryAppleAccountForSignOutWithPresentingViewController:(id)controller completion:(id)completion;
- (void)primaryAppleAccountRequiresADPSpecificInternetWarning:(id)warning;
- (void)recoveryFactorController:(id)controller didFinishAddingRecoveryContactWithError:(id)error;
- (void)signOutFlowController:(id)controller disableFindMyDeviceForAccount:(id)account completion:(id)completion;
- (void)signOutFlowController:(id)controller performWalrusValidationForAccount:(id)account completion:(id)completion;
- (void)signOutFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion;
- (void)signOutFlowController:(id)controller signOutAccount:(id)account completion:(id)completion;
- (void)signOutPrimaryAppleAccountWithPresentingViewController:(id)controller completion:(id)completion;
@end

@implementation DKAccountProvider

- (DKAccountProvider)initWithFindMyProvider:(id)provider appleCareProvider:(id)careProvider
{
  providerCopy = provider;
  careProviderCopy = careProvider;
  v20.receiver = self;
  v20.super_class = DKAccountProvider;
  v8 = [(DKAccountProvider *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(DKAccountProvider *)v8 setFindMyProvider:providerCopy];
    [(DKAccountProvider *)v9 setAppleCareProvider:careProviderCopy];
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    [(DKAccountProvider *)v9 setAccountStore:defaultStore];

    v11 = objc_alloc(MEMORY[0x277CED1E8]);
    accountStore = [(DKAccountProvider *)v9 accountStore];
    v13 = [v11 initWithAccountStore:accountStore];
    [(DKAccountProvider *)v9 setServiceOwnersManager:v13];

    v14 = objc_alloc(MEMORY[0x277CED1D0]);
    accountStore2 = [(DKAccountProvider *)v9 accountStore];
    v16 = [v14 initWithAccountStore:accountStore2];
    [(DKAccountProvider *)v9 setAccountManager:v16];

    accountManager = [(DKAccountProvider *)v9 accountManager];
    [accountManager setDelegate:v9];

    v18 = objc_alloc_init(MEMORY[0x277CFD568]);
    [(DKAccountProvider *)v9 setWalrusStateController:v18];
  }

  return v9;
}

- (void)fetchAccounts:(id)accounts
{
  accountsCopy = accounts;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  accountStore = [(DKAccountProvider *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  accountStore2 = [(DKAccountProvider *)self accountStore];
  aa_appleAccounts = [accountStore2 aa_appleAccounts];
  v10 = [aa_appleAccounts mutableCopy];

  if ([v10 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__DKAccountProvider_fetchAccounts___block_invoke;
    v13[3] = &unk_278F7D8A8;
    v11 = aa_primaryAppleAccount;
    v14 = v11;
    v12 = [v10 indexOfObjectPassingTest:v13];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 removeObjectAtIndex:v12];
      [v10 insertObject:v11 atIndex:0];
    }
  }

  [(DKAccountProvider *)self _addAccountDataForAccounts:v10 toAccountsData:v5 completion:accountsCopy];
}

uint64_t __35__DKAccountProvider_fetchAccounts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)primaryAppleAccountRequiresADPSpecificInternetWarning:(id)warning
{
  warningCopy = warning;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__DKAccountProvider_primaryAppleAccountRequiresADPSpecificInternetWarning___block_invoke;
  v6[3] = &unk_278F7D8D0;
  v7 = warningCopy;
  v5 = warningCopy;
  [(DKAccountProvider *)self _walrusStatusWithCompletion:v6];
}

- (void)cacheLocalDevicePasscode:(id)passcode passcodeType:(int)type
{
  if (type == -1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = MEMORY[0x277CFD500];
  passcodeCopy = passcode;
  v8 = [[v6 alloc] initWithValidatedSecret:passcodeCopy secretType:v5];

  [(DKAccountProvider *)self setCachedLocalSecret:v8];
}

- (void)preparationRequiredForPrimaryAppleAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__DKAccountProvider_preparationRequiredForPrimaryAppleAccountWithCompletion___block_invoke;
  v6[3] = &unk_278F7D8D0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(DKAccountProvider *)self _walrusStatusWithCompletion:v6];
}

void __77__DKAccountProvider_preparationRequiredForPrimaryAppleAccountWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = [MEMORY[0x277CFD480] sharedInstance];
    v4 = [v3 contextForPrimaryAccount];

    v5 = [objc_alloc(MEMORY[0x277CFD548]) initWithContext:v4];
    v9 = 0;
    [v5 isManateeAvailable:&v9];
    v6 = v9;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 32) + 16);

    v8();
  }
}

- (void)preparePrimaryAppleAccountForSignOutWithPresentingViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__DKAccountProvider_preparePrimaryAppleAccountForSignOutWithPresentingViewController_completion___block_invoke;
  v10[3] = &unk_278F7D948;
  objc_copyWeak(&v13, &location);
  v8 = completionCopy;
  v12 = v8;
  v9 = controllerCopy;
  v11 = v9;
  [(DKAccountProvider *)self _walrusStatusWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __97__DKAccountProvider_preparePrimaryAppleAccountForSignOutWithPresentingViewController_completion___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = *(a1[5] + 2);
LABEL_7:
    v8();
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v8 = *(a1[5] + 2);
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    [WeakRetained _verifyAndRepairManateeWithPresentingViewController:a1[4] completion:a1[5]];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__DKAccountProvider_preparePrimaryAppleAccountForSignOutWithPresentingViewController_completion___block_invoke_2;
    block[3] = &unk_278F7D920;
    v10 = v5;
    v12 = a1[5];
    v11 = a1[4];
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_9:
}

void __97__DKAccountProvider_preparePrimaryAppleAccountForSignOutWithPresentingViewController_completion___block_invoke_2(id *a1)
{
  v2 = _DKLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __97__DKAccountProvider_preparePrimaryAppleAccountForSignOutWithPresentingViewController_completion___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = MEMORY[0x277D75110];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __97__DKAccountProvider_preparePrimaryAppleAccountForSignOutWithPresentingViewController_completion___block_invoke_38;
  v14 = &unk_278F7D8F8;
  v16 = a1[6];
  v15 = a1[4];
  v10 = [v9 dkui_unknownFailureAlertControllerWithCompletion:&v11];
  [a1[5] presentViewController:v10 animated:1 completion:{0, v11, v12, v13, v14}];
}

- (void)signOutPrimaryAppleAccountWithPresentingViewController:(id)controller completion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CED1D8];
  completionCopy = completion;
  controllerCopy = controller;
  v9 = objc_alloc_init(v6);
  [v9 setViewController:controllerCopy];
  v14 = *MEMORY[0x277CED1A0];
  v10 = v14;
  v15[0] = self;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v9 setSignOutContexts:v11];

  [(DKAccountProvider *)self setPresentingViewController:controllerCopy];
  serviceOwnersManager = [(DKAccountProvider *)self serviceOwnersManager];
  [serviceOwnersManager signOutService:v10 withContext:v9 completion:completionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)signOutFlowController:(id)controller performWalrusValidationForAccount:(id)account completion:(id)completion
{
  controllerCopy = controller;
  accountCopy = account;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__DKAccountProvider_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke;
  v12[3] = &unk_278F7D970;
  objc_copyWeak(&v14, &location);
  v11 = completionCopy;
  v13 = v11;
  [(DKAccountProvider *)self _walrusStatusWithCompletion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __88__DKAccountProvider_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  v7 = *(a1 + 32);
  if (a2 == 1 && WeakRetained)
  {
    [WeakRetained _performLastDeviceCheckWithCompletion:v7];
  }

  else
  {
    (*(v7 + 16))(*(a1 + 32), a2 == 2, v8);
  }
}

- (void)signOutFlowController:(id)controller disableFindMyDeviceForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  findMyProvider = [(DKAccountProvider *)self findMyProvider];
  presentingViewController = [(DKAccountProvider *)self presentingViewController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__DKAccountProvider_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke;
  v10[3] = &unk_278F7D998;
  v11 = completionCopy;
  v9 = completionCopy;
  [findMyProvider disableFindMyWithPresentingViewController:presentingViewController completion:v10];
}

- (void)signOutFlowController:(id)controller signOutAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  accountStore = [(DKAccountProvider *)self accountStore];
  [accountStore removeAccount:accountCopy withCompletionHandler:completionCopy];
}

- (void)signOutFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  completionCopy = completion;
  presentingViewController = [(DKAccountProvider *)self presentingViewController];
  if (presentingViewController)
  {
    v13 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    v14 = MEMORY[0x277D750F8];
    v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
    v16 = [v15 localizedStringForKey:@"OK" value:&stru_285BC2A70 table:@"Localizable"];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__DKAccountProvider_signOutFlowController_showAlertWithTitle_message_completion___block_invoke;
    v18[3] = &unk_278F7D9C0;
    v19 = completionCopy;
    v17 = [v14 actionWithTitle:v16 style:0 handler:v18];
    [v13 addAction:v17];

    [presentingViewController presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)accountsForAccountManager:(id)manager
{
  v10[1] = *MEMORY[0x277D85DE8];
  serviceOwnersManager = [(DKAccountProvider *)self serviceOwnersManager];
  v4 = *MEMORY[0x277CED1A0];
  v5 = [serviceOwnersManager accountForService:*MEMORY[0x277CED1A0]];

  if (v5)
  {
    v9 = v4;
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)recoveryFactorController:(id)controller didFinishAddingRecoveryContactWithError:(id)error
{
  errorCopy = error;
  pendingWalrusValidationCompletion = [(DKAccountProvider *)self pendingWalrusValidationCompletion];

  if (pendingWalrusValidationCompletion)
  {
    pendingWalrusValidationCompletion2 = [(DKAccountProvider *)self pendingWalrusValidationCompletion];
    v8 = pendingWalrusValidationCompletion2;
    if (errorCopy)
    {
      v9 = [MEMORY[0x277CCA9B8] aa_errorWithCode:0 underlyingError:errorCopy];
      v8[2](v8, 0, v9);
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __86__DKAccountProvider_recoveryFactorController_didFinishAddingRecoveryContactWithError___block_invoke;
      v10[3] = &unk_278F7D8D0;
      v11 = pendingWalrusValidationCompletion2;
      v8 = pendingWalrusValidationCompletion2;
      [(DKAccountProvider *)self _walrusStatusWithCompletion:v10];
    }

    [(DKAccountProvider *)self setPendingWalrusValidationCompletion:0];
    [(DKAccountProvider *)self setRecoveryFactorController:0];
  }
}

void __86__DKAccountProvider_recoveryFactorController_didFinishAddingRecoveryContactWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA9B8] aa_errorWithCode:v6 underlyingError:a3];
    (*(v7 + 16))(v7, 0, v8);
  }
}

- (void)_addAccountDataForAccounts:(id)accounts toAccountsData:(id)data completion:(id)completion
{
  accountsCopy = accounts;
  dataCopy = data;
  completionCopy = completion;
  if ([accountsCopy count])
  {
    firstObject = [accountsCopy firstObject];
    v12 = [accountsCopy subarrayWithRange:{1, objc_msgSend(accountsCopy, "count") - 1}];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__DKAccountProvider__addAccountDataForAccounts_toAccountsData_completion___block_invoke;
    v15[3] = &unk_278F7D9E8;
    v16 = dataCopy;
    selfCopy = self;
    v18 = v12;
    v19 = completionCopy;
    v13 = v12;
    [(DKAccountProvider *)self _fetchAccountDataForAccount:firstObject completion:v15];
  }

  else
  {
    v14 = [dataCopy copy];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

uint64_t __74__DKAccountProvider__addAccountDataForAccounts_toAccountsData_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);

  return [v3 _addAccountDataForAccounts:v5 toAccountsData:v4 completion:v6];
}

- (void)_fetchAccountDataForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x277CECA90]);
  accountStore = [(DKAccountProvider *)self accountStore];
  v10 = [v8 initWithAppleAccount:accountCopy store:accountStore];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__DKAccountProvider__fetchAccountDataForAccount_completion___block_invoke;
  v13[3] = &unk_278F7DA10;
  v14 = accountCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = accountCopy;
  [v10 fetchProfilePictureForAccountOwner:v13];
}

void __60__DKAccountProvider__fetchAccountDataForAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _DKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__DKAccountProvider__fetchAccountDataForAccount_completion___block_invoke_cold_1(v6, v7);
    }
  }

  v8 = [*(a1 + 32) aa_formattedUsername];
  v9 = [*(a1 + 32) aa_fullName];
  v10 = [[DKNotableUserDataAccount alloc] initWithProfilePicture:v5 name:v8 username:v9];
  (*(*(a1 + 40) + 16))();
}

- (void)_verifyAndRepairManateeWithPresentingViewController:(id)controller completion:(id)completion
{
  v6 = MEMORY[0x277CECA18];
  completionCopy = completion;
  controllerCopy = controller;
  v11 = [v6 contextWithType:6];
  [v11 setForceInlinePresentation:1];
  cachedLocalSecret = [(DKAccountProvider *)self cachedLocalSecret];
  [v11 setCachedLocalSecret:cachedLocalSecret];

  v10 = [objc_alloc(MEMORY[0x277CECA70]) initWithFlowContext:v11 withPresentingViewController:controllerCopy];
  [v10 verifyAndRepairManateeWithCompletion:completionCopy];
}

- (AAUIRecoveryFactorController)recoveryFactorController
{
  recoveryFactorController = self->_recoveryFactorController;
  if (!recoveryFactorController)
  {
    presentingViewController = [(DKAccountProvider *)self presentingViewController];
    navigationController = [presentingViewController navigationController];
    v6 = navigationController;
    if (navigationController)
    {
      presentingViewController2 = navigationController;
    }

    else
    {
      presentingViewController2 = [(DKAccountProvider *)self presentingViewController];
    }

    v8 = presentingViewController2;

    v9 = objc_alloc(MEMORY[0x277CECAA8]);
    accountManager = [(DKAccountProvider *)self accountManager];
    v11 = [v9 initWithAccountManager:accountManager presentingViewController:v8];
    v12 = self->_recoveryFactorController;
    self->_recoveryFactorController = v11;

    [(AAUIRecoveryFactorController *)self->_recoveryFactorController setDelegate:self];
    objc_opt_class();
    [(AAUIRecoveryFactorController *)self->_recoveryFactorController setForceInlinePresentation:objc_opt_isKindOfClass() & 1];

    recoveryFactorController = self->_recoveryFactorController;
  }

  return recoveryFactorController;
}

- (void)_walrusStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  walrusStateController = [(DKAccountProvider *)self walrusStateController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__DKAccountProvider__walrusStatusWithCompletion___block_invoke;
  v7[3] = &unk_278F7D8D0;
  v8 = completionCopy;
  v6 = completionCopy;
  [walrusStateController walrusStatusWithCompletion:v7];
}

void __49__DKAccountProvider__walrusStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _DKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__DKAccountProvider__walrusStatusWithCompletion___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!a2 && [v5 cdp_isCDPErrorWithCode:-5102])
  {
    v13 = _DKLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_248D68000, v13, OS_LOG_TYPE_DEFAULT, "Received unknown walrus status due to no primary Apple account, treating as disabled.", v14, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_performLastDeviceCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__DKAccountProvider__performLastDeviceCheckWithCompletion___block_invoke;
  v6[3] = &unk_278F7DA38;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(DKAccountProvider *)self _determineEligibilityWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__DKAccountProvider__performLastDeviceCheckWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a2 && WeakRetained)
  {
    [WeakRetained _presentLastDeviceAlertWithCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), v7 == 0);
  }
}

- (void)_determineEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  contextForPrimaryAccount = [mEMORY[0x277CFD480] contextForPrimaryAccount];

  v6 = objc_alloc_init(MEMORY[0x277CFD548]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__DKAccountProvider__determineEligibilityWithCompletion___block_invoke;
  v8[3] = &unk_278F7DA60;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 fetchEscrowRecordDevicesWithContext:contextForPrimaryAccount usingCache:0 completion:v8];
}

void __57__DKAccountProvider__determineEligibilityWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isCurrentDevice"), v7, v8))
  {
    v9 = _DKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248D68000, v9, OS_LOG_TYPE_DEFAULT, "Current device is determined to be the last escrow device for primary account.", buf, 2u);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    v11 = _DKLogSystem();
    v12 = v11;
    if (v6)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __57__DKAccountProvider__determineEligibilityWithCompletion___block_invoke_cold_1(v6, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248D68000, v12, OS_LOG_TYPE_DEFAULT, "Determined that the current device is not the last escrow device for the primary account.", v19, 2u);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

- (void)_presentLastDeviceAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  recoveryFactorController = [(DKAccountProvider *)self recoveryFactorController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__DKAccountProvider__presentLastDeviceAlertWithCompletion___block_invoke;
  v7[3] = &unk_278F7D970;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [recoveryFactorController availableRecoveryFactorsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__DKAccountProvider__presentLastDeviceAlertWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5 || !WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__DKAccountProvider__presentLastDeviceAlertWithCompletion___block_invoke_2;
    block[3] = &unk_278F7DA88;
    v9 = WeakRetained;
    v11 = a2;
    v10 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_presentLastDeviceAlertWithRecoveryFactors:(unint64_t)factors withCompletion:(id)completion
{
  factorsCopy = factors;
  completionCopy = completion;
  v7 = _DKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DKAccountProvider _presentLastDeviceAlertWithRecoveryFactors:v7 withCompletion:?];
  }

  v35 = (factorsCopy & 4) >> 2;
  v8 = @"CONTACT";
  if ((factorsCopy & 4) != 0)
  {
    v8 = @"KEY";
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = v8;
  v40 = [v9 stringWithFormat:@"SIGN_OUT_LAST_DEVICE_RECOVERY_%@_TITLE", v10];
  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"SIGN_OUT_ADD_RECOVERY_%@_BUTTON", v10];
  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERASE_LAST_DEVICE_RECOVERY_%@_MESSAGE", v10];

  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v37 = [v11 localizedStringForKey:v40 value:&stru_285BC2A70 table:@"Localizable-Walrus"];

  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v34 = [v12 localizedStringForKey:v39 value:&stru_285BC2A70 table:@"Localizable-Walrus"];

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = [v13 localizedStringForKey:v38 value:&stru_285BC2A70 table:@"Localizable-Walrus"];

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v37 message:v36 preferredStyle:1];
  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CONTINUE" value:&stru_285BC2A70 table:@"Localizable"];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __79__DKAccountProvider__presentLastDeviceAlertWithRecoveryFactors_withCompletion___block_invoke;
  v48[3] = &unk_278F7D9C0;
  v18 = completionCopy;
  v49 = v18;
  v19 = [v15 actionWithTitle:v17 style:2 handler:v48];
  [v14 addAction:v19];

  v20 = MEMORY[0x277D750F8];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __79__DKAccountProvider__presentLastDeviceAlertWithRecoveryFactors_withCompletion___block_invoke_2;
  v45[3] = &unk_278F7DAD8;
  v47 = v35;
  v45[4] = self;
  v21 = v18;
  v46 = v21;
  v22 = [v20 actionWithTitle:v34 style:0 handler:v45];
  [v14 addAction:v22];

  v23 = MEMORY[0x277D750F8];
  v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v25 = [v24 localizedStringForKey:@"SIGN_OUT_ADD_DATA_RECOVERY_SERVICE_BUTTON" value:&stru_285BC2A70 table:@"Localizable-Walrus"];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __79__DKAccountProvider__presentLastDeviceAlertWithRecoveryFactors_withCompletion___block_invoke_4;
  v43[3] = &unk_278F7DB00;
  v43[4] = self;
  v26 = v21;
  v44 = v26;
  v27 = [v23 actionWithTitle:v25 style:0 handler:v43];
  [v14 addAction:v27];

  v28 = MEMORY[0x277D750F8];
  v29 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v30 = [v29 localizedStringForKey:@"SIGN_OUT_CANCEL_BUTTON" value:&stru_285BC2A70 table:@"Localizable-Walrus"];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __79__DKAccountProvider__presentLastDeviceAlertWithRecoveryFactors_withCompletion___block_invoke_5;
  v41[3] = &unk_278F7D9C0;
  v42 = v26;
  v31 = v26;
  v32 = [v28 actionWithTitle:v30 style:1 handler:v41];
  [v14 addAction:v32];

  presentingViewController = [(DKAccountProvider *)self presentingViewController];
  [presentingViewController presentViewController:v14 animated:1 completion:0];
}

void __79__DKAccountProvider__presentLastDeviceAlertWithRecoveryFactors_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) recoveryFactorController];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __79__DKAccountProvider__presentLastDeviceAlertWithRecoveryFactors_withCompletion___block_invoke_3;
    v4[3] = &unk_278F7DAB0;
    v5 = *(a1 + 40);
    [v2 generateRecoveryKeyWithCompletion:v4];
  }

  else
  {
    [*(a1 + 32) setPendingWalrusValidationCompletion:*(a1 + 40)];
    v3 = [*(a1 + 32) recoveryFactorController];
    [v3 startAddingRecoveryContact];
  }
}

void __79__DKAccountProvider__presentLastDeviceAlertWithRecoveryFactors_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = [MEMORY[0x277CCA9B8] aa_errorWithCode:0 underlyingError:a3];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }
}

void __79__DKAccountProvider__presentLastDeviceAlertWithRecoveryFactors_withCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setPendingWalrusValidationCompletion:*(a1 + 40)];
  v2 = [*(a1 + 32) recoveryFactorController];
  [v2 startAddingDataRecoveryService];
}

void __79__DKAccountProvider__presentLastDeviceAlertWithRecoveryFactors_withCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] aa_errorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

void __97__DKAccountProvider_preparePrimaryAppleAccountForSignOutWithPresentingViewController_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_248D68000, a2, a3, "Failed to determine walrus status: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __60__DKAccountProvider__fetchAccountDataForAccount_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _DKIsInternalInstall();
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x277CCACA8];
    v2 = [a1 domain];
    a1 = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(a1, "code")];
  }

  *buf = 138543362;
  v9 = a1;
  _os_log_error_impl(&dword_248D68000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch profile image: %{public}@", buf, 0xCu);
  if (!v5)
  {
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __49__DKAccountProvider__walrusStatusWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_248D68000, a2, a3, "Encountered error while fetching walrus status: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__DKAccountProvider__determineEligibilityWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_248D68000, a2, a3, "Failed to fetch escrow record devices for primary account: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end