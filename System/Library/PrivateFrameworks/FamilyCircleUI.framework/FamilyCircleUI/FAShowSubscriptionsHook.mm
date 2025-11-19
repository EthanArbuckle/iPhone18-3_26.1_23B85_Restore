@interface FAShowSubscriptionsHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
@end

@implementation FAShowSubscriptionsHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"family:showSubscriptionsPage"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:showSubscriptionsPage"];

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v11 = [MEMORY[0x277CBEBC0] URLWithString:{*MEMORY[0x277CDD3D8], a4, a5, a6}];
  v7 = [objc_alloc(MEMORY[0x277CDD340]) initWithAccountURL:v11];
  controller = self->controller;
  self->controller = v7;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained presentationContextForHook:self];

  [v10 fa_pushViaSettingsNavigation:self->controller];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end