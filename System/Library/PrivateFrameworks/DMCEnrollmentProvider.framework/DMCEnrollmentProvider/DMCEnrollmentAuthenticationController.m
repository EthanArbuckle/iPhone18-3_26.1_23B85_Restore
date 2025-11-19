@interface DMCEnrollmentAuthenticationController
- (void)authenticateWithAuthenticationResults:(id)a3 ephemeral:(BOOL)a4 requireAppleMAID:(BOOL)a5 presentingViewController:(id)a6 completionHandler:(id)a7;
- (void)authenticateWithUsername:(id)a3 password:(id)a4 ephemeral:(BOOL)a5 requireAppleMAID:(BOOL)a6 presentingViewController:(id)a7 completionHandler:(id)a8;
- (void)fetchAuthenticationModeForUsername:(id)a3 requireAppleMAID:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation DMCEnrollmentAuthenticationController

- (void)fetchAuthenticationModeForUsername:(id)a3 requireAppleMAID:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277D03500] simulatedMDMAccountDrivenEnrollmentAuthenticationResults];

  if (v9)
  {
    v10 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__DMCEnrollmentAuthenticationController_fetchAuthenticationModeForUsername_requireAppleMAID_completionHandler___block_invoke;
    block[3] = &unk_278EE7808;
    v14 = v8;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    [v11 setUsername:v7];
    [v11 setIsEphemeral:1];
    if (v6 && ([MEMORY[0x277D03500] allowAnyMAIDToSignIn] & 1) == 0)
    {
      [v11 setAppProvidedContext:*MEMORY[0x277D246A8]];
    }

    [v12 fetchAuthModeWithContext:v11 completion:v8];
  }
}

- (void)authenticateWithUsername:(id)a3 password:(id)a4 ephemeral:(BOOL)a5 requireAppleMAID:(BOOL)a6 presentingViewController:(id)a7 completionHandler:(id)a8
{
  v9 = a6;
  v10 = a5;
  v35[1] = *MEMORY[0x277D85DE8];
  v13 = a8;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = objc_opt_new();
  [v17 setUsername:v16];

  [v17 _setPassword:v15];
  [v17 setPresentingViewController:v14];

  [v17 setIsEphemeral:v10];
  [v17 setIsUsernameEditable:0];
  v34 = @"shouldAllowManagedAppleIDOnly";
  v35[0] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v19 = [v18 mutableCopy];

  if (v10)
  {
    v20 = MEMORY[0x277CBEC38];
    [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"upgradeTokenWithTrust"];
    [v19 setObject:v20 forKeyedSubscript:@"PreMDMEnrolledDevice"];
  }

  v21 = [v19 copy];
  [v17 setAppProvidedData:v21];

  [v17 setAuthenticationType:0];
  if (v9 && ([MEMORY[0x277D03500] allowAnyMAIDToSignIn] & 1) == 0)
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
    v30 = v10;
    v31 = 1024;
    v32 = v22;
    _os_log_impl(&dword_247E7D000, v25, OS_LOG_TYPE_DEFAULT, "Authentication started. ephemeral: %d, requireAppleMAID: %d", buf, 0xEu);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __145__DMCEnrollmentAuthenticationController_authenticateWithUsername_password_ephemeral_requireAppleMAID_presentingViewController_completionHandler___block_invoke;
  v27[3] = &unk_278EE7470;
  v28 = v13;
  v26 = v13;
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

- (void)authenticateWithAuthenticationResults:(id)a3 ephemeral:(BOOL)a4 requireAppleMAID:(BOOL)a5 presentingViewController:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v10 = a4;
  v28[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = objc_opt_new();
  v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CEFFD8]];
  [v14 setUsername:v15];

  v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
  [v14 setAltDSID:v16];

  [v14 setPresentingViewController:v13];
  [v14 setIsEphemeral:v10];
  [v14 setAuthenticationType:1];
  [v14 setIsUsernameEditable:0];
  v27 = @"shouldAllowManagedAppleIDOnly";
  v28[0] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v18 = [v17 mutableCopy];

  if (v10)
  {
    v19 = MEMORY[0x277CBEC38];
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"upgradeTokenWithTrust"];
    [v18 setObject:v19 forKeyedSubscript:@"PreMDMEnrolledDevice"];
  }

  v20 = [v18 copy];
  [v14 setAppProvidedData:v20];

  v21 = [v11 objectForKeyedSubscript:*MEMORY[0x277CEFFA8]];
  [v14 _setIdentityToken:v21];

  v22 = [v11 objectForKeyedSubscript:*MEMORY[0x277CEFF80]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v14 setIsMDMInformationRequired:{objc_msgSend(v22, "BOOLValue")}];
  }

  if (v9 && ([MEMORY[0x277D03500] allowAnyMAIDToSignIn] & 1) == 0)
  {
    [v14 setAppProvidedContext:*MEMORY[0x277D246A8]];
  }

  v23 = objc_alloc_init(MEMORY[0x277CF0178]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __149__DMCEnrollmentAuthenticationController_authenticateWithAuthenticationResults_ephemeral_requireAppleMAID_presentingViewController_completionHandler___block_invoke;
  v25[3] = &unk_278EE7470;
  v26 = v12;
  v24 = v12;
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