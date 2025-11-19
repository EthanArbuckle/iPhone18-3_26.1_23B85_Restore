@interface FARequestConfigurator
- (BOOL)_canConnectToAPS;
- (FARequestConfigurator)initWithAccount:(id)a3;
- (id)_account;
- (id)_accountStore;
- (id)_akSigningController;
- (id)_authContext;
- (id)_familyGrandSlamSigner;
- (id)_familyTokenForGrandSlamAccount:(id)a3 andTokenID:(id)a4;
- (id)_fresnoPayloadWithAdditionalPayload:(id)a3;
- (id)_grandSlamAccount;
- (id)_grandSlamSigner;
- (id)_serviceOwnersManager;
- (void)_addAccountForServiceType:(id)a3 toPayload:(id)a4 forKey:(id)a5;
- (void)_canConnectToAPS;
- (void)_resourceLoadDelegate:(id)a3;
- (void)addFresnoHeadersToRequest:(id)a3;
- (void)addFresnoHeadersToRequest:(id)a3 withCompletion:(id)a4;
- (void)addFresnoPayloadToRequest:(id)a3 additionalPayload:(id)a4;
- (void)addPayload:(id)a3 toRequest:(id)a4;
- (void)pushTokenWithCompletion:(id)a3;
- (void)renewCredentialsWithCompletion:(id)a3;
- (void)signURLRequest:(id)a3;
- (void)updateWithEphemeralAuthResults:(id)a3;
@end

@implementation FARequestConfigurator

- (FARequestConfigurator)initWithAccount:(id)a3
{
  v5 = a3;
  v6 = [(FARequestConfigurator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v7->_attachSetupHeader = 1;
  }

  return v7;
}

- (void)updateWithEphemeralAuthResults:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FARequestConfigurator updateWithEphemeralAuthResults:v5];
  }

  [(FARequestConfigurator *)self setEphemeralAuthResults:v4];
  v6 = [[FARequestEphemeralSigner alloc] initWithEphemeralAuthResults:v4];

  [(FARequestConfigurator *)self setSigner:v6];
  v7 = [(FARequestEphemeralSigner *)v6 account];
  account = self->_account;
  self->_account = v7;
}

- (void)addFresnoHeadersToRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7CA4A88;
  aBlock[4] = self;
  v8 = v6;
  v17 = v8;
  v18 = v7;
  v9 = v7;
  v10 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_86;
  v13[3] = &unk_1E7CA4B00;
  v13[4] = self;
  v14 = v8;
  v15 = v10;
  v11 = v10;
  v12 = v8;
  [(FARequestConfigurator *)self _resourceLoadDelegate:v13];
}

void __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) ephemeralAuthResults];
  v8 = v7 != 0;

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _account];
  [v9 aa_addBasicAuthorizationHeaderWithAccount:v10 preferUsingPassword:v8];

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) _account];
  [v11 aa_addLoggedInAppleIDHeaderWithAccount:v12];

  [*(a1 + 40) aa_addLocationSharingAllowedHeader];
  [*(a1 + 40) ak_addClientTimeHeader];
  v13 = [MEMORY[0x1E695DF58] preferredLanguages];
  v14 = MEMORY[0x1E695DF58];
  v15 = [MEMORY[0x1E695DF58] _deviceLanguage];
  v34[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v17 = [v14 minimizedLanguagesFromLanguages:v16];
  v18 = [v17 componentsJoinedByString:{@", "}];

  v19 = *(a1 + 40);
  v20 = [v13 componentsJoinedByString:{@", "}];
  [v19 setValue:v20 forHTTPHeaderField:@"X-MMe-Language"];

  [*(a1 + 40) setValue:v18 forHTTPHeaderField:@"Accept-Language"];
  if (_os_feature_enabled_impl())
  {
    [*(a1 + 40) setValue:@"true" forHTTPHeaderField:@"X-iCloud-Experiment-Mode"];
  }

  v21 = [v5 aa_hexString];
  if (v21)
  {
    [*(a1 + 40) setValue:v21 forHTTPHeaderField:@"X-APNS-Push-Token"];
  }

  if (*(*(a1 + 32) + 80) == 1)
  {
    [*(a1 + 40) setValue:@"true" forHTTPHeaderField:@"X-MMe-Family-Setup"];
  }

  v22 = objc_alloc(MEMORY[0x1E695E000]);
  v23 = +[_TtC12FamilyCircle19FamilyDefaultSuites familyUserDefaultsSuite];
  v24 = [v22 initWithSuiteName:v23];

  v25 = [v24 integerForKey:@"MockInviteCode"];
  v26 = _FALogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 134217984;
    v33 = v25;
    _os_log_impl(&dword_1B70B0000, v26, OS_LOG_TYPE_DEFAULT, "MockInviteCode %ld", &v32, 0xCu);
  }

  if (v25 == 1)
  {
    [*(a1 + 40) setValue:@"sender" forHTTPHeaderField:@"X-Apple-Family-Mock-Invite"];
  }

  [*(a1 + 32) signURLRequest:*(a1 + 40)];
  v27 = _FALogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [*(a1 + 40) allHTTPHeaderFields];
    v29 = [v28 allKeys];
    v32 = 138477827;
    v33 = v29;
    _os_log_impl(&dword_1B70B0000, v27, OS_LOG_TYPE_DEFAULT, "Headers added to request %{private}@", &v32, 0xCu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    (*(v30 + 16))(v30, 1, v6);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ephemeralAuthResults];

  if (v4)
  {
    v5 = [*(a1 + 32) ephemeralAuthResults];
    [v3 updateWithAuthResults:v5];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_2;
  v7[3] = &unk_1E7CA4AD8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  [v3 signRequest:v6 withCompletionHandler:v7];
}

void __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "LoadDelegate signed request %@ - %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_88;
  v12[3] = &unk_1E7CA4AB0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v9;
  v10 = v5;
  [v8 pushTokenWithCompletion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "Push token fetched", v6, 2u);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)signURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(FARequestConfigurator *)self signer];

  if (v5)
  {
    [(FARequestConfigurator *)self signer];
  }

  else
  {
    v6 = [(FARequestConfigurator *)self _grandSlamSigner];
    [v6 signURLRequest:v4];

    [(FARequestConfigurator *)self _familyGrandSlamSigner];
  }
  v7 = ;
  [v7 signURLRequest:v4];
}

- (void)addFresnoHeadersToRequest:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "DEPRECATED - Please use completion based signer", buf, 2u);
  }

  v6 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__FARequestConfigurator_addFresnoHeadersToRequest___block_invoke;
  v8[3] = &unk_1E7CA4B28;
  v9 = v6;
  v7 = v6;
  [(FARequestConfigurator *)self addFresnoHeadersToRequest:v4 withCompletion:v8];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (BOOL)_canConnectToAPS
{
  memset(&task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 8;
  v2 = task_info(*MEMORY[0x1E69E9A60], 0xFu, &task_info_out, &task_info_outCnt);
  if (v2)
  {
    v3 = v2;
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(FARequestConfigurator *)v3 _canConnectToAPS];
    }
  }

  else
  {
    v12 = task_info_out;
    v7 = SecTaskCreateWithAuditToken(0, &v12);
    if (!v7)
    {
      v11 = _FALogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(FARequestConfigurator *)v11 _canConnectToAPS];
      }

      goto LABEL_5;
    }

    v8 = v7;
    *v12.val = 0;
    v9 = SecTaskCopyValueForEntitlement(v7, @"aps-connection-initiate", &v12);

    v4 = *v12.val;
    if (!*v12.val)
    {
      v5 = v9 != 0;
      CFRelease(v8);
      return v5;
    }

    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(FARequestConfigurator *)v4 _canConnectToAPS];
    }

    CFRelease(v8);
  }

LABEL_5:
  LOBYTE(v5) = 0;
  return v5;
}

- (void)pushTokenWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7CA4B50;
  v5 = v4;
  aBlock[4] = self;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  if (![(FARequestConfigurator *)self _canConnectToAPS])
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B70B0000, v8, OS_LOG_TYPE_DEFAULT, "Process can't connect to APS. Skipping token retrieval step", buf, 2u);
    }

    goto LABEL_7;
  }

  if (self->_pushToken)
  {
LABEL_7:
    v6[2](v6);
    goto LABEL_8;
  }

  v7 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke_94;
  v9[3] = &unk_1E7CA4770;
  v9[4] = self;
  v10 = v6;
  [v7 fetchAAURLConfigurationWithCompletion:v9];

LABEL_8:
}

void __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke_94_cold_1(v5, v7, v8);
    }
  }

  v9 = [v5 apsEnvironment];
  v10 = objc_alloc(MEMORY[0x1E698CF30]);
  v11 = [v10 initWithEnvironmentName:v9 queue:MEMORY[0x1E69E96A0]];
  v12 = [v11 publicToken];
  if (!v12)
  {
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEFAULT, "APSConnection did not give us a publicToken for environment %@", &v18, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 72);
  *(v14 + 72) = v12;
  v16 = v12;

  (*(*(a1 + 40) + 16))();
  v17 = *MEMORY[0x1E69E9840];
}

- (void)addFresnoPayloadToRequest:(id)a3 additionalPayload:(id)a4
{
  v6 = a3;
  v7 = [(FARequestConfigurator *)self _fresnoPayloadWithAdditionalPayload:a4];
  v8 = [v6 HTTPBody];

  if (v8)
  {
    v9 = MEMORY[0x1E696AE40];
    v10 = [v6 HTTPBody];
    v11 = [v9 propertyListWithData:v10 options:1 format:0 error:0];

    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v11 addEntriesFromDictionary:v7];
      v14 = [v11 copy];

      v7 = v14;
    }
  }

  v15 = _FALogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FARequestConfigurator addFresnoPayloadToRequest:v7 additionalPayload:v15];
  }

  [v6 aa_setBodyWithParameters:v7];
  [v6 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
}

- (void)addPayload:(id)a3 toRequest:(id)a4
{
  v5 = a4;
  [v5 aa_setBodyWithParameters:a3];
  [v5 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
}

- (void)renewCredentialsWithCompletion:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6959AA8];
  v18[0] = MEMORY[0x1E695E118];
  v6 = *MEMORY[0x1E6959A90];
  v17[0] = v5;
  v17[1] = v6;
  v16 = *MEMORY[0x1E698B7B8];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v18[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v9 = [(FARequestConfigurator *)self _account];
  if (v9)
  {
    v10 = [(FARequestConfigurator *)self _accountStore];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__FARequestConfigurator_renewCredentialsWithCompletion___block_invoke;
    v14[3] = &unk_1E7CA4B78;
    v15 = v4;
    [v10 renewCredentialsForAccount:v9 options:v8 completion:v14];
  }

  else
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "No primary Apple account found. Not attempting credential renwal.", v13, 2u);
    }

    (*(v4 + 2))(v4, 0, 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __56__FARequestConfigurator_renewCredentialsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials for family request configurator: %ld. Error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

- (id)_account
{
  account = self->_account;
  if (!account)
  {
    v4 = [(FARequestConfigurator *)self _accountStore];
    v5 = [v4 aa_primaryAppleAccount];
    v6 = self->_account;
    self->_account = v5;

    account = self->_account;
  }

  return account;
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = [MEMORY[0x1E6959A48] defaultStore];
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (id)_grandSlamAccount
{
  grandSlamAccount = self->_grandSlamAccount;
  if (!grandSlamAccount)
  {
    v4 = [(FARequestConfigurator *)self _accountStore];
    v5 = [(FARequestConfigurator *)self _account];
    v6 = [v4 aa_grandSlamAccountForiCloudAccount:v5];
    v7 = self->_grandSlamAccount;
    self->_grandSlamAccount = v6;

    grandSlamAccount = self->_grandSlamAccount;
  }

  return grandSlamAccount;
}

- (id)_grandSlamSigner
{
  grandSlamSigner = self->_grandSlamSigner;
  if (!grandSlamSigner)
  {
    v4 = objc_alloc(MEMORY[0x1E698B8D0]);
    v5 = [(FARequestConfigurator *)self _accountStore];
    v6 = [(FARequestConfigurator *)self _grandSlamAccount];
    v7 = [v4 initWithAccountStore:v5 grandSlamAccount:v6 appTokenID:*MEMORY[0x1E698B7C0]];
    v8 = self->_grandSlamSigner;
    self->_grandSlamSigner = v7;

    grandSlamSigner = self->_grandSlamSigner;
  }

  return grandSlamSigner;
}

- (id)_familyGrandSlamSigner
{
  familyGrandSlamSigner = self->_familyGrandSlamSigner;
  if (!familyGrandSlamSigner)
  {
    v4 = objc_alloc(MEMORY[0x1E698B8D0]);
    v5 = [(FARequestConfigurator *)self _accountStore];
    v6 = [(FARequestConfigurator *)self _grandSlamAccount];
    v7 = [v4 initWithAccountStore:v5 grandSlamAccount:v6 appTokenID:*MEMORY[0x1E698B7B8]];
    v8 = self->_familyGrandSlamSigner;
    self->_familyGrandSlamSigner = v7;

    [(AAGrandSlamSigner *)self->_familyGrandSlamSigner setHeaderFieldKey:*MEMORY[0x1E698B780]];
    familyGrandSlamSigner = self->_familyGrandSlamSigner;
  }

  return familyGrandSlamSigner;
}

- (id)_akSigningController
{
  akSigningController = self->_akSigningController;
  if (!akSigningController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DCD0]);
    v5 = self->_akSigningController;
    self->_akSigningController = v4;

    akSigningController = self->_akSigningController;
  }

  return akSigningController;
}

- (void)_resourceLoadDelegate:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__FARequestConfigurator__resourceLoadDelegate___block_invoke;
  aBlock[3] = &unk_1E7CA4B50;
  v5 = v4;
  aBlock[4] = self;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (self->_resourceLoadDelegate)
  {
    (*(v6 + 2))(v6);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v9 = [(FARequestConfigurator *)self _authContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__FARequestConfigurator__resourceLoadDelegate___block_invoke_2;
    v10[3] = &unk_1E7CA4BA0;
    v10[4] = self;
    v11 = v7;
    [v8 getServerUILoadDelegateWithContext:v9 completion:v10];
  }
}

void __47__FARequestConfigurator__resourceLoadDelegate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Received resource load delegate %@ - %@", &v12, 0x16u);
  }

  [v5 setShouldSendSigningHeaders:1];
  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  *(v8 + 64) = v5;
  v10 = v5;

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x1E69E9840];
}

- (id)_authContext
{
  authContext = self->_authContext;
  if (!authContext)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DCB8]);
    v5 = self->_authContext;
    self->_authContext = v4;

    v6 = self->_authContext;
    v7 = [(FARequestConfigurator *)self _account];
    v8 = [v7 aa_altDSID];
    [(AKAppleIDAuthenticationContext *)v6 setAltDSID:v8];

    authContext = self->_authContext;
  }

  return authContext;
}

- (id)_fresnoPayloadWithAdditionalPayload:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v5;
  if (v4)
  {
    [v5 addEntriesFromDictionary:v4];
  }

  [(FARequestConfigurator *)self _addAccountForServiceType:*MEMORY[0x1E698C218] toPayload:v6 forKey:@"iCloudAccountDetails"];
  [(FARequestConfigurator *)self _addAccountForServiceType:*MEMORY[0x1E698C238] toPayload:v6 forKey:@"iTunesAccountDetails"];

  return v6;
}

- (void)_addAccountForServiceType:(id)a3 toPayload:(id)a4 forKey:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [(FARequestConfigurator *)self signer];

  if (v12)
  {
    if (*MEMORY[0x1E698C218] == v8)
    {
      v13 = [(FARequestConfigurator *)self signer];
      v14 = [v13 accountInfoPayload];
      v15 = [v14 mutableCopy];

      v11 = v15;
    }

LABEL_16:
    v18 = [v11 copy];
    [v9 setObject:v18 forKey:v10];
    goto LABEL_17;
  }

  v16 = [(FARequestConfigurator *)self _serviceOwnersManager];
  v17 = [v16 accountForService:v8];

  v18 = _FALogSystem();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      *buf = 138412290;
      v31 = v17;
      _os_log_impl(&dword_1B70B0000, v18, OS_LOG_TYPE_DEFAULT, "Account for service - %@", buf, 0xCu);
    }

    v20 = [v17 username];
    if (v20)
    {
      [v11 setObject:v20 forKeyedSubscript:*MEMORY[0x1E698BA88]];
    }

    v21 = [(FARequestConfigurator *)self _serviceOwnersManager];
    v22 = [v21 DSIDForAccount:v17 service:v8];

    if (v22)
    {
      [v11 setObject:v22 forKeyedSubscript:*MEMORY[0x1E698BA90]];
    }

    v29 = v20;
    v23 = [(FARequestConfigurator *)self _serviceOwnersManager];
    v24 = [v23 altDSIDForAccount:v17 service:v8];

    if (v24)
    {
      [v11 setObject:v24 forKeyedSubscript:*MEMORY[0x1E698BA80]];
    }

    v25 = [(FARequestConfigurator *)self _accountStore];
    v26 = [v25 aa_grandSlamAccountForAltDSID:v24];

    v27 = [(FARequestConfigurator *)self _familyTokenForGrandSlamAccount:v26 andTokenID:*MEMORY[0x1E698B7B8]];
    if (v27)
    {
      [v11 setObject:v27 forKeyedSubscript:@"dsFamilyToken"];
    }

    goto LABEL_16;
  }

  if (v19)
  {
    *buf = 138412290;
    v31 = v8;
    _os_log_impl(&dword_1B70B0000, v18, OS_LOG_TYPE_DEFAULT, "No Account found for serviceType - %@", buf, 0xCu);
  }

LABEL_17:

  v28 = *MEMORY[0x1E69E9840];
}

- (id)_familyTokenForGrandSlamAccount:(id)a3 andTokenID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(FARequestConfigurator *)self _accountStore];
    v9 = [v8 credentialForAccount:v6 serviceID:v7];

    v10 = [v9 token];
    if (!v10)
    {
      v11 = _FALogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Error: No GS Family token.", v13, 2u);
      }
    }
  }

  else
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B70B0000, v9, OS_LOG_TYPE_DEFAULT, "No grandslam account, unable to fetch token", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_serviceOwnersManager
{
  serviceOwnersManager = self->_serviceOwnersManager;
  if (!serviceOwnersManager)
  {
    v4 = objc_alloc(MEMORY[0x1E698C268]);
    v5 = [(FARequestConfigurator *)self _accountStore];
    v6 = [v4 initWithAccountStore:v5];
    v7 = self->_serviceOwnersManager;
    self->_serviceOwnersManager = v6;

    serviceOwnersManager = self->_serviceOwnersManager;
  }

  return serviceOwnersManager;
}

- (void)_canConnectToAPS
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Error reading entitlement: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke_94_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B70B0000, log, OS_LOG_TYPE_ERROR, "Unable to fetch configuration %@ with error %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)addFresnoPayloadToRequest:(uint64_t)a1 additionalPayload:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "Body: %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end