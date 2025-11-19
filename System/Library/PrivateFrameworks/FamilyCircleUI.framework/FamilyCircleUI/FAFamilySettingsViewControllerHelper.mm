@interface FAFamilySettingsViewControllerHelper
- (BOOL)loadRemoteUIWithRequest:(id)a3 type:(int64_t)a4 completion:(id)a5;
- (BOOL)loadRemoteUIWithRequest:(id)a3 url:(id)a4 type:(int64_t)a5 completion:(id)a6;
- (FAFamilySettingsViewControllerHelper)initWithAppleAccount:(id)a3 grandSlamSigner:(id)a4 familyPictureStore:(id)a5 accountManager:(id)a6;
- (FAFamilySettingsViewControllerHelperDelegate)delegate;
- (UINavigationController)navigationController;
- (id)_appleIDGrandSlamSigner;
- (id)_itunesAccount;
- (id)_requestConfigurator;
- (id)remoteUIController:(id)a3 createPageWithName:(id)a4 attributes:(id)a5;
- (void)_fetchFamilyPaymentInfoWithCompletion:(id)a3;
- (void)_setFresnoRemoteUIDelgate:(id)a3;
- (void)dealloc;
- (void)loadMemberDetailsForFamilyMember:(id)a3 completion:(id)a4;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 didRemoveObjectModel:(id)a4;
- (void)remoteUIController:(id)a3 willLoadRequest:(id)a4;
@end

@implementation FAFamilySettingsViewControllerHelper

- (FAFamilySettingsViewControllerHelper)initWithAppleAccount:(id)a3 grandSlamSigner:(id)a4 familyPictureStore:(id)a5 accountManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = FAFamilySettingsViewControllerHelper;
  v15 = [(FAFamilySettingsViewControllerHelper *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_iCloudGrandSlamSigner, a4);
    objc_storeStrong(&v16->_appleAccount, a3);
    objc_storeStrong(&v16->_accountManager, a6);
    v17 = [(AAGrandSlamSigner *)v16->_iCloudGrandSlamSigner accountStore];
    accountStore = v16->_accountStore;
    v16->_accountStore = v17;

    v19 = [(AAGrandSlamSigner *)v16->_iCloudGrandSlamSigner grandSlamAccount];
    grandSlamAccount = v16->_grandSlamAccount;
    v16->_grandSlamAccount = v19;

    objc_storeStrong(&v16->_familyPictureStore, a5);
    v21 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkingQueue = v16->_networkingQueue;
    v16->_networkingQueue = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objectModelDecorators = v16->_objectModelDecorators;
    v16->_objectModelDecorators = v23;
  }

  return v16;
}

- (id)_appleIDGrandSlamSigner
{
  appleIDGrandSlamSigner = self->_appleIDGrandSlamSigner;
  if (!appleIDGrandSlamSigner)
  {
    v4 = objc_alloc(MEMORY[0x277CEC808]);
    v5 = [v4 initWithAccountStore:self->_accountStore grandSlamAccount:self->_grandSlamAccount appTokenID:*MEMORY[0x277CEC6E8]];
    v6 = self->_appleIDGrandSlamSigner;
    self->_appleIDGrandSlamSigner = v5;

    appleIDGrandSlamSigner = self->_appleIDGrandSlamSigner;
  }

  return appleIDGrandSlamSigner;
}

- (id)_requestConfigurator
{
  requestConfigurator = self->_requestConfigurator;
  if (!requestConfigurator)
  {
    v4 = [objc_alloc(MEMORY[0x277D082E8]) initWithAccount:self->_appleAccount];
    v5 = self->_requestConfigurator;
    self->_requestConfigurator = v4;

    requestConfigurator = self->_requestConfigurator;
  }

  return requestConfigurator;
}

- (id)_itunesAccount
{
  itunesAccount = self->_itunesAccount;
  if (!itunesAccount)
  {
    v4 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    v5 = [v4 ams_activeiTunesAccount];
    v6 = self->_itunesAccount;
    self->_itunesAccount = v5;

    itunesAccount = self->_itunesAccount;
  }

  return itunesAccount;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_networkingQueue cancelAllOperations];
  iCloudRemoteUIController = self->_iCloudRemoteUIController;
  if (iCloudRemoteUIController)
  {
    [(AAUIRemoteUIController *)iCloudRemoteUIController setDelegate:0];
  }

  appleIDRemoteUIController = self->_appleIDRemoteUIController;
  if (appleIDRemoteUIController)
  {
    [(AAUIRemoteUIController *)appleIDRemoteUIController setDelegate:0];
  }

  v5.receiver = self;
  v5.super_class = FAFamilySettingsViewControllerHelper;
  [(FAFamilySettingsViewControllerHelper *)&v5 dealloc];
}

- (BOOL)loadRemoteUIWithRequest:(id)a3 type:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 urlRequest];
  v11 = [v10 mutableCopy];
  v12 = [v9 urlRequest];

  v13 = [v12 URL];
  LOBYTE(a4) = [(FAFamilySettingsViewControllerHelper *)self loadRemoteUIWithRequest:v11 url:v13 type:a4 completion:v8];

  return a4;
}

- (BOOL)loadRemoteUIWithRequest:(id)a3 url:(id)a4 type:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  urlBeingLoaded = self->_urlBeingLoaded;
  if (!urlBeingLoaded)
  {
    objc_storeStrong(&self->_urlBeingLoaded, a4);
    v14 = objc_alloc_init(MEMORY[0x277CECAB8]);
    if (a5 == 1)
    {
      v15 = 72;
    }

    else
    {
      if (a5 == 2)
      {
        objc_storeStrong(&self->_familyV2RemoteUIController, v14);
      }

      v15 = 64;
    }

    objc_storeStrong((&self->super.isa + v15), v14);
    v16 = objc_alloc(MEMORY[0x277CECAC0]);
    v17 = [MEMORY[0x277CECAC0] fcui_defaultFresnoServerHooks];
    v18 = [v16 initWithRemoteUIController:v14 hooks:v17];
    serverUIHookHandler = self->_serverUIHookHandler;
    self->_serverUIHookHandler = v18;

    if (a5 == 2)
    {
      [(FAFamilySettingsViewControllerHelper *)self _setFresnoRemoteUIDelgate:v14];
    }

    else
    {
      [v14 setDelegate:self];
    }

    v20 = [(FAFamilySettingsViewControllerHelper *)self navigationController];
    [v14 setNavigationController:v20];

    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__FAFamilySettingsViewControllerHelper_loadRemoteUIWithRequest_url_type_completion___block_invoke;
    v22[3] = &unk_2782F3CB8;
    objc_copyWeak(&v24, &location);
    v23 = v12;
    [v14 loadRequest:v10 completion:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return urlBeingLoaded == 0;
}

void __84__FAFamilySettingsViewControllerHelper_loadRemoteUIWithRequest_url_type_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__FAFamilySettingsViewControllerHelper_loadRemoteUIWithRequest_url_type_completion___block_invoke_2;
  v7[3] = &unk_2782F3C90;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  objc_destroyWeak(&v10);
}

void __84__FAFamilySettingsViewControllerHelper_loadRemoteUIWithRequest_url_type_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained[24];
  WeakRetained[24] = 0;

  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v9[0] = 67109378;
    v9[1] = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Loading remote UI for family member details result: %d. Error: %@", v9, 0x12u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadMemberDetailsForFamilyMember:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_memberBeingViewed, a3);
  v9 = [(FAFamilyRequest *)[FAFamilyMemberDetailsUIRequest alloc] initWithGrandSlamSigner:self->_iCloudGrandSlamSigner];
  v10 = [(FAFamilyMember *)self->_memberBeingViewed dsid];
  v11 = [v10 integerValue];

  memberBeingViewed = self->_memberBeingViewed;
  if (v11 < 1)
  {
    v13 = [(FAFamilyMember *)memberBeingViewed inviteEmail];
    [(FAFamilyMemberDetailsUIRequest *)v9 setMemberEmail:v13];
  }

  else
  {
    v13 = [(FAFamilyMember *)memberBeingViewed dsid];
    [(FAFamilyMemberDetailsUIRequest *)v9 setMemberDSID:v13];
  }

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__FAFamilySettingsViewControllerHelper_loadMemberDetailsForFamilyMember_completion___block_invoke;
  v15[3] = &unk_2782F3CE0;
  objc_copyWeak(&v17, &location);
  v14 = v8;
  v16 = v14;
  [(FAFamilyMemberDetailsUIRequest *)v9 URLRequestWithCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __84__FAFamilySettingsViewControllerHelper_loadMemberDetailsForFamilyMember_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 mutableCopy];
  v5 = [v3 URL];

  [WeakRetained loadRemoteUIWithRequest:v4 url:v5 type:0 completion:*(a1 + 32)];
}

- (void)_setFresnoRemoteUIDelgate:(id)a3
{
  v4 = a3;
  v7 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeFamilySettings"];
  v5 = [[FACircleRemoteUIDelegate alloc] initWithContext:v7 serverHookHandler:self->_serverUIHookHandler pictureStore:self->_familyPictureStore];
  familyRemoteUIDelegate = self->_familyRemoteUIDelegate;
  self->_familyRemoteUIDelegate = v5;

  [v4 setDelegate:self->_familyRemoteUIDelegate];
}

- (void)_fetchFamilyPaymentInfoWithCompletion:(id)a3
{
  v4 = a3;
  self->_fetchingPaymentInfo = 1;
  v5 = [(AAFamilyRequest *)[FAFamilyPaymentInfoRequest alloc] initWithGrandSlamSigner:self->_iCloudGrandSlamSigner];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __78__FAFamilySettingsViewControllerHelper__fetchFamilyPaymentInfoWithCompletion___block_invoke;
  v13 = &unk_2782F3BC8;
  v14 = self;
  v15 = v4;
  v6 = v4;
  v7 = _Block_copy(&v10);
  v8 = objc_alloc(MEMORY[0x277CEC840]);
  v9 = [v8 initWithRequest:v5 handler:{v7, v10, v11, v12, v13, v14}];
  [(NSOperationQueue *)self->_networkingQueue addOperation:v9];
}

void __78__FAFamilySettingsViewControllerHelper__fetchFamilyPaymentInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 statusCode] == 401)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Family payment info request returned 401. We need to re-auth...", buf, 2u);
    }

    [*(*(a1 + 32) + 112) renewCredentialsForAccount:*(*(a1 + 32) + 120) force:1 reason:0 completion:&__block_literal_global_12];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__FAFamilySettingsViewControllerHelper__fetchFamilyPaymentInfoWithCompletion___block_invoke_75;
  block[3] = &unk_2782F3BA0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __78__FAFamilySettingsViewControllerHelper__fetchFamilyPaymentInfoWithCompletion___block_invoke_73(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials for family payment info request: %ld. Error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __78__FAFamilySettingsViewControllerHelper__fetchFamilyPaymentInfoWithCompletion___block_invoke_75(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 0;
  v2 = [*(a1 + 40) creditCard];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  *(*(a1 + 32) + 104) = 0;
  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)remoteUIController:(id)a3 willLoadRequest:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_currentRemoteUIRequest, a4);
  v8 = [v7 URL];
  v9 = [v8 isEqual:self->_urlBeingLoaded];

  if ((v9 & 1) == 0)
  {
    v10 = [v7 URL];
    v11 = [v10 absoluteString];
    v12 = [v11 containsString:@"prefs:itunes"];

    if (v12)
    {
      v13 = [(AAUIRemoteUIController *)v6 dismissObjectModelsAnimated:1 completion:0];
      v14 = dispatch_time(0, 500000000);
      dispatch_after(v14, MEMORY[0x277D85CD0], &__block_literal_global_82);
    }

    else
    {
      if (self->_appleIDRemoteUIController == v6)
      {
        v15 = [(FAFamilySettingsViewControllerHelper *)self _appleIDGrandSlamSigner];
      }

      else if (self->_iCloudRemoteUIController == v6)
      {
        v15 = self->_iCloudGrandSlamSigner;
        [v7 aa_addLoggedInAppleIDHeaderWithAccount:self->_appleAccount];
      }

      else
      {
        v15 = 0;
      }

      [(AAGrandSlamSigner *)v15 signURLRequest:v7 isUserInitiated:1];
      [v7 aa_addBasicAuthorizationHeaderWithAccount:self->_appleAccount preferUsingPassword:0];
      v16 = [MEMORY[0x277CEC7B8] clientInfoHeader];
      [v7 setValue:v16 forHTTPHeaderField:@"X-MMe-Client-Info"];

      v17 = [MEMORY[0x277CBEAF8] currentLocale];
      v18 = [v17 objectForKey:*MEMORY[0x277CBE690]];
      v19 = [v18 uppercaseString];
      [v7 setValue:v19 forHTTPHeaderField:@"X-MMe-Country"];

      v20 = [(FAFamilySettingsViewControllerHelper *)self _itunesAccount];
      v21 = [v20 ams_DSID];
      v22 = [v21 stringValue];

      if ([v22 length])
      {
        [v7 aa_addDeviceProvisioningInfoHeadersWithDSID:v22];
      }

      else
      {
        v23 = _FALogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          itunesAccount = self->_itunesAccount;
          v27 = 138412290;
          v28 = itunesAccount;
          _os_log_impl(&dword_21BB35000, v23, OS_LOG_TYPE_DEFAULT, "No DSID for iTunes account ivar: %@", &v27, 0xCu);
        }
      }

      [v7 aa_addDeviceInternalDevHeaderIfEnabled];
      [v7 aa_addDeviceIDHeader];
      [v7 aa_addLocationSharingAllowedHeader];
      if ([(FAFamilyMember *)self->_memberBeingViewed isMe])
      {
        v25 = [(FAFamilySettingsViewControllerHelper *)self _itunesAccount];
        [v7 fam_addiTunesHeadersWithAccount:v25];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __75__FAFamilySettingsViewControllerHelper_remoteUIController_willLoadRequest___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277D08358] urlDestinationTo:7 error:&v2];
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 statusCode] == 401)
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "BML request returned 401. We need to re-auth...", buf, 2u);
    }

    [(ACAccountStore *)self->_accountStore renewCredentialsForAccount:self->_appleAccount force:1 reason:0 completion:&__block_literal_global_94];
  }

  else
  {
    if ([v7 statusCode] == 200)
    {
      v9 = [v7 allHeaderFields];
      v10 = [v9 valueForKey:@"X-Apple-Family-Changed"];

      if (v10)
      {
        v11 = _FALogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v10;
          _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "Family properties changed while we're in BML: %@", buf, 0xCu);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__FAFamilySettingsViewControllerHelper_remoteUIController_didReceiveHTTPResponse___block_invoke_95;
        block[3] = &unk_2782F3190;
        block[4] = self;
        v28 = v10;
        v29 = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      v12 = [v7 allHeaderFields];
      v13 = [v12 valueForKey:@"X-Apple-Family-Subscription-Changed"];

      if ([v13 BOOLValue])
      {
        v14 = _FALogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v13;
          _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, "Family subscription properties changed: %@", buf, 0xCu);
        }

        dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_99);
      }

      v15 = [v7 allHeaderFields];
      v16 = [v15 valueForKey:@"X-MMe-Setup-Family-Linked-ITunes-AppleID"];

      if (v16)
      {
        v17 = _FALogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v16;
          _os_log_impl(&dword_21BB35000, v17, OS_LOG_TYPE_DEFAULT, "Found updated linked Apple Account account header: %@", buf, 0xCu);
        }

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __82__FAFamilySettingsViewControllerHelper_remoteUIController_didReceiveHTTPResponse___block_invoke_101;
        v25[3] = &unk_2782F2AF8;
        v25[4] = self;
        v26 = v16;
        dispatch_async(MEMORY[0x277D85CD0], v25);
      }

      if ([(NSMutableURLRequest *)self->_currentRemoteUIRequest aa_addDeviceProvisioningInfoHeadersWithDSIDFromReponse:v7])
      {
        v18 = _FALogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21BB35000, v18, OS_LOG_TYPE_DEFAULT, "Device is provisioned... Reissuing request...", buf, 2u);
        }

        v19 = [v6 loadCompletion];
        currentRemoteUIRequest = self->_currentRemoteUIRequest;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __82__FAFamilySettingsViewControllerHelper_remoteUIController_didReceiveHTTPResponse___block_invoke_102;
        v23[3] = &unk_2782F2FC0;
        v24 = v19;
        v21 = v19;
        [v6 loadRequest:currentRemoteUIRequest completion:v23];
      }
    }

    else
    {
      v10 = [(FAFamilySettingsViewControllerHelper *)self delegate];
      [v10 familySettingsHelperShowConnectivityAlert:self];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __82__FAFamilySettingsViewControllerHelper_remoteUIController_didReceiveHTTPResponse___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials to continue BML flow: %ld. Error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __82__FAFamilySettingsViewControllerHelper_remoteUIController_didReceiveHTTPResponse___block_invoke_95(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 familySettingsHelper:*(a1 + 32) handleFamilyStatusChange:*(a1 + 40) affectedFamilyMember:*(*(a1 + 32) + 32)];

  if (([*(a1 + 40) isEqualToString:@"MemberDeleted"] & 1) != 0 || objc_msgSend(*(a1 + 40), "isEqualToString:", @"InviteDeleted"))
  {
    v3 = [*(*(a1 + 32) + 64) popObjectModelAnimated:1];
  }

  v4 = MEMORY[0x277D08250];
  v5 = *(a1 + 48);

  return [v4 handleURLResponse:v5];
}

void __82__FAFamilySettingsViewControllerHelper_remoteUIController_didReceiveHTTPResponse___block_invoke_101(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 familySettingsHelper:*(a1 + 32) updateMemberDetailsPageWithLinkedAppleID:*(a1 + 40)];
}

void __82__FAFamilySettingsViewControllerHelper_remoteUIController_didReceiveHTTPResponse___block_invoke_102(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Failed to load Family Settings remote UI: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  if (*a5 == 1)
  {
    [(FAFamilySettingsViewControllerHelper *)self _handleObjectModelChangeForController:v8 objectModel:v9 isModal:0];
  }

  v10 = [v9 clientInfo];
  v11 = [v10 objectForKey:@"paymentMethodUpdated"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __94__FAFamilySettingsViewControllerHelper_remoteUIController_didReceiveObjectModel_actionSignal___block_invoke;
    v18[3] = &unk_2782F29E8;
    v18[4] = self;
    [(FAFamilySettingsViewControllerHelper *)self _fetchFamilyPaymentInfoWithCompletion:v18];
    if (*a5 == 4)
    {
      v13 = [v9 allPages];
      v14 = [v13 count];

      if (v14)
      {
        v15 = [(FAFamilySettingsViewControllerHelper *)self navigationController];
        v16 = [v15 viewControllers];

        v17 = [v16 indexOfObject:self];
        if (v17 == [v16 count] - 2)
        {
          [v9 setPages:0];
        }
      }
    }
  }
}

void __94__FAFamilySettingsViewControllerHelper_remoteUIController_didReceiveObjectModel_actionSignal___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 familySettingsHelperDidUpdatePaymentInfo:*(a1 + 32)];
}

- (id)remoteUIController:(id)a3 createPageWithName:(id)a4 attributes:(id)a5
{
  v5 = objc_alloc_init(MEMORY[0x277CECAB0]);

  return v5;
}

- (void)remoteUIController:(id)a3 didRemoveObjectModel:(id)a4
{
  v8 = a4;
  v5 = [v8 sourceURL];

  if (v5)
  {
    objectModelDecorators = self->_objectModelDecorators;
    v7 = [v8 sourceURL];
    [(NSMutableDictionary *)objectModelDecorators removeObjectForKey:v7];
  }
}

- (FAFamilySettingsViewControllerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end