@interface FALaunchServicesHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_launchWithURLString:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation FALaunchServicesHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"remoteAction:launchApp"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"remoteAction:launchApp"];

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [a4 objectForKeyedSubscript:@"remoteLaunchUrl"];
  [(FALaunchServicesHook *)self _launchWithURLString:v9 completion:v8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [a3 clientInfo];
  v7 = [v8 objectForKeyedSubscript:@"remoteLaunchUrl"];
  [(FALaunchServicesHook *)self _launchWithURLString:v7 completion:v6];
}

- (void)_launchWithURLString:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Recieved URL to launch: %@", &v11, 0xCu);
  }

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v9 openSensitiveURL:v8 withOptions:0];

  v6[2](v6, 1, 0);
  v10 = *MEMORY[0x277D85DE8];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end