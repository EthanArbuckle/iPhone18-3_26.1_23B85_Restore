@interface FALaunchServicesHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_launchWithURLString:(id)string completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FALaunchServicesHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"remoteAction:launchApp"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"remoteAction:launchApp"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  v9 = [attributes objectForKeyedSubscript:@"remoteLaunchUrl"];
  [(FALaunchServicesHook *)self _launchWithURLString:v9 completion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  v7 = [clientInfo objectForKeyedSubscript:@"remoteLaunchUrl"];
  [(FALaunchServicesHook *)self _launchWithURLString:v7 completion:completionCopy];
}

- (void)_launchWithURLString:(id)string completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  completionCopy = completion;
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = stringCopy;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Recieved URL to launch: %@", &v11, 0xCu);
  }

  v8 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v8 withOptions:0];

  completionCopy[2](completionCopy, 1, 0);
  v10 = *MEMORY[0x277D85DE8];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end