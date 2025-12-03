@interface FAResendFamilyInviteHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)loadResendRequestWithAttributes:(id)attributes completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FAResendFamilyInviteHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:resendInvite"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:resendInvite"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  completionCopy = completion;
  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    attributes = [elementCopy attributes];
    v14 = 138412290;
    v15 = attributes;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "process element attributes %@", &v14, 0xCu);
  }

  attributes2 = [elementCopy attributes];
  [(FAResendFamilyInviteHook *)self loadResendRequestWithAttributes:attributes2 completion:completionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(FAResendFamilyInviteHook *)self loadResendRequestWithAttributes:clientInfo completion:completionCopy];
}

- (void)loadResendRequestWithAttributes:(id)attributes completion:(id)completion
{
  completionCopy = completion;
  v7 = [attributes objectForKeyedSubscript:@"resendInviteUrl"];
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
    v14 = completionCopy;
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