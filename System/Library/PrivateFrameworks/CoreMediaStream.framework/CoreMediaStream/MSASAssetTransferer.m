@interface MSASAssetTransferer
- (MSASAssetTransferer)initWithPersonID:(id)a3 eventQueue:(id)a4;
- (MSASPersonModel)model;
- (MSAlbumSharingDaemon)daemon;
- (MSBackoffManager)backoffManager;
- (id)_MMCSTokenTooOldError;
- (id)_canceledError;
- (id)_missingMMCSTokenError;
- (id)_missingURLError;
- (id)delegate;
- (unint64_t)workQueueNextItemID;
- (void)MMCSEngine:(id)a3 logPerformanceMetrics:(id)a4;
- (void)_rereadPerformanceLoggingSetting;
- (void)_sendDidIdleNotification;
- (void)cancelCompletionBlock:(id)a3;
- (void)retryOutstandingActivities;
- (void)setFocusAlbumGUID:(id)a3;
- (void)setFocusAssetCollectionGUID:(id)a3;
- (void)setMaxMMCSTokenValidityTimeInterval:(double)a3;
- (void)shutDownCompletionBlock:(id)a3;
- (void)stopCompletionBlock:(id)a3;
- (void)workQueueShutDownCompletionBlock:(id)a3;
@end

@implementation MSASAssetTransferer

- (MSBackoffManager)backoffManager
{
  WeakRetained = objc_loadWeakRetained(&self->_backoffManager);

  return WeakRetained;
}

- (MSASPersonModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (MSAlbumSharingDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)MMCSEngine:(id)a3 logPerformanceMetrics:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = a4;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendDidIdleNotification
{
  v3 = [(MSASAssetTransferer *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MSASAssetTransferer__sendDidIdleNotification__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__MSASAssetTransferer__sendDidIdleNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"MSASAssetTransfererDidIdle" object:*(a1 + 32)];
}

- (id)_canceledError
{
  if (_canceledError_onceToken_6145 != -1)
  {
    dispatch_once(&_canceledError_onceToken_6145, &__block_literal_global_37_6146);
  }

  v3 = _canceledError_error_6147;

  return v3;
}

void __37__MSASAssetTransferer__canceledError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_ASSET_TRANS_CANCELED");
  v1 = [v0 MSErrorWithDomain:@"MSASAssetTransferErrorDomain" code:3 description:v3];
  v2 = _canceledError_error_6147;
  _canceledError_error_6147 = v1;
}

- (id)_MMCSTokenTooOldError
{
  if (_MMCSTokenTooOldError_onceToken != -1)
  {
    dispatch_once(&_MMCSTokenTooOldError_onceToken, &__block_literal_global_32_6153);
  }

  v3 = _MMCSTokenTooOldError_error;

  return v3;
}

void __44__MSASAssetTransferer__MMCSTokenTooOldError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_ASSET_TRANS_MMCS_TOKEN_TOO_OLD");
  v1 = [v0 MSErrorWithDomain:@"MSASAssetTransferErrorDomain" code:2 description:v3];
  v2 = _MMCSTokenTooOldError_error;
  _MMCSTokenTooOldError_error = v1;
}

- (id)_missingMMCSTokenError
{
  if (_missingMMCSTokenError_onceToken != -1)
  {
    dispatch_once(&_missingMMCSTokenError_onceToken, &__block_literal_global_27_6158);
  }

  v3 = _missingMMCSTokenError_error;

  return v3;
}

void __45__MSASAssetTransferer__missingMMCSTokenError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_ASSET_TRANS_MISSING_MMCS_TOKEN");
  v1 = [v0 MSErrorWithDomain:@"MSASAssetTransferErrorDomain" code:1 description:v3];
  v2 = _missingMMCSTokenError_error;
  _missingMMCSTokenError_error = v1;
}

- (id)_missingURLError
{
  if (_missingURLError_onceToken != -1)
  {
    dispatch_once(&_missingURLError_onceToken, &__block_literal_global_6163);
  }

  v3 = _missingURLError_error;

  return v3;
}

void __39__MSASAssetTransferer__missingURLError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_ASSET_TRANS_MISSING_URL");
  v1 = [v0 MSErrorWithDomain:@"MSASAssetTransferErrorDomain" code:0 description:v3];
  v2 = _missingURLError_error;
  _missingURLError_error = v1;
}

- (unint64_t)workQueueNextItemID
{
  v2 = [(MSASAssetTransferer *)self model];
  v3 = [v2 nextMMCSItemID];

  return v3;
}

- (void)retryOutstandingActivities
{
  v3 = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSASAssetTransferer_retryOutstandingActivities__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)workQueueShutDownCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  engine = self->_engine;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__MSASAssetTransferer_workQueueShutDownCompletionBlock___block_invoke;
  v8[3] = &unk_278E927A0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(MMCSEngine *)engine shutDownCompletionBlock:v8];
}

void __56__MSASAssetTransferer_workQueueShutDownCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__MSASAssetTransferer_workQueueShutDownCompletionBlock___block_invoke_2;
  v4[3] = &unk_278E927A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __56__MSASAssetTransferer_workQueueShutDownCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) eventQueue];
    dispatch_async(v4, *(a1 + 40));
  }
}

- (void)shutDownCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSASAssetTransferer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__MSASAssetTransferer_shutDownCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__MSASAssetTransferer_shutDownCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasShutDown:1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__MSASAssetTransferer_shutDownCompletionBlock___block_invoke_2;
  v4[3] = &unk_278E927A0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 workQueueShutDownCompletionBlock:v4];
}

void __47__MSASAssetTransferer_shutDownCompletionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) eventQueue];
    dispatch_async(v2, *(a1 + 40));
  }
}

- (void)cancelCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSASAssetTransferer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__MSASAssetTransferer_cancelCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__MSASAssetTransferer_cancelCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) workQueueCancel];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) eventQueue];
    dispatch_async(v2, *(a1 + 40));
  }
}

- (void)stopCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSASAssetTransferer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__MSASAssetTransferer_stopCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__MSASAssetTransferer_stopCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) workQueueStop];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) eventQueue];
    dispatch_async(v2, *(a1 + 40));
  }
}

- (void)setMaxMMCSTokenValidityTimeInterval:(double)a3
{
  v5 = [(MSASAssetTransferer *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__MSASAssetTransferer_setMaxMMCSTokenValidityTimeInterval___block_invoke;
  v6[3] = &unk_278E92750;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_async(v5, v6);
}

double __59__MSASAssetTransferer_setMaxMMCSTokenValidityTimeInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 48) = result;
  return result;
}

- (void)setFocusAssetCollectionGUID:(id)a3
{
  v4 = a3;
  v5 = [(MSASAssetTransferer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__MSASAssetTransferer_setFocusAssetCollectionGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setFocusAlbumGUID:(id)a3
{
  v4 = a3;
  v5 = [(MSASAssetTransferer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__MSASAssetTransferer_setFocusAlbumGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (MSASAssetTransferer)initWithPersonID:(id)a3 eventQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = MSASAssetTransferer;
  v9 = [(MSASAssetTransferer *)&v26 init];
  if (v9)
  {
    v10 = dispatch_queue_create("MSASAssetTransferer work queue", 0);
    workQueue = v9->_workQueue;
    v9->_workQueue = v10;

    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = dispatch_queue_create("MSASAssetTransferer event queue", 0);
    }

    eventQueue = v9->_eventQueue;
    v9->_eventQueue = v12;

    v14 = v9->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MSASAssetTransferer_initWithPersonID_eventQueue___block_invoke;
    block[3] = &unk_278E927C8;
    v15 = v9;
    v24 = v15;
    v25 = v7;
    dispatch_sync(v14, block);
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__MSASAssetTransferer_initWithPersonID_eventQueue___block_invoke_2;
    v21[3] = &unk_278E91C28;
    v18 = v15;
    v22 = v18;
    v19 = [v16 addObserverForName:@"MSPlatformPerformanceLoggingSettingDidChange" object:0 queue:v17 usingBlock:v21];

    *&v18->_maxBatchCount = 0x30000000ALL;
    objc_storeStrong(&v18->_personID, a3);
  }

  return v9;
}

void __51__MSASAssetTransferer_initWithPersonID_eventQueue___block_invoke(uint64_t a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = MSASPlatform();
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = MSASPlatform();
    v5 = [v4 MMCSConcurrentConnectionsCount];
  }

  else
  {
    v5 = 1;
  }

  v20[0] = *MEMORY[0x277D25458];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v7 = *MEMORY[0x277D25448];
  v21[0] = v6;
  v21[1] = MEMORY[0x277CBEC38];
  v8 = *MEMORY[0x277D25450];
  v20[1] = v7;
  v20[2] = v8;
  v20[3] = *MEMORY[0x277D25440];
  v21[2] = MEMORY[0x277CBEC38];
  v21[3] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v10 = [MMCSEngine alloc];
  v11 = MEMORY[0x277CBEBC0];
  v12 = [*(a1 + 32) _pathForPersonID:*(a1 + 40)];
  v13 = [v11 fileURLWithPath:v12];
  v14 = MSPlatform();
  v15 = [v14 appBundleInfoString];
  v16 = [(MMCSEngine *)v10 initWithWorkPath:v13 appIDHeader:v15 dataClass:@"com.apple.Dataclass.SharedStreams" options:v9];
  v17 = *(a1 + 32);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  [*(*(a1 + 32) + 40) setDelegate:?];
  [*(a1 + 32) _rereadPerformanceLoggingSetting];

  v19 = *MEMORY[0x277D85DE8];
}

void __51__MSASAssetTransferer_initWithPersonID_eventQueue___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[12];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASAssetTransferer_initWithPersonID_eventQueue___block_invoke_3;
  block[3] = &unk_278E926D8;
  v4 = v1;
  dispatch_async(v2, block);
}

- (void)_rereadPerformanceLoggingSetting
{
  v3 = MSPlatform();
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    engine = self->_engine;
    v6 = MSPlatform();
    -[MMCSEngine setIsMetricsGatheringEnabled:](engine, "setIsMetricsGatheringEnabled:", [v6 isPerformanceLoggingEnabled]);
  }
}

@end