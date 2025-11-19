@interface FAAgeRangeAttestationOnboardingHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_invokeAgeAttestationOnboardingWithCompletion:(id)a3;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation FAAgeRangeAttestationOnboardingHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"family:ageOnboarding"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v5 = [v4 isEqualToString:@"family:ageOnboarding"];

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Received age attestation onboarding hook", v9, 2u);
  }

  [(FAAgeRangeAttestationOnboardingHook *)self _invokeAgeAttestationOnboardingWithCompletion:v7];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Received age attestation onboarding hook", v7, 2u);
  }

  [(FAAgeRangeAttestationOnboardingHook *)self _invokeAgeAttestationOnboardingWithCompletion:v5];
}

- (void)_invokeAgeAttestationOnboardingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "invokeAgeAttestationOnboardingWithCompletion", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained presentationContextForHook:self];

  v8 = objc_alloc_init(MEMORY[0x277D08210]);
  v9 = [MEMORY[0x277CB8F48] defaultStore];
  v10 = [v9 aa_primaryAppleAccount];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 aa_altDSID];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__FAAgeRangeAttestationOnboardingHook__invokeAgeAttestationOnboardingWithCompletion___block_invoke;
    v14[3] = &unk_2782F2A10;
    v15 = v4;
    [v8 setAgeRangeSharingGlobalStateForEntryPoint:3 viewController:v7 altDSID:v12 completionHandler:v14];

    v13 = v15;
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1004];
    (*(v4 + 2))(v4, 0, v13);
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