@interface FAShowFamilyScreenTimeHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_showFamilyScreenTimeWithCompletion:(id)completion;
@end

@implementation FAShowFamilyScreenTimeHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:showFamilyScreenTime"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:showFamilyScreenTime"];

  return v5;
}

- (void)_showFamilyScreenTimeWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained presentationContextForHook:self];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v8 = getSTFamilyCircleViewControllerProviderClass_softClass;
  v18 = getSTFamilyCircleViewControllerProviderClass_softClass;
  if (!getSTFamilyCircleViewControllerProviderClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getSTFamilyCircleViewControllerProviderClass_block_invoke;
    v14[3] = &unk_2782F2988;
    v14[4] = &v15;
    __getSTFamilyCircleViewControllerProviderClass_block_invoke(v14);
    v8 = v16[3];
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);
  v10 = [v8 familyRootViewControllerPresentedAsModal:isKindOfClass & 1];
  v11 = _FALogSystem();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "We have a screen time family view controller, presenting", v14, 2u);
    }

    [v6 showViewController:v10 sender:self];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FAShowFamilyScreenTimeHook _showFamilyScreenTimeWithCompletion:v12];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1000 userInfo:0];
    completionCopy[2](completionCopy, 0, v13);
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end