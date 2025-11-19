@interface MCProfileTitlePageViewModel
- (BOOL)_installErrorIsUserCancelledError:(id)a3;
- (DMCProfileViewModel)profileViewModel;
- (MCProfileTitlePageViewModel)init;
- (MCProfileTitlePageViewModel)initWithProfile:(id)a3 profileData:(id)a4;
- (MCProfileTitlePageViewModelDelegate)delegate;
- (NSString)accountIdentifier;
- (id)_createAuthenticationContext:(id)a3 presentingViewController:(id)a4;
- (void)_continueInstallAfterPresentingWarnings;
- (void)_handleMAIDSignInRequestWithAccountID:(id)a3 personaID:(id)a4 connection:(id)a5;
- (void)_handleUserInputRequest:(id)a3;
- (void)_installFinishedWithIdentifier:(id)a3 error:(id)a4;
- (void)_respondToMAIDAuthenticationRequestIfNeeded:(id)a3 successful:(BOOL)a4 error:(id)a5 isCancelled:(BOOL)a6;
- (void)_respondToUserInputRequest:(id)a3 cancelled:(BOOL)a4;
- (void)_setup;
- (void)_signInMAID:(id)a3 authenticationResult:(id)a4 personaID:(id)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)doesUserWantToRestoreSnapshot:(id)a3 withConflictingApps:(id)a4 completion:(id)a5;
- (void)profileConnection:(id)a3 didFinishPreflightWithError:(id)a4;
- (void)profileConnection:(id)a3 didRequestManagedRestoreWithManagedAppleID:(id)a4 personaID:(id)a5;
- (void)profileConnectionDidRequestCurrentPasscode:(id)a3;
- (void)setInstallState:(int)a3;
- (void)startProfileInstallationFlow;
- (void)terminateProfileInstallationFlow;
- (void)terminateProfileInstallationFlowAndDeleteProfile;
@end

@implementation MCProfileTitlePageViewModel

- (MCProfileTitlePageViewModel)initWithProfile:(id)a3 profileData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MCProfileTitlePageViewModel *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, a3);
    objc_storeStrong(&v10->_profileData, a4);
  }

  return v10;
}

- (MCProfileTitlePageViewModel)init
{
  v5.receiver = self;
  v5.super_class = MCProfileTitlePageViewModel;
  v2 = [(MCProfileTitlePageViewModel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MCProfileTitlePageViewModel *)v2 _setup];
  }

  return v3;
}

- (void)_setup
{
  v3 = dispatch_queue_create("MCUI_profile_installation_queue", 0);
  serialQueue = self->_serialQueue;
  self->_serialQueue = v3;

  self->_installState = 1;
}

- (void)dealloc
{
  [(MCProfileTitlePageViewModel *)self terminateProfileInstallationFlow];
  v3.receiver = self;
  v3.super_class = MCProfileTitlePageViewModel;
  [(MCProfileTitlePageViewModel *)&v3 dealloc];
}

- (DMCProfileViewModel)profileViewModel
{
  profileViewModel = self->_profileViewModel;
  if (!profileViewModel)
  {
    v4 = objc_alloc(MEMORY[0x277D03288]);
    v5 = [(MCProfileTitlePageViewModel *)self profile];
    v6 = [v4 initWithProfile:v5 managedPayloads:0];
    v7 = self->_profileViewModel;
    self->_profileViewModel = v6;

    profileViewModel = self->_profileViewModel;
  }

  return profileViewModel;
}

- (NSString)accountIdentifier
{
  v2 = MEMORY[0x277D03490];
  v3 = [(MCProfileTitlePageViewModel *)self personaID];
  v4 = [v2 accountIdentifierForAppleAccountWithPersonaID:v3];

  return v4;
}

- (void)setInstallState:(int)a3
{
  if (self->_installState != a3)
  {
    block[7] = v3;
    block[8] = v4;
    self->_installState = a3;
    NSLog(&cfstr_SetStateD.isa, a2, a3);
    installState = self->_installState;
    if ((installState - 4) < 6)
    {
      goto LABEL_3;
    }

    if (installState == 2)
    {
      v7 = v9;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v8 = __47__MCProfileTitlePageViewModel_setInstallState___block_invoke_2;
      goto LABEL_4;
    }

    if (installState == 1)
    {
LABEL_3:
      v7 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v8 = __47__MCProfileTitlePageViewModel_setInstallState___block_invoke;
LABEL_4:
      v7[2] = v8;
      v7[3] = &unk_279861968;
      v7[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __47__MCProfileTitlePageViewModel_setInstallState___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 setUserInteractionEnabled:1];
}

void __47__MCProfileTitlePageViewModel_setInstallState___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 setUserInteractionEnabled:0];
}

- (void)startProfileInstallationFlow
{
  v3 = [(MCProfileTitlePageViewModel *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MCProfileTitlePageViewModel_startProfileInstallationFlow__block_invoke;
  block[3] = &unk_279861968;
  block[4] = self;
  dispatch_async(v3, block);
}

void __59__MCProfileTitlePageViewModel_startProfileInstallationFlow__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];

  if (v3)
  {
    NSLog(&cfstr_Mcprofiletitle_1.isa);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__MCProfileTitlePageViewModel_startProfileInstallationFlow__block_invoke_2;
    block[3] = &unk_279861968;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if ([*(a1 + 32) isInstallingProfile])
  {
    NSLog(&cfstr_Mcprofiletitle_2.isa);
  }

  else
  {
    [*(a1 + 32) setIsInstallingProfile:1];
    NSLog(&cfstr_Mcprofiletitle_3.isa);
    [*(a1 + 32) setInstallState:2];
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [*(a1 + 32) profileData];
    [v5 installProfileData:v4 interactionDelegate:*(a1 + 32)];
  }
}

void __59__MCProfileTitlePageViewModel_startProfileInstallationFlow__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__MCProfileTitlePageViewModel_startProfileInstallationFlow__block_invoke_3;
  v3[3] = &unk_279861CE0;
  v3[4] = *(a1 + 32);
  [v2 promptForPasscodeWithCompletionHandler:v3];
}

void __59__MCProfileTitlePageViewModel_startProfileInstallationFlow__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MCProfileTitlePageViewModel_startProfileInstallationFlow__block_invoke_4;
  block[3] = &unk_279861CB8;
  v10 = a2;
  block[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __59__MCProfileTitlePageViewModel_startProfileInstallationFlow__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setPin:*(a1 + 40)];
    [*(a1 + 32) setIsInstallingProfile:1];
    [*(a1 + 32) setInstallState:2];
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    v2 = [*(a1 + 32) profileData];
    [v4 installProfileData:v2 interactionDelegate:*(a1 + 32)];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 setIsInstallingProfile:0];
  }
}

- (void)_continueInstallAfterPresentingWarnings
{
  v2 = [(MCProfileTitlePageViewModel *)self serialQueue];
  dispatch_async(v2, &__block_literal_global_0);
}

void __70__MCProfileTitlePageViewModel__continueInstallAfterPresentingWarnings__block_invoke()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  [v0 respondToWarningsContinueInstallation:1];
}

- (void)_installFinishedWithIdentifier:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(MCProfileTitlePageViewModel *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__MCProfileTitlePageViewModel__installFinishedWithIdentifier_error___block_invoke;
  v8[3] = &unk_279861C40;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __68__MCProfileTitlePageViewModel__installFinishedWithIdentifier_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsInstallingProfile:0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__MCProfileTitlePageViewModel__installFinishedWithIdentifier_error___block_invoke_2;
  v3[3] = &unk_279861C40;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __68__MCProfileTitlePageViewModel__installFinishedWithIdentifier_error___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _installErrorIsUserCancelledError:*(a1 + 40)])
  {
    [*(a1 + 32) setInstallState:1];
    v2 = [*(a1 + 32) delegate];
    v8 = v2;
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    if (*(a1 + 40))
    {
      [v7 setInstallState:1];
      v2 = [*(a1 + 32) delegate];
      v8 = v2;
      v6 = *(a1 + 40);
      v3 = 0;
      v4 = 0;
      v5 = 0;
      goto LABEL_6;
    }

    if ([v7 installState] == 7)
    {
      objc_initWeak(&location, *(a1 + 32));
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __68__MCProfileTitlePageViewModel__installFinishedWithIdentifier_error___block_invoke_3;
      v9[3] = &unk_279861990;
      objc_copyWeak(&v10, &location);
      [*(a1 + 32) setPostRestoreTask:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
      return;
    }

    [*(a1 + 32) setInstallState:9];
    v2 = [*(a1 + 32) delegate];
    v8 = v2;
    v3 = 1;
    v4 = 1;
    v5 = 1;
  }

  v6 = 0;
LABEL_6:
  [v2 installationFinishedSuccessfully:v3 shouldDismiss:v4 shouldRedirect:v5 errorToDisplay:v6];
}

void __68__MCProfileTitlePageViewModel__installFinishedWithIdentifier_error___block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __68__MCProfileTitlePageViewModel__installFinishedWithIdentifier_error___block_invoke_4;
  v1[3] = &unk_279861990;
  objc_copyWeak(&v2, &to);
  dispatch_async(MEMORY[0x277D85CD0], v1);
  objc_destroyWeak(&v2);
  objc_destroyWeak(&to);
}

void __68__MCProfileTitlePageViewModel__installFinishedWithIdentifier_error___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInstallState:9];

  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 delegate];
  [v3 installationFinishedSuccessfully:1 shouldDismiss:1 shouldRedirect:1 errorToDisplay:0];
}

- (void)terminateProfileInstallationFlow
{
  NSLog(&cfstr_Terminateprofi.isa, a2);
  v3 = [(MCProfileTitlePageViewModel *)self cleanupTask];

  if (v3)
  {
    v4 = [(MCProfileTitlePageViewModel *)self cleanupTask];
    v4[2]();

    [(MCProfileTitlePageViewModel *)self setCleanupTask:0];
  }
}

- (void)terminateProfileInstallationFlowAndDeleteProfile
{
  [(MCProfileTitlePageViewModel *)self terminateProfileInstallationFlow];
  NSLog(&cfstr_WillDeleteProf.isa);
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [(MCProfileTitlePageViewModel *)self profile];
  v5 = [v4 identifier];
  v6 = [MEMORY[0x277D26290] thisDeviceType];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__MCProfileTitlePageViewModel_terminateProfileInstallationFlowAndDeleteProfile__block_invoke;
  v7[3] = &unk_279861968;
  v7[4] = self;
  [v3 removeUninstalledProfileWithIdentifier:v5 installationType:1 targetDeviceType:v6 completion:v7];
}

void __79__MCProfileTitlePageViewModel_terminateProfileInstallationFlowAndDeleteProfile__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__MCProfileTitlePageViewModel_terminateProfileInstallationFlowAndDeleteProfile__block_invoke_2;
  block[3] = &unk_279861968;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79__MCProfileTitlePageViewModel_terminateProfileInstallationFlowAndDeleteProfile__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 installationFinishedSuccessfully:0 shouldDismiss:1 shouldRedirect:0 errorToDisplay:0];
  }
}

- (void)_handleUserInputRequest:(id)a3
{
  v4 = a3;
  v5 = [(MCProfileTitlePageViewModel *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MCProfileTitlePageViewModel__handleUserInputRequest___block_invoke;
  v7[3] = &unk_279861C40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__MCProfileTitlePageViewModel__handleUserInputRequest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInstallState:4];
  [*(a1 + 32) setCleanupTask:&__block_literal_global_60];
  NSLog(&cfstr_Mcprofiletitle_4.isa);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__MCProfileTitlePageViewModel__handleUserInputRequest___block_invoke_3;
  v3[3] = &unk_279861C40;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __55__MCProfileTitlePageViewModel__handleUserInputRequest___block_invoke_2()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  [v0 cancelUserInputResponses];
}

void __55__MCProfileTitlePageViewModel__handleUserInputRequest___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__MCProfileTitlePageViewModel__handleUserInputRequest___block_invoke_4;
  v4[3] = &unk_279861D08;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 promptForUserInput:v3 completionHandler:v4];
}

- (void)_respondToUserInputRequest:(id)a3 cancelled:(BOOL)a4
{
  v6 = a3;
  v7 = [(MCProfileTitlePageViewModel *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MCProfileTitlePageViewModel__respondToUserInputRequest_cancelled___block_invoke;
  block[3] = &unk_279861CB8;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __68__MCProfileTitlePageViewModel__respondToUserInputRequest_cancelled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCleanupTask:0];
  if ((*(a1 + 48) & 1) != 0 || ![*(a1 + 40) count])
  {
    [*(a1 + 32) setInstallState:1];
    v2 = [MEMORY[0x277D262A0] sharedConnection];
    [v2 cancelUserInputResponses];
  }

  else
  {
    [*(a1 + 32) setInstallState:2];
    v2 = [MEMORY[0x277D262A0] sharedConnection];
    [v2 submitUserInputResponses:*(a1 + 40)];
  }
}

- (void)_handleMAIDSignInRequestWithAccountID:(id)a3 personaID:(id)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MCProfileTitlePageViewModel *)self serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke;
  v15[3] = &unk_279861C68;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke(id *a1)
{
  [a1[4] setPersonaID:a1[5]];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke_2;
  v11[3] = &unk_279861968;
  v12 = a1[6];
  [a1[4] setCleanupTask:v11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke_3;
  block[3] = &unk_279861C68;
  v7 = a1[4];
  v2 = a1[7];
  v3 = a1[5];
  v4 = a1[6];
  *&v5 = v3;
  *(&v5 + 1) = v4;
  *&v6 = v7;
  *(&v6 + 1) = v2;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke_3(id *a1)
{
  [a1[4] setInstallState:5];
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v2 delegate];
  v5 = [v2 _createAuthenticationContext:v3 presentingViewController:v4];

  NSLog(&cfstr_Mcprofiletitle_5.isa, a1[5]);
  v6 = [a1[4] delegate];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke_4;
  v18[3] = &unk_279861D30;
  v7 = a1[6];
  v8 = a1[4];
  v19 = v7;
  v20 = v8;
  v21 = a1[7];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke_5;
  v15[3] = &unk_279861D80;
  v14 = a1[4];
  v9 = a1[7];
  v10 = a1[5];
  v11 = a1[6];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v14;
  *(&v13 + 1) = v9;
  v16 = v13;
  v17 = v12;
  [v6 presentAuthenticationViewControllerWithContext:v5 authenticationPreparationHandler:v18 authenticationCompletionHandler:v15];
}

void __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) length])
  {
    v3 = [MEMORY[0x277D03550] performBlockUnderPersona:*(a1 + 32) block:v5];
    v4 = v3;
    if (v3)
    {
      NSLog(&cfstr_FailedToAdoptP.isa, v3);
      v5[2]();
      [*(a1 + 40) _respondToMAIDAuthenticationRequestIfNeeded:*(a1 + 48) successful:0 error:v4 isCancelled:0];
    }
  }

  else
  {
    v5[2]();
  }
}

void __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke_5(void *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = 0;
    v13 = 1;
LABEL_7:
    [v10 _respondToMAIDAuthenticationRequestIfNeeded:v11 successful:0 error:v12 isCancelled:v13];
    goto LABEL_8;
  }

  v14 = a1[4];
  if (!v7 || v8)
  {
    v11 = a1[5];
    v10 = a1[4];
    v12 = v9;
    v13 = 0;
    goto LABEL_7;
  }

  v15 = a1[6];
  v16 = a1[7];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke_6;
  v17[3] = &unk_279861D58;
  v17[4] = v14;
  v18 = a1[5];
  [v14 _signInMAID:v15 authenticationResult:v7 personaID:v16 completionHandler:v17];

LABEL_8:
}

- (void)_respondToMAIDAuthenticationRequestIfNeeded:(id)a3 successful:(BOOL)a4 error:(id)a5 isCancelled:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(MCProfileTitlePageViewModel *)self serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__MCProfileTitlePageViewModel__respondToMAIDAuthenticationRequestIfNeeded_successful_error_isCancelled___block_invoke;
  v15[3] = &unk_279861DA8;
  v15[4] = self;
  v16 = v10;
  v18 = a4;
  v17 = v11;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, v15);
}

uint64_t __104__MCProfileTitlePageViewModel__respondToMAIDAuthenticationRequestIfNeeded_successful_error_isCancelled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCleanupTask:0];
  result = [*(a1 + 32) isInstallingProfile];
  if (result)
  {
    [*(a1 + 32) setInstallState:2];
    v3 = *(a1 + 56);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 57);

    return [v4 respondToMAIDAuthenticationRequest:v3 error:v5 isCancelled:v6];
  }

  return result;
}

- (void)_signInMAID:(id)a3 authenticationResult:(id)a4 personaID:(id)a5 completionHandler:(id)a6
{
  v22[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(MCProfileTitlePageViewModel *)self isInstallingProfile])
  {
    NSLog(&cfstr_Mcprofiletitle_6.isa, v10);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__MCProfileTitlePageViewModel__signInMAID_authenticationResult_personaID_completionHandler___block_invoke;
    block[3] = &unk_279861968;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(MCProfileTitlePageViewModel *)self setInstallState:6];
    v14 = objc_opt_new();
    v15 = *MEMORY[0x277CB8D58];
    v22[0] = *MEMORY[0x277CB8BA0];
    v22[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v17 = [(MCProfileTitlePageViewModel *)self delegate];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__MCProfileTitlePageViewModel__signInMAID_authenticationResult_personaID_completionHandler___block_invoke_2;
    v19[3] = &unk_279861DD0;
    v20 = v13;
    [v14 signInAccountsWithTypes:v16 authenticationResult:v11 personaID:v12 canMakeAccountActive:0 baseViewController:v17 completionHandler:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __92__MCProfileTitlePageViewModel__signInMAID_authenticationResult_personaID_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 presentSpinnerViewController];
}

- (id)_createAuthenticationContext:(id)a3 presentingViewController:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CF0380];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setIsEphemeral:0];
  [v8 setAuthenticationType:2];
  [v8 setPresentingViewController:v6];

  [v8 setUsername:v7];
  [v8 setIsUsernameEditable:0];
  v12 = @"shouldAllowManagedAppleIDOnly";
  v13[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v8 setAppProvidedData:v9];

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)profileConnectionDidRequestCurrentPasscode:(id)a3
{
  v4 = a3;
  v5 = [(MCProfileTitlePageViewModel *)self pin];
  [v4 respondToCurrentPasscodeRequestContinue:1 passcode:v5];
}

- (void)profileConnection:(id)a3 didFinishPreflightWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCProfileTitlePageViewModel *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__MCProfileTitlePageViewModel_profileConnection_didFinishPreflightWithError___block_invoke;
  block[3] = &unk_279861DF8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __77__MCProfileTitlePageViewModel_profileConnection_didFinishPreflightWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 informQuestionViewControllerOfPreflightResult:*(a1 + 40) profileConnection:*(a1 + 48)];
}

- (void)profileConnection:(id)a3 didRequestManagedRestoreWithManagedAppleID:(id)a4 personaID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MCProfileTitlePageViewModel *)self serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__MCProfileTitlePageViewModel_profileConnection_didRequestManagedRestoreWithManagedAppleID_personaID___block_invoke;
  v15[3] = &unk_279861C68;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __102__MCProfileTitlePageViewModel_profileConnection_didRequestManagedRestoreWithManagedAppleID_personaID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setManagedAppleID:*(a1 + 40)];
  [*(a1 + 32) setInstallState:7];
  v2 = [objc_alloc(MEMORY[0x277D03298]) initWithPersonaIdentifier:*(a1 + 48) delegate:0];
  v3 = objc_alloc_init(MEMORY[0x277D03290]);
  v4 = objc_alloc(MEMORY[0x277D032A0]);
  v5 = *(a1 + 32);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __102__MCProfileTitlePageViewModel_profileConnection_didRequestManagedRestoreWithManagedAppleID_personaID___block_invoke_2;
  v10 = &unk_279861E20;
  v11 = v5;
  v12 = *(a1 + 56);
  v6 = [v4 initWithSnapshotSource:v2 interactionClient:v5 deviceEnvironment:v3 completion:&v7];
  [v6 startManagedRestoreWorkflow];
}

void __102__MCProfileTitlePageViewModel_profileConnection_didRequestManagedRestoreWithManagedAppleID_personaID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_Mcprofiletitle_7.isa, v3);
    v5 = [*(a1 + 32) delegate];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __102__MCProfileTitlePageViewModel_profileConnection_didRequestManagedRestoreWithManagedAppleID_personaID___block_invoke_3;
    v13[3] = &unk_279861DF8;
    v6 = &v14;
    v14 = *(a1 + 40);
    v7 = v4;
    v8 = *(a1 + 32);
    v15 = v7;
    v16 = v8;
    [v5 presentRestoreFailedAlertWithError:v7 completionHandler:v13];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__MCProfileTitlePageViewModel_profileConnection_didRequestManagedRestoreWithManagedAppleID_personaID___block_invoke_4;
    block[3] = &unk_279861C40;
    v6 = v12;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v12[0] = v9;
    v12[1] = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __102__MCProfileTitlePageViewModel_profileConnection_didRequestManagedRestoreWithManagedAppleID_personaID___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) respondToManagedRestoreRequest:0 error:*(a1 + 40) isCancelled:0];
  [*(a1 + 48) setInstallState:8];
  v2 = [*(a1 + 48) postRestoreTask];

  if (v2)
  {
    v3 = [*(a1 + 48) postRestoreTask];
    v3[2]();

    v4 = *(a1 + 48);

    [v4 setPostRestoreTask:0];
  }
}

void __102__MCProfileTitlePageViewModel_profileConnection_didRequestManagedRestoreWithManagedAppleID_personaID___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) respondToManagedRestoreRequest:1 error:0 isCancelled:0];
  [*(a1 + 40) setInstallState:8];
  v2 = [*(a1 + 40) postRestoreTask];

  if (v2)
  {
    v3 = [*(a1 + 40) postRestoreTask];
    v3[2]();

    v4 = *(a1 + 40);

    [v4 setPostRestoreTask:0];
  }
}

- (void)doesUserWantToRestoreSnapshot:(id)a3 withConflictingApps:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MCProfileTitlePageViewModel *)self delegate];
  v12 = [(MCProfileTitlePageViewModel *)self managedAppleID];
  v13 = [v9 allObjects];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__MCProfileTitlePageViewModel_doesUserWantToRestoreSnapshot_withConflictingApps_completion___block_invoke;
  v15[3] = &unk_279861E48;
  v16 = v8;
  v14 = v8;
  [v11 promptForManagedRestoreWithManagedAppleID:v12 snapshot:v10 conflictingApps:v13 completionHandler:v15];
}

uint64_t __92__MCProfileTitlePageViewModel_doesUserWantToRestoreSnapshot_withConflictingApps_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (BOOL)_installErrorIsUserCancelledError:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *MEMORY[0x277D26108];
  v6 = *MEMORY[0x277CCA7E8];
  do
  {
    v7 = [v4 domain];
    if ([v7 isEqualToString:v5])
    {
      v8 = [v4 code];

      if (v8 == 4004)
      {
        v11 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v9 = [v4 userInfo];
    v10 = [v9 objectForKey:v6];

    v4 = v10;
  }

  while (v10);
  v11 = 0;
LABEL_10:

  return v11;
}

- (MCProfileTitlePageViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end