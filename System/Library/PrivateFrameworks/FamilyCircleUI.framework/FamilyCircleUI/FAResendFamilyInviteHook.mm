@interface FAResendFamilyInviteHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)loadResendRequestWithAttributes:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation FAResendFamilyInviteHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"family:resendInvite"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:resendInvite"];

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 attributes];
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "process element attributes %@", &v14, 0xCu);
  }

  v12 = [v8 attributes];
  [(FAResendFamilyInviteHook *)self loadResendRequestWithAttributes:v12 completion:v9];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 clientInfo];
  [(FAResendFamilyInviteHook *)self loadResendRequestWithAttributes:v7 completion:v6];
}

- (void)loadResendRequestWithAttributes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:@"resendInviteUrl"];
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  v9 = [WeakRetained presentationContextForHook:self];

  v10 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeInviteViaMessages"];
  if (v7)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
    [(FACircleContext *)v10 setUrlForContext:v11];
    v12 = [[FACircleStateController alloc] initWithPresenter:v9];
    [(FACircleStateController *)v12 setPresentationType:2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__FAResendFamilyInviteHook_loadResendRequestWithAttributes_completion___block_invoke;
    v13[3] = &unk_2782F2E88;
    v14 = v6;
    [(FACircleStateController *)v12 performWithContext:v10 completion:v13];
  }
}

void __71__FAResendFamilyInviteHook_loadResendRequestWithAttributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 error];
      v7 = [v6 localizedDescription];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Error from state controller for resend family invite %@", &v11, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = [v3 error];
    (*(v8 + 16))(v8, 1, v9);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end