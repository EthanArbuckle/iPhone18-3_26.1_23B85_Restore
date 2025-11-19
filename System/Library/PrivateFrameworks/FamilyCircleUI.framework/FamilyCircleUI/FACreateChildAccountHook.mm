@interface FACreateChildAccountHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_handleCreateAccountBasedOnKey:(id)a3 completion:(id)a4;
- (void)createChildControllerDidPresentInitialViewController:(id)a3;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation FACreateChildAccountHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  if ([v4 isEqualToString:@"family:createChildAccount"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 name];
    v5 = [v6 isEqualToString:@"family:createTeenAccount"];
  }

  return v5;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = a3;
  v4 = [v3 clientInfo];
  v5 = *MEMORY[0x277D46250];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D46250]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v3 clientInfo];
    v8 = [v7 objectForKeyedSubscript:v5];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 isEqualToString:@"family:createChildAccount"])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 isEqualToString:@"family:createTeenAccount"];
  }

  return v9;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [a3 name];
  [(FACreateChildAccountHook *)self _handleCreateAccountBasedOnKey:v9 completion:v8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 clientInfo];
  v8 = *MEMORY[0x277D46250];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D46250]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v12 clientInfo];
    v11 = [v10 objectForKeyedSubscript:v8];
  }

  else
  {
    v11 = 0;
  }

  [(FACreateChildAccountHook *)self _handleCreateAccountBasedOnKey:v11 completion:v6];
}

- (void)_handleCreateAccountBasedOnKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "handling child account creation (via rui hook)", buf, 2u);
  }

  v9 = [MEMORY[0x277CB8F48] defaultStore];
  v10 = [v9 aa_primaryAppleAccount];
  if (v10)
  {
    v11 = [[FACreateChildController alloc] initWithAppleAccount:v10];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = [WeakRetained presentationContextForHook:self];
    [(FACreateChildController *)v11 setPresentingViewController:v13];

    [(RUIObjectModel *)self->_objectModel startActivityIndicator];
    [(FACreateChildController *)v11 setDelegate:self];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __70__FACreateChildAccountHook__handleCreateAccountBasedOnKey_completion___block_invoke;
    v20 = &unk_2782F3D08;
    v14 = v6;
    v21 = v14;
    v22 = v7;
    v15 = _Block_copy(&v17);
    if ([v14 isEqualToString:{@"family:createChildAccount", v17, v18, v19, v20}])
    {
      [(FACreateChildController *)v11 createChildAccountWithCompletion:v15];
    }

    else if ([v14 isEqualToString:@"family:createTeenAccount"])
    {
      [(FACreateChildController *)v11 createTeenAccountWithCompletion:v15];
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1003];
      v15[2](v15, 0, v16);
    }

    goto LABEL_12;
  }

  if (v7)
  {
    v11 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1004];
    (*(v7 + 2))(v7, 0, v11);
LABEL_12:
  }
}

void __70__FACreateChildAccountHook__handleCreateAccountBasedOnKey_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v11 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "child (%@) account creation (via rui hook) completed with success: %@, error: %@", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)createChildControllerDidPresentInitialViewController:(id)a3
{
  v3 = [(FACreateChildAccountHook *)self objectModel];
  [v3 stopActivityIndicator];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end