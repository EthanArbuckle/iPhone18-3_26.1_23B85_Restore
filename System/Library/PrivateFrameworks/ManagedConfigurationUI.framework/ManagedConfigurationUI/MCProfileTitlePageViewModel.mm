@interface MCProfileTitlePageViewModel
- (BOOL)_installErrorIsUserCancelledError:(id)error;
- (DMCProfileViewModel)profileViewModel;
- (MCProfileTitlePageViewModel)init;
- (MCProfileTitlePageViewModel)initWithProfile:(id)profile profileData:(id)data;
- (MCProfileTitlePageViewModelDelegate)delegate;
- (NSString)accountIdentifier;
- (id)_createAuthenticationContext:(id)context presentingViewController:(id)controller;
- (void)_continueInstallAfterPresentingWarnings;
- (void)_handleMAIDSignInRequestWithAccountID:(id)d personaID:(id)iD connection:(id)connection;
- (void)_handleUserInputRequest:(id)request;
- (void)_installFinishedWithIdentifier:(id)identifier error:(id)error;
- (void)_respondToMAIDAuthenticationRequestIfNeeded:(id)needed successful:(BOOL)successful error:(id)error isCancelled:(BOOL)cancelled;
- (void)_respondToUserInputRequest:(id)request cancelled:(BOOL)cancelled;
- (void)_setup;
- (void)_signInMAID:(id)d authenticationResult:(id)result personaID:(id)iD completionHandler:(id)handler;
- (void)dealloc;
- (void)doesUserWantToRestoreSnapshot:(id)snapshot withConflictingApps:(id)apps completion:(id)completion;
- (void)profileConnection:(id)connection didFinishPreflightWithError:(id)error;
- (void)profileConnection:(id)connection didRequestManagedRestoreWithManagedAppleID:(id)d personaID:(id)iD;
- (void)profileConnectionDidRequestCurrentPasscode:(id)passcode;
- (void)setInstallState:(int)state;
- (void)startProfileInstallationFlow;
- (void)terminateProfileInstallationFlow;
- (void)terminateProfileInstallationFlowAndDeleteProfile;
@end

@implementation MCProfileTitlePageViewModel

- (MCProfileTitlePageViewModel)initWithProfile:(id)profile profileData:(id)data
{
  profileCopy = profile;
  dataCopy = data;
  v9 = [(MCProfileTitlePageViewModel *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, profile);
    objc_storeStrong(&v10->_profileData, data);
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
    profile = [(MCProfileTitlePageViewModel *)self profile];
    v6 = [v4 initWithProfile:profile managedPayloads:0];
    v7 = self->_profileViewModel;
    self->_profileViewModel = v6;

    profileViewModel = self->_profileViewModel;
  }

  return profileViewModel;
}

- (NSString)accountIdentifier
{
  v2 = MEMORY[0x277D03490];
  personaID = [(MCProfileTitlePageViewModel *)self personaID];
  v4 = [v2 accountIdentifierForAppleAccountWithPersonaID:personaID];

  return v4;
}

- (void)setInstallState:(int)state
{
  if (self->_installState != state)
  {
    block[7] = v3;
    block[8] = v4;
    self->_installState = state;
    NSLog(&cfstr_SetStateD.isa, a2, state);
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
  serialQueue = [(MCProfileTitlePageViewModel *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MCProfileTitlePageViewModel_startProfileInstallationFlow__block_invoke;
  block[3] = &unk_279861968;
  block[4] = self;
  dispatch_async(serialQueue, block);
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
  serialQueue = [(MCProfileTitlePageViewModel *)self serialQueue];
  dispatch_async(serialQueue, &__block_literal_global_0);
}

void __70__MCProfileTitlePageViewModel__continueInstallAfterPresentingWarnings__block_invoke()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  [v0 respondToWarningsContinueInstallation:1];
}

- (void)_installFinishedWithIdentifier:(id)identifier error:(id)error
{
  errorCopy = error;
  serialQueue = [(MCProfileTitlePageViewModel *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__MCProfileTitlePageViewModel__installFinishedWithIdentifier_error___block_invoke;
  v8[3] = &unk_279861C40;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(serialQueue, v8);
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
  cleanupTask = [(MCProfileTitlePageViewModel *)self cleanupTask];

  if (cleanupTask)
  {
    cleanupTask2 = [(MCProfileTitlePageViewModel *)self cleanupTask];
    cleanupTask2[2]();

    [(MCProfileTitlePageViewModel *)self setCleanupTask:0];
  }
}

- (void)terminateProfileInstallationFlowAndDeleteProfile
{
  [(MCProfileTitlePageViewModel *)self terminateProfileInstallationFlow];
  NSLog(&cfstr_WillDeleteProf.isa);
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  profile = [(MCProfileTitlePageViewModel *)self profile];
  identifier = [profile identifier];
  thisDeviceType = [MEMORY[0x277D26290] thisDeviceType];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__MCProfileTitlePageViewModel_terminateProfileInstallationFlowAndDeleteProfile__block_invoke;
  v7[3] = &unk_279861968;
  v7[4] = self;
  [mEMORY[0x277D262A0] removeUninstalledProfileWithIdentifier:identifier installationType:1 targetDeviceType:thisDeviceType completion:v7];
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

- (void)_handleUserInputRequest:(id)request
{
  requestCopy = request;
  serialQueue = [(MCProfileTitlePageViewModel *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MCProfileTitlePageViewModel__handleUserInputRequest___block_invoke;
  v7[3] = &unk_279861C40;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(serialQueue, v7);
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

- (void)_respondToUserInputRequest:(id)request cancelled:(BOOL)cancelled
{
  requestCopy = request;
  serialQueue = [(MCProfileTitlePageViewModel *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MCProfileTitlePageViewModel__respondToUserInputRequest_cancelled___block_invoke;
  block[3] = &unk_279861CB8;
  cancelledCopy = cancelled;
  block[4] = self;
  v10 = requestCopy;
  v8 = requestCopy;
  dispatch_async(serialQueue, block);
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

- (void)_handleMAIDSignInRequestWithAccountID:(id)d personaID:(id)iD connection:(id)connection
{
  dCopy = d;
  iDCopy = iD;
  connectionCopy = connection;
  serialQueue = [(MCProfileTitlePageViewModel *)self serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__MCProfileTitlePageViewModel__handleMAIDSignInRequestWithAccountID_personaID_connection___block_invoke;
  v15[3] = &unk_279861C68;
  v15[4] = self;
  v16 = iDCopy;
  v17 = connectionCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = connectionCopy;
  v14 = iDCopy;
  dispatch_async(serialQueue, v15);
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

- (void)_respondToMAIDAuthenticationRequestIfNeeded:(id)needed successful:(BOOL)successful error:(id)error isCancelled:(BOOL)cancelled
{
  neededCopy = needed;
  errorCopy = error;
  serialQueue = [(MCProfileTitlePageViewModel *)self serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__MCProfileTitlePageViewModel__respondToMAIDAuthenticationRequestIfNeeded_successful_error_isCancelled___block_invoke;
  v15[3] = &unk_279861DA8;
  v15[4] = self;
  v16 = neededCopy;
  successfulCopy = successful;
  v17 = errorCopy;
  cancelledCopy = cancelled;
  v13 = errorCopy;
  v14 = neededCopy;
  dispatch_async(serialQueue, v15);
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

- (void)_signInMAID:(id)d authenticationResult:(id)result personaID:(id)iD completionHandler:(id)handler
{
  v22[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  resultCopy = result;
  iDCopy = iD;
  handlerCopy = handler;
  if ([(MCProfileTitlePageViewModel *)self isInstallingProfile])
  {
    NSLog(&cfstr_Mcprofiletitle_6.isa, dCopy);
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
    delegate = [(MCProfileTitlePageViewModel *)self delegate];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__MCProfileTitlePageViewModel__signInMAID_authenticationResult_personaID_completionHandler___block_invoke_2;
    v19[3] = &unk_279861DD0;
    v20 = handlerCopy;
    [v14 signInAccountsWithTypes:v16 authenticationResult:resultCopy personaID:iDCopy canMakeAccountActive:0 baseViewController:delegate completionHandler:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __92__MCProfileTitlePageViewModel__signInMAID_authenticationResult_personaID_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 presentSpinnerViewController];
}

- (id)_createAuthenticationContext:(id)context presentingViewController:(id)controller
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CF0380];
  controllerCopy = controller;
  contextCopy = context;
  v8 = objc_alloc_init(v5);
  [v8 setIsEphemeral:0];
  [v8 setAuthenticationType:2];
  [v8 setPresentingViewController:controllerCopy];

  [v8 setUsername:contextCopy];
  [v8 setIsUsernameEditable:0];
  v12 = @"shouldAllowManagedAppleIDOnly";
  v13[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v8 setAppProvidedData:v9];

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)profileConnectionDidRequestCurrentPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = [(MCProfileTitlePageViewModel *)self pin];
  [passcodeCopy respondToCurrentPasscodeRequestContinue:1 passcode:v5];
}

- (void)profileConnection:(id)connection didFinishPreflightWithError:(id)error
{
  connectionCopy = connection;
  errorCopy = error;
  serialQueue = [(MCProfileTitlePageViewModel *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__MCProfileTitlePageViewModel_profileConnection_didFinishPreflightWithError___block_invoke;
  block[3] = &unk_279861DF8;
  block[4] = self;
  v12 = errorCopy;
  v13 = connectionCopy;
  v9 = connectionCopy;
  v10 = errorCopy;
  dispatch_async(serialQueue, block);
}

void __77__MCProfileTitlePageViewModel_profileConnection_didFinishPreflightWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 informQuestionViewControllerOfPreflightResult:*(a1 + 40) profileConnection:*(a1 + 48)];
}

- (void)profileConnection:(id)connection didRequestManagedRestoreWithManagedAppleID:(id)d personaID:(id)iD
{
  connectionCopy = connection;
  dCopy = d;
  iDCopy = iD;
  serialQueue = [(MCProfileTitlePageViewModel *)self serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__MCProfileTitlePageViewModel_profileConnection_didRequestManagedRestoreWithManagedAppleID_personaID___block_invoke;
  v15[3] = &unk_279861C68;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  v18 = connectionCopy;
  v12 = connectionCopy;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_async(serialQueue, v15);
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

- (void)doesUserWantToRestoreSnapshot:(id)snapshot withConflictingApps:(id)apps completion:(id)completion
{
  completionCopy = completion;
  appsCopy = apps;
  snapshotCopy = snapshot;
  delegate = [(MCProfileTitlePageViewModel *)self delegate];
  managedAppleID = [(MCProfileTitlePageViewModel *)self managedAppleID];
  allObjects = [appsCopy allObjects];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__MCProfileTitlePageViewModel_doesUserWantToRestoreSnapshot_withConflictingApps_completion___block_invoke;
  v15[3] = &unk_279861E48;
  v16 = completionCopy;
  v14 = completionCopy;
  [delegate promptForManagedRestoreWithManagedAppleID:managedAppleID snapshot:snapshotCopy conflictingApps:allObjects completionHandler:v15];
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

- (BOOL)_installErrorIsUserCancelledError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    return 0;
  }

  v4 = errorCopy;
  v5 = *MEMORY[0x277D26108];
  v6 = *MEMORY[0x277CCA7E8];
  do
  {
    domain = [v4 domain];
    if ([domain isEqualToString:v5])
    {
      code = [v4 code];

      if (code == 4004)
      {
        v11 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }

    userInfo = [v4 userInfo];
    v10 = [userInfo objectForKey:v6];

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