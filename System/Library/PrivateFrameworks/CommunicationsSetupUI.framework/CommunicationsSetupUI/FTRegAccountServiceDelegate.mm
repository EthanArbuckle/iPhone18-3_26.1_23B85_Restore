@interface FTRegAccountServiceDelegate
- (BOOL)_account:(id)a3 matchesSetupParameters:(id)a4;
- (BOOL)_hasAccount;
- (BOOL)_hasOperationalAccount;
- (BOOL)_shouldSkipAccountSetup:(id)a3;
- (FTRegAccountServiceDelegate)init;
- (FTRegAccountServiceDelegate)initWithRegController:(id)a3;
- (IDSAccountController)accountController;
- (id)_defaultSetupRequestParameters;
- (id)_existingAccountForSetupParameters:(id)a3;
- (id)_existingOperationalAccount;
- (id)_logName;
- (id)parametersForLoginRequest;
- (void)_cleanup;
- (void)_handleFailureWithErrorCode:(int64_t)a3;
- (void)_handleSuccess:(BOOL)a3 error:(id)a4;
- (void)handleLoginResponse:(id)a3 completion:(id)a4;
- (void)setupOperationFailed;
@end

@implementation FTRegAccountServiceDelegate

- (FTRegAccountServiceDelegate)initWithRegController:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FTRegAccountServiceDelegate;
  v5 = [(FTRegAccountServiceDelegate *)&v16 init];
  if (!v5)
  {
LABEL_6:
    v11 = v5;
    goto LABEL_10;
  }

  v6 = csui_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      [v4 serviceType];
      v8 = FTCServiceNameForServiceType();
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Creating SetupAssistant delegate with type: %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCACC8] mainThread];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__FTRegAccountServiceDelegate_initWithRegController___block_invoke;
    v14[3] = &unk_278DE7E08;
    v10 = v5;
    v15 = v10;
    [v9 __im_performBlock:v14 waitUntilDone:1];

    [(FTRegAccountServiceDelegate *)v10 setRegController:v4];
    goto LABEL_6;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Not creating SetupAssistant delegate due to missing registration controller", buf, 2u);
  }

  v11 = 0;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __53__FTRegAccountServiceDelegate_initWithRegController___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D18D68] sharedInstance];
  v2 = [*(a1 + 32) name];
  [v3 addListenerID:v2 capabilities:*MEMORY[0x277D19338]];
}

- (FTRegAccountServiceDelegate)init
{
  v3 = [CNFRegController controllerForServiceType:[(FTRegAccountServiceDelegate *)self serviceType]];
  v4 = [(FTRegAccountServiceDelegate *)self initWithRegController:v3];

  return v4;
}

- (id)_logName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(FTRegAccountServiceDelegate *)self displayName];
  v4 = [v2 stringWithFormat:@"SetupAssistant:%@", v3];

  return v4;
}

- (IDSAccountController)accountController
{
  accountController = self->_accountController;
  if (!accountController)
  {
    v4 = [(FTRegAccountServiceDelegate *)self serviceType];
    v5 = MEMORY[0x277D186B0];
    if (v4 != 1)
    {
      v5 = MEMORY[0x277D18698];
    }

    v6 = MEMORY[0x277D186C8];
    v7 = *v5;
    v8 = [[v6 alloc] initWithService:v7];

    v9 = self->_accountController;
    self->_accountController = v8;

    accountController = self->_accountController;
  }

  return accountController;
}

- (void)_cleanup
{
  [(FTRegAccountServiceDelegate *)self setResponseDictionary:0];

  [(FTRegAccountServiceDelegate *)self setCompletionHandler:0];
}

- (void)_handleSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = csui_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Finished successfully:%@, error:%@", &v12, 0x16u);
  }

  v9 = [(FTRegAccountServiceDelegate *)self completionHandler];

  if (v9)
  {
    v10 = [(FTRegAccountServiceDelegate *)self completionHandler];
    v10[2](v10, 1, 0);
  }

  [(FTRegAccountServiceDelegate *)self _cleanup];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleFailureWithErrorCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ftreg.buddyerror" code:a3 userInfo:0];
  [(FTRegAccountServiceDelegate *)self _handleSuccess:0 error:v4];
}

- (BOOL)_hasAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [MEMORY[0x277CCACC8] mainThread];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__FTRegAccountServiceDelegate__hasAccount__block_invoke;
  v5[3] = &unk_278DE7E30;
  v5[4] = self;
  v5[5] = &v6;
  [v3 __im_performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __42__FTRegAccountServiceDelegate__hasAccount__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) regController];
  v3 = [v2 isConnected];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) regController];
    [v4 connect:1];
  }

  v5 = [*(a1 + 32) regController];
  v6 = [v5 accountsWithFilter:32772];

  v7 = csui_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = [v6 count];
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Found %lu existing accounts %@", &v10, 0x16u);
  }

  if (v6)
  {
    v8 = [v6 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasOperationalAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [MEMORY[0x277CCACC8] mainThread];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__FTRegAccountServiceDelegate__hasOperationalAccount__block_invoke;
  v5[3] = &unk_278DE7E30;
  v5[4] = self;
  v5[5] = &v6;
  [v3 __im_performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __53__FTRegAccountServiceDelegate__hasOperationalAccount__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) regController];
  v3 = [v2 isConnected];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) regController];
    [v4 connect:1];
  }

  v5 = [*(a1 + 32) regController];
  v6 = [v5 accountsWithFilter:65540];

  v7 = csui_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = [v6 count];
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Found %lu operational accounts %@", &v10, 0x16u);
  }

  if (v6)
  {
    v8 = [v6 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_account:(id)a3 matchesSetupParameters:(id)a4
{
  v6 = a3;
  v7 = [a4 __ftreg_responseAppleID];
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = [(FTRegAccountServiceDelegate *)self regController];
    v10 = [v9 loginForAccount:v6];

    v11 = [v10 isEqualToIgnoringCase:v8];
    if ([v10 hasMobileMeSuffix] && objc_msgSend(v8, "hasMobileMeSuffix"))
    {
      v12 = [v8 stripMobileMSuffixIfPresent];
      v13 = [v10 stripMobileMSuffixIfPresent];
      v14 = [v12 isEqualToIgnoringCase:v13];

      v11 |= v14;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)_existingAccountForSetupParameters:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 __ftreg_responseAppleID];
  v6 = csui_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Looking for existing account for Apple ID: %@", buf, 0xCu);
  }

  if ([v5 length])
  {
    v7 = [(FTRegAccountServiceDelegate *)self regController];
    v8 = [v7 accountsWithFilter:32772];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([(FTRegAccountServiceDelegate *)self _account:v14 matchesSetupParameters:v4, v18])
          {
            v15 = v14;
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_existingOperationalAccount
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(FTRegAccountServiceDelegate *)self regController];
  v3 = [v2 accountsWithFilter:65540];

  v4 = csui_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Found %lu existing operational accounts", &v8, 0xCu);
  }

  if (v3 && [v3 count])
  {
    v5 = [v3 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_shouldSkipAccountSetup:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = csui_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Checking if user has denied permission to use phoneNumber for FaceTime/Messages.", buf, 2u);
  }

  v6 = dispatch_semaphore_create(0);
  v17 = MEMORY[0x277D85DD0];
  v7 = v6;
  v18 = v7;
  v8 = dispatch_get_global_queue(33, 0);
  IDSRegistrationControlGetStateForRegistrationType();

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v20[3])
  {
    v9 = 1;
  }

  else
  {
    v10 = [(FTRegAccountServiceDelegate *)self _existingOperationalAccount:v17];
    if (v10 && ![(FTRegAccountServiceDelegate *)self _account:v10 matchesSetupParameters:v4])
    {
      v11 = csui_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 login];
        v13 = [(FTRegAccountServiceDelegate *)self responseDictionary];
        v14 = [v13 __ftreg_responseAppleID];
        *buf = 138412546;
        v24 = v12;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "A registered AppleID account already exists (%@), but we are setting up for: %@. Bailing.", buf, 0x16u);
      }

      *(v20 + 24) = 1;
    }

    v9 = *(v20 + 24);
  }

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

intptr_t __55__FTRegAccountServiceDelegate__shouldSkipAccountSetup___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = csui_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "User has denied use of phoneNumber for FaceTime/Messages. Skipping account setup", v5, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (id)parametersForLoginRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [MEMORY[0x277CCACC8] mainThread];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__FTRegAccountServiceDelegate_parametersForLoginRequest__block_invoke;
  v6[3] = &unk_278DE7E30;
  v6[4] = self;
  v6[5] = &v7;
  [v3 __im_performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__FTRegAccountServiceDelegate_parametersForLoginRequest__block_invoke(uint64_t a1)
{
  v2 = csui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Building setup request parameters", buf, 2u);
  }

  if ([*(a1 + 32) serviceIsAvailable])
  {
    v3 = [MEMORY[0x277D77BF8] sharedManager];
    if ([v3 isMultiUser])
    {
      v4 = [MEMORY[0x277D77BF8] sharedManager];
      v5 = [v4 currentUser];
      if ([v5 inFirstLoginSession])
      {

        goto LABEL_12;
      }

      v12 = [*(a1 + 32) _hasAccount];

      if (!v12)
      {
LABEL_12:
        v8 = csui_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 0;
          v10 = "No accounts, sending default request parameters";
          v11 = &v16;
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v6 = [*(a1 + 32) _hasAccount];

      if ((v6 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v7 = [*(a1 + 32) _hasOperationalAccount];
    v8 = csui_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v18 = 0;
        v10 = "Operational account found, sending default parameters to try and refresh the account";
        v11 = &v18;
LABEL_16:
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else if (v9)
    {
      *v17 = 0;
      v10 = "Found a non-operational account, sending default request parameters";
      v11 = v17;
      goto LABEL_16;
    }

LABEL_17:

    v13 = [*(a1 + 32) _defaultSetupRequestParameters];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (id)_defaultSetupRequestParameters
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"protocol-version";
  v6[0] = @"4";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)handleLoginResponse:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACC8] mainThread];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke;
  v11[3] = &unk_278DE7EE0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 __im_performBlock:v11];
}

void __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setResponseDictionary:*(a1 + 40)];
  [*(a1 + 32) setCompletionHandler:*(a1 + 48)];
  v2 = csui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Got setup parameters:", buf, 2u);
  }

  [*(a1 + 40) enumerateKeysAndObjectsUsingBlock:&__block_literal_global];
  v3 = *(a1 + 40);
  if (!v3 || ![v3 count])
  {
    v8 = csui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) displayName];
      *buf = 138412290;
      v57 = v11;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Received empty setup response. Skipping setup for %@.", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v4 = [*(a1 + 32) responseDictionary];
  v5 = [v4 __ftreg_isValidSetupDictionary];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v6 responseDictionary];
    LODWORD(v6) = [v6 _shouldSkipAccountSetup:v7];

    if (v6)
    {
      v8 = csui_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) responseDictionary];
        v10 = [v9 __ftreg_responseAppleID];
        *buf = 138412290;
        v57 = v10;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Skipping setup for %@ because _shouldSkipAccountSetup returned YES.", buf, 0xCu);
      }

LABEL_11:

      [*(a1 + 32) _handleSuccess:1 error:0];
      goto LABEL_36;
    }

    v14 = [*(a1 + 32) responseDictionary];
    v15 = [v14 __ftreg_responseIsUpgrade];

    v16 = csui_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"NO";
      if (v15)
      {
        v17 = @"YES";
      }

      *buf = 138412290;
      v57 = v17;
      _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_DEFAULT, "Handling setup response [isUpgrade=%@], kicking off account setup", buf, 0xCu);
    }

    v18 = [*(a1 + 32) responseDictionary];
    v19 = [v18 __ftreg_candidateAliases];

    if ([v19 count] > 1)
    {
LABEL_32:
      v32 = csui_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v19 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v57 = v33;
        _os_log_impl(&dword_243BE5000, v32, OS_LOG_TYPE_DEFAULT, "We have user-selectable aliases [%@]. Deferring to the setup manager.", buf, 0xCu);
      }

      v34 = +[FTRegAppleIDSetupManager sharedInstance];
      v35 = [*(a1 + 32) responseDictionary];
      [v34 addSetupDictionary:v35 forService:{objc_msgSend(*(a1 + 32), "serviceType")}];

      [*(a1 + 32) _handleSuccess:1 error:0];
      goto LABEL_35;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v53;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v53 != v23)
          {
            objc_enumerationMutation(v20);
          }

          if ([*(*(&v52 + 1) + 8 * i) _appearsToBePhoneNumber])
          {

            goto LABEL_32;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v25 = [*(a1 + 32) responseDictionary];
    v26 = IDSParseAuthDictionary();

    v27 = [*(a1 + 32) accountController];
    v28 = [v26 objectForKey:*MEMORY[0x277D187C8]];
    v29 = [v28 __imArrayByApplyingBlock:&__block_literal_global_76];

    v30 = [MEMORY[0x277D07DB0] sharedInstance];
    v31 = [v30 supportsSMS];

    if (v31)
    {
      if ([v29 count])
      {
        [v29 arrayByAddingObject:*MEMORY[0x277D18AB8]];
      }

      else
      {
        v37 = *MEMORY[0x277D18AB8];
        IMSingleObjectArray();
      }
      v38 = ;

      v29 = v38;
    }

    v39 = [*(a1 + 32) serviceType];
    v40 = MEMORY[0x277D186B0];
    if (v39 != 1)
    {
      v40 = MEMORY[0x277D18698];
    }

    v41 = *v40;
    v42 = [v26 objectForKey:*MEMORY[0x277D187C0]];
    v43 = [v26 objectForKey:*MEMORY[0x277D187D0]];
    v44 = csui_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v57 = v41;
      v58 = 2112;
      v59 = v42;
      v60 = 2112;
      v61 = v43;
      v62 = 2112;
      v63 = v29;
      _os_log_impl(&dword_243BE5000, v44, OS_LOG_TYPE_DEFAULT, " => Setting up service: %@   with apple id: %@  profile id: %@  aliases: %@", buf, 0x2Au);
    }

    v45 = [v27 serviceName];
    v46 = [v27 accountWithLoginID:v42 service:v45];

    if ([(__CFString *)v46 isActive]&& [(__CFString *)v46 registrationStatus]== 5)
    {
      v47 = csui_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v46;
        v48 = " => Has existing registered account: %@";
        v49 = v47;
        v50 = 12;
LABEL_52:
        _os_log_impl(&dword_243BE5000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
      }
    }

    else
    {
      v51 = csui_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v46;
        _os_log_impl(&dword_243BE5000, v51, OS_LOG_TYPE_DEFAULT, " => Existing account: %@", buf, 0xCu);
      }

      if (![(__CFString *)v46 isUserDisabled])
      {
        v47 = [v29 __imSetFromArray];
        [v27 setupAccountWithSetupParameters:v26 aliases:v47 completionHandler:&__block_literal_global_87];
        goto LABEL_54;
      }

      v47 = csui_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v48 = " => Account was disabled by the user, not setting up...";
        v49 = v47;
        v50 = 2;
        goto LABEL_52;
      }
    }

LABEL_54:

    [*(a1 + 32) _handleSuccess:1 error:0];
LABEL_35:

    goto LABEL_36;
  }

  v12 = csui_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) displayName];
    *buf = 138412290;
    v57 = v13;
    _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Received incomplete setup response. Failing setup for %@.", buf, 0xCu);
  }

  [*(a1 + 32) _handleFailureWithErrorCode:4000];
LABEL_36:
  v36 = *MEMORY[0x277D85DE8];
}

void __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 isEqual:@"password"];
  v7 = csui_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v13) = 0;
      v9 = "  => password : REDACTED";
      v10 = v7;
      v11 = 2;
LABEL_6:
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    }
  }

  else if (v8)
  {
    v13 = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v9 = "  => %@ : %@";
    v10 = v7;
    v11 = 22;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke_73(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"uri"];
  v4 = [v2 objectForKey:@"status"];

  LODWORD(v2) = [v4 intValue];
  if (v2 == 5051)
  {
    v5 = [v3 _stripFZIDPrefix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke_84(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = csui_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a3)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Got response from setup operation. Success=%@, error=%@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setupOperationFailed
{
  v3 = [MEMORY[0x277CCACC8] mainThread];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__FTRegAccountServiceDelegate_setupOperationFailed__block_invoke;
  v4[3] = &unk_278DE7E08;
  v4[4] = self;
  [v3 __im_performBlock:v4 waitUntilDone:0];
}

uint64_t __51__FTRegAccountServiceDelegate_setupOperationFailed__block_invoke(uint64_t a1)
{
  v2 = csui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Setup operation failed. Cleaning up.", v4, 2u);
  }

  return [*(a1 + 32) _cleanup];
}

@end