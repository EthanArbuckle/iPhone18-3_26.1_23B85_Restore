@interface SUUIRedeemPreflightOperation
- (BOOL)loadsRedeemCodeMetadata;
- (SUUIRedeemConfiguration)redeemConfiguration;
- (SUUIRedeemPreflightOperation)initWithClientContext:(id)context redeemCode:(id)code forcesAuthentication:(BOOL)authentication;
- (SUUIRedeemViewControllerLegacy)redeemViewController;
- (id)_authenticationContext;
- (id)_initSUUIRedeemPreflightOperation;
- (id)_redeemCodeMetadataWithClientContext:(id)context;
- (id)outputBlock;
- (void)main;
- (void)setLoadsRedeemCodeMetadata:(BOOL)metadata;
- (void)setOutputBlock:(id)block;
- (void)setRedeemConfiguration:(id)configuration;
@end

@implementation SUUIRedeemPreflightOperation

- (id)_initSUUIRedeemPreflightOperation
{
  v8.receiver = self;
  v8.super_class = SUUIRedeemPreflightOperation;
  v2 = [(SUUIRedeemPreflightOperation *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIRedeemPreflightOperation", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2->_dispatchQueue;
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v5, v6);

    v2->_forcesAuthentication = 1;
  }

  return v2;
}

- (SUUIRedeemPreflightOperation)initWithClientContext:(id)context redeemCode:(id)code forcesAuthentication:(BOOL)authentication
{
  contextCopy = context;
  codeCopy = code;
  _initSUUIRedeemPreflightOperation = [(SUUIRedeemPreflightOperation *)self _initSUUIRedeemPreflightOperation];
  v12 = _initSUUIRedeemPreflightOperation;
  if (_initSUUIRedeemPreflightOperation)
  {
    objc_storeStrong(_initSUUIRedeemPreflightOperation + 31, context);
    v13 = [codeCopy copy];
    redeemCode = v12->_redeemCode;
    v12->_redeemCode = v13;

    v12->_forcesAuthentication = authentication;
  }

  return v12;
}

- (BOOL)loadsRedeemCodeMetadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SUUIRedeemPreflightOperation_loadsRedeemCodeMetadata__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)outputBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__95;
  v10 = __Block_byref_object_dispose__95;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SUUIRedeemPreflightOperation_outputBlock__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __43__SUUIRedeemPreflightOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 272) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (SUUIRedeemConfiguration)redeemConfiguration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2_1;
  v10 = __Block_byref_object_dispose__3_1;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SUUIRedeemPreflightOperation_redeemConfiguration__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLoadsRedeemCodeMetadata:(BOOL)metadata
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SUUIRedeemPreflightOperation_setLoadsRedeemCodeMetadata___block_invoke;
  v4[3] = &unk_2798F93A0;
  v4[4] = self;
  metadataCopy = metadata;
  dispatch_async(dispatchQueue, v4);
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUUIRedeemPreflightOperation_setOutputBlock___block_invoke;
  v7[3] = &unk_2798F6030;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__47__SUUIRedeemPreflightOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 272) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 272);
    *(v5 + 272) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (void)setRedeemConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SUUIRedeemPreflightOperation_setRedeemConfiguration___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)main
{
  v3 = objc_alloc_init(SUUIRedeemPreflightResult);
  [(SUUIRedeemPreflightResult *)v3 setClientContext:self->_clientContext];
  if ([(SUUIRedeemPreflightOperation *)self forcesAuthentication])
  {
    v4 = objc_alloc_init(MEMORY[0x277D7FCC8]);
    _authenticationContext = [(SUUIRedeemPreflightOperation *)self _authenticationContext];
    requiredUniqueIdentifier = [_authenticationContext requiredUniqueIdentifier];

    if (([v4 canPerformExtendedBiometricActionsForAccountIdentifier:requiredUniqueIdentifier] & 1) == 0)
    {
      v7 = dispatch_semaphore_create(0);
      v8 = objc_alloc(MEMORY[0x277D69A50]);
      _authenticationContext2 = [(SUUIRedeemPreflightOperation *)self _authenticationContext];
      v10 = [v8 initWithAuthenticationContext:_authenticationContext2];

      redeemViewController = [(SUUIRedeemPreflightOperation *)self redeemViewController];
      [v10 set_parentViewController:redeemViewController];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __36__SUUIRedeemPreflightOperation_main__block_invoke;
      v36[3] = &unk_2798FDCC0;
      v37 = v3;
      v38 = v7;
      v12 = v7;
      [v10 startWithAuthenticateResponseBlock:v36];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  if (!self->_clientContext && ![(SUUIRedeemPreflightResult *)v3 resultType])
  {
    v13 = objc_alloc_init(SUUIReloadConfigurationOperation);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __36__SUUIRedeemPreflightOperation_main__block_invoke_2;
    v34[3] = &unk_2798F6B20;
    v35 = v3;
    [(SUUIReloadConfigurationOperation *)v13 setOutputBlock:v34];
    [(SUUIReloadConfigurationOperation *)v13 main];
  }

  if (![(SUUIRedeemPreflightResult *)v3 resultType]&& [(SUUIRedeemPreflightOperation *)self loadsRedeemCodeMetadata]&& self->_redeemCode)
  {
    clientContext = [(SUUIRedeemPreflightResult *)v3 clientContext];
    v15 = [(SUUIRedeemPreflightOperation *)self _redeemCodeMetadataWithClientContext:clientContext];

    [(SUUIRedeemPreflightResult *)v3 setCodeMetadata:v15];
  }

  redeemConfiguration = [(SUUIRedeemPreflightOperation *)self redeemConfiguration];
  if (redeemConfiguration && ![(SUUIRedeemPreflightResult *)v3 resultType])
  {
    v17 = [SUUIRedeemConfiguration alloc];
    operationQueue = [redeemConfiguration operationQueue];
    category = [redeemConfiguration category];
    clientContext2 = [(SUUIRedeemPreflightResult *)v3 clientContext];
    v21 = [(SUUIRedeemConfiguration *)v17 initWithOperationQueue:operationQueue category:category clientContext:clientContext2];

    v22 = dispatch_semaphore_create(0);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __36__SUUIRedeemPreflightOperation_main__block_invoke_3;
    v30 = &unk_2798FDCE8;
    v31 = v3;
    v32 = v21;
    v33 = v22;
    v23 = v22;
    v24 = v21;
    [(SUUIRedeemConfiguration *)v24 loadConfigurationWithCompletionBlock:&v27];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  }

  v25 = [(SUUIRedeemPreflightOperation *)self outputBlock:v27];
  v26 = v25;
  if (v25)
  {
    (*(v25 + 16))(v25, v3);
  }
}

void __36__SUUIRedeemPreflightOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 authenticatedAccount];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 setAccount:v5];
  }

  else
  {
    [v6 setError:v7];
    [*(a1 + 32) setResultType:1];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __36__SUUIRedeemPreflightOperation_main__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v5 = [[SUUIClientContext alloc] initWithConfigurationDictionary:v6];
    [*(a1 + 32) setClientContext:v5];
  }

  else
  {
    [*(a1 + 32) setError:a3];
    [*(a1 + 32) setResultType:2];
  }
}

intptr_t __36__SUUIRedeemPreflightOperation_main__block_invoke_3(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setRedeemConfiguration:*(a1 + 40)];
  }

  else
  {
    [v3 setError:?];
    [*(a1 + 32) setResultType:3];
  }

  v4 = *(a1 + 48);

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

- (id)_redeemCodeMetadataWithClientContext:(id)context
{
  contextCopy = context;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2_1;
  v27 = __Block_byref_object_dispose__3_1;
  v28 = 0;
  v5 = dispatch_semaphore_create(0);
  uRLBag = [contextCopy URLBag];
  v7 = *MEMORY[0x277D6A628];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__SUUIRedeemPreflightOperation__redeemCodeMetadataWithClientContext___block_invoke;
  v20[3] = &unk_2798FDD10;
  v20[4] = self;
  v22 = &v23;
  v8 = v5;
  v21 = v8;
  [uRLBag loadValueForKey:v7 completionBlock:v20];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (v24[5])
  {
    v9 = objc_alloc_init(MEMORY[0x277D7FD48]);
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];

    v12 = [objc_alloc(MEMORY[0x277D69A58]) initWithAccount:activeAccount];
    [v9 setAuthenticationContext:v12];
    v13 = objc_alloc(MEMORY[0x277D69CA0]);
    v14 = [v13 initWithURL:v24[5]];
    [v9 setRequestProperties:v14];
    v15 = objc_alloc_init(MEMORY[0x277D7FD38]);
    [v9 setDataProvider:v15];
    [v9 main];
    v16 = objc_alloc(MEMORY[0x277D69CF8]);
    output = [v15 output];
    v18 = [v16 initWithRedeemCodeDictionary:output];

    [v18 setInputCode:self->_redeemCode];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v23, 8);

  return v18;
}

intptr_t __69__SUUIRedeemPreflightOperation__redeemCodeMetadataWithClientContext___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCACE0];
    v4 = a2;
    v5 = [[v3 alloc] initWithString:v4];

    v6 = [v5 queryItems];
    v7 = [v6 mutableCopy];

    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v8 = objc_alloc(MEMORY[0x277CCAD18]);
    v9 = [v8 initWithName:*MEMORY[0x277D6A620] value:*(a1[4] + 280)];
    [v7 addObject:v9];
    [v5 setQueryItems:v7];
    v10 = [v5 URL];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = a1[5];

  return dispatch_semaphore_signal(v13);
}

- (SUUIRedeemViewControllerLegacy)redeemViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_redeemViewController);

  return WeakRetained;
}

@end