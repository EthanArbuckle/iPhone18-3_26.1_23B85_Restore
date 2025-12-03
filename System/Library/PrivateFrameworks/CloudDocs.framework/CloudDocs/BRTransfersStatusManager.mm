@interface BRTransfersStatusManager
+ (id)defaultManager;
+ (void)initialize;
- (BRTransfersStatusManager)initWithPersonaIdentifier:(id)identifier;
- (NSArray)transfers;
- (id)startObservingItemDownloadProgressAtURL:(id)l;
- (void)_progressSubscription;
- (void)_setGlobalProgress:(id)progress forIvar:(id *)ivar;
- (void)_setupTimerToDisplayGlobalProgress;
- (void)addTransfer:(id)transfer;
- (void)dealloc;
- (void)downloadAndObserveItemAtURL:(id)l handler:(id)handler;
- (void)insertTransfer:(id)transfer atIndex:(unint64_t)index;
- (void)removeTransfer:(id)transfer;
- (void)showGlobalProgressIfNeeded;
- (void)stopObservingItemDownloadProgress:(id)progress;
@end

@implementation BRTransfersStatusManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    g_transferManagerForPersona = [objc_opt_new() initWithKeyOptions:0 valueOptions:5 capacity:2];

    MEMORY[0x1EEE66BB8]();
  }
}

- (BRTransfersStatusManager)initWithPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = BRTransfersStatusManager;
  v6 = [(BRTransfersStatusManager *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transfers = v6->_transfers;
    v6->_transfers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v9;

    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("status-manager", v12);

    queue = v6->_queue;
    v6->_queue = v13;

    objc_storeStrong(&v6->_personaIdentifier, identifier);
    [(BRTransfersStatusManager *)v6 _progressSubscription];
  }

  return v6;
}

- (void)dealloc
{
  v3 = g_transferManagerForPersona;
  objc_sync_enter(v3);
  [g_transferManagerForPersona removeObjectForKey:self->_personaIdentifier];
  objc_sync_exit(v3);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_globalProgressSubscriber)
  {
    [MEMORY[0x1E696AE38] _removeSubscriber:?];
    globalProgressSubscriber = selfCopy->_globalProgressSubscriber;
    selfCopy->_globalProgressSubscriber = 0;
  }

  objc_sync_exit(selfCopy);

  v6.receiver = selfCopy;
  v6.super_class = BRTransfersStatusManager;
  [(BRTransfersStatusManager *)&v6 dealloc];
}

+ (id)defaultManager
{
  v2 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v3 = g_transferManagerForPersona;
  objc_sync_enter(v3);
  v4 = [g_transferManagerForPersona objectForKey:v2];
  if (!v4)
  {
    v4 = [[BRTransfersStatusManager alloc] initWithPersonaIdentifier:v2];
    [g_transferManagerForPersona setObject:v4 forKey:v2];
  }

  objc_sync_exit(v3);

  return v4;
}

- (NSArray)transfers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_transfers copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)downloadAndObserveItemAtURL:(id)l handler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v8 = [[BRFileProvidingOperation alloc] initWithURL:lCopy readingOptions:131073];
  v9 = [(BRTransfersStatusManager *)self startObservingItemDownloadProgressAtURL:lCopy];

  [v9 setCancellable:1];
  cancellationHandler = [v9 cancellationHandler];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__BRTransfersStatusManager_downloadAndObserveItemAtURL_handler___block_invoke;
  v18[3] = &unk_1E7A15078;
  v19 = v8;
  v20 = cancellationHandler;
  v11 = v8;
  v12 = cancellationHandler;
  [v9 setCancellationHandler:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__BRTransfersStatusManager_downloadAndObserveItemAtURL_handler___block_invoke_2;
  v15[3] = &unk_1E7A15C00;
  v16 = v9;
  v17 = handlerCopy;
  v15[4] = self;
  v13 = v9;
  v14 = handlerCopy;
  [(BRFileProvidingOperation *)v11 setFileProvidingCompletion:v15];
  [(NSOperationQueue *)self->_operationQueue addOperation:v11];
}

uint64_t __64__BRTransfersStatusManager_downloadAndObserveItemAtURL_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 cancel];
}

uint64_t __64__BRTransfersStatusManager_downloadAndObserveItemAtURL_handler___block_invoke_2(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 stopObservingItemDownloadProgress:v3];
}

- (id)startObservingItemDownloadProgressAtURL:(id)l
{
  lCopy = l;
  v5 = [[BRDownloadProgressProxy alloc] initWithURL:lCopy];
  [(BRDownloadProgressProxy *)v5 start];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shouldHideGlobalDownloadProgressCount = selfCopy->_shouldHideGlobalDownloadProgressCount;
  if (!shouldHideGlobalDownloadProgressCount)
  {
    if (selfCopy->_globalDownloadProgress)
    {
      [(BRTransfersStatusManager *)selfCopy removeTransfer:?];
      shouldHideGlobalDownloadProgressCount = selfCopy->_shouldHideGlobalDownloadProgressCount;
    }

    else
    {
      shouldHideGlobalDownloadProgressCount = 0;
    }
  }

  selfCopy->_shouldHideGlobalDownloadProgressCount = shouldHideGlobalDownloadProgressCount + 1;
  [(BRTransfersStatusManager *)selfCopy addTransfer:v5];
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)stopObservingItemDownloadProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  --selfCopy->_shouldHideGlobalDownloadProgressCount;
  [(BRTransfersStatusManager *)selfCopy removeTransfer:progressCopy];
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__BRTransfersStatusManager_stopObservingItemDownloadProgress___block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = selfCopy;
  dispatch_async(queue, block);
  objc_sync_exit(selfCopy);

  [progressCopy stop];
}

- (void)showGlobalProgressIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_shouldHideGlobalDownloadProgressCount && self->_globalDownloadProgress)
  {

    [BRTransfersStatusManager insertTransfer:"insertTransfer:atIndex:" atIndex:?];
  }
}

- (void)_setupTimerToDisplayGlobalProgress
{
  dispatch_assert_queue_V2(self->_queue);
  timerToDisplayGlobalProgress = self->_timerToDisplayGlobalProgress;
  if (timerToDisplayGlobalProgress)
  {
    dispatch_source_cancel(timerToDisplayGlobalProgress);
  }

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  v5 = self->_timerToDisplayGlobalProgress;
  self->_timerToDisplayGlobalProgress = v4;

  v6 = self->_timerToDisplayGlobalProgress;
  v7 = dispatch_time(0, 3000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x2CB41780uLL);
  objc_initWeak(&location, self);
  v8 = self->_timerToDisplayGlobalProgress;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__BRTransfersStatusManager__setupTimerToDisplayGlobalProgress__block_invoke;
  v16[3] = &unk_1E7A15630;
  objc_copyWeak(&v17, &location);
  v9 = v8;
  v10 = v16;
  v11 = v9;
  v12 = v10;
  v13 = v12;
  v14 = v12;
  if (brc_block_remember_persona)
  {
    v14 = brc_block_remember_persona(v12);
  }

  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v14);
  dispatch_source_set_event_handler(v11, v15);

  dispatch_resume(self->_timerToDisplayGlobalProgress);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __62__BRTransfersStatusManager__setupTimerToDisplayGlobalProgress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showGlobalProgressIfNeeded];
}

- (void)removeTransfer:(id)transfer
{
  transferCopy = transfer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableArray *)selfCopy->_transfers indexOfObject:transferCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5];
    [(BRTransfersStatusManager *)selfCopy willChange:3 valuesAtIndexes:v6 forKey:@"transfers"];
    [(NSMutableArray *)selfCopy->_transfers removeObject:transferCopy];
    [(BRTransfersStatusManager *)selfCopy didChange:3 valuesAtIndexes:v6 forKey:@"transfers"];
  }

  objc_sync_exit(selfCopy);
}

- (void)addTransfer:(id)transfer
{
  transferCopy = transfer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableArray *)selfCopy->_transfers count];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5];
  [(BRTransfersStatusManager *)selfCopy willChange:2 valuesAtIndexes:v6 forKey:@"transfers"];
  [(NSMutableArray *)selfCopy->_transfers addObject:transferCopy];
  [(BRTransfersStatusManager *)selfCopy didChange:2 valuesAtIndexes:v6 forKey:@"transfers"];

  objc_sync_exit(selfCopy);
}

- (void)insertTransfer:(id)transfer atIndex:(unint64_t)index
{
  transferCopy = transfer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:index];
  [(BRTransfersStatusManager *)selfCopy willChange:2 valuesAtIndexes:v7 forKey:@"transfers"];
  [(NSMutableArray *)selfCopy->_transfers insertObject:transferCopy atIndex:0];
  [(BRTransfersStatusManager *)selfCopy didChange:2 valuesAtIndexes:v7 forKey:@"transfers"];

  objc_sync_exit(selfCopy);
}

- (void)_setGlobalProgress:(id)progress forIvar:(id *)ivar
{
  progressCopy = progress;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (*ivar)
  {
    [(BRTransfersStatusManager *)selfCopy removeTransfer:?];
  }

  objc_storeStrong(ivar, progress);
  if (progressCopy && (!selfCopy->_shouldHideGlobalDownloadProgressCount || &selfCopy->_globalDownloadProgress != ivar))
  {
    [(BRTransfersStatusManager *)selfCopy insertTransfer:progressCopy atIndex:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)_progressSubscription
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__BRTransfersStatusManager__progressSubscription__block_invoke;
  v9[3] = &unk_1E7A15C28;
  v9[4] = self;
  v3 = MEMORY[0x1B26FEA90](v9, a2);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = MEMORY[0x1E696AE38];
  v6 = +[BRDaemonConnection mobileDocumentsURL];
  v7 = [v5 _addSubscriberForFileURL:v6 withPublishingHandler:v3];
  globalProgressSubscriber = selfCopy->_globalProgressSubscriber;
  selfCopy->_globalProgressSubscriber = v7;

  objc_sync_exit(selfCopy);
}

id __49__BRTransfersStatusManager__progressSubscription__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A858]];

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if ([v5 isEqualToString:*MEMORY[0x1E696A848]])
  {
    v7 = 32;
LABEL_5:
    [*(a1 + 32) _setGlobalProgress:v3 forIvar:*(a1 + 32) + v7];
    objc_sync_exit(v6);

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__BRTransfersStatusManager__progressSubscription__block_invoke_2;
    v16[3] = &unk_1E7A14A08;
    v8 = v5;
    v9 = *(a1 + 32);
    v17 = v8;
    v18 = v9;
    v10 = [v16 copy];
    v14 = MEMORY[0x1B26FEA90](v10, v11, v12, v13);

    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696A870]])
  {
    v7 = 24;
    goto LABEL_5;
  }

  objc_sync_exit(v6);

  v14 = 0;
LABEL_7:

  return v14;
}

uint64_t __49__BRTransfersStatusManager__progressSubscription__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x1E696A848]])
  {
    v2 = 32;
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:*MEMORY[0x1E696A870]];
    if (!result)
    {
      return result;
    }

    v2 = 24;
  }

  v4 = *(a1 + 40);

  return [v4 _setGlobalProgress:0 forIvar:&v4[v2]];
}

@end