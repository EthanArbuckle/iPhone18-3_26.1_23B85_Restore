@interface FAFamilyEligibilityRequester
- (FAFamilyEligibilityRequester)init;
- (FAFamilyEligibilityRequester)initWithAccountManager:(id)manager;
- (id)_appleAccount;
- (id)_grandSlamSigner;
- (void)requestFamilyEligibilityWithCompletion:(id)completion;
@end

@implementation FAFamilyEligibilityRequester

- (FAFamilyEligibilityRequester)init
{
  [(FAFamilyEligibilityRequester *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FAFamilyEligibilityRequester)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = FAFamilyEligibilityRequester;
  v6 = [(FAFamilyEligibilityRequester *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
    v7->_allowsAuthenticationPrompt = 0;
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkActivityQueue = v7->_networkActivityQueue;
    v7->_networkActivityQueue = v8;

    v10 = v7->_networkActivityQueue;
    v11 = dispatch_get_global_queue(25, 0);
    [(NSOperationQueue *)v10 setUnderlyingQueue:v11];
  }

  return v7;
}

- (void)requestFamilyEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke;
  aBlock[3] = &unk_2782F2B38;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_2;
  v22[3] = &unk_2782F2B88;
  v6 = completionCopy;
  v23 = v6;
  v7 = _Block_copy(v22);
  _appleAccount = [(FAFamilyEligibilityRequester *)self _appleAccount];

  if (_appleAccount)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_35;
    v20[3] = &unk_2782F2BB0;
    v9 = v7;
    v21 = v9;
    v10 = _Block_copy(v20);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_37;
    v16[3] = &unk_2782F2C28;
    v16[4] = self;
    v11 = v5;
    v17 = v11;
    v18 = v10;
    v19 = v9;
    v12 = v10;
    v13 = _Block_copy(v16);
    (*(v11 + 2))(v11, v13);

    v14 = v21;
  }

  else
  {
    v15 = _FALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FAFamilyEligibilityRequester requestFamilyEligibilityWithCompletion:v15];
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1004 userInfo:0];
    (*(v7 + 2))(v7, 0, v14);
  }
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEC7E8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) _grandSlamSigner];
  v10 = [v5 initWithGrandSlamSigner:v6];

  v7 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];
  [v10 setITunesAccount:v8];

  v9 = [objc_alloc(MEMORY[0x277CEC840]) initWithRequest:v10 handler:v4];
  [*(*(a1 + 32) + 24) addOperation:v9];
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_3;
  block[3] = &unk_2782F2B60;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Eligibility Callback", v7, 2u);
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = [v3 error];
    (*(v5 + 16))(v5, v3, v6);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1002 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_37(id *a1, void *a2)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 statusCode] == 401)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Family eligibility check request returned 401. We need to re-auth...", buf, 2u);
    }

    v19[0] = *MEMORY[0x277CB90A0];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[4], "allowsAuthenticationPrompt")}];
    v20[0] = v5;
    v19[1] = *MEMORY[0x277CB9098];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a1[4], "allowsAuthenticationPrompt") ^ 1}];
    v20[1] = v6;
    v19[2] = *MEMORY[0x277CB9090];
    v18 = *MEMORY[0x277CEC6F0];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v20[2] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v9 = [a1[4] _accountStore];
    v10 = [a1[4] _appleAccount];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_41;
    v12[3] = &unk_2782F2C00;
    v14 = a1[5];
    v15 = a1[6];
    v16 = a1[7];
    v13 = v3;
    [v9 renewCredentialsForAccount:v10 options:v8 completion:v12];
  }

  else
  {
    (*(a1[6] + 2))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_41(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem();
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
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_42;
    v9[3] = &unk_2782F2BD8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_grandSlamSigner
{
  grandSlamSigner = self->_grandSlamSigner;
  if (!grandSlamSigner)
  {
    v4 = [(AIDAAccountManager *)self->_accountManager aidaAccountForService:*MEMORY[0x277CED1A0]];
    v5 = objc_alloc(MEMORY[0x277CEC808]);
    accountStore = [(AIDAAccountManager *)self->_accountManager accountStore];
    v7 = [v5 initWithAccountStore:accountStore grandSlamAccount:v4 appTokenID:*MEMORY[0x277CEC6F0]];
    v8 = self->_grandSlamSigner;
    self->_grandSlamSigner = v7;

    grandSlamSigner = self->_grandSlamSigner;
  }

  return grandSlamSigner;
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

@end