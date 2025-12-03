@interface MCDMediaRemoteSerialQueueManager
+ (MCDMediaRemoteSerialQueueManager)sharedInstance;
- (MCDMediaRemoteSerialQueueManager)init;
- (void)addOperation:(id)operation cancelAllOperations:(BOOL)operations;
- (void)cancelAllOperations;
@end

@implementation MCDMediaRemoteSerialQueueManager

+ (MCDMediaRemoteSerialQueueManager)sharedInstance
{
  if (sharedInstance_isDispatched_0 != -1)
  {
    +[MCDMediaRemoteSerialQueueManager sharedInstance];
  }

  v3 = sharedInstance_sharedMRInstance;

  return v3;
}

uint64_t __50__MCDMediaRemoteSerialQueueManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedMRInstance = objc_alloc_init(MCDMediaRemoteSerialQueueManager);

  return MEMORY[0x2821F96F8]();
}

- (MCDMediaRemoteSerialQueueManager)init
{
  v6.receiver = self;
  v6.super_class = MCDMediaRemoteSerialQueueManager;
  v2 = [(MCDMediaRemoteSerialQueueManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    mediaRemoteSerialQueue = v2->_mediaRemoteSerialQueue;
    v2->_mediaRemoteSerialQueue = v3;

    [(NSOperationQueue *)v2->_mediaRemoteSerialQueue setName:@"com.apple.MCDSerialProcessingQueue"];
    [(NSOperationQueue *)v2->_mediaRemoteSerialQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)cancelAllOperations
{
  v3 = MCDGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25AD8E000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling all operations on MCDMediaRemoteSerialQueueManager", v5, 2u);
  }

  mediaRemoteSerialQueue = [(MCDMediaRemoteSerialQueueManager *)self mediaRemoteSerialQueue];
  [mediaRemoteSerialQueue cancelAllOperations];
}

- (void)addOperation:(id)operation cancelAllOperations:(BOOL)operations
{
  operationCopy = operation;
  v7 = objc_alloc_init(MEMORY[0x277CCA8C8]);
  objc_initWeak(&location, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__MCDMediaRemoteSerialQueueManager_addOperation_cancelAllOperations___block_invoke;
  v10[3] = &unk_279924170;
  objc_copyWeak(&v12, &location);
  operationsCopy = operations;
  v10[4] = self;
  v8 = operationCopy;
  v11 = v8;
  [v7 addExecutionBlock:v10];
  mediaRemoteSerialQueue = [(MCDMediaRemoteSerialQueueManager *)self mediaRemoteSerialQueue];
  [mediaRemoteSerialQueue addOperation:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __69__MCDMediaRemoteSerialQueueManager_addOperation_cancelAllOperations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained isCancelled];

  if (v3)
  {
    v4 = MCDGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Operation is cancelled, not executing", v6, 2u);
    }
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) cancelAllOperations];
    }

    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

@end