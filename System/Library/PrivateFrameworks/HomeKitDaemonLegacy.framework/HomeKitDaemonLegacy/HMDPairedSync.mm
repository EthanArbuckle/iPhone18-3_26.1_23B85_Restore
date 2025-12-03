@interface HMDPairedSync
- (HMDPairedSync)initWithDelegate:(id)delegate queue:(id)queue;
- (HMDPairedSyncDelegate)delegate;
- (id)restrictionAsString:(unint64_t)string;
- (void)_callStartSync;
- (void)needToSync;
- (void)syncComplete;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
- (void)syncPartiallyComplete;
@end

@implementation HMDPairedSync

- (HMDPairedSyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  v14 = *MEMORY[0x277D85DE8];
  restrictionCopy = restriction;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = -[HMDPairedSync restrictionAsString:](self, "restrictionAsString:", [restrictionCopy syncRestriction]);
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sync restriction is changing to %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (![restrictionCopy syncRestriction])
  {
    [(HMDPairedSync *)self _callStartSync];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session
{
  v13 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received delegate call syncCoordinator:didInvalidateSyncSession", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received an update to being-sync-session to watch", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDPairedSync *)self _callStartSync];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncPartiallyComplete
{
  workQueue = [(HMDPairedSync *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDPairedSync_syncPartiallyComplete__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __38__HMDPairedSync_syncPartiallyComplete__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentOperationCount])
  {
    [*(a1 + 32) setCurrentOperationCount:{objc_msgSend(*(a1 + 32), "currentOperationCount") - 1}];
  }

  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) currentOperationCount];
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@Partially complete, Current operation count is %tu", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncComplete
{
  workQueue = [(HMDPairedSync *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMDPairedSync_syncComplete__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __29__HMDPairedSync_syncComplete__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentOperationCount])
  {
    [*(a1 + 32) setCurrentOperationCount:{objc_msgSend(*(a1 + 32), "currentOperationCount") - 1}];
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_ERROR, "%{public}@Current operation count is already 0, cannot decrement further", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) currentOperationCount];
    v15 = 138543618;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Current operation count is %tu", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (![*(a1 + 32) currentOperationCount])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Informing sync coordinator that sync is complete", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v12 = [*(a1 + 32) coordinator];
    v13 = [v12 activeSyncSession];
    [v13 syncDidComplete];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_callStartSync
{
  v10 = *MEMORY[0x277D85DE8];
  delegate = [(HMDPairedSync *)self delegate];
  if (delegate)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Calling the clients to start the sync", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (objc_opt_respondsToSelector())
    {
      [delegate pairedSyncDidStart:self];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)needToSync
{
  workQueue = [(HMDPairedSync *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMDPairedSync_needToSync__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __27__HMDPairedSync_needToSync__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCurrentOperationCount:{objc_msgSend(*(a1 + 32), "currentOperationCount") + 1}];
  v2 = [*(a1 + 32) coordinator];
  v3 = [v2 syncRestriction];

  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 32) restrictionAsString:v3];
    v8 = [*(a1 + 32) currentOperationCount];
    v13 = 138543874;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 2050;
    v18 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Current sync restriction state: %{public}@, operation count: %{public}tu", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Need to wait for the begin sync to happen for HomeKit.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    [*(a1 + 32) _callStartSync];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)restrictionAsString:(unint64_t)string
{
  if (string)
  {
    if (string == 1)
    {
      string = @"PSYSyncRestrictionLimitPush";
    }

    else
    {
      string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown restriction state: %tu", string];
    }
  }

  else
  {
    string = @"PSYSyncRestrictionNone";
  }

  return string;
}

- (HMDPairedSync)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = HMDPairedSync;
  v6 = [(HMDPairedSync *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegateCopy);
    v8 = HMDispatchQueueNameString();
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    workQueue = v7->_workQueue;
    v7->_workQueue = v11;

    v7->_currentOperationCount = 0;
    v13 = [MEMORY[0x277D37C40] syncCoordinatorWithServiceName:@"com.apple.pairedsync.homekit"];
    coordinator = v7->_coordinator;
    v7->_coordinator = v13;

    [(PSYSyncCoordinator *)v7->_coordinator setDelegate:v7 queue:v7->_workQueue];
  }

  return v7;
}

@end