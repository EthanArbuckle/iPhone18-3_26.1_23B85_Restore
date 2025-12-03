@interface FAAgeRangeAttestationOnboardingHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_invokeAgeAttestationOnboardingWithCompletion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FAAgeRangeAttestationOnboardingHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:ageOnboarding"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v5 = [v4 isEqualToString:@"family:ageOnboarding"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Received age attestation onboarding hook", v9, 2u);
  }

  [(FAAgeRangeAttestationOnboardingHook *)self _invokeAgeAttestationOnboardingWithCompletion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Received age attestation onboarding hook", v7, 2u);
  }

  [(FAAgeRangeAttestationOnboardingHook *)self _invokeAgeAttestationOnboardingWithCompletion:completionCopy];
}

- (void)_invokeAgeAttestationOnboardingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "invokeAgeAttestationOnboardingWithCompletion", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained presentationContextForHook:self];

  v8 = objc_alloc_init(MEMORY[0x277D08210]);
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v11 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__FAAgeRangeAttestationOnboardingHook__invokeAgeAttestationOnboardingWithCompletion___block_invoke;
    v14[3] = &unk_2782F2A10;
    v15 = completionCopy;
    [v8 setAgeRangeSharingGlobalStateForEntryPoint:3 viewController:v7 altDSID:aa_altDSID completionHandler:v14];

    v13 = v15;
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1004];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __85__FAAgeRangeAttestationOnboardingHook__invokeAgeAttestationOnboardingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "AgeRangeSharingGlobalState completed with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end