@interface SUUIRedeemIdRequiresValidationOperation
- (BOOL)_performAuthentication;
- (SUUIRedeemViewControllerLegacy)redeemViewController;
- (id)_authenticationContext;
- (id)_subOperationWithBagKey:(id)key;
- (void)_logResultsForSuccess:(BOOL)success shouldVerify:(BOOL)verify failureReason:(id)reason error:(id)error;
- (void)main;
- (void)operation:(id)operation selectedButton:(id)button;
@end

@implementation SUUIRedeemIdRequiresValidationOperation

- (void)main
{
  if ([(SUUIRedeemIdRequiresValidationOperation *)self _performAuthentication])
  {
    v3 = [(SUUIRedeemIdRequiresValidationOperation *)self _subOperationWithBagKey:@"redeemUserHasIdUrl"];
    v16 = 0;
    v4 = [(SUUIRedeemIdRequiresValidationOperation *)self runSubOperation:v3 returningError:&v16];
    v5 = v16;
    if (v4)
    {
      dataProvider = [v3 dataProvider];
      output = [dataProvider output];

      v8 = [output objectForKeyedSubscript:@"status"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![v8 integerValue])
      {
        v12 = [output objectForKeyedSubscript:@"hasNationalId"];
        objc_opt_class();
        LOBYTE(v4) = objc_opt_isKindOfClass();
        if (v4)
        {
          v10 = 0;
          if (objc_opt_respondsToSelector())
          {
            v9 = [v12 BOOLValue] ^ 1;
          }

          else
          {
            v9 = 1;
          }
        }

        else
        {
          v9 = 0;
          v10 = @"Bad/Non-present hasNationalId.";
        }
      }

      else
      {
        LOBYTE(v4) = 0;
        v9 = 0;
        v10 = @"Status code != 0.";
      }
    }

    else
    {
      v9 = 0;
      v10 = @"Failed sub-operation";
    }

    [(SUUIRedeemIdRequiresValidationOperation *)self _logResultsForSuccess:v4 & 1 shouldVerify:v9 failureReason:v10 error:v5];
    if (v5 && (v4 & 1) == 0)
    {
      v11 = [MEMORY[0x277D7FCF0] operationWithError:v5];
      [v11 setDelegate:self];
      [(SUUIRedeemIdRequiresValidationOperation *)self runSubOperation:v11 returningError:0];

      goto LABEL_13;
    }
  }

  else
  {
    [(SUUIRedeemIdRequiresValidationOperation *)self _logResultsForSuccess:0 shouldVerify:0 failureReason:0 error:0];
    LOBYTE(v9) = 0;
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUUIRedeemIdRequiresValidationOperation_main__block_invoke;
  block[3] = &unk_2798FDAA0;
  block[4] = self;
  v14 = v4 & 1;
  v15 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_13:
}

- (void)operation:(id)operation selectedButton:(id)button
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SUUIRedeemIdRequiresValidationOperation_operation_selectedButton___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)_performAuthentication
{
  v3 = objc_alloc_init(MEMORY[0x277D7FCC8]);
  _authenticationContext = [(SUUIRedeemIdRequiresValidationOperation *)self _authenticationContext];
  requiredUniqueIdentifier = [_authenticationContext requiredUniqueIdentifier];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  if (([v3 canPerformExtendedBiometricActionsForAccountIdentifier:requiredUniqueIdentifier] & 1) == 0)
  {
    v6 = dispatch_semaphore_create(0);
    v7 = objc_alloc(MEMORY[0x277D69A50]);
    _authenticationContext2 = [(SUUIRedeemIdRequiresValidationOperation *)self _authenticationContext];
    v9 = [v7 initWithAuthenticationContext:_authenticationContext2];

    redeemViewController = [(SUUIRedeemIdRequiresValidationOperation *)self redeemViewController];
    [v9 set_parentViewController:redeemViewController];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__SUUIRedeemIdRequiresValidationOperation__performAuthentication__block_invoke;
    v14[3] = &unk_2798FDAC8;
    v16 = &v17;
    v11 = v6;
    v15 = v11;
    [v9 startWithAuthenticateResponseBlock:v14];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v12;
}

intptr_t __65__SUUIRedeemIdRequiresValidationOperation__performAuthentication__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 authenticatedAccount];

  if (!v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (id)_authenticationContext
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    contextForSignIn = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:activeAccount];
    [contextForSignIn setPromptStyle:1];
    [contextForSignIn setShouldCreateNewSession:1];
  }

  else
  {
    contextForSignIn = [MEMORY[0x277D69BC8] contextForSignIn];
  }

  return contextForSignIn;
}

- (id)_subOperationWithBagKey:(id)key
{
  v3 = MEMORY[0x277D7FD48];
  keyCopy = key;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v6 setITunesStoreRequest:1];
  v7 = SSVDefaultUserAgent();
  [v6 setValue:v7 forHTTPHeaderField:@"User-Agent"];

  [v6 setURLBagKey:keyCopy];
  [v5 setRequestProperties:v6];
  provider = [MEMORY[0x277D7FD38] provider];
  [v5 setDataProvider:provider];

  return v5;
}

- (void)_logResultsForSuccess:(BOOL)success shouldVerify:(BOOL)verify failureReason:(id)reason error:(id)error
{
  verifyCopy = verify;
  successCopy = success;
  v16[2] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  errorCopy = error;
  v15[0] = @"success";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
  v15[1] = @"hasNationalId";
  v16[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInt:!verifyCopy];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14 = [v13 mutableCopy];

  if (reasonCopy)
  {
    [v14 setObject:reasonCopy forKeyedSubscript:@"failure reason"];
  }

  if (errorCopy)
  {
    [v14 setObject:errorCopy forKeyedSubscript:@"error"];
  }

  SSDebugLog();
}

- (SUUIRedeemViewControllerLegacy)redeemViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_redeemViewController);

  return WeakRetained;
}

@end