@interface DMCBYODEnrollmentFlowUIPresenter
- (DMCEnrollmentAuthenticationController)authenticationController;
- (id)_fakeAppleAccountWithAuthenticationResults:(id)a3 personaID:(id)a4 store:(id)a5;
- (id)_fakeiTunesAccountWithAuthenticationResults:(id)a3 personaID:(id)a4 store:(id)a5;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
- (void)_createLockupRequestAndViewGroupWithITunesItemID:(id)a3 completionHandler:(id)a4;
- (void)_handleApplicationInstallationViewControllerDelegate:(id)a3 didReceiveUserAction:(BOOL)a4 error:(id)a5;
- (void)_makeAuthenticationActionHandlerWithEphemeral:(BOOL)a3 requireAppleMAID:(BOOL)a4 presentingViewController:(id)a5;
- (void)_showCancelAlertForMAID:(id)a3 actionHandler:(id)a4;
- (void)authenticationViewController:(id)a3 didReceivePassword:(id)a4 forUsername:(id)a5;
- (void)authenticationViewController:(id)a3 didReceiveUsername:(id)a4;
- (void)authenticationViewControllerDidCancel:(id)a3;
- (void)consentViewController:(id)a3 didReceiveUserAction:(BOOL)a4;
- (void)debuggingApplicationInstallationViewController:(id)a3 didInstallApplication:(id)a4;
- (void)dismissEnrollmentScene;
- (void)displayManagementDetailsOverviewWithProfileData:(id)a3 managedAppleID:(id)a4 completionHandler:(id)a5;
- (void)doesUserWantToRestoreSnapshot:(id)a3 withConflictingApps:(id)a4 completion:(id)a5;
- (void)ensureNetworkConnectionWithCompletionHandler:(id)a3;
- (void)fetchEnrollmentProfileWithWebAuthURL:(id)a3 machineInfo:(id)a4 anchorCertificateRefs:(id)a5 completionHandler:(id)a6;
- (void)iCloudPromotionViewController:(id)a3 didReceiveUserAction:(BOOL)a4;
- (void)informQuestionViewControllerOfPreflightResult:(id)a3;
- (void)managementDetailsOverviewViewController:(id)a3 didReceiveUserAction:(BOOL)a4;
- (void)questionsController:(id)a3 didFinishWithResponses:(id)a4;
- (void)receivedProfile:(id)a3;
- (void)requestDebuggingApplicationsInstallation:(id)a3 requiredEntitlements:(id)a4 completionHandler:(id)a5;
- (void)requestDevicePasscodeDataWithCompletionHandler:(id)a3;
- (void)requestESSOApplicationInstallationWithITunesItemID:(id)a3 requiredEntitlements:(id)a4 completionHandler:(id)a5;
- (void)requestMAIDAuthenticationWithManagedAppleID:(id)a3 personaID:(id)a4 ephemeral:(BOOL)a5 requireAppleMAID:(BOOL)a6 completionHandler:(id)a7;
- (void)requestMAIDSignInWithAuthenticationResults:(id)a3 personaID:(id)a4 makeiTunesAccountActive:(BOOL)a5 completionHandler:(id)a6;
- (void)requestMDMUsernameAndPasswordWithCompletionHandler:(id)a3;
- (void)requestSilentMAIDAuthenticationWithAuthenticationResults:(id)a3 personaID:(id)a4 requireAppleMAID:(BOOL)a5 completionHandler:(id)a6;
- (void)requestUserConsentForMigrationWithPendingCloudConfig:(id)a3 originalEnrollmentType:(unint64_t)a4 isMandatory:(BOOL)a5 deadline:(id)a6 completionHandler:(id)a7;
- (void)requestUserConsentWithCloudConfig:(id)a3 completionHandler:(id)a4;
- (void)requestUserConsentWithProfileData:(id)a3 managedAppleID:(id)a4 enrollmentType:(unint64_t)a5 completionHandler:(id)a6;
- (void)requestUserInputWithRequest:(id)a3 completionHandler:(id)a4;
- (void)requestUsernameWithDefaultUsername:(id)a3 completionHandler:(id)a4;
- (void)requestWebAuthenticationWithWebAuthURL:(id)a3 authenticator:(id)a4 authParams:(id)a5 completionHandler:(id)a6;
- (void)requestiCloudSignInConfirmationWithCompletionHandler:(id)a3;
- (void)restoreViewController:(id)a3 didReceiveUserAction:(BOOL)a4;
- (void)showEnrollmentCompletionScene;
- (void)showEnrollmentFailure:(id)a3;
- (void)showInstallingEnrollmentProfileScene;
- (void)showiCloudPromotionPageWithiCloudQuotaString:(id)a3 completionHandler:(id)a4;
- (void)suggestRestoreForAccountWithUsername:(id)a3 personaID:(id)a4 completionHandler:(id)a5;
- (void)testInformationViewController:(id)a3 didReceiveUserAction:(BOOL)a4;
- (void)webAuthCanceled:(id)a3;
@end

@implementation DMCBYODEnrollmentFlowUIPresenter

- (DMCEnrollmentAuthenticationController)authenticationController
{
  authenticationController = self->_authenticationController;
  if (!authenticationController)
  {
    v4 = objc_opt_new();
    v5 = self->_authenticationController;
    self->_authenticationController = v4;

    authenticationController = self->_authenticationController;
  }

  return authenticationController;
}

- (void)_showCancelAlertForMAID:(id)a3 actionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 length];
  v8 = DMCLocalizedString();
  if ([v6 length])
  {
    v20 = [(DMCBYODEnrollmentFlowUIPresenter *)self managedAppleID];
    v9 = DMCLocalizedFormat();
  }

  else
  {
    v9 = DMCLocalizedString();
  }

  [v6 length];
  v10 = DMCLocalizedString();
  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v9 preferredStyle:1];
  v12 = MEMORY[0x277D750F8];
  v13 = DMCLocalizedString();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__DMCBYODEnrollmentFlowUIPresenter__showCancelAlertForMAID_actionHandler___block_invoke;
  v23[3] = &unk_278EE7358;
  v14 = v7;
  v24 = v14;
  v15 = [v12 actionWithTitle:v13 style:1 handler:v23];

  v16 = MEMORY[0x277D750F8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__DMCBYODEnrollmentFlowUIPresenter__showCancelAlertForMAID_actionHandler___block_invoke_2;
  v21[3] = &unk_278EE7380;
  v21[4] = self;
  v22 = v14;
  v17 = v14;
  v18 = [v16 actionWithTitle:v10 style:0 handler:v21];
  [v11 addAction:v18];
  [v11 addAction:v15];
  v19 = [(DMCEnrollmentFlowUIPresenterBase *)self navigationController];
  [v19 dmc_presentAlert:v11 completion:0];
}

uint64_t __74__DMCBYODEnrollmentFlowUIPresenter__showCancelAlertForMAID_actionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 view];
  [v3 setUserInteractionEnabled:0];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)requestUsernameWithDefaultUsername:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__DMCBYODEnrollmentFlowUIPresenter_requestUsernameWithDefaultUsername_completionHandler___block_invoke;
  block[3] = &unk_278EE73A8;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __89__DMCBYODEnrollmentFlowUIPresenter_requestUsernameWithDefaultUsername_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) usernameViewController];

  if (!v2)
  {
    v3 = objc_opt_new();
    [v3 setDelegate:*(a1 + 32)];
    [*(a1 + 32) setUsernameViewController:v3];
  }

  [*(a1 + 32) setUsernameCompletionHandler:*(a1 + 48)];
  v4 = [*(a1 + 32) usernameViewController];
  [v4 setUsernameEditable:1];

  v5 = [*(a1 + 32) usernameViewController];
  [v5 setUsername:*(a1 + 40)];

  v6 = [*(a1 + 32) usernameViewController];
  [v6 showPasswordField:0];

  v7 = [*(a1 + 32) usernameViewController];
  [v7 setInProgress:0];

  v8 = [*(a1 + 32) usernameViewController];
  [v8 setStyle:0];

  [*(a1 + 32) setHasDoneAuthServices:0];
  v9 = *(a1 + 32);
  v11 = [v9 usernameViewController];
  v10 = [*(a1 + 32) usernameViewController];
  [v9 pushViewController:v11 foundationViewController:v10];
}

- (void)ensureNetworkConnectionWithCompletionHandler:(id)a3
{
  v9 = a3;
  if ([MEMORY[0x277D03500] shouldSimulateMDMCommunication] & 1) != 0 || (v3 = objc_opt_new(), v4 = objc_msgSend(v3, "deviceMightHaveNetworkStrict:", 0), v3, (v4))
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D032F0];
    v8 = DMCErrorArray();
    v5 = [v6 DMCErrorWithDomain:v7 code:15041 descriptionArray:v8 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  v9[2](v9, v5);
}

- (void)requestESSOApplicationInstallationWithITunesItemID:(id)a3 requiredEntitlements:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  [(DMCBYODEnrollmentFlowUIPresenter *)self setESSOApplicationInstallationCompletionHandler:a5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__DMCBYODEnrollmentFlowUIPresenter_requestESSOApplicationInstallationWithITunesItemID_requiredEntitlements_completionHandler___block_invoke;
  block[3] = &unk_278EE7420;
  block[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __126__DMCBYODEnrollmentFlowUIPresenter_requestESSOApplicationInstallationWithITunesItemID_requiredEntitlements_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __126__DMCBYODEnrollmentFlowUIPresenter_requestESSOApplicationInstallationWithITunesItemID_requiredEntitlements_completionHandler___block_invoke_2;
  v3[3] = &unk_278EE73F8;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _createLockupRequestAndViewGroupWithITunesItemID:v2 completionHandler:v3];
}

void __126__DMCBYODEnrollmentFlowUIPresenter_requestESSOApplicationInstallationWithITunesItemID_requiredEntitlements_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __126__DMCBYODEnrollmentFlowUIPresenter_requestESSOApplicationInstallationWithITunesItemID_requiredEntitlements_completionHandler___block_invoke_3;
  v10[3] = &unk_278EE73D0;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __126__DMCBYODEnrollmentFlowUIPresenter_requestESSOApplicationInstallationWithITunesItemID_requiredEntitlements_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [[DMCEnrollmentESSOApplicationDisclosureViewController alloc] initWithDelegate:*(a1 + 32) lockupRequest:*(a1 + 40) lockupViewGroup:*(a1 + 48) requiredEntitlements:*(a1 + 56)];
  [*(a1 + 32) pushViewController:v2 foundationViewController:v2];
}

- (void)requestDevicePasscodeDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = DMCLocalizedStringByDevice();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__DMCBYODEnrollmentFlowUIPresenter_requestDevicePasscodeDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_278EE7448;
  v8 = v4;
  v6 = v4;
  [(DMCEnrollmentFlowUIPresenterBase *)self requestDevicePasscodeWithDescriptionText:v5 completionHandler:v7];
}

- (void)requestWebAuthenticationWithWebAuthURL:(id)a3 authenticator:(id)a4 authParams:(id)a5 completionHandler:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc(MEMORY[0x277CBA9D8]);
  v15 = *MEMORY[0x277D245C0];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __118__DMCBYODEnrollmentFlowUIPresenter_requestWebAuthenticationWithWebAuthURL_authenticator_authParams_completionHandler___block_invoke;
  v24 = &unk_278EE7498;
  v25 = self;
  v16 = v13;
  v28 = v16;
  v17 = v11;
  v26 = v17;
  v18 = v12;
  v27 = v18;
  v19 = [v14 initWithURL:v10 callbackURLScheme:v15 completionHandler:&v21];
  if (([MEMORY[0x277D03500] useNonEphemeralWebAuthSession] & 1) == 0)
  {
    [v19 setPrefersEphemeralWebBrowserSession:1];
  }

  [v19 setPresentationContextProvider:self];
  v20 = *DMCLogObjects();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v10;
    _os_log_impl(&dword_247E7D000, v20, OS_LOG_TYPE_DEFAULT, "Beginning web authentication with URL: %{public}@", buf, 0xCu);
  }

  [v19 start];
}

void __118__DMCBYODEnrollmentFlowUIPresenter_requestWebAuthenticationWithWebAuthURL_authenticator_authParams_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "ASWebAuthenticationSession finished with callback URL: %{public}@, error: %{public}@", buf, 0x16u);
  }

  [*(a1 + 32) setHasDoneAuthServices:1];
  v8 = *(a1 + 56);
  if (v8)
  {
    if (v5)
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __118__DMCBYODEnrollmentFlowUIPresenter_requestWebAuthenticationWithWebAuthURL_authenticator_authParams_completionHandler___block_invoke_67;
      v11[3] = &unk_278EE7470;
      v12 = v8;
      [v10 authTokensWithCallbackURL:v5 authParams:v9 completionHandler:v11];
    }

    else
    {
      (v8)[2](v8, 0, [v6 code] == 1, v6);
    }
  }
}

- (void)requestMAIDAuthenticationWithManagedAppleID:(id)a3 personaID:(id)a4 ephemeral:(BOOL)a5 requireAppleMAID:(BOOL)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a7;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke;
  v15[3] = &unk_278EE7588;
  v16 = v11;
  v17 = v12;
  v15[4] = self;
  v18 = a6;
  v19 = a5;
  v13 = v11;
  v14 = v12;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAuthenticationCompletionHandler:*(a1 + 48)];
  v2 = [*(a1 + 32) usernameViewController];

  if (!v2)
  {
    v3 = objc_opt_new();
    [v3 setDelegate:*(a1 + 32)];
    [*(a1 + 32) setUsernameViewController:v3];
  }

  v4 = [*(a1 + 32) usernameViewController];
  [v4 setInProgress:0];

  if ([*(a1 + 40) length])
  {
    v5 = [*(a1 + 32) usernameViewController];
    [v5 setUsername:*(a1 + 40)];

    if ([*(a1 + 32) hasDoneAuthServices])
    {
      v6 = MEMORY[0x277D75D18];
      v7 = [*(a1 + 32) usernameViewController];
      v8 = [v7 view];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_2;
      v20[3] = &unk_278EE74C0;
      v20[4] = *(a1 + 32);
      [v6 transitionWithView:v8 duration:5242880 options:v20 animations:0 completion:0.100000001];
    }
  }

  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_3;
  aBlock[3] = &unk_278EE7538;
  objc_copyWeak(&v17, &location);
  v18 = *(a1 + 56);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 32);
  v11 = [v10 usernameViewController];
  v12 = [*(a1 + 32) usernameViewController];
  [v10 pushViewController:v11 foundationViewController:v12];

  if ([*(a1 + 40) length])
  {
    v9[2](v9, *(a1 + 40));
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_3_75;
    v13[3] = &unk_278EE7560;
    v14 = v9;
    v15 = *(a1 + 48);
    [*(a1 + 32) setUsernameCompletionHandler:v13];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) usernameViewController];
  [v1 setStyle:1];
}

void __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = v3;
    BSRunLoopPerformAfterCACommit();
  }
}

void __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) usernameViewController];
  [v2 setUsernameEditable:0];

  v3 = [*(a1 + 32) usernameViewController];
  [v3 setInProgress:1];

  v4 = [*(a1 + 32) authenticationController];
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_5;
  v7[3] = &unk_278EE74E8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v9 = *(a1 + 49);
  v10 = v5;
  v8 = v6;
  [v4 fetchAuthenticationModeForUsername:v8 requireAppleMAID:v5 completionHandler:v7];
}

void __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_6;
  block[3] = &unk_278EE74C0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v6 = *DMCLogObjects();
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch authentication mode with error: %{public}@", buf, 0xCu);
    }

    v7 = [*(a1 + 32) authenticationCompletionHandler];

    if (v7)
    {
      v8 = [*(a1 + 32) authenticationCompletionHandler];
      (v8)[2](v8, 0, 0, v5);

      [*(a1 + 32) setAuthenticationCompletionHandler:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = a2;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "Fetched auth mode: %lu", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 49);
    v12 = [v9 navigationController];
    [v9 _makeAuthenticationActionHandlerWithEphemeral:v10 requireAppleMAID:v11 presentingViewController:v12];

    if (a2 == 2)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_2_72;
      v16[3] = &unk_278EE74C0;
      v16[4] = *(a1 + 32);
      v13 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v16);

      v14 = [*(a1 + 32) authenticationActionHandler];
      v14[2](v14, *(a1 + 40), 0);
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_71;
      v17[3] = &unk_278EE74C0;
      v17[4] = *(a1 + 32);
      v15 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v17);
    }
  }
}

void __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) usernameViewController];
  [v1 setInProgress:0];
}

void __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_71(uint64_t a1)
{
  v2 = [*(a1 + 32) usernameViewController];
  [v2 setInProgress:0];

  v3 = [*(a1 + 32) usernameViewController];
  [v3 showPasswordField:1];
}

void __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_2_72(uint64_t a1)
{
  v1 = [*(a1 + 32) usernameViewController];
  [v1 setInProgress:1];
}

uint64_t __135__DMCBYODEnrollmentFlowUIPresenter_requestMAIDAuthenticationWithManagedAppleID_personaID_ephemeral_requireAppleMAID_completionHandler___block_invoke_3_75(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_makeAuthenticationActionHandlerWithEphemeral:(BOOL)a3 requireAppleMAID:(BOOL)a4 presentingViewController:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __124__DMCBYODEnrollmentFlowUIPresenter__makeAuthenticationActionHandlerWithEphemeral_requireAppleMAID_presentingViewController___block_invoke;
  v10[3] = &unk_278EE75D8;
  objc_copyWeak(&v12, &location);
  v13 = a3;
  v14 = a4;
  v9 = v8;
  v11 = v9;
  [(DMCBYODEnrollmentFlowUIPresenter *)self setAuthenticationActionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __124__DMCBYODEnrollmentFlowUIPresenter__makeAuthenticationActionHandlerWithEphemeral_requireAppleMAID_presentingViewController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment] && (objc_msgSend(MEMORY[0x277D03500], "simulatedMDMAccountDrivenEnrollmentAuthenticationResults"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __124__DMCBYODEnrollmentFlowUIPresenter__makeAuthenticationActionHandlerWithEphemeral_requireAppleMAID_presentingViewController___block_invoke_2;
      block[3] = &unk_278EE74C0;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v9 = [WeakRetained authenticationCompletionHandler];
      v10 = [MEMORY[0x277D03500] simulatedMDMAccountDrivenEnrollmentAuthenticationResults];
      (v9)[2](v9, v10, 0, 0);

      [WeakRetained setAuthenticationCompletionHandler:0];
    }

    else
    {
      v11 = [WeakRetained authenticationController];
      v12 = *(a1 + 48);
      v13 = *(a1 + 49);
      v14 = *(a1 + 32);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __124__DMCBYODEnrollmentFlowUIPresenter__makeAuthenticationActionHandlerWithEphemeral_requireAppleMAID_presentingViewController___block_invoke_3;
      v15[3] = &unk_278EE75B0;
      objc_copyWeak(&v16, (a1 + 40));
      [v11 authenticateWithUsername:v5 password:v6 ephemeral:v12 requireAppleMAID:v13 presentingViewController:v14 completionHandler:v15];

      objc_destroyWeak(&v16);
    }
  }
}

void __124__DMCBYODEnrollmentFlowUIPresenter__makeAuthenticationActionHandlerWithEphemeral_requireAppleMAID_presentingViewController___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) usernameViewController];
  [v1 setInProgress:0];
}

void __124__DMCBYODEnrollmentFlowUIPresenter__makeAuthenticationActionHandlerWithEphemeral_requireAppleMAID_presentingViewController___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __124__DMCBYODEnrollmentFlowUIPresenter__makeAuthenticationActionHandlerWithEphemeral_requireAppleMAID_presentingViewController___block_invoke_4;
      block[3] = &unk_278EE74C0;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v11 = [v8 domain];
      if ([v11 isEqualToString:*MEMORY[0x277CEFF48]])
      {
        v12 = [v8 code];

        if (v12 == -7006)
        {
          [v10 showEnrollmentFailure:v8];
          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [v10 authenticationCompletionHandler];
      v14 = [v7 mutableCopy];
      (v13)[2](v13, v14, a3, v8);
    }

    else
    {
      v13 = [WeakRetained authenticationCompletionHandler];
      v14 = [v7 mutableCopy];
      (v13)[2](v13, v14, a3, 0);
    }

    [v10 setAuthenticationCompletionHandler:0];
  }

LABEL_10:
}

void __124__DMCBYODEnrollmentFlowUIPresenter__makeAuthenticationActionHandlerWithEphemeral_requireAppleMAID_presentingViewController___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) usernameViewController];
  [v1 setInProgress:0];
}

- (void)requestSilentMAIDAuthenticationWithAuthenticationResults:(id)a3 personaID:(id)a4 requireAppleMAID:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke;
  block[3] = &unk_278EE76A0;
  block[4] = self;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  v20 = a5;
  v13 = v10;
  v14 = v12;
  v15 = v11;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityController];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = DMCLocalizedStringByDevice();
    v5 = DMCLocalizedStringByDevice();
    [v3 presentActivityPageWithTitle:v4 text:v5 showButtomView:0];
  }

  v6 = [MEMORY[0x277D03550] currentPersonaID];
  v7 = MEMORY[0x277D03550];
  v8 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke_2;
  v13[3] = &unk_278EE7678;
  v14 = v6;
  v17 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v10;
  v18 = *(a1 + 64);
  v11 = v6;
  v12 = [v7 performBlockUnderPersona:v8 block:v13];
}

void __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke_2(uint64_t a1)
{
  if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment] && (objc_msgSend(MEMORY[0x277D03500], "simulatedMDMAccountDrivenEnrollmentAuthenticationResults"), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = MEMORY[0x277D03550];
    v4 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke_3;
    v15[3] = &unk_278EE7600;
    v5 = &v17;
    v17 = *(a1 + 56);
    v6 = &v16;
    v16 = *(a1 + 40);
    v7 = [v3 performBlockUnderPersona:v4 block:v15];
  }

  else
  {
    v8 = [*(a1 + 48) authenticationController];
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) navigationController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke_4;
    v12[3] = &unk_278EE7650;
    v5 = &v13;
    v13 = *(a1 + 32);
    v6 = &v14;
    v14 = *(a1 + 56);
    [v8 authenticateWithAuthenticationResults:v10 ephemeral:0 requireAppleMAID:v9 presentingViewController:v11 completionHandler:v12];
  }
}

void __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) mutableCopy];
  (*(v1 + 16))(v1, v2, 0, 0);
}

void __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke_4(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = MEMORY[0x277D03550];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke_5;
  v15[3] = &unk_278EE7628;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v17 = v8;
  v18 = v11;
  v19 = a3;
  v16 = v7;
  v12 = v8;
  v13 = v7;
  v14 = [v9 performBlockUnderPersona:v10 block:v15];
}

void __138__DMCBYODEnrollmentFlowUIPresenter_requestSilentMAIDAuthenticationWithAuthenticationResults_personaID_requireAppleMAID_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) mutableCopy];
  (*(v2 + 16))(v2, v3, *(a1 + 56), *(a1 + 40));
}

- (void)requestMAIDSignInWithAuthenticationResults:(id)a3 personaID:(id)a4 makeiTunesAccountActive:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __131__DMCBYODEnrollmentFlowUIPresenter_requestMAIDSignInWithAuthenticationResults_personaID_makeiTunesAccountActive_completionHandler___block_invoke;
  block[3] = &unk_278EE76F0;
  block[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = a5;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __131__DMCBYODEnrollmentFlowUIPresenter_requestMAIDSignInWithAuthenticationResults_personaID_makeiTunesAccountActive_completionHandler___block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activityController];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = DMCLocalizedStringByDevice();
    v5 = DMCLocalizedStringByDevice();
    [v3 presentActivityPageWithTitle:v4 text:v5 showButtomView:0];
  }

  if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment] && (objc_msgSend(MEMORY[0x277D03500], "simulatedMDMAccountDrivenEnrollmentAuthenticationResults"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [MEMORY[0x277CB8F48] defaultStore];
    v8 = [*(a1 + 32) _fakeAppleAccountWithAuthenticationResults:*(a1 + 40) personaID:*(a1 + 48) store:v7];
    v22 = 0;
    [v7 saveVerifiedAccount:v8 error:&v22];
    v9 = v22;
    v10 = [*(a1 + 32) _fakeiTunesAccountWithAuthenticationResults:*(a1 + 40) personaID:*(a1 + 48) store:v7];
    v21 = v9;
    [v7 saveVerifiedAccount:v10 error:&v21];
    v11 = v21;

    (*(*(a1 + 56) + 16))(*(a1 + 56), v11 == 0, 0, v11);
  }

  else
  {
    v12 = objc_opt_new();
    v13 = *MEMORY[0x277CB8D58];
    v23[0] = *MEMORY[0x277CB8BA0];
    v23[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = *(a1 + 64);
    v18 = [*(a1 + 32) navigationController];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __131__DMCBYODEnrollmentFlowUIPresenter_requestMAIDSignInWithAuthenticationResults_personaID_makeiTunesAccountActive_completionHandler___block_invoke_2;
    v19[3] = &unk_278EE76C8;
    v20 = *(a1 + 56);
    [v12 signInAccountsWithTypes:v14 authenticationResult:v16 personaID:v15 canMakeAccountActive:v17 baseViewController:v18 completionHandler:v19];

    v7 = v20;
  }
}

- (void)requestUserConsentWithProfileData:(id)a3 managedAppleID:(id)a4 enrollmentType:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    v23 = 0;
    v13 = [MEMORY[0x277D26290] profileWithData:v10 outError:&v23];
    v14 = v23;
    if (v14)
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v15, OS_LOG_TYPE_ERROR, "Failed to parse profile data for consent", buf, 2u);
      }
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  [(DMCBYODEnrollmentFlowUIPresenter *)self setManagedAppleID:v11];
  [(DMCBYODEnrollmentFlowUIPresenter *)self setConsentCompletionHandler:v12];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __118__DMCBYODEnrollmentFlowUIPresenter_requestUserConsentWithProfileData_managedAppleID_enrollmentType_completionHandler___block_invoke;
  v18[3] = &unk_278EE7718;
  v18[4] = self;
  v19 = v11;
  v20 = v13;
  v21 = a5;
  v16 = v13;
  v17 = v11;
  dispatch_async(MEMORY[0x277D85CD0], v18);
}

void __118__DMCBYODEnrollmentFlowUIPresenter_requestUserConsentWithProfileData_managedAppleID_enrollmentType_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[DMCEnrollmentConsentViewController alloc] initWithDelegate:*(a1 + 32) username:*(a1 + 40) profile:*(a1 + 48) enrollmentType:*(a1 + 56)];
  [*(a1 + 32) pushViewController:v2];
}

- (void)displayManagementDetailsOverviewWithProfileData:(id)a3 managedAppleID:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = MEMORY[0x277D26290];
  v28 = 0;
  v10 = a5;
  v11 = [v9 profileWithData:a3 outError:&v28];
  v12 = v28;
  if (v12)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v13, OS_LOG_TYPE_ERROR, "Failed to parse profile data for management details", buf, 2u);
    }
  }

  [(DMCBYODEnrollmentFlowUIPresenter *)self setManagedAppleID:v8];
  [(DMCBYODEnrollmentFlowUIPresenter *)self setConsentCompletionHandler:v10];

  v14 = [v11 hasRequiredAppIDForMDM];
  v15 = v14;
  if (v14)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__DMCBYODEnrollmentFlowUIPresenter_displayManagementDetailsOverviewWithProfileData_managedAppleID_completionHandler___block_invoke_2;
    block[3] = &unk_278EE73D0;
    block[4] = self;
    v16 = &v21;
    v21 = v14;
    v17 = &v22;
    v22 = v8;
    v23 = v11;
    v18 = v11;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __117__DMCBYODEnrollmentFlowUIPresenter_displayManagementDetailsOverviewWithProfileData_managedAppleID_completionHandler___block_invoke;
    v24[3] = &unk_278EE7420;
    v24[4] = self;
    v16 = &v25;
    v17 = &v26;
    v25 = v8;
    v26 = v11;
    v19 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v24);
  }
}

void __117__DMCBYODEnrollmentFlowUIPresenter_displayManagementDetailsOverviewWithProfileData_managedAppleID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[DMCEnrollmentManagementDetailsOverviewViewController alloc] initWithDelegate:*(a1 + 32) managedAppleID:*(a1 + 40) profile:*(a1 + 48) requiredAppRequest:0 requiredAppViewGroup:0];
  [*(a1 + 32) pushViewController:v2];
}

void __117__DMCBYODEnrollmentFlowUIPresenter_displayManagementDetailsOverviewWithProfileData_managedAppleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __117__DMCBYODEnrollmentFlowUIPresenter_displayManagementDetailsOverviewWithProfileData_managedAppleID_completionHandler___block_invoke_3;
  v4[3] = &unk_278EE7768;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _createLockupRequestAndViewGroupWithITunesItemID:v3 completionHandler:v4];
}

void __117__DMCBYODEnrollmentFlowUIPresenter_displayManagementDetailsOverviewWithProfileData_managedAppleID_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__DMCBYODEnrollmentFlowUIPresenter_displayManagementDetailsOverviewWithProfileData_managedAppleID_completionHandler___block_invoke_4;
  block[3] = &unk_278EE7740;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v7;
  v12 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __117__DMCBYODEnrollmentFlowUIPresenter_displayManagementDetailsOverviewWithProfileData_managedAppleID_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [[DMCEnrollmentManagementDetailsOverviewViewController alloc] initWithDelegate:*(a1 + 32) managedAppleID:*(a1 + 40) profile:*(a1 + 48) requiredAppRequest:*(a1 + 56) requiredAppViewGroup:*(a1 + 64)];
  [*(a1 + 32) pushViewController:v2];
}

- (void)_createLockupRequestAndViewGroupWithITunesItemID:(id)a3 completionHandler:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CEC2A0]) initWithName:@"DMC Enrollment App Lockup"];
  v8 = objc_alloc(MEMORY[0x277CEC258]);
  v9 = [v5 stringValue];
  v10 = [v8 initWithStringValue:v9];

  v11 = objc_alloc(MEMORY[0x277CEC290]);
  v12 = [v11 initWithID:v10 kind:*MEMORY[0x277CEC230] context:*MEMORY[0x277CEC210]];
  v23[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __103__DMCBYODEnrollmentFlowUIPresenter__createLockupRequestAndViewGroupWithITunesItemID_completionHandler___block_invoke;
  v18[3] = &unk_278EE7790;
  v19 = v5;
  v20 = v13;
  v21 = v7;
  v22 = v6;
  v14 = v7;
  v15 = v6;
  v16 = v13;
  v17 = v5;
  [v14 _cacheLockupsWithRequests:v16 withCompletionBlock:v18];
}

void __103__DMCBYODEnrollmentFlowUIPresenter__createLockupRequestAndViewGroupWithITunesItemID_completionHandler___block_invoke(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 count])
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch ASCLockupRequest with iTunes item ID: %{public}@. Will let the UI have another try.", &v9, 0xCu);
    }
  }

  v6 = [v3 count];
  v7 = v3;
  if (!v6)
  {
    v7 = a1[5];
  }

  v8 = [v7 firstObject];
  (*(a1[7] + 16))();
}

- (void)requestUserInputWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  [(DMCBYODEnrollmentFlowUIPresenter *)self setUserInputCompletionHandler:a4];
  v7 = [[DMCInstallProfileQuestionViewController alloc] initWithUserInput:v6];

  [(DMCInstallProfileQuestionViewController *)v7 setQuestionsDelegate:self];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__DMCBYODEnrollmentFlowUIPresenter_requestUserInputWithRequest_completionHandler___block_invoke;
  v9[3] = &unk_278EE77B8;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)informQuestionViewControllerOfPreflightResult:(id)a3
{
  v4 = a3;
  v5 = [(DMCBYODEnrollmentFlowUIPresenter *)self questionsController];
  [v5 profileConnectionDidFinishPreflightWithError:v4];
}

- (void)showiCloudPromotionPageWithiCloudQuotaString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__DMCBYODEnrollmentFlowUIPresenter_showiCloudPromotionPageWithiCloudQuotaString_completionHandler___block_invoke;
  v12[3] = &unk_278EE77E0;
  v13 = v7;
  v8 = v7;
  [(DMCBYODEnrollmentFlowUIPresenter *)self setICloudPromotionCompletionHandler:v12];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__DMCBYODEnrollmentFlowUIPresenter_showiCloudPromotionPageWithiCloudQuotaString_completionHandler___block_invoke_2;
  block[3] = &unk_278EE77B8;
  block[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __99__DMCBYODEnrollmentFlowUIPresenter_showiCloudPromotionPageWithiCloudQuotaString_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [[DMCEnrollmentiCloudPromotionViewController alloc] initWithType:1 delegate:*(a1 + 32)];
  [(DMCEnrollmentiCloudPromotionViewController *)v2 setQuotaString:*(a1 + 40)];
  [*(a1 + 32) pushViewController:v2];
}

- (void)requestiCloudSignInConfirmationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__DMCBYODEnrollmentFlowUIPresenter_requestiCloudSignInConfirmationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278EE77E0;
  v8 = v4;
  v5 = v4;
  [(DMCBYODEnrollmentFlowUIPresenter *)self setICloudPromotionCompletionHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__DMCBYODEnrollmentFlowUIPresenter_requestiCloudSignInConfirmationWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_278EE74C0;
  v6[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __89__DMCBYODEnrollmentFlowUIPresenter_requestiCloudSignInConfirmationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [[DMCEnrollmentiCloudPromotionViewController alloc] initWithType:0 delegate:*(a1 + 32)];
  [*(a1 + 32) pushViewController:v2 foundationViewController:v2];
}

- (void)suggestRestoreForAccountWithUsername:(id)a3 personaID:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(DMCBYODEnrollmentFlowUIPresenter *)self setManagedAppleID:a3];
  if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment] && (objc_msgSend(MEMORY[0x277D03500], "simulatedMDMAccountDrivenEnrollmentAuthenticationResults"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = objc_opt_new();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __101__DMCBYODEnrollmentFlowUIPresenter_suggestRestoreForAccountWithUsername_personaID_completionHandler___block_invoke;
    v19[3] = &unk_278EE76C8;
    v20 = v9;
    v12 = v9;
    [(DMCBYODEnrollmentFlowUIPresenter *)self doesUserWantToRestoreSnapshot:v11 withConflictingApps:0 completion:v19];

    v13 = v20;
  }

  else
  {
    v12 = [[DMCRFMBSnapshotSource alloc] initWithPersonaIdentifier:v8 delegate:0];
    v13 = objc_alloc_init(DMCRFMBDeviceEnvironment);
    v14 = [DMCRFRestoreFlow alloc];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__DMCBYODEnrollmentFlowUIPresenter_suggestRestoreForAccountWithUsername_personaID_completionHandler___block_invoke_2;
    v17[3] = &unk_278EE7858;
    v17[4] = self;
    v18 = v9;
    v15 = v9;
    v16 = [(DMCRFRestoreFlow *)v14 initWithSnapshotSource:v12 interactionClient:self deviceEnvironment:v13 completion:v17];
    [(DMCRFRestoreFlow *)v16 startManagedRestoreWorkflow];
  }
}

void __101__DMCBYODEnrollmentFlowUIPresenter_suggestRestoreForAccountWithUsername_personaID_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __101__DMCBYODEnrollmentFlowUIPresenter_suggestRestoreForAccountWithUsername_personaID_completionHandler___block_invoke_3;
    v5[3] = &unk_278EE7830;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __101__DMCBYODEnrollmentFlowUIPresenter_suggestRestoreForAccountWithUsername_personaID_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = DMCLocalizedString();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __101__DMCBYODEnrollmentFlowUIPresenter_suggestRestoreForAccountWithUsername_personaID_completionHandler___block_invoke_4;
  v4[3] = &unk_278EE7808;
  v5 = *(a1 + 40);
  [v2 presentOKAlertWithTitle:0 message:v3 action:v4];
}

- (void)requestDebuggingApplicationsInstallation:(id)a3 requiredEntitlements:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  [(DMCBYODEnrollmentFlowUIPresenter *)self setESSODebuggingApplicationInstallationCompletionHandler:a5];
  v10 = objc_opt_new();
  [(DMCBYODEnrollmentFlowUIPresenter *)self setInstalledDebuggingApplication:v10];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__DMCBYODEnrollmentFlowUIPresenter_requestDebuggingApplicationsInstallation_requiredEntitlements_completionHandler___block_invoke;
  block[3] = &unk_278EE7420;
  block[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __116__DMCBYODEnrollmentFlowUIPresenter_requestDebuggingApplicationsInstallation_requiredEntitlements_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[DMCEnrollmentDebuggingESSOApplicationInstallationViewController alloc] initWithDelegate:*(a1 + 32) appBundleIDs:*(a1 + 40) requiredEntitlements:*(a1 + 48)];
  [*(a1 + 32) pushViewController:v2 foundationViewController:v2];
}

- (void)showInstallingEnrollmentProfileScene
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__DMCBYODEnrollmentFlowUIPresenter_showInstallingEnrollmentProfileScene__block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__DMCBYODEnrollmentFlowUIPresenter_showInstallingEnrollmentProfileScene__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityController];
  if (!v2 || (v3 = v2, [*(a1 + 32) navigationController], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "topViewController"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "activityController"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v3, v5 != v6))
  {
    v7 = *(a1 + 32);
    v9 = DMCLocalizedStringByDevice();
    v8 = DMCLocalizedStringByDevice();
    [v7 presentActivityPageWithTitle:v9 text:v8 showButtomView:0];
  }
}

- (void)showEnrollmentCompletionScene
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DMCBYODEnrollmentFlowUIPresenter_showEnrollmentCompletionScene__block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __65__DMCBYODEnrollmentFlowUIPresenter_showEnrollmentCompletionScene__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__DMCBYODEnrollmentFlowUIPresenter_showEnrollmentCompletionScene__block_invoke_2;
  v3[3] = &unk_278EE74C0;
  v3[4] = v1;
  return [v1 dismissWithCompletion:v3];
}

void __65__DMCBYODEnrollmentFlowUIPresenter_showEnrollmentCompletionScene__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *MEMORY[0x277D24D20];
  v3 = *MEMORY[0x277D24D70];
  v4 = [*(a1 + 32) managedAppleID];
  v7 = [v1 stringWithFormat:@"%@?%@=%@", v2, v3, v4];

  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  [v5 openSensitiveURL:v6 withOptions:0];
}

- (void)showEnrollmentFailure:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__DMCBYODEnrollmentFlowUIPresenter_showEnrollmentFailure___block_invoke;
  v6[3] = &unk_278EE77B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__DMCBYODEnrollmentFlowUIPresenter_showEnrollmentFailure___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActivityController:0];
  v2 = [*(a1 + 40) localizedDescription];
  if ([MEMORY[0x277D034F8] isAppleInternal])
  {
    v3 = [*(a1 + 40) underlyingErrors];

    if (v3)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [*(a1 + 40) underlyingErrors];
      v6 = [v5 firstObject];
      v7 = [v6 description];
      v8 = [v4 stringWithFormat:@"%@\n\n[Internal only]\n%@", v2, v7];

      v2 = v8;
    }
  }

  v9 = [*(a1 + 32) navigationController];
  [v9 blockNavigationPush];

  objc_initWeak(&location, *(a1 + 32));
  v10 = *(a1 + 32);
  v11 = DMCLocalizedString();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__DMCBYODEnrollmentFlowUIPresenter_showEnrollmentFailure___block_invoke_2;
  v12[3] = &unk_278EE7880;
  objc_copyWeak(&v13, &location);
  [v10 presentOKAlertWithTitle:v11 message:v2 action:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __58__DMCBYODEnrollmentFlowUIPresenter_showEnrollmentFailure___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  [v1 unblockNavigationPush];
}

- (void)dismissEnrollmentScene
{
  v3 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameViewController];
  if ([v3 inProgress])
  {
    v4 = [(DMCEnrollmentFlowUIPresenterBase *)self navigationController];
    v5 = [v4 topViewController];
    v6 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameViewController];

    if (v5 == v6)
    {
      v7 = dispatch_time(0, 700000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__DMCBYODEnrollmentFlowUIPresenter_dismissEnrollmentScene__block_invoke;
      block[3] = &unk_278EE74C0;
      block[4] = self;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
      return;
    }
  }

  else
  {
  }

  [(DMCEnrollmentFlowUIPresenterBase *)self dismissWithCompletion:0];
}

- (void)authenticationViewController:(id)a3 didReceiveUsername:(id)a4
{
  v5 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__DMCBYODEnrollmentFlowUIPresenter_authenticationViewController_didReceiveUsername___block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v6 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameCompletionHandler];

  if (v6)
  {
    v7 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameCompletionHandler];
    (v7)[2](v7, v5, 0);

    [(DMCBYODEnrollmentFlowUIPresenter *)self setUsernameCompletionHandler:0];
  }
}

void __84__DMCBYODEnrollmentFlowUIPresenter_authenticationViewController_didReceiveUsername___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) usernameViewController];
  [v1 setInProgress:1];
}

- (void)authenticationViewController:(id)a3 didReceivePassword:(id)a4 forUsername:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(DMCBYODEnrollmentFlowUIPresenter *)self authenticationCompletionHandler];

  if (v9)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__DMCBYODEnrollmentFlowUIPresenter_authenticationViewController_didReceivePassword_forUsername___block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v10 = [(DMCBYODEnrollmentFlowUIPresenter *)self authenticationActionHandler];
    (v10)[2](v10, v8, v7);
  }

  v11 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameAndPasswordCompletionHandler];

  if (v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __96__DMCBYODEnrollmentFlowUIPresenter_authenticationViewController_didReceivePassword_forUsername___block_invoke_2;
    v13[3] = &unk_278EE74C0;
    v13[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v13);
    v12 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameAndPasswordCompletionHandler];
    (v12)[2](v12, v8, v7, 0);

    [(DMCBYODEnrollmentFlowUIPresenter *)self setUsernameAndPasswordCompletionHandler:0];
  }
}

void __96__DMCBYODEnrollmentFlowUIPresenter_authenticationViewController_didReceivePassword_forUsername___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) usernameViewController];
  [v1 setInProgress:1];
}

void __96__DMCBYODEnrollmentFlowUIPresenter_authenticationViewController_didReceivePassword_forUsername___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) usernameViewController];
  [v1 setInProgress:1];
}

- (void)authenticationViewControllerDidCancel:(id)a3
{
  v4 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameCompletionHandler];

  if (v4)
  {
    v5 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameCompletionHandler];
    v5[2](v5, 0, 1);

    [(DMCBYODEnrollmentFlowUIPresenter *)self setUsernameCompletionHandler:0];
  }

  else
  {
    if ([(DMCBYODEnrollmentFlowUIPresenter *)self hasDoneAuthServices])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__DMCBYODEnrollmentFlowUIPresenter_authenticationViewControllerDidCancel___block_invoke;
      block[3] = &unk_278EE74C0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v6 = [(DMCBYODEnrollmentFlowUIPresenter *)self authenticationCompletionHandler];

      if (v6)
      {
        v7 = [(DMCBYODEnrollmentFlowUIPresenter *)self authenticationCompletionHandler];
        v7[2](v7, 0, 1, 0);

        [(DMCBYODEnrollmentFlowUIPresenter *)self setAuthenticationCompletionHandler:0];
      }
    }

    v8 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameAndPasswordCompletionHandler];

    if (v8)
    {
      v9 = [(DMCBYODEnrollmentFlowUIPresenter *)self usernameAndPasswordCompletionHandler];
      v9[2](v9, 0, 0, 1);

      [(DMCBYODEnrollmentFlowUIPresenter *)self setUsernameAndPasswordCompletionHandler:0];
    }
  }
}

uint64_t __74__DMCBYODEnrollmentFlowUIPresenter_authenticationViewControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__DMCBYODEnrollmentFlowUIPresenter_authenticationViewControllerDidCancel___block_invoke_2;
  v3[3] = &unk_278EE78A8;
  v3[4] = v1;
  return [v1 _showCancelAlertForMAID:0 actionHandler:v3];
}

void __74__DMCBYODEnrollmentFlowUIPresenter_authenticationViewControllerDidCancel___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) authenticationCompletionHandler];

    if (v3)
    {
      v4 = [*(a1 + 32) authenticationCompletionHandler];
      v4[2](v4, 0, 1, 0);

      v5 = *(a1 + 32);

      [v5 setAuthenticationCompletionHandler:0];
    }
  }
}

- (void)consentViewController:(id)a3 didReceiveUserAction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(DMCBYODEnrollmentFlowUIPresenter *)self consentCompletionHandler];

    if (v7)
    {
      [v6 setInProgress:1];
      v8 = [(DMCBYODEnrollmentFlowUIPresenter *)self consentCompletionHandler];
      v8[2](v8, 1);

      [(DMCBYODEnrollmentFlowUIPresenter *)self setConsentCompletionHandler:0];
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__DMCBYODEnrollmentFlowUIPresenter_consentViewController_didReceiveUserAction___block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __79__DMCBYODEnrollmentFlowUIPresenter_consentViewController_didReceiveUserAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 managedAppleID];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__DMCBYODEnrollmentFlowUIPresenter_consentViewController_didReceiveUserAction___block_invoke_2;
  v4[3] = &unk_278EE78A8;
  v4[4] = *(a1 + 32);
  [v2 _showCancelAlertForMAID:v3 actionHandler:v4];
}

void __79__DMCBYODEnrollmentFlowUIPresenter_consentViewController_didReceiveUserAction___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) consentCompletionHandler];

    if (v3)
    {
      v4 = [*(a1 + 32) consentCompletionHandler];
      v4[2](v4, 0);

      v5 = *(a1 + 32);

      [v5 setConsentCompletionHandler:0];
    }
  }
}

- (void)questionsController:(id)a3 didFinishWithResponses:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__DMCBYODEnrollmentFlowUIPresenter_questionsController_didFinishWithResponses___block_invoke;
  block[3] = &unk_278EE74C0;
  v8 = v6;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v9 = [(DMCBYODEnrollmentFlowUIPresenter *)self userInputCompletionHandler];

  if (v9)
  {
    v10 = [(DMCBYODEnrollmentFlowUIPresenter *)self userInputCompletionHandler];
    (v10)[2](v10, v7, [v7 count] == 0);
  }
}

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  v3 = [(DMCEnrollmentFlowUIPresenterBase *)self baseViewController];
  v4 = [v3 view];
  v5 = [v4 window];

  return v5;
}

- (void)iCloudPromotionViewController:(id)a3 didReceiveUserAction:(BOOL)a4
{
  if (a4)
  {
    v5 = [(DMCBYODEnrollmentFlowUIPresenter *)self iCloudPromotionCompletionHandler];

    if (v5)
    {
      v6 = [(DMCBYODEnrollmentFlowUIPresenter *)self iCloudPromotionCompletionHandler];
      v6[2](v6, 1);

      [(DMCBYODEnrollmentFlowUIPresenter *)self setICloudPromotionCompletionHandler:0];
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__DMCBYODEnrollmentFlowUIPresenter_iCloudPromotionViewController_didReceiveUserAction___block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __87__DMCBYODEnrollmentFlowUIPresenter_iCloudPromotionViewController_didReceiveUserAction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__DMCBYODEnrollmentFlowUIPresenter_iCloudPromotionViewController_didReceiveUserAction___block_invoke_2;
  v3[3] = &unk_278EE78A8;
  v3[4] = v1;
  return [v1 _showCancelAlertForMAID:0 actionHandler:v3];
}

void __87__DMCBYODEnrollmentFlowUIPresenter_iCloudPromotionViewController_didReceiveUserAction___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) iCloudPromotionCompletionHandler];

    if (v3)
    {
      v4 = [*(a1 + 32) iCloudPromotionCompletionHandler];
      v4[2](v4, 0);

      v5 = *(a1 + 32);

      [v5 setICloudPromotionCompletionHandler:0];
    }
  }
}

- (void)doesUserWantToRestoreSnapshot:(id)a3 withConflictingApps:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__DMCBYODEnrollmentFlowUIPresenter_doesUserWantToRestoreSnapshot_withConflictingApps_completion___block_invoke;
  v17[3] = &unk_278EE77E0;
  v18 = v10;
  v11 = v10;
  [(DMCBYODEnrollmentFlowUIPresenter *)self setRestoreCompletionHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__DMCBYODEnrollmentFlowUIPresenter_doesUserWantToRestoreSnapshot_withConflictingApps_completion___block_invoke_2;
  v14[3] = &unk_278EE7420;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

uint64_t __97__DMCBYODEnrollmentFlowUIPresenter_doesUserWantToRestoreSnapshot_withConflictingApps_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void __97__DMCBYODEnrollmentFlowUIPresenter_doesUserWantToRestoreSnapshot_withConflictingApps_completion___block_invoke_2(uint64_t a1)
{
  v2 = [DMCEnrollmentFlowRestoreViewController alloc];
  v3 = *(a1 + 32);
  v4 = [v3 managedAppleID];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) allObjects];
  v7 = [(DMCEnrollmentFlowRestoreViewController *)v2 initWithDelegate:v3 managedAppleID:v4 restoreSnapshot:v5 conflictingApps:v6];

  [*(a1 + 32) pushViewController:v7];
}

- (void)restoreViewController:(id)a3 didReceiveUserAction:(BOOL)a4
{
  v4 = a4;
  v6 = [(DMCBYODEnrollmentFlowUIPresenter *)self restoreCompletionHandler];

  if (v6)
  {
    v7 = [(DMCBYODEnrollmentFlowUIPresenter *)self restoreCompletionHandler];
    v7[2](v7, v4);

    [(DMCBYODEnrollmentFlowUIPresenter *)self setRestoreCompletionHandler:0];
  }
}

- (void)_handleApplicationInstallationViewControllerDelegate:(id)a3 didReceiveUserAction:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __116__DMCBYODEnrollmentFlowUIPresenter__handleApplicationInstallationViewControllerDelegate_didReceiveUserAction_error___block_invoke;
  v12[3] = &unk_278EE78D0;
  v16 = a4;
  v13 = v9;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __116__DMCBYODEnrollmentFlowUIPresenter__handleApplicationInstallationViewControllerDelegate_didReceiveUserAction_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    [*(a1 + 40) setInProgress:1];
  }

  else if (!*(a1 + 32))
  {
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __116__DMCBYODEnrollmentFlowUIPresenter__handleApplicationInstallationViewControllerDelegate_didReceiveUserAction_error___block_invoke_2;
    v10[3] = &unk_278EE78A8;
    v10[4] = v9;
    [v9 _showCancelAlertForMAID:0 actionHandler:v10];
    return;
  }

  v2 = [*(a1 + 48) ESSOApplicationInstallationCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 48) ESSOApplicationInstallationCompletionHandler];
    v3[2](v3, 0, *(a1 + 32));

    [*(a1 + 48) setESSOApplicationInstallationCompletionHandler:0];
  }

  v4 = [*(a1 + 48) ESSODebuggingApplicationInstallationCompletionHandler];

  if (v4)
  {
    v5 = [*(a1 + 48) ESSODebuggingApplicationInstallationCompletionHandler];
    v6 = [*(a1 + 48) installedDebuggingApplication];
    v7 = [v6 allObjects];
    (v5)[2](v5, 0, v7, *(a1 + 32));

    [*(a1 + 48) setESSODebuggingApplicationInstallationCompletionHandler:0];
    v8 = *(a1 + 48);

    [v8 setInstalledDebuggingApplication:0];
  }
}

void __116__DMCBYODEnrollmentFlowUIPresenter__handleApplicationInstallationViewControllerDelegate_didReceiveUserAction_error___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) ESSOApplicationInstallationCompletionHandler];

    if (v3)
    {
      v4 = [*(a1 + 32) ESSOApplicationInstallationCompletionHandler];
      v4[2](v4, 1, 0);

      [*(a1 + 32) setESSOApplicationInstallationCompletionHandler:0];
    }

    v5 = [*(a1 + 32) ESSODebuggingApplicationInstallationCompletionHandler];

    if (v5)
    {
      v6 = [*(a1 + 32) ESSODebuggingApplicationInstallationCompletionHandler];
      v7 = [*(a1 + 32) installedDebuggingApplication];
      v8 = [v7 allObjects];
      (v6)[2](v6, 1, v8, 0);

      [*(a1 + 32) setESSODebuggingApplicationInstallationCompletionHandler:0];
      v9 = *(a1 + 32);

      [v9 setInstalledDebuggingApplication:0];
    }
  }
}

- (void)debuggingApplicationInstallationViewController:(id)a3 didInstallApplication:(id)a4
{
  v5 = a4;
  v6 = [(DMCBYODEnrollmentFlowUIPresenter *)self installedDebuggingApplication];
  [v6 addObject:v5];
}

- (void)managementDetailsOverviewViewController:(id)a3 didReceiveUserAction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(DMCBYODEnrollmentFlowUIPresenter *)self consentCompletionHandler];

    if (v7)
    {
      [v6 setInProgress:1];
      v8 = [(DMCBYODEnrollmentFlowUIPresenter *)self consentCompletionHandler];
      v8[2](v8, 1);

      [(DMCBYODEnrollmentFlowUIPresenter *)self setConsentCompletionHandler:0];
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__DMCBYODEnrollmentFlowUIPresenter_managementDetailsOverviewViewController_didReceiveUserAction___block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __97__DMCBYODEnrollmentFlowUIPresenter_managementDetailsOverviewViewController_didReceiveUserAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 managedAppleID];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __97__DMCBYODEnrollmentFlowUIPresenter_managementDetailsOverviewViewController_didReceiveUserAction___block_invoke_2;
  v4[3] = &unk_278EE78A8;
  v4[4] = *(a1 + 32);
  [v2 _showCancelAlertForMAID:v3 actionHandler:v4];
}

void __97__DMCBYODEnrollmentFlowUIPresenter_managementDetailsOverviewViewController_didReceiveUserAction___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) consentCompletionHandler];

    if (v3)
    {
      v4 = [*(a1 + 32) consentCompletionHandler];
      v4[2](v4, 0);

      v5 = *(a1 + 32);

      [v5 setConsentCompletionHandler:0];
    }
  }
}

- (id)_fakeAppleAccountWithAuthenticationResults:(id)a3 personaID:(id)a4 store:(id)a5
{
  v7 = MEMORY[0x277CB8F30];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 alloc];
  v12 = [v8 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BA0]];

  v13 = [v11 initWithAccountType:v12];
  v14 = *MEMORY[0x277CEFFD8];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFFD8]];
  [v13 setAccountDescription:v15];

  v16 = [v10 objectForKeyedSubscript:v14];
  [v13 setUsername:v16];

  [v13 dmc_setPersonaIdentifier:v9];
  [v13 aa_setAccountClass:*MEMORY[0x277CEC680]];
  v17 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
  [v13 dmc_setAltDSID:v17];

  v18 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFF88]];
  [v13 dmc_setDSID:v18];

  v19 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFF98]];
  [v13 aa_setFirstName:v19];

  v20 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFFB8]];

  [v13 aa_setLastName:v20];
  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isManagedAppleID"];
  [v13 setAuthenticated:1];

  return v13;
}

- (id)_fakeiTunesAccountWithAuthenticationResults:(id)a3 personaID:(id)a4 store:(id)a5
{
  v7 = MEMORY[0x277CB8F30];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 alloc];
  v12 = [v8 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8D58]];

  v13 = [v11 initWithAccountType:v12];
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFFD8]];
  [v13 setUsername:v14];

  [v13 dmc_setPersonaIdentifier:v9];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
  [v13 dmc_setAltDSID:v15];

  v16 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFF98]];
  [v13 aa_setFirstName:v16];

  v17 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEFFB8]];

  [v13 aa_setLastName:v17];
  [v13 setActive:0];
  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isManagedAppleID"];
  [v13 setAuthenticated:1];

  return v13;
}

- (void)requestUserConsentForMigrationWithPendingCloudConfig:(id)a3 originalEnrollmentType:(unint64_t)a4 isMandatory:(BOOL)a5 deadline:(id)a6 completionHandler:(id)a7
{
  [(DMCBYODEnrollmentFlowUIPresenter *)self setMigrationConsentCompletionHandler:a7, a4, a5, a6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __157__DMCBYODEnrollmentFlowUIPresenter_Test__requestUserConsentForMigrationWithPendingCloudConfig_originalEnrollmentType_isMandatory_deadline_completionHandler___block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __157__DMCBYODEnrollmentFlowUIPresenter_Test__requestUserConsentForMigrationWithPendingCloudConfig_originalEnrollmentType_isMandatory_deadline_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[DMCEnrollmentTestInformationViewController alloc] initWithDelegate:*(a1 + 32) title:@"Do Migration?" subtitle:@"Migration will unenroll the device from the current MDM server and re-enroll it with a new one specified in the cloud configuration." description:0];
  [*(a1 + 32) pushViewController:v2];
}

- (void)requestUserConsentWithCloudConfig:(id)a3 completionHandler:(id)a4
{
  [(DMCBYODEnrollmentFlowUIPresenter *)self setConsentCompletionHandler:a4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__DMCBYODEnrollmentFlowUIPresenter_Test__requestUserConsentWithCloudConfig_completionHandler___block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __94__DMCBYODEnrollmentFlowUIPresenter_Test__requestUserConsentWithCloudConfig_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[DMCEnrollmentConsentViewController alloc] initWithDelegate:*(a1 + 32) username:@"Cloud Config Test" profile:0 enrollmentType:9];
  [*(a1 + 32) pushViewController:v2];
}

- (void)fetchEnrollmentProfileWithWebAuthURL:(id)a3 machineInfo:(id)a4 anchorCertificateRefs:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(DMCBYODEnrollmentFlowUIPresenter *)self setWebURLCompletionHandler:a6];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __131__DMCBYODEnrollmentFlowUIPresenter_Test__fetchEnrollmentProfileWithWebAuthURL_machineInfo_anchorCertificateRefs_completionHandler___block_invoke;
  v16[3] = &unk_278EE73D0;
  v17 = v10;
  v18 = self;
  v19 = v11;
  v20 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

void __131__DMCBYODEnrollmentFlowUIPresenter_Test__fetchEnrollmentProfileWithWebAuthURL_machineInfo_anchorCertificateRefs_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(DMCTestWebViewController);
  [(DMCTestWebViewController *)v2 setWebURL:*(a1 + 32)];
  [(DMCTestWebViewController *)v2 setDelegate:*(a1 + 40)];
  [(DMCTestWebViewController *)v2 setMachineInfo:*(a1 + 48)];
  [(DMCTestWebViewController *)v2 setAnchorCerts:*(a1 + 56)];
  [*(a1 + 40) pushViewController:v2];
}

- (void)requestMDMUsernameAndPasswordWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__DMCBYODEnrollmentFlowUIPresenter_Test__requestMDMUsernameAndPasswordWithCompletionHandler___block_invoke;
  v6[3] = &unk_278EE7830;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __93__DMCBYODEnrollmentFlowUIPresenter_Test__requestMDMUsernameAndPasswordWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) usernameViewController];

  if (!v2)
  {
    v3 = objc_opt_new();
    [v3 setDelegate:*(a1 + 32)];
    [*(a1 + 32) setUsernameViewController:v3];
  }

  [*(a1 + 32) setUsernameAndPasswordCompletionHandler:*(a1 + 40)];
  v4 = [*(a1 + 32) usernameViewController];
  [v4 setUsernameEditable:1];

  v5 = [*(a1 + 32) usernameViewController];
  [v5 setUsername:@"user"];

  v6 = [*(a1 + 32) usernameViewController];
  [v6 showPasswordField:1];

  v7 = [*(a1 + 32) usernameViewController];
  [v7 setInProgress:0];

  v8 = [*(a1 + 32) usernameViewController];
  [v8 setStyle:0];

  [*(a1 + 32) setHasDoneAuthServices:0];
  v9 = *(a1 + 32);
  v10 = [v9 usernameViewController];
  [v9 pushViewController:v10];
}

- (void)webAuthCanceled:(id)a3
{
  v6 = a3;
  v4 = [(DMCBYODEnrollmentFlowUIPresenter *)self webURLCompletionHandler];

  if (v4)
  {
    v5 = [(DMCBYODEnrollmentFlowUIPresenter *)self webURLCompletionHandler];
    (v5)[2](v5, 0, v6 == 0);

    [(DMCBYODEnrollmentFlowUIPresenter *)self setWebURLCompletionHandler:0];
  }
}

- (void)receivedProfile:(id)a3
{
  v6 = a3;
  v4 = [(DMCBYODEnrollmentFlowUIPresenter *)self webURLCompletionHandler];

  if (v4)
  {
    v5 = [(DMCBYODEnrollmentFlowUIPresenter *)self webURLCompletionHandler];
    (v5)[2](v5, v6, 0, 0);

    [(DMCBYODEnrollmentFlowUIPresenter *)self setWebURLCompletionHandler:0];
  }
}

- (void)testInformationViewController:(id)a3 didReceiveUserAction:(BOOL)a4
{
  v4 = a4;
  v6 = [(DMCBYODEnrollmentFlowUIPresenter *)self migrationConsentCompletionHandler];

  if (v6)
  {
    v7 = [(DMCBYODEnrollmentFlowUIPresenter *)self migrationConsentCompletionHandler];
    v7[2](v7, v4);

    [(DMCBYODEnrollmentFlowUIPresenter *)self setMigrationConsentCompletionHandler:0];
  }
}

@end