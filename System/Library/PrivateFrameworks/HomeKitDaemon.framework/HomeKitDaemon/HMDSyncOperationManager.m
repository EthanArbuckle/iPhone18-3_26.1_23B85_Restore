@interface HMDSyncOperationManager
+ (id)logCategory;
- (BOOL)addCloudPostFetchOperationIfNonePresent:(id)a3;
- (BOOL)addCloudQueryDatabaseOperationIfNonePresent:(id)a3;
- (BOOL)addCloudZoneFetchOperation:(id)a3 delay:(double)a4;
- (BOOL)addCloudZonePushOperation:(id)a3 delay:(double)a4;
- (BOOL)dropCloudPostFetchOperationsIfPresent;
- (BOOL)popCloudZoneFetchOperationAndMoveQueueToEnd:(id *)a3;
- (HMDSyncOperationManager)initWithClientQueue:(id)a3 dataSource:(id)a4 timerFactory:(id)a5;
- (HMDSyncOperationManagerDataSource)dataSource;
- (HMDSyncOperationQueue)cloudFetchOperations;
- (HMDSyncOperationQueue)cloudPushOperations;
- (NSArray)cloudCancelPauseOperations;
- (NSArray)cloudPostFetchOperations;
- (NSArray)cloudQueryDatabaseOperations;
- (NSArray)cloudVerifyAccountOperations;
- (NSArray)cloudZonePushOperationQueues;
- (NSString)description;
- (id)_dequeueNextOperation;
- (id)cloudZoneFetchOperations;
- (id)dumpState;
- (id)popCloudCancelPauseOperation;
- (id)popCloudPostFetchOperation;
- (id)popCloudQueryDatabaseOperation;
- (id)popCloudVerifyAccountOperation;
- (id)popCloudZonePushOperationAndMoveQueueToEnd;
- (void)_dropWithoutAlreadyScheduledOperation:(id)a3;
- (void)_handleCancelledOperations:(id)a3;
- (void)_handleNextOperation;
- (void)_reportPossibleSyncLoop;
- (void)addCloudCancelPauseOperation:(id)a3;
- (void)addCloudVerifyAccountOperation:(id)a3;
- (void)addOperation:(id)a3 withDelay:(double)a4;
- (void)addOperationRespectingOptions:(id)a3 withDelay:(double)a4;
- (void)cancelOperations;
- (void)kick;
- (void)pause;
- (void)pauseAndWaitForCurrentOperationCompletion:(id)a3;
- (void)pauseCloudPush;
- (void)removeCloudZoneFetchOperationQueue:(id)a3;
- (void)removeCloudZonePushOperationQueue:(id)a3;
- (void)resetCloudPushTimer:(id)a3;
- (void)resume;
- (void)resumeCloudPush;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDSyncOperationManager

- (HMDSyncOperationManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDSyncOperationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HMDSyncOperationManager_timerDidFire___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __40__HMDSyncOperationManager_timerDidFire___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cloudFetchOperations];
  v3 = [v2 processFiredTimer:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3)
  {
LABEL_4:
    v7 = *MEMORY[0x277D85DE8];

    [v4 _handleNextOperation];
    return;
  }

  v5 = [v4 cloudPushOperations];
  v6 = [v5 processFiredTimer:*(a1 + 40)];

  if (v6)
  {
    v4 = *(a1 + 32);
    goto LABEL_4;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [*(a1 + 32) cloudZoneFetchOperations];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = *(a1 + 40);
        v16 = [v14 backoffTimer];
        v17 = v16;
        if (v15 == v16)
        {
          v18 = [v14 countTotal];

          if (!v18)
          {
            [v14 processFiredTimer:*(a1 + 40)];
            [*(a1 + 32) removeCloudZoneFetchOperationQueue:v14];
            goto LABEL_33;
          }
        }

        else
        {
        }

        if ([v14 processFiredTimer:*(a1 + 40)])
        {
LABEL_30:
          [*(a1 + 32) _handleNextOperation];
          goto LABEL_33;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = [*(a1 + 32) cloudZonePushOperationQueues];
  v9 = [v19 copy];

  v20 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v9);
        }

        v24 = *(*(&v30 + 1) + 8 * j);
        v25 = *(a1 + 40);
        v26 = [v24 backoffTimer];
        v27 = v26;
        if (v25 == v26)
        {
          v28 = [v24 countTotal];

          if (!v28)
          {
            [v24 processFiredTimer:*(a1 + 40)];
            [*(a1 + 32) removeCloudZonePushOperationQueue:v24];
            goto LABEL_33;
          }
        }

        else
        {
        }

        if ([v24 processFiredTimer:*(a1 + 40)])
        {
          goto LABEL_30;
        }
      }

      v21 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)resetCloudPushTimer:(id)a3
{
  v4 = a3;
  v5 = [(HMDSyncOperationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDSyncOperationManager_resetCloudPushTimer___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__HMDSyncOperationManager_resetCloudPushTimer___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting cloud upload timer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) cloudPushOperations];
  [v6 resetBackoffTimer];

  if (*(a1 + 40))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [*(a1 + 32) cloudZonePushOperationQueues];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = *(a1 + 40);
          v14 = [v12 name];
          LODWORD(v13) = [v13 isEqualToString:v14];

          if (v13)
          {
            [v12 resetBackoffTimer];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resumeCloudPush
{
  v3 = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDSyncOperationManager_resumeCloudPush__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __42__HMDSyncOperationManager_resumeCloudPush__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) pauseCloudPushLevel] >= 1)
  {
    [*(a1 + 32) setPauseCloudPushLevel:{objc_msgSend(*(a1 + 32), "pauseCloudPushLevel") - 1}];
  }

  v2 = [*(a1 + 32) pauseCloudPushLevel];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2 < 1)
  {
    if (v6)
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resuming cloud push queue", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _handleNextOperation];
  }

  else
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) pauseCloudPushLevel];
      v11 = 138543618;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Cloud push queue is still paused because push level is %tu", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pauseCloudPush
{
  v3 = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDSyncOperationManager_pauseCloudPush__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __41__HMDSyncOperationManager_pauseCloudPush__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPauseCloudPushLevel:{objc_msgSend(*(a1 + 32), "pauseCloudPushLevel") + 1}];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) pauseCloudPushLevel];
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Pausing cloud push queue, level is %tu", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)kick
{
  v3 = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDSyncOperationManager_kick__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)resume
{
  v3 = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDSyncOperationManager_resume__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __33__HMDSyncOperationManager_resume__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPauseQueue:0];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Resuming sync manager queue", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleNextOperation];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)pause
{
  v3 = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDSyncOperationManager_pause__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __32__HMDSyncOperationManager_pause__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPauseQueue:1];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Pausing sync manager queue", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleCancelledOperations:(id)a3
{
  v4 = a3;
  v5 = [(HMDSyncOperationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 40);
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543618;
          v20 = v10;
          v21 = 2114;
          v22 = v6;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Cancelling sync operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v11 = [*(a1 + 40) clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke_177;
        block[3] = &unk_27868A750;
        block[4] = *(a1 + 40);
        block[5] = v6;
        dispatch_async(v11, block);
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke_177(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke_2;
  v5[3] = &unk_27868A1D8;
  v6 = *(a1 + 32);
  v2 = _Block_copy(v5);
  v3 = [*(a1 + 40) operationBlock];
  v4 = [*(a1 + 40) options];
  (v3)[2](v3, v2, v4, 1);
}

void __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) identifier];
    *buf = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Sync operation %{public}@ cancelled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [*(a1 + 40) operationCompletions];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v15 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [*(a1 + 40) removeAllOperationCompletions];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleNextOperation
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSyncOperationManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDSyncOperationManager *)self _dequeueNextOperation];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v8;
      v32 = 2114;
      v33 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Starting sync operation %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    logger = v6->_logger;
    if (os_signpost_enabled(logger))
    {
      v10 = logger;
      v11 = [v4 zoneName];
      v12 = [v4 identifier];
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_signpost_emit_with_name_impl(&dword_229538000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SyncOperation", "zone=%{signpost.description:attribute}@ identifier=%{signpost.description:attribute}@ ", buf, 0x16u);
    }

    [(HMDSyncOperationManager *)v6 setCurrentOperation:v4];
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = [(HMDSyncOperationManager *)v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__HMDSyncOperationManager__handleNextOperation__block_invoke;
    block[3] = &unk_27868A750;
    v15 = v13;
    v28 = v15;
    v16 = v4;
    v29 = v16;
    dispatch_async(v14, block);

    v17 = objc_autoreleasePoolPush();
    v18 = v6;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v16 identifier];
      *buf = 138543618;
      v31 = v20;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Waiting for sync operation %{public}@ to complete", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [(HMDSyncOperationManager *)v18 workQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__HMDSyncOperationManager__handleNextOperation__block_invoke_176;
    v24[3] = &unk_278685DF8;
    v24[4] = v18;
    v25 = v16;
    v26 = 0xEEEEB0B5B2B2EEEELL;
    dispatch_group_notify(v15, v22, v24);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __47__HMDSyncOperationManager__handleNextOperation__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __47__HMDSyncOperationManager__handleNextOperation__block_invoke_2;
  v8 = &unk_27868A1D8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v2 = _Block_copy(&v5);
  v3 = [*(a1 + 40) operationBlock];
  v4 = [*(a1 + 40) options];
  (v3)[2](v3, v2, v4, 0);
}

uint64_t __47__HMDSyncOperationManager__handleNextOperation__block_invoke_176(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) identifier];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Sync operation %@ completed", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(*(a1 + 32) + 80);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SyncOperation", "", &v12, 2u);
  }

  [*(a1 + 32) setCurrentOperation:0];
  result = [*(a1 + 32) _handleNextOperation];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __47__HMDSyncOperationManager__handleNextOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 40) operationCompletions];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) removeAllOperationCompletions];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_dequeueNextOperation
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSyncOperationManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDSyncOperationManager *)self currentOperation];

  if (!v4)
  {
    v11 = [(HMDSyncOperationManager *)self dataSource];
    v12 = [v11 isCloudAccountActive];
    v13 = [v11 zoneFetchFailed];
    v14 = [v11 legacyZoneHasRecordsAvailable];
    if ([(HMDSyncOperationManager *)self pauseQueue])
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Cannot dequeue operation because sync manager queue is paused", buf, 0xCu);
      }

      v10 = 0;
LABEL_14:

      objc_autoreleasePoolPop(v15);
      goto LABEL_15;
    }

    v19 = [(HMDSyncOperationManager *)self popCloudCancelPauseOperation];
    if (v19)
    {
      goto LABEL_11;
    }

    v19 = [(HMDSyncOperationManager *)self popCloudQueryDatabaseOperation];
    if (v19)
    {
      goto LABEL_11;
    }

    if (![v11 isNetworkConnectionAvailable])
    {
      goto LABEL_34;
    }

    v19 = [(HMDSyncOperationManager *)self popCloudVerifyAccountOperation];
    if (!v19)
    {
      v24 = [(HMDSyncOperationManager *)self cloudFetchOperations];
      v25 = [v24 countTotal];

      if (v25)
      {
        v26 = [(HMDSyncOperationManager *)self cloudFetchOperations];
        v27 = [v26 count];

        if (v27)
        {
          v28 = [(HMDSyncOperationManager *)self cloudFetchOperations];
LABEL_23:
          v29 = v28;
          v10 = [v28 nextOperation];

          goto LABEL_12;
        }

        goto LABEL_34;
      }

      if (!v12)
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
LABEL_33:

          objc_autoreleasePoolPop(v32);
          goto LABEL_34;
        }

        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v35;
        v36 = "%{public}@Cannot dequeue as no active account";
LABEL_32:
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEBUG, v36, buf, 0xCu);

        goto LABEL_33;
      }

      if (!v14)
      {
        if (v13)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      v40 = 0;
      v30 = [(HMDSyncOperationManager *)self popCloudZoneFetchOperationAndMoveQueueToEnd:&v40];
      v31 = v40;
      v10 = v31;
      if (v30)
      {
        if (v31)
        {
          goto LABEL_12;
        }

        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_33;
        }

        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v35;
        v36 = "%{public}@Waiting for delayed fetches to finish.";
        goto LABEL_32;
      }

      v37 = [(HMDSyncOperationManager *)self popCloudPostFetchOperation];

      if (v37)
      {
        v10 = v37;
LABEL_12:
        v15 = objc_autoreleasePoolPush();
        v20 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v21;
          v43 = 2114;
          v44 = v10;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Dequeued operation to process %{public}@", buf, 0x16u);
        }

        goto LABEL_14;
      }

      if ([(HMDSyncOperationManager *)self pauseCloudPushLevel]> 0 || ([(HMDSyncOperationManager *)self popCloudZonePushOperationAndMoveQueueToEnd], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v38 = [(HMDSyncOperationManager *)self cloudPushOperations];
        if (![v38 count])
        {

          goto LABEL_34;
        }

        v39 = [(HMDSyncOperationManager *)self pauseCloudPushLevel]> 0;

        if ((v39 | v13))
        {
LABEL_34:
          v10 = 0;
          goto LABEL_12;
        }

LABEL_36:
        v28 = [(HMDSyncOperationManager *)self cloudPushOperations];
        goto LABEL_23;
      }
    }

LABEL_11:
    v10 = v19;
    goto LABEL_12;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDSyncOperationManager *)v6 currentOperation];
    *buf = 138543618;
    v42 = v8;
    v43 = 2112;
    v44 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Already executing operation %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = 0;
LABEL_15:
  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)cancelOperations
{
  v3 = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDSyncOperationManager_cancelOperations__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__HMDSyncOperationManager_cancelOperations__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Cancelling all unprocessed sync operation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  [v6 addObjectsFromArray:*(*(a1 + 32) + 16)];
  [*(*(a1 + 32) + 16) removeAllObjects];
  v8 = [*(*(a1 + 32) + 104) operationsToCancel];
  [v6 addObjectsFromArray:v8];

  v9 = [*(*(a1 + 32) + 96) operationsToCancel];
  [v6 addObjectsFromArray:v9];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = *(*(a1 + 32) + 24);
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v30 + 1) + 8 * v13) operationsToCancel];
        [v6 addObjectsFromArray:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  [*(*(a1 + 32) + 24) removeAllObjects];
  [*(*(a1 + 32) + 64) removeAllObjects];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = *(*(a1 + 32) + 32);
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v26 + 1) + 8 * v18) operationsToCancel];
        [v6 addObjectsFromArray:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(*(a1 + 32) + 72) removeAllObjects];
  [v6 addObjectsFromArray:*(*(a1 + 32) + 56)];
  [*(*(a1 + 32) + 56) removeAllObjects];
  os_unfair_lock_unlock(v7 + 2);
  v20 = [*(a1 + 32) cloudPushDelayTimer];
  [v20 cancel];

  [*(a1 + 32) setCloudPushDelayTimer:0];
  v21 = objc_autoreleasePoolPush();
  v22 = *(a1 + 32);
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v24;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Cancelling all sync operations, resuming cloud push queue", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  [*(a1 + 32) setPauseCloudPushLevel:0];
  [*(a1 + 32) _handleCancelledOperations:v6];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)pauseAndWaitForCurrentOperationCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__HMDSyncOperationManager_pauseAndWaitForCurrentOperationCompletion___block_invoke;
  aBlock[3] = &unk_27867B308;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [HMDSyncOperation cancelOperationWithBlock:v6];
  [(HMDSyncOperationManager *)self addOperation:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__HMDSyncOperationManager_pauseAndWaitForCurrentOperationCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained pause];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)addOperationRespectingOptions:(id)a3 withDelay:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(HMDSyncOperationManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HMDSyncOperationManager_addOperationRespectingOptions_withDelay___block_invoke;
    block[3] = &unk_278685DF8;
    block[4] = self;
    v9 = v6;
    v10 = a4;
    dispatch_async(v7, block);
  }
}

uint64_t __67__HMDSyncOperationManager_addOperationRespectingOptions_withDelay___block_invoke(uint64_t a1)
{
  v143 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v140 = v5;
    v141 = 2112;
    v142 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Will attempt to add operation %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) operationType] == 1 || objc_msgSend(*(a1 + 40), "operationType") == 2)
  {
    v7 = [*(a1 + 32) cloudPushOperations];
    v8 = [v7 backoffTimer];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = MEMORY[0x277CCABB0];
        v14 = [*(a1 + 32) cloudPushOperations];
        v15 = [v14 backoffTimer];
        [v15 timeInterval];
        v16 = [v13 numberWithDouble:?];
        *buf = 138543618;
        v140 = v12;
        v141 = 2114;
        v142 = v16;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Current push delay is: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    v17 = [*(a1 + 32) cloudPushOperations];
    v18 = [v17 isInMaximumTimeInterval];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v140 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Scheduling legacy push at maximum time interval, maybe in a sync loop", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [*(a1 + 32) _reportPossibleSyncLoop];
    }

    v23 = [*(a1 + 32) dataSource];
    v24 = [v23 legacyZoneHasRecordsAvailable];

    if (!v24)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = *(a1 + 32);
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        v42 = *(a1 + 40);
        *buf = 138543618;
        v140 = v41;
        v141 = 2114;
        v142 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Staging cloud push operation %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v26 = [*(a1 + 32) cloudPushOperations];
      [v26 stageOperation:*(a1 + 40)];
      goto LABEL_37;
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v25 = [*(a1 + 32) cloudPushOperations];
    v26 = [v25 allOperations];

    v27 = [v26 countByEnumeratingWithState:&v133 objects:v138 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v134;
LABEL_16:
      v30 = 0;
      while (1)
      {
        if (*v134 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v133 + 1) + 8 * v30);
        if ([v31 operationType] == 2)
        {
          break;
        }

        if (v28 == ++v30)
        {
          v28 = [v26 countByEnumeratingWithState:&v133 objects:v138 count:16];
          if (v28)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v48 = objc_autoreleasePoolPush();
      v49 = *(a1 + 32);
      v50 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }

      v51 = HMFGetLogIdentifier();
      *buf = 138543362;
      v140 = v51;
      v52 = "%{public}@Unprocessed cloud force push operation in queue, dropping new push operation";
      v53 = v50;
      v54 = 12;
      goto LABEL_35;
    }

LABEL_22:

    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = *(a1 + 40);
      *buf = 138543618;
      v140 = v35;
      v141 = 2114;
      v142 = v36;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Adding cloud push operation %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = [*(a1 + 32) cloudPushOperations];
LABEL_25:
    v26 = v37;
    [v37 addOperation:*(a1 + 40) withDelay:*(a1 + 48)];
    goto LABEL_37;
  }

  if ([*(a1 + 40) operationType] == 3)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = *(a1 + 32);
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      v47 = *(a1 + 40);
      *buf = 138543618;
      v140 = v46;
      v141 = 2114;
      v142 = v47;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Adding cloud verify account operation %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    [*(a1 + 32) addCloudVerifyAccountOperation:*(a1 + 40)];
    goto LABEL_38;
  }

  if ([*(a1 + 40) operationType] != 4)
  {
    v76 = [*(a1 + 40) operationType];
    v77 = *(a1 + 40);
    if (v76 == 5)
    {
      v26 = [v77 zoneName];
      v78 = objc_autoreleasePoolPush();
      v79 = *(a1 + 32);
      v80 = HMFGetOSLogHandle();
      v81 = v80;
      if (v26)
      {
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          v82 = HMFGetLogIdentifier();
          v83 = *(a1 + 40);
          *buf = 138543618;
          v140 = v82;
          v141 = 2114;
          v142 = v83;
          _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_INFO, "%{public}@Adding cloud zone push operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v78);
        if ([*(a1 + 32) addCloudZonePushOperation:*(a1 + 40) delay:*(a1 + 48)])
        {
          v84 = objc_autoreleasePoolPush();
          v85 = *(a1 + 32);
          v86 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            v87 = HMFGetLogIdentifier();
            v88 = [*(a1 + 40) zoneName];
            *buf = 138543618;
            v140 = v87;
            v141 = 2114;
            v142 = v88;
            _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_ERROR, "%{public}@Scheduling zone %{public}@ push at maximum time interval, maybe in a sync loop", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v84);
          [*(a1 + 32) _reportPossibleSyncLoop];
        }

        goto LABEL_37;
      }

      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v100 = HMFGetLogIdentifier();
        v101 = *(a1 + 40);
        *buf = 138543618;
        v140 = v100;
        v141 = 2114;
        v142 = v101;
        v102 = "%{public}@Cannot add operation to zone push without a zoneName %{public}@";
LABEL_90:
        _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_ERROR, v102, buf, 0x16u);

        goto LABEL_91;
      }

      goto LABEL_91;
    }

    v90 = [v77 operationType];
    v91 = *(a1 + 40);
    if (v90 == 6)
    {
      v26 = [v91 zoneName];
      v78 = objc_autoreleasePoolPush();
      v79 = *(a1 + 32);
      v92 = HMFGetOSLogHandle();
      v81 = v92;
      if (v26)
      {
        if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
        {
          v93 = HMFGetLogIdentifier();
          v94 = *(a1 + 40);
          *buf = 138543618;
          v140 = v93;
          v141 = 2114;
          v142 = v94;
          _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_INFO, "%{public}@Adding cloud zone fetch operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v78);
        [*(a1 + 32) addCloudZoneFetchOperation:*(a1 + 40) delay:*(a1 + 48)];
        goto LABEL_37;
      }

      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v100 = HMFGetLogIdentifier();
        v118 = *(a1 + 40);
        *buf = 138543618;
        v140 = v100;
        v141 = 2114;
        v142 = v118;
        v102 = "%{public}@Cannot add operation to zone fetch without a zoneName %{public}@";
        goto LABEL_90;
      }

LABEL_91:

      objc_autoreleasePoolPop(v78);
      [*(a1 + 32) _dropWithoutAlreadyScheduledOperation:*(a1 + 40)];
      goto LABEL_37;
    }

    if ([v91 operationType] == 7)
    {
      v95 = objc_autoreleasePoolPush();
      v96 = *(a1 + 32);
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = HMFGetLogIdentifier();
        v99 = *(a1 + 40);
        *buf = 138543618;
        v140 = v98;
        v141 = 2112;
        v142 = v99;
        _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_INFO, "%{public}@Adding cloud cancel pause operation %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v95);
      [*(a1 + 32) addCloudCancelPauseOperation:*(a1 + 40)];
      goto LABEL_38;
    }

    if ([*(a1 + 40) operationType] == 8)
    {
      v103 = objc_autoreleasePoolPush();
      v104 = *(a1 + 32);
      v105 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        v106 = HMFGetLogIdentifier();
        v107 = *(a1 + 40);
        *buf = 138543618;
        v140 = v106;
        v141 = 2114;
        v142 = v107;
        _os_log_impl(&dword_229538000, v105, OS_LOG_TYPE_INFO, "%{public}@Adding cloud query database operation %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v103);
      if (([*(a1 + 32) addCloudQueryDatabaseOperationIfNonePresent:*(a1 + 40)] & 1) == 0)
      {
        v108 = objc_autoreleasePoolPush();
        v109 = *(a1 + 32);
        v110 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
        {
          v111 = HMFGetLogIdentifier();
          v112 = *(a1 + 40);
          *buf = 138543618;
          v140 = v111;
          v141 = 2114;
          v142 = v112;
          _os_log_impl(&dword_229538000, v110, OS_LOG_TYPE_INFO, "%{public}@Already have a query operation scheduled, dropping operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v108);
        [*(a1 + 32) _dropWithoutAlreadyScheduledOperation:*(a1 + 40)];
      }

      if (![*(a1 + 32) dropCloudPostFetchOperationsIfPresent])
      {
        goto LABEL_38;
      }

      v113 = objc_autoreleasePoolPush();
      v114 = *(a1 + 32);
      v115 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
      {
        v116 = HMFGetLogIdentifier();
        v117 = [*(a1 + 32) cloudPostFetchOperations];
        *buf = 138543618;
        v140 = v116;
        v141 = 2114;
        v142 = v117;
        _os_log_impl(&dword_229538000, v115, OS_LOG_TYPE_INFO, "%{public}@Dropping post fetch because new query was added: %{public}@", buf, 0x16u);

LABEL_101:
      }
    }

    else
    {
      v119 = [*(a1 + 40) operationType];
      v113 = objc_autoreleasePoolPush();
      v114 = *(a1 + 32);
      v120 = HMFGetOSLogHandle();
      v115 = v120;
      if (v119 == 9)
      {
        if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
        {
          v121 = HMFGetLogIdentifier();
          v122 = *(a1 + 40);
          *buf = 138543618;
          v140 = v121;
          v141 = 2114;
          v142 = v122;
          _os_log_impl(&dword_229538000, v115, OS_LOG_TYPE_INFO, "%{public}@Adding cloud post fetch operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v113);
        if (([*(a1 + 32) addCloudPostFetchOperationIfNonePresent:*(a1 + 40)] & 1) == 0)
        {
          v123 = objc_autoreleasePoolPush();
          v124 = *(a1 + 32);
          v125 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
          {
            v126 = HMFGetLogIdentifier();
            v127 = *(a1 + 40);
            *buf = 138543618;
            v140 = v126;
            v141 = 2114;
            v142 = v127;
            _os_log_impl(&dword_229538000, v125, OS_LOG_TYPE_INFO, "%{public}@Already have a post fetch operation scheduled, dropping operation %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v123);
          [*(a1 + 32) _dropWithoutAlreadyScheduledOperation:*(a1 + 40)];
        }

        goto LABEL_38;
      }

      if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        v116 = HMFGetLogIdentifier();
        v128 = *(a1 + 40);
        *buf = 138543618;
        v140 = v116;
        v141 = 2114;
        v142 = v128;
        _os_log_impl(&dword_229538000, v115, OS_LOG_TYPE_ERROR, "%{public}@Unknown sync operation type, dropping %{public}@", buf, 0x16u);
        goto LABEL_101;
      }
    }

    objc_autoreleasePoolPop(v113);
    goto LABEL_38;
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v58 = [*(a1 + 32) cloudFetchOperations];
  v26 = [v58 allOperations];

  v59 = [v26 countByEnumeratingWithState:&v129 objects:v137 count:16];
  if (!v59)
  {
LABEL_54:

    v71 = objc_autoreleasePoolPush();
    v72 = *(a1 + 32);
    v73 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      v74 = HMFGetLogIdentifier();
      v75 = *(a1 + 40);
      *buf = 138543618;
      v140 = v74;
      v141 = 2114;
      v142 = v75;
      _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Adding cloud fetch operation %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v71);
    v37 = [*(a1 + 32) cloudFetchOperations];
    goto LABEL_25;
  }

  v60 = v59;
  v61 = *v130;
LABEL_42:
  v62 = 0;
  while (1)
  {
    if (*v130 != v61)
    {
      objc_enumerationMutation(v26);
    }

    v31 = *(*(&v129 + 1) + 8 * v62);
    v63 = [*(a1 + 40) options];
    if (([v63 isCloudConflict] & 1) == 0)
    {
      break;
    }

    v64 = [v31 options];
    v65 = [v64 isCloudConflict];

    if (v65)
    {
      goto LABEL_49;
    }

    v66 = [*(a1 + 32) cloudFetchOperations];
    [v66 dropOperation:v31];

    v67 = *(a1 + 40);
    v68 = [v31 operationCompletions];
    [v67 updateOperationCompletionsWithArray:v68];
LABEL_50:

LABEL_52:
    if (v60 == ++v62)
    {
      v60 = [v26 countByEnumeratingWithState:&v129 objects:v137 count:16];
      if (v60)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }
  }

LABEL_49:
  v68 = [*(a1 + 40) options];
  if ([v68 isCloudConflict])
  {
    goto LABEL_50;
  }

  v69 = [v31 options];
  v70 = [v69 isCloudConflict];

  if (!v70)
  {
    goto LABEL_52;
  }

  v48 = objc_autoreleasePoolPush();
  v49 = *(a1 + 32);
  v50 = HMFGetOSLogHandle();
  if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    goto LABEL_36;
  }

  v51 = HMFGetLogIdentifier();
  v89 = *(a1 + 40);
  *buf = 138543618;
  v140 = v51;
  v141 = 2114;
  v142 = v89;
  v52 = "%{public}@Already have a legacy conflict fetch scheduled, dropping non-conflict fetch operation %{public}@";
  v53 = v50;
  v54 = 22;
LABEL_35:
  _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, v52, buf, v54);

LABEL_36:
  objc_autoreleasePoolPop(v48);
  v55 = [*(a1 + 40) operationCompletions];
  [v31 updateOperationCompletionsWithArray:v55];

LABEL_37:
LABEL_38:
  result = [*(a1 + 32) _handleNextOperation];
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_dropWithoutAlreadyScheduledOperation:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:@"Operation was dropped before it could run" reason:@"HMDSyncOperationManager dropped the operation" suggestion:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 operationCompletions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addOperation:(id)a3 withDelay:(double)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 > 0.0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v6 identifier];
      v12 = [v11 UUIDString];
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding operation delay, respect this delay: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [v6 options];
    [v13 setDelayRespected:1];
  }

  [(HMDSyncOperationManager *)self addOperationRespectingOptions:v6 withDelay:a4];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_reportPossibleSyncLoop
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSyncOperationManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  v5 = +[HMDUploadMaximumDelayLogEvent uploadMaximumDelay];
  [v4 submitLogEvent:v5];

  if (isInternalBuild() && ![(HMDSyncOperationManager *)self wasSyncLoopDialogDisplayed])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting dialog about possible sync loop", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDSyncOperationManager *)v7 setSyncLoopDialogDisplayed:1];
    v10 = +[HMDTTRManager sharedManager];
    [v10 requestRadarWithDisplayReason:@"maximum push delay was reached" radarTitle:@"HomeKit maximum push delay reached"];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)dumpState
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  v4 = [(HMDSyncOperationQueue *)self->_cloudPushOperations description];
  [v3 addObject:v4];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = self->_cloudVerifyAccountOperations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v6)
  {
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v58 + 1) + 8 * i) description];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v6);
  }

  v10 = [(HMDSyncOperationQueue *)self->_cloudFetchOperations description];
  [v3 addObject:v10];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = self->_cloudZonePushOperationQueues;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v12)
  {
    v13 = *v55;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v54 + 1) + 8 * j) description];
        [v3 addObject:v15];
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v12);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = self->_cloudZoneFetchOperationQueues;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v50 objects:v65 count:16];
  if (v17)
  {
    v18 = *v51;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [*(*(&v50 + 1) + 8 * k) description];
        [v3 addObject:v20];
      }

      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v50 objects:v65 count:16];
    }

    while (v17);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = self->_cloudCancelPauseOperations;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v46 objects:v64 count:16];
  if (v22)
  {
    v23 = *v47;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = [*(*(&v46 + 1) + 8 * m) description];
        [v3 addObject:v25];
      }

      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v46 objects:v64 count:16];
    }

    while (v22);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = self->_cloudQueryDatabaseOperations;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v63 count:16];
  if (v27)
  {
    v28 = *v43;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [*(*(&v42 + 1) + 8 * n) description];
        [v3 addObject:v30];
      }

      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v63 count:16];
    }

    while (v27);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = self->_cloudPostFetchOperations;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v38 objects:v62 count:16];
  if (v32)
  {
    v33 = *v39;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = [*(*(&v38 + 1) + 8 * ii) description];
        [v3 addObject:v35];
      }

      v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v38 objects:v62 count:16];
    }

    while (v32);
  }

  os_unfair_lock_unlock(&self->_lock);
  v36 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)description
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  cloudPushOperations = self->_cloudPushOperations;
  cloudQueryDatabaseOperations = self->_cloudQueryDatabaseOperations;
  v7 = [v3 stringWithFormat:@"<%@, Push Operations = %@, Verify Account Operations = %@, Fetch Operations = %@, Zone Push = %@, Zone Fetch = %@, Cancel = %@, Query = %@>, Post Fetch = %@", v4, cloudPushOperations, self->_cloudVerifyAccountOperations, self->_cloudFetchOperations, self->_cloudZonePushOperationQueues, self->_cloudZoneFetchOperationQueues, self->_cloudCancelPauseOperations, cloudQueryDatabaseOperations, self->_cloudPostFetchOperations];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)popCloudPostFetchOperation
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_cloudPostFetchOperations count])
  {
    v3 = [(NSMutableArray *)self->_cloudPostFetchOperations objectAtIndex:0];
    [(NSMutableArray *)self->_cloudPostFetchOperations removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)dropCloudPostFetchOperationsIfPresent
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cloudPostFetchOperations count];
  if (v3)
  {
    v4 = [(NSMutableArray *)self->_cloudPostFetchOperations copy];
    [(NSMutableArray *)self->_cloudPostFetchOperations removeAllObjects];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(HMDSyncOperationManager *)self _dropWithoutAlreadyScheduledOperation:*(*(&v11 + 1) + 8 * i), v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3 != 0;
}

- (BOOL)addCloudPostFetchOperationIfNonePresent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_cloudPostFetchOperations count];
  if (!v5)
  {
    [(NSMutableArray *)self->_cloudPostFetchOperations addObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5 == 0;
}

- (id)popCloudQueryDatabaseOperation
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_cloudQueryDatabaseOperations count])
  {
    v3 = [(NSMutableArray *)self->_cloudQueryDatabaseOperations objectAtIndex:0];
    [(NSMutableArray *)self->_cloudQueryDatabaseOperations removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)addCloudQueryDatabaseOperationIfNonePresent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_cloudQueryDatabaseOperations count];
  if (!v5)
  {
    [(NSMutableArray *)self->_cloudQueryDatabaseOperations addObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5 == 0;
}

- (id)popCloudCancelPauseOperation
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_cloudCancelPauseOperations count])
  {
    v3 = [(NSMutableArray *)self->_cloudCancelPauseOperations objectAtIndex:0];
    [(NSMutableArray *)self->_cloudCancelPauseOperations removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addCloudCancelPauseOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_cloudCancelPauseOperations addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)popCloudZoneFetchOperationAndMoveQueueToEnd:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_cloudZoneFetchOperationQueues copy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 countTotal] != 0;
        v13 = [v11 nextOperation];
        v7 |= v12;
        *a3 = v13;
        if (v13)
        {
          [(NSMutableArray *)self->_cloudZoneFetchOperationQueues removeObject:v11];
          if ([v11 countTotal] < 1)
          {
            v14 = [v11 name];
            [(NSMutableDictionary *)self->_cloudZoneFetchOperationQueuesMap setObject:0 forKeyedSubscript:v14];
          }

          else
          {
            [(NSMutableArray *)self->_cloudZoneFetchOperationQueues addObject:v11];
          }

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  os_unfair_lock_unlock(&self->_lock);
  v15 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (void)removeCloudZoneFetchOperationQueue:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_cloudZoneFetchOperationQueues removeObject:v6];
  cloudZoneFetchOperationQueuesMap = self->_cloudZoneFetchOperationQueuesMap;
  v5 = [v6 name];
  [(NSMutableDictionary *)cloudZoneFetchOperationQueuesMap setObject:0 forKeyedSubscript:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)addCloudZoneFetchOperation:(id)a3 delay:(double)a4
{
  v6 = a3;
  v7 = [v6 zoneName];
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_cloudZoneFetchOperationQueuesMap objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [[HMDSyncOperationQueue alloc] initName:v7 syncManager:self initialDelay:0 initialBackoff:0.0 hasBackoff:0.0];
    [(NSMutableArray *)self->_cloudZoneFetchOperationQueues addObject:v8];
    [(NSMutableDictionary *)self->_cloudZoneFetchOperationQueuesMap setObject:v8 forKeyedSubscript:v7];
  }

  [v8 addOperation:v6 withDelay:a4];
  os_unfair_lock_unlock(&self->_lock);

  return 0;
}

- (id)popCloudZonePushOperationAndMoveQueueToEnd
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMutableArray *)self->_cloudZonePushOperationQueues copy];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 nextOperation];
        if (v8)
        {
          [(NSMutableArray *)self->_cloudZonePushOperationQueues removeObject:v7];
          if ([v7 countTotal] <= 0 && (objc_msgSend(v7, "backoffTimer"), v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == 0, v9, v10))
          {
            v13 = [v7 name];
            [(NSMutableDictionary *)self->_cloudZonePushOperationQueuesMap setObject:0 forKeyedSubscript:v13];
          }

          else
          {
            [(NSMutableArray *)self->_cloudZonePushOperationQueues addObject:v7];
          }

          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_13:

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)removeCloudZonePushOperationQueue:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_cloudZonePushOperationQueues removeObject:v6];
  cloudZonePushOperationQueuesMap = self->_cloudZonePushOperationQueuesMap;
  v5 = [v6 name];
  [(NSMutableDictionary *)cloudZonePushOperationQueuesMap setObject:0 forKeyedSubscript:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)addCloudZonePushOperation:(id)a3 delay:(double)a4
{
  v6 = a3;
  v7 = [v6 zoneName];
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_cloudZonePushOperationQueuesMap objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [HMDSyncOperationQueue alloc];
    v8 = [(HMDSyncOperationQueue *)v10 initName:v7 syncManager:self initialDelay:1 initialBackoff:cloudZoneUploadTimerInitialInterval hasBackoff:cloudZoneUploadTimerInterval];
    [(NSMutableArray *)self->_cloudZonePushOperationQueues addObject:v8];
    [(NSMutableDictionary *)self->_cloudZonePushOperationQueuesMap setObject:v8 forKeyedSubscript:v7];
    v9 = [v8 isInMaximumTimeInterval];
  }

  [v8 addOperation:v6 withDelay:a4];
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)popCloudVerifyAccountOperation
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_cloudVerifyAccountOperations count])
  {
    v3 = [(NSMutableArray *)self->_cloudVerifyAccountOperations objectAtIndex:0];
    [(NSMutableArray *)self->_cloudVerifyAccountOperations removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addCloudVerifyAccountOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_cloudVerifyAccountOperations addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)cloudPostFetchOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cloudPostFetchOperations copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)cloudQueryDatabaseOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cloudQueryDatabaseOperations copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)cloudCancelPauseOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cloudCancelPauseOperations copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)cloudZoneFetchOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cloudZoneFetchOperationQueues copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)cloudZonePushOperationQueues
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cloudZonePushOperationQueues copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDSyncOperationQueue)cloudFetchOperations
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cloudFetchOperations;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)cloudVerifyAccountOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cloudVerifyAccountOperations copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDSyncOperationQueue)cloudPushOperations
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cloudPushOperations;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDSyncOperationManager)initWithClientQueue:(id)a3 dataSource:(id)a4 timerFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v45.receiver = self;
  v45.super_class = HMDSyncOperationManager;
  v11 = [(HMDSyncOperationManager *)&v45 init];
  if (v11)
  {
    v12 = HMFGetOSLogHandle();
    logger = v11->_logger;
    v11->_logger = v12;

    v14 = HMDispatchQueueNameString();
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    workQueue = v11->_workQueue;
    v11->_workQueue = v17;

    v19 = v8;
    if (!v8)
    {
      v14 = HMDispatchQueueNameString();
      v20 = [v14 UTF8String];
      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_create(v20, v15);
    }

    objc_storeStrong(&v11->_clientQueue, v19);
    if (!v8)
    {
    }

    objc_storeWeak(&v11->_dataSource, v9);
    v11->_lock._os_unfair_lock_opaque = 0;
    v21 = _Block_copy(v10);
    timerFactory = v11->_timerFactory;
    v11->_timerFactory = v21;

    v23 = [HMDSyncOperationQueue alloc];
    v24 = [(HMDSyncOperationQueue *)v23 initName:@"LegacyPush" syncManager:v11 initialDelay:1 initialBackoff:cloudUploadTimerInterval hasBackoff:cloudUploadTimerInterval];
    cloudPushOperations = v11->_cloudPushOperations;
    v11->_cloudPushOperations = v24;

    v11->_pauseCloudPushLevel = 0;
    v26 = [MEMORY[0x277CBEB18] array];
    cloudVerifyAccountOperations = v11->_cloudVerifyAccountOperations;
    v11->_cloudVerifyAccountOperations = v26;

    v28 = [[HMDSyncOperationQueue alloc] initName:@"LegacyFetch" syncManager:v11 initialDelay:0 initialBackoff:0.0 hasBackoff:0.0];
    cloudFetchOperations = v11->_cloudFetchOperations;
    v11->_cloudFetchOperations = v28;

    v30 = [MEMORY[0x277CBEB18] array];
    cloudZonePushOperationQueues = v11->_cloudZonePushOperationQueues;
    v11->_cloudZonePushOperationQueues = v30;

    v32 = [MEMORY[0x277CBEB38] dictionary];
    cloudZonePushOperationQueuesMap = v11->_cloudZonePushOperationQueuesMap;
    v11->_cloudZonePushOperationQueuesMap = v32;

    v34 = [MEMORY[0x277CBEB18] array];
    cloudZoneFetchOperationQueues = v11->_cloudZoneFetchOperationQueues;
    v11->_cloudZoneFetchOperationQueues = v34;

    v36 = [MEMORY[0x277CBEB38] dictionary];
    cloudZoneFetchOperationQueuesMap = v11->_cloudZoneFetchOperationQueuesMap;
    v11->_cloudZoneFetchOperationQueuesMap = v36;

    v38 = [MEMORY[0x277CBEB18] array];
    cloudCancelPauseOperations = v11->_cloudCancelPauseOperations;
    v11->_cloudCancelPauseOperations = v38;

    v40 = [MEMORY[0x277CBEB18] array];
    cloudQueryDatabaseOperations = v11->_cloudQueryDatabaseOperations;
    v11->_cloudQueryDatabaseOperations = v40;

    v42 = [MEMORY[0x277CBEB18] array];
    cloudPostFetchOperations = v11->_cloudPostFetchOperations;
    v11->_cloudPostFetchOperations = v42;

    v11->_syncLoopDialogDisplayed = 0;
  }

  return v11;
}

id __58__HMDSyncOperationManager_initWithClientQueue_dataSource___block_invoke(double a1)
{
  v1 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:a1];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t53_146116 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t53_146116, &__block_literal_global_149_146117);
  }

  v3 = logCategory__hmf_once_v54_146118;

  return v3;
}

void __38__HMDSyncOperationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v54_146118;
  logCategory__hmf_once_v54_146118 = v1;
}

@end