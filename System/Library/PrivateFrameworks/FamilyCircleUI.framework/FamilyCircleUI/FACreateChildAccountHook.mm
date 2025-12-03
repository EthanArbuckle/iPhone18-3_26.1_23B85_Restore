@interface FACreateChildAccountHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_handleCreateAccountBasedOnKey:(id)key completion:(id)completion;
- (void)createChildControllerDidPresentInitialViewController:(id)controller;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FACreateChildAccountHook

- (BOOL)shouldMatchElement:(id)element
{
  elementCopy = element;
  name = [elementCopy name];
  if ([name isEqualToString:@"family:createChildAccount"])
  {
    v5 = 1;
  }

  else
  {
    name2 = [elementCopy name];
    v5 = [name2 isEqualToString:@"family:createTeenAccount"];
  }

  return v5;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  clientInfo = [modelCopy clientInfo];
  v5 = *MEMORY[0x277D46250];
  v6 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277D46250]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clientInfo2 = [modelCopy clientInfo];
    v8 = [clientInfo2 objectForKeyedSubscript:v5];
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

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  name = [element name];
  [(FACreateChildAccountHook *)self _handleCreateAccountBasedOnKey:name completion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  clientInfo = [modelCopy clientInfo];
  v8 = *MEMORY[0x277D46250];
  v9 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277D46250]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clientInfo2 = [modelCopy clientInfo];
    v11 = [clientInfo2 objectForKeyedSubscript:v8];
  }

  else
  {
    v11 = 0;
  }

  [(FACreateChildAccountHook *)self _handleCreateAccountBasedOnKey:v11 completion:completionCopy];
}

- (void)_handleCreateAccountBasedOnKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "handling child account creation (via rui hook)", buf, 2u);
  }

  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  if (aa_primaryAppleAccount)
  {
    v11 = [[FACreateChildController alloc] initWithAppleAccount:aa_primaryAppleAccount];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = [WeakRetained presentationContextForHook:self];
    [(FACreateChildController *)v11 setPresentingViewController:v13];

    [(RUIObjectModel *)self->_objectModel startActivityIndicator];
    [(FACreateChildController *)v11 setDelegate:self];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __70__FACreateChildAccountHook__handleCreateAccountBasedOnKey_completion___block_invoke;
    v20 = &unk_2782F3D08;
    v14 = keyCopy;
    v21 = v14;
    v22 = completionCopy;
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

  if (completionCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1004];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)createChildControllerDidPresentInitialViewController:(id)controller
{
  objectModel = [(FACreateChildAccountHook *)self objectModel];
  [objectModel stopActivityIndicator];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end