@interface FAFamilySetupPrompter
- (FAFamilySetupPrompter)initWithiTunesAccount:(id)account;
- (FAFamilySetupPrompterDelegate)delegate;
- (void)_goToFamilySetup;
- (void)_goToInvitations;
- (void)_handleFamilyEligibilityResponse:(id)response isFirstRun:(BOOL)run;
- (void)_showConfirmationForStartingFamilySetup;
- (void)_showConfirmationForStartingFamilySetupWithPendingInvite;
- (void)_showPendingInvitesDialog;
- (void)_showUnderageAlertWithEligibilityResponse:(id)response;
- (void)_startFamilySetupFlowWithEligibilityResponse:(id)response;
- (void)dealloc;
- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success;
- (void)promptIfEligibleWithPresentingViewController:(id)controller isFirstRun:(BOOL)run;
@end

@implementation FAFamilySetupPrompter

- (FAFamilySetupPrompter)initWithiTunesAccount:(id)account
{
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = FAFamilySetupPrompter;
  v6 = [(FAFamilySetupPrompter *)&v12 init];
  if (v6)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v6->_accountStore;
    v6->_accountStore = defaultStore;

    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkingQueue = v6->_networkingQueue;
    v6->_networkingQueue = v9;

    objc_storeStrong(&v6->_iTunesAccount, account);
    v6->_isRequestInFlight = 0;
  }

  return v6;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_networkingQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = FAFamilySetupPrompter;
  [(FAFamilySetupPrompter *)&v3 dealloc];
}

- (void)promptIfEligibleWithPresentingViewController:(id)controller isFirstRun:(BOOL)run
{
  if (self->_isRequestInFlight)
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "We already have a prompt request in progress.", buf, 2u);
    }
  }

  else
  {
    objc_storeWeak(&self->_presentingViewController, controller);
    self->_isRequestInFlight = 1;
    v7 = dispatch_get_global_queue(25, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke;
    v8[3] = &unk_2782F2E48;
    v8[4] = self;
    runCopy = run;
    dispatch_async(v7, v8);
  }
}

void __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v3 = [*(v2 + 8) aa_primaryAppleAccount];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 24))
  {
    v6 = [*(v2 + 8) aa_grandSlamAccountForiCloudAccount:*(v2 + 16)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 32))
  {
    v9 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    v10 = [v9 ams_activeiTunesAccount];
    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    *(v11 + 32) = v10;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 16))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke_2;
    aBlock[3] = &unk_2782F2B38;
    aBlock[4] = v2;
    v13 = _Block_copy(aBlock);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke_3;
    v23[3] = &unk_2782F4120;
    v23[4] = *(a1 + 32);
    v24 = *(a1 + 40);
    v14 = _Block_copy(v23);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke_4;
    v20[3] = &unk_2782F3C18;
    v20[4] = *(a1 + 32);
    v21 = v13;
    v22 = v14;
    v15 = v14;
    WeakRetained = v13;
    v17 = _Block_copy(v20);
    WeakRetained[2](WeakRetained, v17);
  }

  else
  {
    v18 = _AALogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_21BB35000, v18, OS_LOG_TYPE_DEFAULT, "No primary iCloud account found on device! Will not prompt for Family Setup.", v19, 2u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    [WeakRetained familySetupPrompterDidFinish:*(a1 + 32)];
  }
}

void __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEC7E8];
  v4 = a2;
  v6 = [[v3 alloc] initWithAppleAccount:*(*(a1 + 32) + 16) grandSlamAccount:*(*(a1 + 32) + 24) accountStore:*(*(a1 + 32) + 8)];
  [v6 setITunesAccount:*(*(a1 + 32) + 32)];
  v5 = [objc_alloc(MEMORY[0x277CEC840]) initWithRequest:v6 handler:v4];

  [*(*(a1 + 32) + 48) addOperation:v5];
}

void __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 statusCode] == 401)
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Family eligibility check request returned 401. We need to re-auth...", buf, 2u);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke_41;
    v8[3] = &unk_2782F3BF0;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v9 = v3;
    [v6 renewCredentialsForAccount:v7 force:1 reason:0 completion:v8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke_41(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials for family eligibility check request: %ld. Error: %@", buf, 0x16u);
  }

  if (a2)
  {
    v7 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__FAFamilySetupPrompter_promptIfEligibleWithPresentingViewController_isFirstRun___block_invoke_42;
    v9[3] = &unk_2782F2BD8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleFamilyEligibilityResponse:(id)response isFirstRun:(BOOL)run
{
  responseCopy = response;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__FAFamilySetupPrompter__handleFamilyEligibilityResponse_isFirstRun___block_invoke;
  block[3] = &unk_2782F4148;
  block[4] = self;
  v9 = responseCopy;
  runCopy = run;
  v7 = responseCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__FAFamilySetupPrompter__handleFamilyEligibilityResponse_isFirstRun___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  if (![*(a1 + 40) eligibilityStatus])
  {
    v2 = _AALogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "The user is not eligible for family.";
      v4 = buf;
      goto LABEL_8;
    }

LABEL_9:

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    [WeakRetained familySetupPrompterDidFinish:*(a1 + 32)];

    return;
  }

  if ([*(a1 + 40) eligibilityStatus] == 2)
  {
    if (*(a1 + 48) == 1)
    {
      v2 = _AALogSystem();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v3 = "User is underage and we are in first-run. Not prompting.";
        v4 = &v11;
LABEL_8:
        _os_log_impl(&dword_21BB35000, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    [v8 _showUnderageAlertWithEligibilityResponse:v9];
  }

  else
  {
    v6 = [*(a1 + 40) hasPendingInvites];
    v7 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      if (v6)
      {

        [v7 _showConfirmationForStartingFamilySetupWithPendingInvite];
      }

      else
      {

        [v7 _showConfirmationForStartingFamilySetup];
      }
    }

    else if (v6)
    {

      [v7 _showPendingInvitesDialog];
    }

    else
    {
      v10 = *(a1 + 40);

      [v7 _startFamilySetupFlowWithEligibilityResponse:v10];
    }
  }
}

- (void)_showConfirmationForStartingFamilySetup
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SETUP_FAMILY_SHARING_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SETUP_FAMILY_SHARING_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SETUP_FAMILY_NOT_NOW_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SETUP_FAMILY_YES_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__FAFamilySetupPrompter__showConfirmationForStartingFamilySetup__block_invoke;
  v13[3] = &unk_2782F3A60;
  v13[4] = self;
  v11 = [MEMORY[0x277D75110] alertWithTitle:v4 message:v6 cancelButtonTitle:v8 defaultButtonTitle:v10 actionHandler:v13];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

uint64_t __64__FAFamilySetupPrompter__showConfirmationForStartingFamilySetup__block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _goToFamilySetup];
  }

  return result;
}

- (void)_showConfirmationForStartingFamilySetupWithPendingInvite
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SETUP_FAMILY_SHARING_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SETUP_FAMILY_SHARING_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SETUP_FAMILY_NOT_NOW_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SETUP_FAMILY_YES_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__FAFamilySetupPrompter__showConfirmationForStartingFamilySetupWithPendingInvite__block_invoke;
  v13[3] = &unk_2782F3A60;
  v13[4] = self;
  v11 = [MEMORY[0x277D75110] alertWithTitle:v4 message:v6 cancelButtonTitle:v8 defaultButtonTitle:v10 actionHandler:v13];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

uint64_t __81__FAFamilySetupPrompter__showConfirmationForStartingFamilySetupWithPendingInvite__block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _showPendingInvitesDialog];
  }

  return result;
}

- (void)_showPendingInvitesDialog
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PENDING_INVITE_ALERT_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PENDING_INVITE_ALERT_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PENDING_INVITE_NOT_NOW_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PENDING_INVITE_RESPOND_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__FAFamilySetupPrompter__showPendingInvitesDialog__block_invoke;
  v13[3] = &unk_2782F3A60;
  v13[4] = self;
  v11 = [MEMORY[0x277D75110] alertWithTitle:v4 message:v6 cancelButtonTitle:v8 defaultButtonTitle:v10 actionHandler:v13];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

uint64_t __50__FAFamilySetupPrompter__showPendingInvitesDialog__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _goToFamilySetup];
  }

  else
  {
    return [v2 _goToInvitations];
  }
}

- (void)_showUnderageAlertWithEligibilityResponse:(id)response
{
  responseCopy = response;
  underageEligibilityAlertTitle = [responseCopy underageEligibilityAlertTitle];
  underageEligibilityAlertMessage = [responseCopy underageEligibilityAlertMessage];

  if (underageEligibilityAlertTitle | underageEligibilityAlertMessage)
  {
    v9 = MEMORY[0x277D75110];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v8 = [v9 alertWithTitle:underageEligibilityAlertTitle message:underageEligibilityAlertMessage buttonTitle:v11];

    WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
    [WeakRetained presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Server did not provide under alert title and message. Cannot show alert!", v13, 2u);
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 familySetupPrompterDidFinish:self];
  }
}

- (void)_goToInvitations
{
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "Taking user to settings...", buf, 2u);
  }

  v7 = 0;
  v4 = [MEMORY[0x277D08358] urlDestinationTo:5 error:&v7];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained familySetupPrompterDidFinish:self];
}

- (void)_goToFamilySetup
{
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "Taking user to settings...", buf, 2u);
  }

  v7 = 0;
  v4 = [MEMORY[0x277D08358] urlDestinationTo:6 error:&v7];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained familySetupPrompterDidFinish:self];
}

- (void)_startFamilySetupFlowWithEligibilityResponse:(id)response
{
  v4 = MEMORY[0x277CEC808];
  responseCopy = response;
  v6 = [v4 alloc];
  v7 = [v6 initWithAccountStore:self->_accountStore grandSlamAccount:self->_grandSlamAccount appTokenID:*MEMORY[0x277CEC6F0]];
  v8 = [[FAFamilySetupViewController alloc] initWithAccount:self->_appleAccount grandSlamSigner:v7 familyEligibilityResponse:responseCopy];

  [(FAFamilySetupViewController *)v8 setDelegate:self];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(FAFamilySetupViewController *)v8 setModalPresentationStyle:2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained)
  {
    v12 = objc_loadWeakRetained(&self->_presentingViewController);
    [v12 presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "Cannot show Family Setup UI without a presenting view controller!", v15, 2u);
    }

    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 familySetupPrompterDidFinish:self];
  }
}

- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];

  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 familySetupPrompterDidFinish:self];
}

- (FAFamilySetupPrompterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end