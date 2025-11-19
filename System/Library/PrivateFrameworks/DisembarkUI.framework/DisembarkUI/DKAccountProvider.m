@interface DKAccountProvider
- (AAUIRecoveryFactorController)recoveryFactorController;
- (DKAccountProvider)initWithFindMyProvider:(id)a3 appleCareProvider:(id)a4;
- (UIViewController)presentingViewController;
- (id)accountsForAccountManager:(id)a3;
- (void)_addAccountDataForAccounts:(id)a3 toAccountsData:(id)a4 completion:(id)a5;
- (void)_determineEligibilityWithCompletion:(id)a3;
- (void)_fetchAccountDataForAccount:(id)a3 completion:(id)a4;
- (void)_performLastDeviceCheckWithCompletion:(id)a3;
- (void)_presentLastDeviceAlertWithCompletion:(id)a3;
- (void)_presentLastDeviceAlertWithRecoveryFactors:(unint64_t)a3 withCompletion:(id)a4;
- (void)_verifyAndRepairManateeWithPresentingViewController:(id)a3 completion:(id)a4;
- (void)_walrusStatusWithCompletion:(id)a3;
- (void)cacheLocalDevicePasscode:(id)a3 passcodeType:(int)a4;
- (void)fetchAccounts:(id)a3;
- (void)preparationRequiredForPrimaryAppleAccountWithCompletion:(id)a3;
- (void)preparePrimaryAppleAccountForSignOutWithPresentingViewController:(id)a3 completion:(id)a4;
- (void)primaryAppleAccountRequiresADPSpecificInternetWarning:(id)a3;
- (void)recoveryFactorController:(id)a3 didFinishAddingRecoveryContactWithError:(id)a4;
- (void)signOutFlowController:(id)a3 disableFindMyDeviceForAccount:(id)a4 completion:(id)a5;
- (void)signOutFlowController:(id)a3 performWalrusValidationForAccount:(id)a4 completion:(id)a5;
- (void)signOutFlowController:(id)a3 showAlertWithTitle:(id)a4 message:(id)a5 completion:(id)a6;
- (void)signOutFlowController:(id)a3 signOutAccount:(id)a4 completion:(id)a5;
- (void)signOutPrimaryAppleAccountWithPresentingViewController:(id)a3 completion:(id)a4;
@end

@implementation DKAccountProvider

- (DKAccountProvider)initWithFindMyProvider:(id)a3 appleCareProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = DKAccountProvider;
  v8 = [(DKAccountProvider *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(DKAccountProvider *)v8 setFindMyProvider:v6];
    [(DKAccountProvider *)v9 setAppleCareProvider:v7];
    v10 = [MEMORY[0x277CB8F48] defaultStore];
    [(DKAccountProvider *)v9 setAccountStore:v10];

    v11 = objc_alloc(MEMORY[0x277CED1E8]);
    v12 = [(DKAccountProvider *)v9 accountStore];
    v13 = [v11 initWithAccountStore:v12];
    [(DKAccountProvider *)v9 setServiceOwnersManager:v13];

    v14 = objc_alloc(MEMORY[0x277CED1D0]);
    v15 = [(DKAccountProvider *)v9 accountStore];
    v16 = [v14 initWithAccountStore:v15];
    [(DKAccountProvider *)v9 setAccountManager:v16];

    v17 = [(DKAccountProvider *)v9 accountManager];
    [v17 setDelegate:v9];

    v18 = objc_alloc_init(MEMORY[0x277CFD568]);
    [(DKAccountProvider *)v9 setWalrusStateController:v18];
  }

  return v9;
}

- (void)fetchAccounts:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(DKAccountProvider *)self accountStore];
  v7 = [v6 aa_primaryAppleAccount];

  v8 = [(DKAccountProvider *)self accountStore];
  v9 = [v8 aa_appleAccounts];
  v10 = [v9 mutableCopy];

  if ([v10 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__DKAccountProvider_fetchAccounts___block_invoke;
    v13[3] = &unk_278F7D8A8;
    v11 = v7;
    v14 = v11;
    v12 = [v10 indexOfObjectPassingTest:v13];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 removeObjectAtIndex:v12];
      [v10 insertObject:v11 atIndex:0];
    }
  }

  [(DKAccountProvider *)self _addAccountDataForAccounts:v10 toAccountsData:v5 completion:v4];
}

uint64_t __35__DKAccountProvider_fetchAccounts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)primaryAppleAccountRequiresADPSpecificInternetWarning:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__DKAccountProvider_primaryAppleAccountRequiresADPSpecificInternetWarning___block_invoke;
  v6[3] = &unk_278F7D8D0;
  v7 = v4;
  v5 = v4;
  [(DKAccountProvider *)self _walrusStatusWithCompletion:v6];
}

- (void)cacheLocalDevicePasscode:(id)a3 passcodeType:(int)a4
{
  if (a4 == -1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = MEMORY[0x277CFD500];
  v7 = a3;
  v8 = [[v6 alloc] initWithValidatedSecret:v7 secretType:v5];

  [(DKAccountProvider *)self setCachedLocalSecret:v8];
}

- (void)preparationRequiredForPrimaryAppleAccountWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__DKAccountProvider_preparationRequiredForPrimaryAppleAccountWithCompletion___block_invoke;
  v6[3] = &unk_278F7D8D0;
  v7 = v4;
  v5 = v4;
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

- (void)preparePrimaryAppleAccountForSignOutWithPresentingViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__DKAccountProvider_preparePrimaryAppleAccountForSignOutWithPresentingViewController_completion___block_invoke;
  v10[3] = &unk_278F7D948;
  objc_copyWeak(&v13, &location);
  v8 = v7;
  v12 = v8;
  v9 = v6;
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

- (void)signOutPrimaryAppleAccountWithPresentingViewController:(id)a3 completion:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CED1D8];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setViewController:v8];
  v14 = *MEMORY[0x277CED1A0];
  v10 = v14;
  v15[0] = self;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v9 setSignOutContexts:v11];

  [(DKAccountProvider *)self setPresentingViewController:v8];
  v12 = [(DKAccountProvider *)self serviceOwnersManager];
  [v12 signOutService:v10 withContext:v9 completion:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)signOutFlowController:(id)a3 performWalrusValidationForAccount:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__DKAccountProvider_signOutFlowController_performWalrusValidationForAccount_completion___block_invoke;
  v12[3] = &unk_278F7D970;
  objc_copyWeak(&v14, &location);
  v11 = v10;
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

- (void)signOutFlowController:(id)a3 disableFindMyDeviceForAccount:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(DKAccountProvider *)self findMyProvider];
  v8 = [(DKAccountProvider *)self presentingViewController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__DKAccountProvider_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke;
  v10[3] = &unk_278F7D998;
  v11 = v6;
  v9 = v6;
  [v7 disableFindMyWithPresentingViewController:v8 completion:v10];
}

- (void)signOutFlowController:(id)a3 signOutAccount:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(DKAccountProvider *)self accountStore];
  [v9 removeAccount:v8 withCompletionHandler:v7];
}

- (void)signOutFlowController:(id)a3 showAlertWithTitle:(id)a4 message:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(DKAccountProvider *)self presentingViewController];
  if (v12)
  {
    v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
    v14 = MEMORY[0x277D750F8];
    v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
    v16 = [v15 localizedStringForKey:@"OK" value:&stru_285BC2A70 table:@"Localizable"];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__DKAccountProvider_signOutFlowController_showAlertWithTitle_message_completion___block_invoke;
    v18[3] = &unk_278F7D9C0;
    v19 = v11;
    v17 = [v14 actionWithTitle:v16 style:0 handler:v18];
    [v13 addAction:v17];

    [v12 presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

- (id)accountsForAccountManager:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(DKAccountProvider *)self serviceOwnersManager];
  v4 = *MEMORY[0x277CED1A0];
  v5 = [v3 accountForService:*MEMORY[0x277CED1A0]];

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

- (void)recoveryFactorController:(id)a3 didFinishAddingRecoveryContactWithError:(id)a4
{
  v5 = a4;
  v6 = [(DKAccountProvider *)self pendingWalrusValidationCompletion];

  if (v6)
  {
    v7 = [(DKAccountProvider *)self pendingWalrusValidationCompletion];
    v8 = v7;
    if (v5)
    {
      v9 = [MEMORY[0x277CCA9B8] aa_errorWithCode:0 underlyingError:v5];
      v8[2](v8, 0, v9);
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __86__DKAccountProvider_recoveryFactorController_didFinishAddingRecoveryContactWithError___block_invoke;
      v10[3] = &unk_278F7D8D0;
      v11 = v7;
      v8 = v7;
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

- (void)_addAccountDataForAccounts:(id)a3 toAccountsData:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [v8 firstObject];
    v12 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__DKAccountProvider__addAccountDataForAccounts_toAccountsData_completion___block_invoke;
    v15[3] = &unk_278F7D9E8;
    v16 = v9;
    v17 = self;
    v18 = v12;
    v19 = v10;
    v13 = v12;
    [(DKAccountProvider *)self _fetchAccountDataForAccount:v11 completion:v15];
  }

  else
  {
    v14 = [v9 copy];
    (*(v10 + 2))(v10, v14);
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

- (void)_fetchAccountDataForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CECA90]);
  v9 = [(DKAccountProvider *)self accountStore];
  v10 = [v8 initWithAppleAccount:v6 store:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__DKAccountProvider__fetchAccountDataForAccount_completion___block_invoke;
  v13[3] = &unk_278F7DA10;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
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

- (void)_verifyAndRepairManateeWithPresentingViewController:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277CECA18];
  v7 = a4;
  v8 = a3;
  v11 = [v6 contextWithType:6];
  [v11 setForceInlinePresentation:1];
  v9 = [(DKAccountProvider *)self cachedLocalSecret];
  [v11 setCachedLocalSecret:v9];

  v10 = [objc_alloc(MEMORY[0x277CECA70]) initWithFlowContext:v11 withPresentingViewController:v8];
  [v10 verifyAndRepairManateeWithCompletion:v7];
}

- (AAUIRecoveryFactorController)recoveryFactorController
{
  recoveryFactorController = self->_recoveryFactorController;
  if (!recoveryFactorController)
  {
    v4 = [(DKAccountProvider *)self presentingViewController];
    v5 = [v4 navigationController];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(DKAccountProvider *)self presentingViewController];
    }

    v8 = v7;

    v9 = objc_alloc(MEMORY[0x277CECAA8]);
    v10 = [(DKAccountProvider *)self accountManager];
    v11 = [v9 initWithAccountManager:v10 presentingViewController:v8];
    v12 = self->_recoveryFactorController;
    self->_recoveryFactorController = v11;

    [(AAUIRecoveryFactorController *)self->_recoveryFactorController setDelegate:self];
    objc_opt_class();
    [(AAUIRecoveryFactorController *)self->_recoveryFactorController setForceInlinePresentation:objc_opt_isKindOfClass() & 1];

    recoveryFactorController = self->_recoveryFactorController;
  }

  return recoveryFactorController;
}

- (void)_walrusStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DKAccountProvider *)self walrusStateController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__DKAccountProvider__walrusStatusWithCompletion___block_invoke;
  v7[3] = &unk_278F7D8D0;
  v8 = v4;
  v6 = v4;
  [v5 walrusStatusWithCompletion:v7];
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

- (void)_performLastDeviceCheckWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__DKAccountProvider__performLastDeviceCheckWithCompletion___block_invoke;
  v6[3] = &unk_278F7DA38;
  objc_copyWeak(&v8, &location);
  v5 = v4;
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

- (void)_determineEligibilityWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CFD480] sharedInstance];
  v5 = [v4 contextForPrimaryAccount];

  v6 = objc_alloc_init(MEMORY[0x277CFD548]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__DKAccountProvider__determineEligibilityWithCompletion___block_invoke;
  v8[3] = &unk_278F7DA60;
  v9 = v3;
  v7 = v3;
  [v6 fetchEscrowRecordDevicesWithContext:v5 usingCache:0 completion:v8];
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

- (void)_presentLastDeviceAlertWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DKAccountProvider *)self recoveryFactorController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__DKAccountProvider__presentLastDeviceAlertWithCompletion___block_invoke;
  v7[3] = &unk_278F7D970;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 availableRecoveryFactorsWithCompletion:v7];

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

- (void)_presentLastDeviceAlertWithRecoveryFactors:(unint64_t)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = _DKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DKAccountProvider _presentLastDeviceAlertWithRecoveryFactors:v7 withCompletion:?];
  }

  v35 = (v4 & 4) >> 2;
  v8 = @"CONTACT";
  if ((v4 & 4) != 0)
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
  v18 = v6;
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

  v33 = [(DKAccountProvider *)self presentingViewController];
  [v33 presentViewController:v14 animated:1 completion:0];
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