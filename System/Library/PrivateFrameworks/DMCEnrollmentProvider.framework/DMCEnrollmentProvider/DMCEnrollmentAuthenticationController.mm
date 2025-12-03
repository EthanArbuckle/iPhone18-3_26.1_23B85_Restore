@interface DMCEnrollmentAuthenticationController
- (void)authenticateWithAuthenticationResults:(id)results ephemeral:(BOOL)ephemeral requireAppleMAID:(BOOL)d presentingViewController:(id)controller completionHandler:(id)handler;
- (void)authenticateWithUsername:(id)username password:(id)password ephemeral:(BOOL)ephemeral requireAppleMAID:(BOOL)d presentingViewController:(id)controller completionHandler:(id)handler;
- (void)fetchAuthenticationModeForUsername:(id)username requireAppleMAID:(BOOL)d completionHandler:(id)handler;
@end

@implementation DMCEnrollmentAuthenticationController

- (void)fetchAuthenticationModeForUsername:(id)username requireAppleMAID:(BOOL)d completionHandler:(id)handler
{
  dCopy = d;
  usernameCopy = username;
  handlerCopy = handler;
  simulatedMDMAccountDrivenEnrollmentAuthenticationResults = [MEMORY[0x277D03500] simulatedMDMAccountDrivenEnrollmentAuthenticationResults];

  if (simulatedMDMAccountDrivenEnrollmentAuthenticationResults)
  {
    v10 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__DMCEnrollmentAuthenticationController_fetchAuthenticationModeForUsername_requireAppleMAID_completionHandler___block_invoke;
    block[3] = &unk_278EE7808;
    v14 = handlerCopy;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    [v11 setUsername:usernameCopy];
    [v11 setIsEphemeral:1];
    if (dCopy && ([MEMORY[0x277D03500] allowAnyMAIDToSignIn] & 1) == 0)
    {
      [v11 setAppProvidedContext:*MEMORY[0x277D246A8]];
    }

    [v12 fetchAuthModeWithContext:v11 completion:handlerCopy];
  }
}

- (void)authenticateWithUsername:(id)username password:(id)password ephemeral:(BOOL)ephemeral requireAppleMAID:(BOOL)d presentingViewController:(id)controller completionHandler:(id)handler
{
  dCopy = d;
  ephemeralCopy = ephemeral;
  v35[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  controllerCopy = controller;
  passwordCopy = password;
  usernameCopy = username;
  v17 = objc_opt_new();
  [v17 setUsername:usernameCopy];

  [v17 _setPassword:passwordCopy];
  [v17 setPresentingViewController:controllerCopy];

  [v17 setIsEphemeral:ephemeralCopy];
  [v17 setIsUsernameEditable:0];
  v34 = @"shouldAllowManagedAppleIDOnly";
  v35[0] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v19 = [v18 mutableCopy];

  if (ephemeralCopy)
  {
    v20 = MEMORY[0x277CBEC38];
    [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"upgradeTokenWithTrust"];
    [v19 setObject:v20 forKeyedSubscript:@"PreMDMEnrolledDevice"];
  }

  v21 = [v19 copy];
  [v17 setAppProvidedData:v21];

  [v17 setAuthenticationType:0];
  if (dCopy && ([MEMORY[0x277D03500] allowAnyMAIDToSignIn] & 1) == 0)
  {
    [v17 setAppProvidedContext:*MEMORY[0x277D246A8]];
    v33 = *MEMORY[0x277D24778];
    v22 = 1;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v17 setServiceIdentifiers:v23];
  }

  else
  {
    v22 = 0;
  }

  v24 = objc_alloc_init(MEMORY[0x277CF0178]);
  v25 = *DMCLogObjects();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v30 = ephemeralCopy;
    v31 = 1024;
    v32 = v22;
    _os_log_impl(&dword_247E7D000, v25, OS_LOG_TYPE_DEFAULT, "Authentication started. ephemeral: %d, requireAppleMAID: %d", buf, 0xEu);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __145__DMCEnrollmentAuthenticationController_authenticateWithUsername_password_ephemeral_requireAppleMAID_presentingViewController_completionHandler___block_invoke;
  v27[3] = &unk_278EE7470;
  v28 = handlerCopy;
  v26 = handlerCopy;
  [v24 authenticateWithContext:v17 completion:v27];
}

void __145__DMCEnrollmentAuthenticationController_authenticateWithUsername_password_ephemeral_requireAppleMAID_presentingViewController_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "Authentication finished with results: %@, error: %{public}@", &v11, 0x16u);
  }

  if (*(a1 + 32))
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:*MEMORY[0x277CEFF48]])
    {
      v9 = [v6 code];

      if (v9 == -7003)
      {
        v10 = *(*(a1 + 32) + 16);
LABEL_9:
        v10();
        goto LABEL_10;
      }
    }

    else
    {
    }

    v10 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)authenticateWithAuthenticationResults:(id)results ephemeral:(BOOL)ephemeral requireAppleMAID:(BOOL)d presentingViewController:(id)controller completionHandler:(id)handler
{
  dCopy = d;
  ephemeralCopy = ephemeral;
  v28[1] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  controllerCopy = controller;
  v14 = objc_opt_new();
  v15 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFFD8]];
  [v14 setUsername:v15];

  v16 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
  [v14 setAltDSID:v16];

  [v14 setPresentingViewController:controllerCopy];
  [v14 setIsEphemeral:ephemeralCopy];
  [v14 setAuthenticationType:1];
  [v14 setIsUsernameEditable:0];
  v27 = @"shouldAllowManagedAppleIDOnly";
  v28[0] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v18 = [v17 mutableCopy];

  if (ephemeralCopy)
  {
    v19 = MEMORY[0x277CBEC38];
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"upgradeTokenWithTrust"];
    [v18 setObject:v19 forKeyedSubscript:@"PreMDMEnrolledDevice"];
  }

  v20 = [v18 copy];
  [v14 setAppProvidedData:v20];

  v21 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFFA8]];
  [v14 _setIdentityToken:v21];

  v22 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFF80]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v14 setIsMDMInformationRequired:{objc_msgSend(v22, "BOOLValue")}];
  }

  if (dCopy && ([MEMORY[0x277D03500] allowAnyMAIDToSignIn] & 1) == 0)
  {
    [v14 setAppProvidedContext:*MEMORY[0x277D246A8]];
  }

  v23 = objc_alloc_init(MEMORY[0x277CF0178]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __149__DMCEnrollmentAuthenticationController_authenticateWithAuthenticationResults_ephemeral_requireAppleMAID_presentingViewController_completionHandler___block_invoke;
  v25[3] = &unk_278EE7470;
  v26 = handlerCopy;
  v24 = handlerCopy;
  [v23 authenticateWithContext:v14 completion:v25];
}

void __149__DMCEnrollmentAuthenticationController_authenticateWithAuthenticationResults_ephemeral_requireAppleMAID_presentingViewController_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "Authentication finished with results: %@, error: %{public}@", &v11, 0x16u);
  }

  if (*(a1 + 32))
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:*MEMORY[0x277CEFF48]])
    {
      v9 = [v6 code];

      if (v9 == -7003)
      {
        v10 = *(*(a1 + 32) + 16);
LABEL_9:
        v10();
        goto LABEL_10;
      }
    }

    else
    {
    }

    v10 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

LABEL_10:
}

@end