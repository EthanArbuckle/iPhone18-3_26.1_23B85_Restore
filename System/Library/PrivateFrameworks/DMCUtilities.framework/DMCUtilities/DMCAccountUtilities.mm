@interface DMCAccountUtilities
+ (id)_appleAccountWithPersonaID:(id)d;
+ (id)accountIdentifierForAppleAccountWithPersonaID:(id)d;
+ (id)appStoreAccountIdentifierForPersona:(id)persona;
+ (id)managedAppleIDNameWithPersonaID:(id)d;
- (BOOL)_signIniCloudAccountWithAuthenticationResult:(id)result personaID:(id)d baseViewController:(id)controller outError:(id *)error;
- (BOOL)_signIniTunesAccountWithAuthenticationResult:(id)result personaID:(id)d canMakeAccountActive:(BOOL)active baseViewController:(id)controller outError:(id *)error;
- (DMCHangDetectionQueue)signInQueue;
- (void)signInAccountsWithTypes:(id)types authenticationResult:(id)result personaID:(id)d canMakeAccountActive:(BOOL)active baseViewController:(id)controller completionHandler:(id)handler;
- (void)signOutAllPrimaryAccounts;
@end

@implementation DMCAccountUtilities

+ (id)appStoreAccountIdentifierForPersona:(id)persona
{
  v15 = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  if (personaCopy)
  {
    v4 = [DMCAccountUtilities _appleAccountWithPersonaID:personaCopy];
    v5 = v4;
    if (v4)
    {
      ams_DSID = [v4 ams_DSID];
      v7 = *DMCLogObjects();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = personaCopy;
        v13 = 2114;
        v14 = ams_DSID;
        _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "appStoreAccountIdentifierForPersona FOUND persona:%{public}@ -> accountIdentifier:%{public}@", &v11, 0x16u);
      }
    }

    else
    {
      v8 = *DMCLogObjects();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = personaCopy;
        _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_DEFAULT, "appStoreAccountIdentifierForPersona NOT FOUND persona:%{public}@", &v11, 0xCu);
      }

      ams_DSID = 0;
    }
  }

  else
  {
    ams_DSID = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return ams_DSID;
}

+ (id)managedAppleIDNameWithPersonaID:(id)d
{
  v3 = [DMCAccountUtilities _appleAccountWithPersonaID:d];
  username = [v3 username];

  return username;
}

+ (id)accountIdentifierForAppleAccountWithPersonaID:(id)d
{
  v3 = [DMCAccountUtilities _appleAccountWithPersonaID:d];
  identifier = [v3 identifier];

  return identifier;
}

+ (id)_appleAccountWithPersonaID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v5 = [defaultStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  [defaultStore accountsWithAccountType:v5];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v17 = v5;
    v9 = *v19;
    v10 = *MEMORY[0x1E69597A0];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isEqualToString:dCopy])
        {
          v14 = v12;

          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v14 = 0;
LABEL_12:
    v5 = v17;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)signInAccountsWithTypes:(id)types authenticationResult:(id)result personaID:(id)d canMakeAccountActive:(BOOL)active baseViewController:(id)controller completionHandler:(id)handler
{
  typesCopy = types;
  resultCopy = result;
  dCopy = d;
  controllerCopy = controller;
  handlerCopy = handler;
  signInQueue = [(DMCAccountUtilities *)self signInQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __136__DMCAccountUtilities_signInAccountsWithTypes_authenticationResult_personaID_canMakeAccountActive_baseViewController_completionHandler___block_invoke;
  v25[3] = &unk_1E7ADC370;
  v26 = typesCopy;
  selfCopy = self;
  v28 = resultCopy;
  v29 = dCopy;
  v30 = controllerCopy;
  v31 = handlerCopy;
  activeCopy = active;
  v20 = controllerCopy;
  v21 = dCopy;
  v22 = resultCopy;
  v23 = handlerCopy;
  v24 = typesCopy;
  [signInQueue queueBlock:v25];
}

void __136__DMCAccountUtilities_signInAccountsWithTypes_authenticationResult_personaID_canMakeAccountActive_baseViewController_completionHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = 0;
      v7 = *v35;
      v8 = *MEMORY[0x1E69597F8];
      v9 = *MEMORY[0x1E6959930];
      v31 = *MEMORY[0x1E6959978];
      *&v4 = 138412290;
      v30 = v4;
      while (1)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          if ([v11 isEqualToString:{v8, v30}])
          {
            v12 = *(a1 + 40);
            v13 = *(a1 + 48);
            v14 = *(a1 + 56);
            v15 = *(a1 + 64);
            v33 = 0;
            v6 = [v12 _signIniCloudAccountWithAuthenticationResult:v13 personaID:v14 baseViewController:v15 outError:&v33];
            v16 = v33;
LABEL_11:
            v22 = v16;
            goto LABEL_15;
          }

          if ([v11 isEqualToString:v9])
          {
            v17 = *(a1 + 40);
            v18 = *(a1 + 48);
            v19 = *(a1 + 80);
            v20 = *(a1 + 56);
            v21 = *(a1 + 64);
            v32 = 0;
            v6 = [v17 _signIniTunesAccountWithAuthenticationResult:v18 personaID:v20 canMakeAccountActive:v19 baseViewController:v21 outError:&v32];
            v16 = v32;
            goto LABEL_11;
          }

          v23 = *DMCLogObjects();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v39 = v11;
            _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "DMCAccountUtilities: Unsupported account type: %@", buf, 0xCu);
          }

          v22 = [MEMORY[0x1E696ABC0] errorWithDomain:v31 code:4 userInfo:0];
LABEL_15:
          v24 = v22;
          if (v22 || (v6 & 1) == 0)
          {
            goto LABEL_25;
          }

          v6 = 1;
        }

        v5 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (!v5)
        {
          v24 = 0;
          goto LABEL_25;
        }
      }
    }

    v24 = 0;
    v6 = 0;
LABEL_25:

    v28 = *(a1 + 72);
    if (v28)
    {
      (*(v28 + 16))(v28, v6 & 1, v24);
    }

    goto LABEL_28;
  }

  v25 = *(a1 + 72);
  if (!v25)
  {
LABEL_28:
    v29 = *MEMORY[0x1E69E9840];
    return;
  }

  v26 = *(v25 + 16);
  v27 = *MEMORY[0x1E69E9840];

  v26();
}

- (BOOL)_signIniCloudAccountWithAuthenticationResult:(id)result personaID:(id)d baseViewController:(id)controller outError:(id *)error
{
  resultCopy = result;
  dCopy = d;
  controllerCopy = controller;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__DMCAccountUtilities__signIniCloudAccountWithAuthenticationResult_personaID_baseViewController_outError___block_invoke;
  v22[3] = &unk_1E7ADC398;
  v13 = resultCopy;
  v23 = v13;
  v14 = controllerCopy;
  v24 = v14;
  selfCopy = self;
  v26 = &v28;
  v27 = &v32;
  v15 = MEMORY[0x1B2731A20](v22);
  v16 = v15;
  if (dCopy)
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v21 = 0;
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_DEBUG, "DMCAccountUtilities: Has enterprise persona, will sign in iCloud under enterprise persona", v21, 2u);
    }

    v18 = [DMCPersonaHelper performBlockUnderPersona:dCopy block:v16];
  }

  else
  {
    (*(v15 + 16))(v15);
  }

  if (error)
  {
    *error = v33[5];
  }

  v19 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v19;
}

void __106__DMCAccountUtilities__signIniCloudAccountWithAuthenticationResult_personaID_baseViewController_outError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = +[DMCPersonaHelper currentPersonaID];
    v3 = +[DMCPersonaHelper currentPersonaTypeString];
    *buf = 136315906;
    *&buf[4] = "[DMCAccountUtilities _signIniCloudAccountWithAuthenticationResult:personaID:baseViewController:outError:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 132;
    *&buf[18] = 2114;
    *&buf[20] = v2;
    *&buf[28] = 2114;
    *&buf[30] = v3;
    _os_log_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", buf, 0x26u);
  }

  v4 = objc_alloc_init(DMCAIDAMutableServiceContextClass());
  [v4 setAuthenticationResults:*(a1 + 32)];
  [v4 setViewController:*(a1 + 40)];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v5 = getCDPUIControllerClass_softClass;
  v21 = getCDPUIControllerClass_softClass;
  if (!getCDPUIControllerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCDPUIControllerClass_block_invoke;
    *&buf[24] = &unk_1E7ADC1F0;
    *&buf[32] = &v18;
    __getCDPUIControllerClass_block_invoke(buf);
    v5 = v19[3];
  }

  v6 = v5;
  _Block_object_dispose(&v18, 8);
  v7 = [[v5 alloc] initWithPresentingViewController:*(a1 + 40)];
  [v7 setForceInlinePresentation:1];
  [v4 setCdpUiProvider:v7];
  [*(a1 + 48) setCdpUIController:v7];
  v8 = objc_alloc(DMCAIDAServiceOwnersManagerClass());
  v9 = [MEMORY[0x1E6959A48] defaultStore];
  v10 = [v8 initWithAccountStore:v9];

  v11 = dispatch_semaphore_create(0);
  v12 = DMCAIDAServiceTypeCloud();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__DMCAccountUtilities__signIniCloudAccountWithAuthenticationResult_personaID_baseViewController_outError___block_invoke_21;
  v15[3] = &unk_1E7ADC280;
  v17 = *(a1 + 56);
  v16 = v11;
  v13 = v11;
  [v10 signInService:v12 withContext:v4 completion:v15];

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = *MEMORY[0x1E69E9840];
}

void __106__DMCAccountUtilities__signIniCloudAccountWithAuthenticationResult_personaID_baseViewController_outError___block_invoke_21(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109378;
    v11[1] = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_DEFAULT, "DMCAccountUtilities: Signing in iCloud account finished with result: %d, error: %{public}@", v11, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_signIniTunesAccountWithAuthenticationResult:(id)result personaID:(id)d canMakeAccountActive:(BOOL)active baseViewController:(id)controller outError:(id *)error
{
  resultCopy = result;
  dCopy = d;
  controllerCopy = controller;
  v13 = DMCAKAuthenticationUsernameKey();
  v29 = [resultCopy objectForKeyedSubscript:v13];

  v14 = DMCAKAuthenticationPasswordKey();
  v15 = [resultCopy objectForKeyedSubscript:v14];

  v16 = DMCAKAuthenticationAlternateDSIDKey();
  v17 = [resultCopy objectForKeyedSubscript:v16];

  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  v20 = ams_activeiTunesAccount;
  if (ams_activeiTunesAccount && ([ams_activeiTunesAccount dmc_altDSID], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v17), v21, v22))
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:5 userInfo:0];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__1;
    v48 = __Block_byref_object_dispose__1;
    v49 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __127__DMCAccountUtilities__signIniTunesAccountWithAuthenticationResult_personaID_canMakeAccountActive_baseViewController_outError___block_invoke;
    v32[3] = &unk_1E7ADC3E8;
    activeCopy = active;
    v33 = controllerCopy;
    v34 = v29;
    v35 = v17;
    v36 = v15;
    v37 = &v40;
    v38 = &v44;
    v24 = MEMORY[0x1B2731A20](v32);
    v25 = v24;
    if (dCopy)
    {
      v26 = *DMCLogObjects();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v26, OS_LOG_TYPE_DEBUG, "DMCAccountUtilities: Has enterprise persona, will sign in iTunes under enterprise persona", buf, 2u);
      }

      v27 = [DMCPersonaHelper performBlockUnderPersona:dCopy block:v25, v29];
    }

    else
    {
      (*(v24 + 16))(v24);
    }

    if (error)
    {
      *error = v45[5];
    }

    v23 = *(v41 + 24);

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
  }

  return v23 & 1;
}

void __127__DMCAccountUtilities__signIniTunesAccountWithAuthenticationResult_personaID_canMakeAccountActive_baseViewController_outError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = +[DMCPersonaHelper currentPersonaID];
    v3 = +[DMCPersonaHelper currentPersonaTypeString];
    *buf = 136315906;
    *v19 = "[DMCAccountUtilities _signIniTunesAccountWithAuthenticationResult:personaID:canMakeAccountActive:baseViewController:outError:]_block_invoke";
    *&v19[8] = 1024;
    *&v19[10] = 188;
    v20 = 2114;
    v21 = v2;
    v22 = 2114;
    v23 = v3;
    _os_log_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", buf, 0x26u);
  }

  v4 = objc_alloc_init(DMCAMSAuthenticateOptionsClass());
  [v4 setAuthenticationType:0];
  [v4 setCanMakeAccountActive:*(a1 + 80)];
  v5 = [objc_alloc(DMCAMSUIAuthenticateTaskClass()) initWithAccount:0 presentingViewController:*(a1 + 32) options:v4];
  [v5 setUsername:*(a1 + 40)];
  [v5 setAltDSID:*(a1 + 48)];
  [v5 setPassword:*(a1 + 56)];
  v6 = [v5 performAuthentication];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[DMCPersonaHelper currentPersonaID];
    v8 = +[DMCPersonaHelper currentPersonaTypeString];
    *buf = 136315906;
    *v19 = "[DMCAccountUtilities _signIniTunesAccountWithAuthenticationResult:personaID:canMakeAccountActive:baseViewController:outError:]_block_invoke";
    *&v19[8] = 1024;
    *&v19[10] = 198;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", buf, 0x26u);
  }

  v9 = dispatch_semaphore_create(0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __127__DMCAccountUtilities__signIniTunesAccountWithAuthenticationResult_personaID_canMakeAccountActive_baseViewController_outError___block_invoke_23;
  v15[3] = &unk_1E7ADC3C0;
  v17 = *(a1 + 64);
  v10 = v9;
  v16 = v10;
  [v6 resultWithCompletion:v15];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = *DMCLogObjects();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 64) + 8) + 24);
    v13 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 67109378;
    *v19 = v12;
    *&v19[4] = 2114;
    *&v19[6] = v13;
    _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_DEFAULT, "DMCAccountUtilities: Signing in iTunes account finished with result: %d, error: %{public}@", buf, 0x12u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __127__DMCAccountUtilities__signIniTunesAccountWithAuthenticationResult_personaID_canMakeAccountActive_baseViewController_outError___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2 != 0;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;
  v9 = a2;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)signOutAllPrimaryAccounts
{
  signInQueue = [(DMCAccountUtilities *)self signInQueue];
  [signInQueue queueBlock:&__block_literal_global_0];

  signInQueue2 = [(DMCAccountUtilities *)self signInQueue];
  [signInQueue2 waitUntilAllBlocksAreFinished];
}

void __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke()
{
  v24[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6959A48] defaultStore];
  v1 = objc_alloc(DMCAIDAServiceOwnersManagerClass());
  v2 = [MEMORY[0x1E6959A48] defaultStore];
  v3 = [v1 initWithAccountStore:v2];

  v4 = objc_alloc_init(DMCAIDAMutableServiceContextClass());
  v5 = [v0 dmc_primaryiCloudAccount];
  v6 = dispatch_semaphore_create(0);
  v7 = DMCAIDAServiceTypeMessages();
  v24[0] = v7;
  v8 = DMCAIDAServiceTypeFaceTime();
  v24[1] = v8;
  v9 = DMCAIDAServiceTypeStore();
  v24[2] = v9;
  v10 = DMCAIDAServiceTypeGameCenter();
  v24[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke_2;
  v20 = &unk_1E7ADC458;
  v21 = v3;
  v22 = v4;
  v23 = v6;
  v12 = v6;
  v13 = v4;
  v14 = v3;
  [v14 signOutOfServices:v11 usingContext:v13 completion:&v17];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v15 = [v5 dmc_altDSID];
  [v0 dmc_removeAccountsWithAltDSID:v15 asynchronous:0];

  v16 = *MEMORY[0x1E69E9840];
}

void __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = a2;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_DEFAULT, "DMCAccountUtilities: signOutOfServices (except Cloud) finished with success: %d, result: %{public}@", buf, 0x12u);
  }

  v7 = *(a1 + 32);
  v8 = DMCAIDAServiceTypeCloud();
  v14 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke_26;
  v12[3] = &unk_1E7ADC430;
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  [v7 signOutOfServices:v9 usingContext:v10 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke_26(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_DEFAULT, "DMCAccountUtilities: signOutOfCloud finished with success: %d, result: %{public}@", v8, 0x12u);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v7 = *MEMORY[0x1E69E9840];
}

- (DMCHangDetectionQueue)signInQueue
{
  signInQueue = self->_signInQueue;
  if (!signInQueue)
  {
    v4 = [DMCHangDetectionQueue alloc];
    [DMCFeatureOverrides accountSignInTimeoutThresholdWithDefaultValue:20.0];
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(DMCHangDetectionQueue *)v4 initWithQoS:25 hangThreshold:v8 owner:v6];
    v10 = self->_signInQueue;
    self->_signInQueue = v9;

    signInQueue = self->_signInQueue;
  }

  return signInQueue;
}

@end