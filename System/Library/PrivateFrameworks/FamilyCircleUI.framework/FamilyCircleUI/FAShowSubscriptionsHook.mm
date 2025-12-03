@interface FAShowSubscriptionsHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
@end

@implementation FAShowSubscriptionsHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:showSubscriptionsPage"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:showSubscriptionsPage"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v11 = [MEMORY[0x277CBEBC0] URLWithString:{*MEMORY[0x277CDD3D8], attributes, model, completion}];
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