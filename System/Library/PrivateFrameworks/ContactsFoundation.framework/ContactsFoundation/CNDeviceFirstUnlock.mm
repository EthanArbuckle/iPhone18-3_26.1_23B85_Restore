@interface CNDeviceFirstUnlock
+ (id)sharedInstance;
- (CNDeviceFirstUnlock)init;
- (int64_t)countOfUnlockHandlers;
- (void)addUnlockHandlerWithIdentifier:(id)identifier block:(id)block;
- (void)dealloc;
- (void)removeUnlockHandlerWithIdentifier:(id)identifier;
- (void)waitForAllOperationsToFinish;
- (void)withHandlersLock_addHandlerWithIdentifier:(id)identifier block:(id)block;
- (void)withHandlersLock_cancelExistingOperationWithIdentifier:(id)identifier;
- (void)withHandlersLock_registerForDeviceFirstUnlock;
@end

@implementation CNDeviceFirstUnlock

- (CNDeviceFirstUnlock)init
{
  v11.receiver = self;
  v11.super_class = CNDeviceFirstUnlock;
  v2 = [(CNDeviceFirstUnlock *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNUnfairLock);
    handlersLock = v2->_handlersLock;
    v2->_handlersLock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    unlockHandlers = v2->_unlockHandlers;
    v2->_unlockHandlers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    workQueue = v2->_workQueue;
    v2->_workQueue = v7;

    [(NSOperationQueue *)v2->_workQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_workQueue setSuspended:1];
    v9 = v2;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CNDeviceFirstUnlock_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_cn_once_token_1 != -1)
  {
    dispatch_once(&sharedInstance_cn_once_token_1, block);
  }

  v2 = sharedInstance_cn_once_object_1;

  return v2;
}

uint64_t __37__CNDeviceFirstUnlock_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_cn_once_object_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  [(CNFuture *)self->_firstUnlockFuture cancel];
  v3.receiver = self;
  v3.super_class = CNDeviceFirstUnlock;
  [(CNDeviceFirstUnlock *)&v3 dealloc];
}

- (void)addUnlockHandlerWithIdentifier:(id)identifier block:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  if ([(CNDeviceFirstUnlock *)self isUnlockedSinceBoot])
  {
    workQueue = [(CNDeviceFirstUnlock *)self workQueue];
    [workQueue addOperationWithBlock:blockCopy];

    workQueue2 = [(CNDeviceFirstUnlock *)self workQueue];
    [workQueue2 setSuspended:0];
  }

  else
  {
    handlersLock = [(CNDeviceFirstUnlock *)self handlersLock];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__CNDeviceFirstUnlock_addUnlockHandlerWithIdentifier_block___block_invoke;
    v11[3] = &unk_1E6ED60A0;
    v11[4] = self;
    v12 = identifierCopy;
    v13 = blockCopy;
    CNRunWithLock(handlersLock, v11);
  }
}

uint64_t __60__CNDeviceFirstUnlock_addUnlockHandlerWithIdentifier_block___block_invoke(uint64_t a1)
{
  [*(a1 + 32) withHandlersLock_addHandlerWithIdentifier:*(a1 + 40) block:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 withHandlersLock_registerForDeviceFirstUnlock];
}

- (void)withHandlersLock_addHandlerWithIdentifier:(id)identifier block:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  if (off_1EF440708(&__block_literal_global_120, identifierCopy))
  {
    workQueue = [(CNDeviceFirstUnlock *)self workQueue];
    [workQueue addOperationWithBlock:blockCopy];
  }

  else
  {
    [(CNDeviceFirstUnlock *)self withHandlersLock_cancelExistingOperationWithIdentifier:identifierCopy];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E696AAE0];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __71__CNDeviceFirstUnlock_withHandlersLock_addHandlerWithIdentifier_block___block_invoke;
    v17 = &unk_1E6ED7570;
    v19 = blockCopy;
    objc_copyWeak(&v20, &location);
    v10 = identifierCopy;
    v18 = v10;
    v11 = [v9 blockOperationWithBlock:&v14];
    v12 = [(CNDeviceFirstUnlock *)self unlockHandlers:v14];
    [v12 setObject:v11 forKeyedSubscript:v10];

    workQueue2 = [(CNDeviceFirstUnlock *)self workQueue];
    [workQueue2 addOperation:v11];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __71__CNDeviceFirstUnlock_withHandlersLock_addHandlerWithIdentifier_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeUnlockHandlerWithIdentifier:*(a1 + 32)];
}

- (void)withHandlersLock_registerForDeviceFirstUnlock
{
  firstUnlockFuture = [(CNDeviceFirstUnlock *)self firstUnlockFuture];

  if (!firstUnlockFuture)
  {
    v4 = +[CNDeviceFirstUnlockFuture deviceFirstUnlockFuture];
    [(CNDeviceFirstUnlock *)self setFirstUnlockFuture:v4];

    workQueue = [(CNDeviceFirstUnlock *)self workQueue];
    firstUnlockFuture2 = [(CNDeviceFirstUnlock *)self firstUnlockFuture];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__CNDeviceFirstUnlock_withHandlersLock_registerForDeviceFirstUnlock__block_invoke;
    v8[3] = &unk_1E6ED6988;
    v9 = workQueue;
    v7 = workQueue;
    [firstUnlockFuture2 addSuccessBlock:v8];
  }
}

- (void)removeUnlockHandlerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  handlersLock = [(CNDeviceFirstUnlock *)self handlersLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CNDeviceFirstUnlock_removeUnlockHandlerWithIdentifier___block_invoke;
  v7[3] = &unk_1E6ED5168;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  CNRunWithLock(handlersLock, v7);
}

- (void)withHandlersLock_cancelExistingOperationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (off_1EF440728(&__block_literal_global_122, identifierCopy))
  {
    unlockHandlers = [(CNDeviceFirstUnlock *)self unlockHandlers];
    v5 = [unlockHandlers objectForKeyedSubscript:identifierCopy];

    [v5 cancel];
    unlockHandlers2 = [(CNDeviceFirstUnlock *)self unlockHandlers];
    [unlockHandlers2 setObject:0 forKeyedSubscript:identifierCopy];
  }
}

- (void)waitForAllOperationsToFinish
{
  workQueue = [(CNDeviceFirstUnlock *)self workQueue];
  [workQueue waitUntilAllOperationsAreFinished];
}

- (int64_t)countOfUnlockHandlers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  handlersLock = [(CNDeviceFirstUnlock *)self handlersLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CNDeviceFirstUnlock_countOfUnlockHandlers__block_invoke;
  v6[3] = &unk_1E6ED5808;
  v6[4] = self;
  v6[5] = &v7;
  CNRunWithLock(handlersLock, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __44__CNDeviceFirstUnlock_countOfUnlockHandlers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unlockHandlers];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

@end