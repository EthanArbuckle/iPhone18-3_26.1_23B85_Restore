@interface FALaunchScreenTimeSetupHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (FALaunchScreenTimeSetupHook)init;
- (FALaunchScreenTimeSetupHook)initWithAccountStore:(id)store screenTimeRequestProvider:(id)provider childSetupControllerProvider:(id)controllerProvider familyFetcher:(id)fetcher;
- (RUIServerHookDelegate)delegate;
- (id)_extractAgeFromObjectModel:(id)model;
- (id)_extractNameFromObjectModel:(id)model;
- (id)extractDSIDFromObjectModel:(id)model;
- (void)_enableScreentimeWithIntroductionModel:(id)model account:(id)account dsidNum:(id)num completion:(id)completion;
- (void)_launchScreenTimeSettings;
- (void)_launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:(id)d inObjectModel:(id)model isExpressSetup:(BOOL)setup withCompletion:(id)completion;
- (void)_refreshFamilyCircleIfNeededForMemberDSID:(id)d completionHandler:(id)handler;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FALaunchScreenTimeSetupHook

- (FALaunchScreenTimeSetupHook)init
{
  v3 = objc_alloc_init(FASTChildSetupControllerProvider);
  v4 = objc_alloc_init(MEMORY[0x277D082F0]);
  v5 = objc_alloc_init(_TtC14FamilyCircleUI21FAFamilyCircleFetcher);
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v7 = [(FALaunchScreenTimeSetupHook *)self initWithAccountStore:defaultStore screenTimeRequestProvider:v4 childSetupControllerProvider:v3 familyFetcher:v5];

  return v7;
}

- (FALaunchScreenTimeSetupHook)initWithAccountStore:(id)store screenTimeRequestProvider:(id)provider childSetupControllerProvider:(id)controllerProvider familyFetcher:(id)fetcher
{
  storeCopy = store;
  providerCopy = provider;
  controllerProviderCopy = controllerProvider;
  fetcherCopy = fetcher;
  v18.receiver = self;
  v18.super_class = FALaunchScreenTimeSetupHook;
  v15 = [(FALaunchScreenTimeSetupHook *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountStore, store);
    objc_storeStrong(&v16->_screenTimeRequestProvider, provider);
    objc_storeStrong(&v16->_childSetupControllerProvider, controllerProvider);
    objc_storeStrong(&v16->_familyFetcher, fetcher);
  }

  return v16;
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:launchScreenTimeSetup"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v5 = [v4 isEqualToString:@"family:launchScreenTimeSetup"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  attributesCopy = attributes;
  v13 = [(FALaunchScreenTimeSetupHook *)self extractDSIDFromObjectModel:modelCopy];
  v12 = [attributesCopy objectForKeyedSubscript:@"isExpressSetup"];

  -[FALaunchScreenTimeSetupHook _launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:inObjectModel:isExpressSetup:withCompletion:](self, "_launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:inObjectModel:isExpressSetup:withCompletion:", v13, modelCopy, [v12 BOOLValue], completionCopy);
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  v10 = [(FALaunchScreenTimeSetupHook *)self extractDSIDFromObjectModel:modelCopy];
  clientInfo = [modelCopy clientInfo];
  v9 = [clientInfo objectForKeyedSubscript:@"isExpressSetup"];
  -[FALaunchScreenTimeSetupHook _launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:inObjectModel:isExpressSetup:withCompletion:](self, "_launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:inObjectModel:isExpressSetup:withCompletion:", v10, modelCopy, [v9 BOOLValue], completionCopy);
}

- (void)_launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:(id)d inObjectModel:(id)model isExpressSetup:(BOOL)setup withCompletion:(id)completion
{
  dCopy = d;
  modelCopy = model;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __129__FALaunchScreenTimeSetupHook__launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID_inObjectModel_isExpressSetup_withCompletion___block_invoke;
  v16[3] = &unk_2782F3908;
  v16[4] = self;
  v17 = dCopy;
  setupCopy = setup;
  v18 = modelCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = modelCopy;
  v15 = dCopy;
  [(FALaunchScreenTimeSetupHook *)self _refreshFamilyCircleIfNeededForMemberDSID:v15 completionHandler:v16];
}

void __129__FALaunchScreenTimeSetupHook__launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID_inObjectModel_isExpressSetup_withCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__FALaunchScreenTimeSetupHook__launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID_inObjectModel_isExpressSetup_withCompletion___block_invoke_2;
  block[3] = &unk_2782F38E0;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v10 = *(a1 + 64);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Screen Time Model for %@", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_57;
    v16[3] = &unk_2782F3930;
    v17 = *(a1 + 56);
    v12 = v5;
    v13 = *(a1 + 40);
    v18 = v12;
    v19 = v13;
    v20 = *(a1 + 64);
    [v10 _enableScreentimeWithIntroductionModel:v12 account:v9 dsidNum:v11 completion:v16];
  }

  else
  {
    if (v7)
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Screen Time should not be enabled, don't save state. %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_57(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [*(a1 + 32) clientInfo];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v8 = v7;

  [v8 setObject:*(a1 + 40) forKeyedSubscript:@"stIntroductionModel"];
  [*(a1 + 32) setClientInfo:v8];
  v9 = [*(a1 + 48) completionAction];

  if (v9)
  {
    v10 = [*(a1 + 48) completionAction];
    v11 = [v8 copy];
    (v10)[2](v10, v11);
  }

  (*(*(a1 + 56) + 16))();
}

void __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_64(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _FALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_64_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138478083;
    v9 = v6;
    v10 = 2112;
    v11 = 0;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "conclude screentime flow for %{private}@ %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_refreshFamilyCircleIfNeededForMemberDSID:(id)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v18 = dCopy;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Starting family refresh if needed for dsid: %{private}@", buf, 0xCu);
  }

  familyFetcher = [(FALaunchScreenTimeSetupHook *)self familyFetcher];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke;
  v13[3] = &unk_2782F39A8;
  v14 = dCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  [familyFetcher fetchCachedFamilyCircleWithQualityOfService:25 completionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_cold_1(a1);
    }
  }

  v8 = [v5 memberForDSID:*(a1 + 32)];
  v9 = _FALogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      *buf = 138477827;
      v24 = v11;
      _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Family member exist locally dsid: %{private}@", buf, 0xCu);
    }

    v12 = [*(a1 + 40) screenTimeRequestProvider];
    [v12 forceRefreshScreenTimeForDSID:*(a1 + 32) completionHandler:*(a1 + 48)];
  }

  else
  {
    if (v10)
    {
      v13 = *(a1 + 32);
      *buf = 138477827;
      v24 = v13;
      _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Family member with dsid: %{private}@ does not exist locally. Force fetching...", buf, 0xCu);
    }

    v14 = [*(a1 + 40) familyFetcher];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_67;
    v19[3] = &unk_2782F39A8;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v20 = v15;
    v21 = v16;
    v22 = v17;
    [v14 forceFetchFamilyCircleWithQualityOfService:25 completionHandler:v19];

    v12 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_67_cold_1(a1);
    }
  }

  v8 = [v5 memberForDSID:*(a1 + 32)];

  if (v8)
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v13 = 138477827;
      v14 = v10;
      _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Found member for %{private}@ after force fetching", &v13, 0xCu);
    }
  }

  v11 = [*(a1 + 40) screenTimeRequestProvider];
  [v11 forceRefreshScreenTimeForDSID:*(a1 + 32) completionHandler:*(a1 + 48)];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_enableScreentimeWithIntroductionModel:(id)model account:(id)account dsidNum:(id)num completion:(id)completion
{
  numCopy = num;
  completionCopy = completion;
  v12 = MEMORY[0x277D082F8];
  modelCopy = model;
  v14 = [v12 alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v16 = [v14 initWithIntroductionModel:modelCopy date:date dsid:numCopy];

  v17 = _FALogSystem();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (account)
  {
    if (v18)
    {
      [FALaunchScreenTimeSetupHook _enableScreentimeWithIntroductionModel:account:dsidNum:completion:];
    }

    screenTimeRequestProvider = [(FALaunchScreenTimeSetupHook *)self screenTimeRequestProvider];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71;
    v24[3] = &unk_2782F3A20;
    v24[4] = self;
    v25 = numCopy;
    v26 = completionCopy;
    v20 = completionCopy;
    [screenTimeRequestProvider enableScreenTimeSettingsForDSID:numCopy screentimeObject:v16 completionHandler:v24];

    v21 = v25;
  }

  else
  {
    if (v18)
    {
      [FALaunchScreenTimeSetupHook _enableScreentimeWithIntroductionModel:account:dsidNum:completion:];
    }

    screenTimeRequestProvider2 = [(FALaunchScreenTimeSetupHook *)self screenTimeRequestProvider];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke;
    v27[3] = &unk_2782F39D0;
    v28 = numCopy;
    v29 = v16;
    v30 = completionCopy;
    v23 = completionCopy;
    [screenTimeRequestProvider2 cacheScreenTimeSettingToDiskWithDSID:numCopy screentimeObject:v29 completionHandler:v27];

    v21 = v28;
  }
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _FALogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_cold_2(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 BOOLValue];
  v8 = _FALogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71_cold_2();
    }

    v10 = [*(a1 + 32) screenTimeRequestProvider];
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) ephemeralAuthResults];
    v13 = [v5 BOOLValue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_72;
    v14[3] = &unk_2782F39F8;
    v16 = *(a1 + 48);
    v15 = v5;
    [v10 updateScreenTimeServerFlagSettingsForDSID:v11 ephemeralAuthResults:v12 enabled:v13 completionHandler:v14];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71_cold_1();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v5 != 0, v6);
  }
}

- (id)_extractAgeFromObjectModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:@"dependentAge"];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v6 = [v5 numberFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_extractNameFromObjectModel:(id)model
{
  modelCopy = model;
  clientInfo = [modelCopy clientInfo];
  v5 = [clientInfo objectForKeyedSubscript:@"dependentFirstName"];

  clientInfo2 = [modelCopy clientInfo];

  v7 = [clientInfo2 objectForKeyedSubscript:@"dependentLastName"];

  v8 = objc_alloc_init(MEMORY[0x277CCAC00]);
  [v8 setGivenName:v5];
  [v8 setFamilyName:v7];
  v9 = objc_alloc_init(MEMORY[0x277CCAC08]);
  [v9 setStyle:1];
  v10 = [v9 stringFromPersonNameComponents:v8];
  if ([v10 length])
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  v12 = v11;

  return v11;
}

- (id)extractDSIDFromObjectModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:@"dsid"];

  v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
  [v5 setLocale:v6];

  v7 = [v5 numberFromString:v4];

  return v7;
}

- (void)_launchScreenTimeSettings
{
  v4 = 0;
  v2 = [MEMORY[0x277D08358] urlDestinationTo:8 error:&v4];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_launchScreenTimeSetupForUser:(void *)a1 inObjectModel:(NSObject *)a2 isExpressSetup:withCompletion:.cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 aa_altDSID];
  v5 = 136315395;
  v6 = "[FALaunchScreenTimeSetupHook _launchScreenTimeSetupForUser:inObjectModel:isExpressSetup:withCompletion:]";
  v7 = 2113;
  v8 = v3;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "%s - running on guardian's device %{private}@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_launchScreenTimeSetupForUser:inObjectModel:isExpressSetup:withCompletion:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3(&dword_21BB35000, v0, v1, "%s - running on child device %@, %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_launchScreenTimeSetupForUser:inObjectModel:isExpressSetup:withCompletion:.cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3(&dword_21BB35000, v0, v1, "%s - running on device with no icloud account %@, %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_64_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 138478083;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_21BB35000, v2, v3, "Error setting up screen time for %{private}@ %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 138478083;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_21BB35000, v2, v3, "Error fetching cached family for %{private}@ %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_67_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 138478083;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_21BB35000, v2, v3, "Error force fetching family for %{private}@ %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = 138412546;
  OUTLINED_FUNCTION_0_3();
  v7 = v3;
  _os_log_error_impl(&dword_21BB35000, v4, OS_LOG_TYPE_ERROR, "FALaunchScreenTimeSetupHook failed to save screentime data %@, %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_3();
  v4 = v0;
  _os_log_error_impl(&dword_21BB35000, v1, OS_LOG_TYPE_ERROR, "FALaunchScreenTimeSetupHook %s: Error Setting up Screentime: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end