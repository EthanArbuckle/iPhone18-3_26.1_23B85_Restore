@interface NPFamilyEligibilityProvider
- (NPFamilyEligibilityProvider)init;
- (id)accountsForAccountManager:(id)a3;
- (id)requestFamilyEligibility;
@end

@implementation NPFamilyEligibilityProvider

- (NPFamilyEligibilityProvider)init
{
  v14.receiver = self;
  v14.super_class = NPFamilyEligibilityProvider;
  v2 = [(NPFamilyEligibilityProvider *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6959A48] defaultStore];
    store = v2->_store;
    v2->_store = v3;

    v5 = objc_alloc(MEMORY[0x1E698C250]);
    v6 = [(NPFamilyEligibilityProvider *)v2 store];
    v7 = [v5 initWithAccountStore:v6];
    accountManager = v2->_accountManager;
    v2->_accountManager = v7;

    [(AIDAAccountManager *)v2->_accountManager setDelegate:v2];
    v9 = objc_alloc(MEMORY[0x1E699C0A0]);
    v10 = [(NPFamilyEligibilityProvider *)v2 accountManager];
    v11 = [v9 initWithAccountManager:v10];
    eligibilityRequester = v2->_eligibilityRequester;
    v2->_eligibilityRequester = v11;
  }

  return v2;
}

- (id)requestFamilyEligibility
{
  v3 = objc_alloc(MEMORY[0x1E69B68F8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__NPFamilyEligibilityProvider_requestFamilyEligibility__block_invoke;
  v6[3] = &unk_1E84CD1E8;
  v6[4] = self;
  v4 = [v3 initWithResolver:v6];

  return v4;
}

void __55__NPFamilyEligibilityProvider_requestFamilyEligibility__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E69B50F8];
  v8 = *MEMORY[0x1E69B50F8];
  if (os_log_type_enabled(*MEMORY[0x1E69B50F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D5B42000, v8, OS_LOG_TYPE_DEFAULT, "Requesting aa_primaryAppleAccount", buf, 2u);
  }

  v9 = [*(a1 + 32) accountManager];
  v10 = [v9 accountStore];
  v11 = [v10 aa_primaryAppleAccount];

  if (v11)
  {
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D5B42000, v12, OS_LOG_TYPE_DEFAULT, "Requesting Family Eligibility", buf, 2u);
    }

    v13 = [*(a1 + 32) eligibilityRequester];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__NPFamilyEligibilityProvider_requestFamilyEligibility__block_invoke_37;
    v17[3] = &unk_1E84CD1C0;
    v17[4] = *(a1 + 32);
    v18 = v5;
    v14 = v5;
    [v13 requestFamilyEligibilityWithCompletion:v17];

    v15 = v18;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55__NPFamilyEligibilityProvider_requestFamilyEligibility__block_invoke_34;
    v19[3] = &unk_1E84CD198;
    v20 = v5;
    v16 = v5;
    __55__NPFamilyEligibilityProvider_requestFamilyEligibility__block_invoke_34(v19);
    v15 = v20;
  }
}

void __55__NPFamilyEligibilityProvider_requestFamilyEligibility__block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithBool:0];
  (*(v1 + 16))(v1, v2);
}

void __55__NPFamilyEligibilityProvider_requestFamilyEligibility__block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x1E69B50F8];
  if (os_log_type_enabled(*MEMORY[0x1E69B50F8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = [v5 eligible];
    v11 = @"NO";
    *v15 = 138413058;
    *&v15[4] = v9;
    *&v15[12] = 2114;
    if (v10)
    {
      v11 = @"YES";
    }

    *&v15[14] = v5;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1D5B42000, v8, OS_LOG_TYPE_DEFAULT, "%@ requestFamilyEligibility completed with resonse:%{public}@  eligible: %{public}@ error:%{public}@", v15, 0x2Au);
  }

  v12 = v5 && ([v5 eligible] & 1) != 0;
  v13 = *(a1 + 40);
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{v12, *v15}];
  (*(v13 + 16))(v13, v14);
}

- (id)accountsForAccountManager:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 accountStore];

  v7 = [v6 aa_primaryAppleAccount];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E698C218]];
  }

  v8 = [v5 copy];

  return v8;
}

@end