@interface SUUIMediaSocialAdminPermissionsCoordinator
+ (id)sharedCoordinator;
- (NSArray)lastKnownAuthors;
- (NSNumber)lastKnownAdminStatus;
- (SUUIMediaSocialAdminPermissionsCoordinator)init;
- (void)_authenticateOnCompletion:(id)completion;
- (void)_fireResultsBlocksWithAuthors:(id)authors error:(id)error;
- (void)_getAuthors;
- (void)_handleOperationResponseWithAuthors:(id)authors error:(id)error;
- (void)_queueResultBlock:(id)block;
- (void)getAdminStatusWithOptions:(id)options resultBlock:(id)block;
- (void)getAuthorsAndWaitWithOptions:(id)options authorsBlock:(id)block;
- (void)getAuthorsWithOptions:(id)options authorsBlock:(id)block;
- (void)reset;
@end

@implementation SUUIMediaSocialAdminPermissionsCoordinator

- (SUUIMediaSocialAdminPermissionsCoordinator)init
{
  v10.receiver = self;
  v10.super_class = SUUIMediaSocialAdminPermissionsCoordinator;
  v2 = [(SUUIMediaSocialAdminPermissionsCoordinator *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIMediaSocialAdminPermissionsCoordinator.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v3;

    v5 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIMediaSocialAdminPermissionsCoordinator", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    lastKnownAuthors = v2->_lastKnownAuthors;
    v2->_lastKnownAuthors = 0;

    lastRequestDate = v2->_lastRequestDate;
    v2->_lastRequestDate = 0;
  }

  return v2;
}

+ (id)sharedCoordinator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SUUIMediaSocialAdminPermissionsCoordinator_sharedCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCoordinator_sOnce_0 != -1)
  {
    dispatch_once(&sharedCoordinator_sOnce_0, block);
  }

  v2 = sharedCoordinator_sCoordinator_0;

  return v2;
}

uint64_t __63__SUUIMediaSocialAdminPermissionsCoordinator_sharedCoordinator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedCoordinator_sCoordinator_0;
  sharedCoordinator_sCoordinator_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)getAdminStatusWithOptions:(id)options resultBlock:(id)block
{
  v13[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = [options objectForKeyedSubscript:@"SUUIMediaSocialAdminPermissionsOptionIgnoreCache"];
  v7 = v6;
  v8 = MEMORY[0x277CBEC28];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v12 = *MEMORY[0x277D6A600];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  mEMORY[0x277D69CE0] = [MEMORY[0x277D69CE0] sharedCoordinator];

  [mEMORY[0x277D69CE0] getAdminStatusWithOptions:v10 resultBlock:blockCopy];
}

- (void)getAuthorsWithOptions:(id)options authorsBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SUUIMediaSocialAdminPermissionsCoordinator_getAuthorsWithOptions_authorsBlock___block_invoke;
  block[3] = &unk_2798F9498;
  v12 = optionsCopy;
  selfCopy = self;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = optionsCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __81__SUUIMediaSocialAdminPermissionsCoordinator_getAuthorsWithOptions_authorsBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"SUUIMediaSocialAdminPermissionsOptionIgnoreCache"];
  v3 = [v2 BOOLValue];

  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:*(*(a1 + 40) + 32)];
  v6 = v5;

  v7 = *(a1 + 40);
  if (v6 > 30.0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v7[3] || (v8 & 1) != 0)
  {
    goto LABEL_10;
  }

  v9 = [v7[3] copy];
  if (!v9)
  {
    v7 = *(a1 + 40);
LABEL_10:
    [v7 _queueResultBlock:*(a1 + 48)];
    v11 = [*(a1 + 40) _getAuthors];
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v9;
  v11 = *(a1 + 48);
  if (v11)
  {
    v13 = v10;
    v11 = (*(v11 + 16))();
    v10 = v13;
  }

LABEL_11:

  return MEMORY[0x2821F96F8](v11, v10);
}

- (void)getAuthorsAndWaitWithOptions:(id)options authorsBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  v8 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__SUUIMediaSocialAdminPermissionsCoordinator_getAuthorsAndWaitWithOptions_authorsBlock___block_invoke;
  v11[3] = &unk_2798FA5E0;
  v12 = v8;
  v13 = blockCopy;
  v9 = v8;
  v10 = blockCopy;
  [(SUUIMediaSocialAdminPermissionsCoordinator *)self getAuthorsWithOptions:optionsCopy authorsBlock:v11];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __88__SUUIMediaSocialAdminPermissionsCoordinator_getAuthorsAndWaitWithOptions_authorsBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (NSArray)lastKnownAuthors
{
  v2 = [(NSArray *)self->_lastKnownAuthors copy];

  return v2;
}

- (NSNumber)lastKnownAdminStatus
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D69CE0] = [MEMORY[0x277D69CE0] sharedCoordinator];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D69CE0], "isCurrentUserAdmin")}];

  return v4;
}

- (void)reset
{
  lastKnownAuthors = self->_lastKnownAuthors;
  self->_lastKnownAuthors = 0;

  lastRequestDate = self->_lastRequestDate;
  self->_lastRequestDate = 0;

  mEMORY[0x277D69CE0] = [MEMORY[0x277D69CE0] sharedCoordinator];
  [mEMORY[0x277D69CE0] reset];
}

- (void)_authenticateOnCompletion:(id)completion
{
  completionCopy = completion;
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

  v7 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:contextForSignIn];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SUUIMediaSocialAdminPermissionsCoordinator__authenticateOnCompletion___block_invoke;
  v9[3] = &unk_2798F6940;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 startWithAuthenticateResponseBlock:v9];
}

void __72__SUUIMediaSocialAdminPermissionsCoordinator__authenticateOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SUUIMediaSocialAdminPermissionsCoordinator__authenticateOnCompletion___block_invoke_2;
  v5[3] = &unk_2798F6030;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __72__SUUIMediaSocialAdminPermissionsCoordinator__authenticateOnCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) authenticateResponseType];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_fireResultsBlocksWithAuthors:(id)authors error:(id)error
{
  authorsCopy = authors;
  errorCopy = error;
  if (authorsCopy)
  {
    objc_storeStrong(&self->_lastKnownAuthors, authors);
    date = [MEMORY[0x277CBEAA8] date];
    lastRequestDate = self->_lastRequestDate;
    self->_lastRequestDate = date;
  }

  v11 = [(NSMutableArray *)self->_resultBlocks copy];
  [(NSMutableArray *)self->_resultBlocks removeAllObjects];
  if ([v11 count])
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__SUUIMediaSocialAdminPermissionsCoordinator__fireResultsBlocksWithAuthors_error___block_invoke;
    block[3] = &unk_2798F5BC0;
    v14 = v11;
    v15 = authorsCopy;
    v16 = errorCopy;
    dispatch_async(callbackQueue, block);
  }
}

void __82__SUUIMediaSocialAdminPermissionsCoordinator__fireResultsBlocksWithAuthors_error___block_invoke(uint64_t a1)
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

- (void)_getAuthors
{
  v3 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v4 = SSVDefaultUserAgent();
  [v3 setValue:v4 forHTTPHeaderField:*MEMORY[0x277D6A130]];

  v5 = [(SSURLBag *)[SUUIURLBag alloc] initWithURLBagContext:v3];
  v6 = objc_alloc_init(SUUIMediaSocialAdminPermissionsOperation);
  [(SSVComplexOperation *)v6 configureWithURLBag:v5];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __57__SUUIMediaSocialAdminPermissionsCoordinator__getAuthors__block_invoke;
  v10 = &unk_2798F6CB8;
  objc_copyWeak(&v11, &location);
  [(SUUIMediaSocialAdminPermissionsOperation *)v6 setOutputBlock:&v7];
  [(SUUIMediaSocialAdminPermissionsOperation *)v6 main:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__SUUIMediaSocialAdminPermissionsCoordinator__getAuthors__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleOperationResponseWithAuthors:v6 error:v5];
}

- (void)_handleOperationResponseWithAuthors:(id)authors error:(id)error
{
  authorsCopy = authors;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SUUIMediaSocialAdminPermissionsCoordinator__handleOperationResponseWithAuthors_error___block_invoke;
  block[3] = &unk_2798F5BC0;
  v12 = errorCopy;
  selfCopy = self;
  v14 = authorsCopy;
  v9 = authorsCopy;
  v10 = errorCopy;
  dispatch_async(dispatchQueue, block);
}

void __88__SUUIMediaSocialAdminPermissionsCoordinator__handleOperationResponseWithAuthors_error___block_invoke(id *a1)
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
      v8[2] = __88__SUUIMediaSocialAdminPermissionsCoordinator__handleOperationResponseWithAuthors_error___block_invoke_2;
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

  [v5 _fireResultsBlocksWithAuthors:v6 error:v7];
}

void __88__SUUIMediaSocialAdminPermissionsCoordinator__handleOperationResponseWithAuthors_error___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained _getAuthors];
  }

  else
  {
    [WeakRetained _fireResultsBlocksWithAuthors:*(a1 + 32) error:*(a1 + 40)];
  }
}

- (void)_queueResultBlock:(id)block
{
  if (block)
  {
    v4 = [block copy];
    resultBlocks = self->_resultBlocks;
    aBlock = v4;
    if (!resultBlocks)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_resultBlocks;
      self->_resultBlocks = v6;

      v4 = aBlock;
      resultBlocks = self->_resultBlocks;
    }

    v8 = _Block_copy(v4);
    [(NSMutableArray *)resultBlocks addObject:v8];
  }
}

@end