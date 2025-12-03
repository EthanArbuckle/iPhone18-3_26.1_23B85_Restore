@interface SUUIMediaSocialProfileCoordinator
+ (id)sharedCoordinator;
- (SUUIMediaSocialProfileCoordinator)init;
- (void)_accountStoreChangeNotification:(id)notification;
- (void)_authenticateOnCompletion:(id)completion;
- (void)_fireProfileBlocksWithProfile:(id)profile isFinal:(BOOL)final error:(id)error;
- (void)_handleOperationResponseWithProfile:(id)profile error:(id)error;
- (void)_queueProfileBlock:(id)block;
- (void)_requestProfile;
- (void)dealloc;
- (void)getProfileWithOptions:(id)options profileBlock:(id)block;
- (void)reset;
@end

@implementation SUUIMediaSocialProfileCoordinator

- (SUUIMediaSocialProfileCoordinator)init
{
  v11.receiver = self;
  v11.super_class = SUUIMediaSocialProfileCoordinator;
  v2 = [(SUUIMediaSocialProfileCoordinator *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIMediaSocialProfileCoordinator.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v3;

    v5 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIMediaSocialProfileCoordinator", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D69D70];
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    [defaultCenter addObserver:v2 selector:sel__accountStoreChangeNotification_ name:v8 object:defaultStore];
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D69D70];
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  [defaultCenter removeObserver:self name:v4 object:defaultStore];

  v6.receiver = self;
  v6.super_class = SUUIMediaSocialProfileCoordinator;
  [(SUUIMediaSocialProfileCoordinator *)&v6 dealloc];
}

+ (id)sharedCoordinator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SUUIMediaSocialProfileCoordinator_sharedCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCoordinator_sOnce != -1)
  {
    dispatch_once(&sharedCoordinator_sOnce, block);
  }

  v2 = sharedCoordinator_sCoordinator;

  return v2;
}

uint64_t __54__SUUIMediaSocialProfileCoordinator_sharedCoordinator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedCoordinator_sCoordinator;
  sharedCoordinator_sCoordinator = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)getProfileWithOptions:(id)options profileBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SUUIMediaSocialProfileCoordinator_getProfileWithOptions_profileBlock___block_invoke;
  block[3] = &unk_2798F90B8;
  v12 = optionsCopy;
  v13 = blockCopy;
  block[4] = self;
  v9 = optionsCopy;
  v10 = blockCopy;
  dispatch_async(dispatchQueue, block);
}

id *__72__SUUIMediaSocialProfileCoordinator_getProfileWithOptions_profileBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) && (v3 = [*(v2 + 48) operationCount], v2 = *(a1 + 32), v3) || *(v2 + 64) == 1)
  {
    v4 = *(a1 + 48);

    return [v2 _queueProfileBlock:v4];
  }

  else
  {
    v6 = [*(a1 + 40) objectForKey:@"SUUIMediaSocialProfileOptionIgnoreCache"];
    v7 = [v6 BOOLValue];

    result = *(a1 + 32);
    if (result[5])
    {
      [result[5] timeIntervalSinceNow];
      v9 = v8 > 30.0;
      result = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    if (!result[4])
    {
      goto LABEL_14;
    }

    if (!((*(a1 + 48) == 0) | v7 & 1))
    {
      v10 = [result[4] copy];
      (*(*(a1 + 48) + 16))();

      result = *(a1 + 32);
      v9 |= result[4] == 0;
    }

    if ((v9 | v7))
    {
LABEL_14:
      [result _queueProfileBlock:*(a1 + 48)];
      v11 = *(a1 + 32);

      return [v11 _requestProfile];
    }
  }

  return result;
}

- (void)reset
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUUIMediaSocialProfileCoordinator_reset__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __42__SUUIMediaSocialProfileCoordinator_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

- (void)_accountStoreChangeNotification:(id)notification
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    if (!self->_waitingForAuthentication)
    {
      lastAuthenticationAttempt = self->_lastAuthenticationAttempt;
      if (!lastAuthenticationAttempt || ([(NSDate *)lastAuthenticationAttempt timeIntervalSinceNow], v6 > 10.0))
      {
        v7 = objc_alloc(MEMORY[0x277CBEAC0]);
        v8 = [v7 initWithObjectsAndKeys:{MEMORY[0x277CBEC38], @"SUUIMediaSocialProfileOptionIgnoreCache", 0}];
        [(SUUIMediaSocialProfileCoordinator *)self getProfileWithOptions:v8 profileBlock:0];
      }
    }
  }

  else
  {
    [(SUUIMediaSocialProfileCoordinator *)self reset];
  }
}

- (void)_authenticateOnCompletion:(id)completion
{
  completionCopy = completion;
  self->_waitingForAuthentication = 1;
  date = [MEMORY[0x277CBEAA8] date];
  lastAuthenticationAttempt = self->_lastAuthenticationAttempt;
  self->_lastAuthenticationAttempt = date;

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

  v10 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:contextForSignIn];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SUUIMediaSocialProfileCoordinator__authenticateOnCompletion___block_invoke;
  v12[3] = &unk_2798F90E0;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 startWithAuthenticateResponseBlock:v12];
}

void __63__SUUIMediaSocialProfileCoordinator__authenticateOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SUUIMediaSocialProfileCoordinator__authenticateOnCompletion___block_invoke_2;
  block[3] = &unk_2798F90B8;
  v8 = v3;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __63__SUUIMediaSocialProfileCoordinator__authenticateOnCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) authenticateResponseType];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v2 == 4);
  }

  *(*(a1 + 40) + 64) = 0;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

- (void)_queueProfileBlock:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (!self->_profileBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    profileBlocks = self->_profileBlocks;
    self->_profileBlocks = v5;

    blockCopy = v9;
  }

  if (blockCopy)
  {
    v7 = self->_profileBlocks;
    v8 = [v9 copy];
    [(NSMutableArray *)v7 addObject:v8];

    blockCopy = v9;
  }
}

- (void)_requestProfile
{
  if (!self->_operationQueue)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = self->_operationQueue;
    self->_operationQueue = v3;

    [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.iTunesStoreUI.SUUIMediaSocialProfileCoordinator.operationQueue"];
    [(NSOperationQueue *)self->_operationQueue setQualityOfService:25];
    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
  }

  v5 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v6 = SSVDefaultUserAgent();
  [v5 setValue:v6 forHTTPHeaderField:*MEMORY[0x277D6A130]];

  v7 = [(SSURLBag *)[SUUIURLBag alloc] initWithURLBagContext:v5];
  v8 = objc_alloc_init(SUUIMediaSocialProfileOperation);
  [(SSVComplexOperation *)v8 configureWithURLBag:v7];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __52__SUUIMediaSocialProfileCoordinator__requestProfile__block_invoke;
  v12 = &unk_2798F9108;
  objc_copyWeak(&v13, &location);
  [(SUUIMediaSocialProfileOperation *)v8 setOutputBlock:&v9];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8, v9, v10, v11, v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __52__SUUIMediaSocialProfileCoordinator__requestProfile__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleOperationResponseWithProfile:v6 error:v5];
}

- (void)_fireProfileBlocksWithProfile:(id)profile isFinal:(BOOL)final error:(id)error
{
  profileCopy = profile;
  errorCopy = error;
  if (profileCopy)
  {
    v10 = [profileCopy copy];
    lastKnownProfile = self->_lastKnownProfile;
    self->_lastKnownProfile = v10;

    date = [MEMORY[0x277CBEAA8] date];
    lastRequestDate = self->_lastRequestDate;
    self->_lastRequestDate = date;
  }

  v14 = [(NSMutableArray *)self->_profileBlocks copy];
  [(NSMutableArray *)self->_profileBlocks removeAllObjects];
  if ([v14 count])
  {
    callbackQueue = self->_callbackQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SUUIMediaSocialProfileCoordinator__fireProfileBlocksWithProfile_isFinal_error___block_invoke;
    v16[3] = &unk_2798F60A8;
    v17 = v14;
    v18 = profileCopy;
    finalCopy = final;
    v19 = errorCopy;
    dispatch_async(callbackQueue, v16);
  }
}

void __81__SUUIMediaSocialProfileCoordinator__fireProfileBlocksWithProfile_isFinal_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_handleOperationResponseWithProfile:(id)profile error:(id)error
{
  profileCopy = profile;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SUUIMediaSocialProfileCoordinator__handleOperationResponseWithProfile_error___block_invoke;
  block[3] = &unk_2798F5BC0;
  v12 = errorCopy;
  selfCopy = self;
  v14 = profileCopy;
  v9 = profileCopy;
  v10 = errorCopy;
  dispatch_async(dispatchQueue, block);
}

void __79__SUUIMediaSocialProfileCoordinator__handleOperationResponseWithProfile_error___block_invoke(id *a1)
{
  v2 = [a1[4] domain];
  if ([v2 isEqualToString:@"SUUIErrorDomain"])
  {
    v3 = [a1[4] code];

    if (v3 == 3)
    {
      objc_initWeak(&location, a1[5]);
      v4 = a1[5];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __79__SUUIMediaSocialProfileCoordinator__handleOperationResponseWithProfile_error___block_invoke_2;
      v8[3] = &unk_2798F6918;
      objc_copyWeak(&v11, &location);
      v9 = a1[6];
      v10 = a1[4];
      [v4 _authenticateOnCompletion:v8];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
      return;
    }
  }

  else
  {
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];

  [v5 _fireProfileBlocksWithProfile:v6 isFinal:1 error:v7];
}

void __79__SUUIMediaSocialProfileCoordinator__handleOperationResponseWithProfile_error___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained _requestProfile];
  }

  else
  {
    [WeakRetained _fireProfileBlocksWithProfile:*(a1 + 32) isFinal:1 error:*(a1 + 40)];
  }
}

@end