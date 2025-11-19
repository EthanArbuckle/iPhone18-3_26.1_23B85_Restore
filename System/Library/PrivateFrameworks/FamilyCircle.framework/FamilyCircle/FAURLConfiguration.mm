@interface FAURLConfiguration
- (id)URLForEndpoint:(id)a3;
- (void)URLForEndpoint:(id)a3 withCompletion:(id)a4;
- (void)fetchAAURLConfigurationWithCompletion:(id)a3;
@end

@implementation FAURLConfiguration

- (void)URLForEndpoint:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1B70B0000, v8, OS_LOG_TYPE_DEFAULT, "Desired enpoint %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__FAURLConfiguration_URLForEndpoint_withCompletion___block_invoke;
  v12[3] = &unk_1E7CA4770;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(FAURLConfiguration *)self fetchAAURLConfigurationWithCompletion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __52__FAURLConfiguration_URLForEndpoint_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 urlForEndpoint:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  if (!(v6 | v7))
  {
    v6 = [MEMORY[0x1E696ABC0] fa_familyErrorWithCode:-1017];
  }

  if (v6)
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__FAURLConfiguration_URLForEndpoint_withCompletion___block_invoke_cold_1(v6, v8);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)URLForEndpoint:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E6985DF8]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__FAURLConfiguration_URLForEndpoint___block_invoke;
  v9[3] = &unk_1E7CA4798;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (void)fetchAAURLConfigurationWithCompletion:(id)a3
{
  v3 = MEMORY[0x1E698B968];
  v4 = a3;
  v5 = [v3 sharedServer];
  [v5 configurationWithCompletion:v4];
}

void __52__FAURLConfiguration_URLForEndpoint_withCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Error getting url configuration %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end