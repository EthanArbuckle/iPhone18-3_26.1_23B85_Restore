@interface HMMTRAccessoryConnectionRequest
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMMTRAccessoryConnectionRequest)initWithQueue:(id)a3 server:(id)a4 priority:(unint64_t)a5 completion:(id)a6;
- (HMMTRAccessoryServer)server;
- (HMMTRFabricConnectionRequest)parentFabricRequest;
- (double)_getIdleAccessoryConnectionTimeoutWEDShort;
- (double)_getIdleAccessoryConnectionTimeoutWEDShortRead;
- (double)_getIdleAccessoryConnectionTimeoutWEDShortWrite;
- (id)_getAllPendingOperations;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)privateDescription;
- (unint64_t)_numPendingOperations;
- (unint64_t)hash;
- (void)_handleReadWriteTimerDidFire:(id)a3 altTimer:(id)a4;
- (void)_restartConnectionIdleTimer:(double)a3;
- (void)_restartReadWriteIdleTimersWithReadInterval:(double)a3 writeInterval:(double)a4;
- (void)abortAllPendingOperations:(id)a3;
- (void)executeAllPendingOperations;
- (void)kickIdleTimer;
- (void)mergeAccessoryConnectionRequest:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMMTRAccessoryConnectionRequest

- (HMMTRAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (HMMTRFabricConnectionRequest)parentFabricRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFabricRequest);

  return WeakRetained;
}

- (unint64_t)hash
{
  v3 = [(HMMTRAccessoryConnectionRequest *)self nodeID];
  v4 = [v3 hash];

  v5 = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v12 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(HMMTRAccessoryConnectionRequest *)v6 nodeID];
    v8 = [(HMMTRAccessoryConnectionRequest *)self nodeID];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = [(HMMTRAccessoryConnectionRequest *)v6 fabricUUID];
      v11 = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
      v12 = [v10 isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

LABEL_10:

  return v12;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMMTRAccessoryConnectionRequest *)self nodeID];
  v5 = [v3 initWithName:@"NodeID" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
  v8 = [v6 initWithName:@"FabricUUID" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMMTRAccessoryConnectionRequest *)self nodeID];
  v6 = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
  v7 = [v3 stringWithFormat:@"%@ %@ [%@]", v4, v5, v6];

  return v7;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMMTRAccessoryConnectionRequest *)self nodeID];
  v5 = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
  v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];

  return v6;
}

- (void)timerDidFire:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryConnectionRequest *)self idleTimer];

  if (v5 == v4)
  {
    v14 = objc_autoreleasePoolPush();
    v10 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@No activity for accessory, releasing connection", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v17 = [(HMMTRAccessoryConnectionRequest *)v10 idleWriteTimer];
    [v17 suspend];

    v18 = [(HMMTRAccessoryConnectionRequest *)v10 idleReadTimer];
    [v18 suspend];

    v13 = [(HMMTRAccessoryConnectionRequest *)v10 lifeTimer];
    [v13 suspend];
    goto LABEL_11;
  }

  v6 = [(HMMTRAccessoryConnectionRequest *)self idleWriteTimer];

  if (v6 == v4)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@timerDidFire - idleWriteTimer", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v19 = [(HMMTRAccessoryConnectionRequest *)v21 idleWriteTimer];
    v24 = [(HMMTRAccessoryConnectionRequest *)v21 idleReadTimer];
    goto LABEL_18;
  }

  v7 = [(HMMTRAccessoryConnectionRequest *)self idleReadTimer];

  if (v7 == v4)
  {
    v25 = objc_autoreleasePoolPush();
    v21 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v27;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@timerDidFire - idleReadTimer", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v19 = [(HMMTRAccessoryConnectionRequest *)v21 idleReadTimer];
    v24 = [(HMMTRAccessoryConnectionRequest *)v21 idleWriteTimer];
LABEL_18:
    v28 = v24;
    [(HMMTRAccessoryConnectionRequest *)v21 _handleReadWriteTimerDidFire:v19 altTimer:v24];

    goto LABEL_19;
  }

  v8 = [(HMMTRAccessoryConnectionRequest *)self lifeTimer];

  if (v8 == v4)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Lifetime of the accessory connection request expired, releasing connection", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
    [(HMMTRAccessoryConnectionRequest *)v10 abortAllPendingOperations:v13];
LABEL_11:

    v19 = [(HMMTRAccessoryConnectionRequest *)v10 parentFabricRequest];
    [v19 operationsCompletedForAccessoryConnectionRequest:v10];
LABEL_19:
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadWriteTimerDidFire:(id)a3 altTimer:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryConnectionRequest *)self server];
  v9 = [v8 isReadyToReadFromMTRDevice];

  if (v9)
  {
    v10 = [v7 isRunning];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v15;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@handleReadWriteTimerDidFire - pending read or write", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v20;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@handleReadWriteTimerDidFire - no pending read/writes, mark connection as idle", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v21 = [(HMMTRAccessoryConnectionRequest *)v12 idleTimer];
      [v21 fire];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@handleReadWriteTimerDidFire - sub not yet establish, kick timer", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    [v6 resume];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)kickIdleTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@kickIdleTimer", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMTRAccessoryConnectionRequest *)v4 idleTimer];
  [v7 resume];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)abortAllPendingOperations:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@abortAllPendingOperations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMMTRAccessoryConnectionRequest *)v6 _getAllPendingOperations];
  v10 = [(HMMTRAccessoryConnectionRequest *)v6 idleTimer];
  [v10 suspend];

  v11 = [(HMMTRAccessoryConnectionRequest *)v6 idleWriteTimer];
  [v11 suspend];

  v12 = [(HMMTRAccessoryConnectionRequest *)v6 idleReadTimer];
  [v12 suspend];

  v13 = [(HMMTRAccessoryConnectionRequest *)v6 lifeTimer];
  [v13 suspend];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (*(*(*(&v21 + 1) + 8 * v18) + 16))(*(*(&v21 + 1) + 8 * v18));
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  v19 = [(HMMTRAccessoryConnectionRequest *)v6 parentFabricRequest];
  [v19 operationsCompletedForAccessoryConnectionRequest:v6];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)executeAllPendingOperations
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@executeAllPendingOperations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMTRAccessoryConnectionRequest *)v4 connectionPriority];
  v8 = [(HMMTRAccessoryConnectionRequest *)v4 _getAllPendingOperations];
  if ([v8 count])
  {
    v9 = [(HMMTRAccessoryConnectionRequest *)v4 idleTimer];
    [v9 suspend];

    if (v7 == 1)
    {
      v10 = [(HMMTRAccessoryConnectionRequest *)v4 idleWriteTimer];
      [v10 suspend];
    }

    v11 = [(HMMTRAccessoryConnectionRequest *)v4 idleReadTimer];
    [v11 suspend];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v20 + 1) + 8 * v16) + 16))(*(*(&v20 + 1) + 8 * v16));
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(HMMTRAccessoryConnectionRequest *)v4 kickIdleTimer];
    if (v7 == 1)
    {
      v17 = [(HMMTRAccessoryConnectionRequest *)v4 idleWriteTimer];
      [v17 resume];
    }

    v18 = [(HMMTRAccessoryConnectionRequest *)v4 idleReadTimer];
    [v18 resume];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)mergeAccessoryConnectionRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@mergeAccessoryConnectionRequest", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if ([(HMMTRAccessoryConnectionRequest *)v6 hasPendingLowPriorityConnectionRequest])
  {
    if (([v4 hasPendingLowPriorityConnectionRequest] & 1) == 0)
    {
      -[HMMTRAccessoryConnectionRequest setConnectionPriority:](v6, "setConnectionPriority:", [v4 connectionPriority]);
      if ([(HMMTRAccessoryConnectionRequest *)v6 connectionIdleTime]== 2)
      {
        [(HMMTRAccessoryConnectionRequest *)v6 updateConnectionIdleTime:2 force:1];
      }
    }
  }

  if ([v4 connectionPriority] == 1)
  {
    [(HMMTRAccessoryConnectionRequest *)v6 setConnectionPriority:1];
  }

  pendingOperations = v6->_pendingOperations;
  v10 = [v4 _getAllPendingOperations];
  [(NSMutableArray *)pendingOperations addObjectsFromArray:v10];

  os_unfair_lock_unlock(&v6->_lock);
  v11 = [(HMMTRAccessoryConnectionRequest *)v6 lifeTimer];
  [v11 resume];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_getAllPendingOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:self->_pendingOperations];
  [(NSMutableArray *)self->_pendingOperations removeAllObjects];
  if ([(HMMTRAccessoryConnectionRequest *)self connectionPriority]== 1)
  {
    [(HMMTRAccessoryConnectionRequest *)self setConnectionPriority:0];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)_numPendingOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_pendingOperations count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_restartReadWriteIdleTimersWithReadInterval:(double)a3 writeInterval:(double)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = [(HMMTRAccessoryConnectionRequest *)self idleReadTimer];
  v8 = [v7 isRunning];

  v9 = [(HMMTRAccessoryConnectionRequest *)self idleWriteTimer];
  v10 = [v9 isRunning];

  v11 = [(HMMTRAccessoryConnectionRequest *)self idleReadTimer];
  [v11 cancel];

  v12 = [(HMMTRAccessoryConnectionRequest *)self idleWriteTimer];
  [v12 cancel];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    v28 = 138543874;
    v29 = v16;
    v30 = 2048;
    v31 = a3;
    v32 = 2048;
    v33 = a4;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Updating AccessoryConnectionRequest read/write idle time to: read: %f, write: %f", &v28, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a3];
  [(HMMTRAccessoryConnectionRequest *)v14 setIdleReadTimer:v17];

  v18 = [(HMMTRAccessoryConnectionRequest *)v14 workQueue];
  v19 = [(HMMTRAccessoryConnectionRequest *)v14 idleReadTimer];
  [v19 setDelegateQueue:v18];

  v20 = [(HMMTRAccessoryConnectionRequest *)v14 idleReadTimer];
  [v20 setDelegate:v14];

  if (v8)
  {
    v21 = [(HMMTRAccessoryConnectionRequest *)v14 idleReadTimer];
    [v21 resume];
  }

  v22 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];
  [(HMMTRAccessoryConnectionRequest *)v14 setIdleWriteTimer:v22];

  v23 = [(HMMTRAccessoryConnectionRequest *)v14 workQueue];
  v24 = [(HMMTRAccessoryConnectionRequest *)v14 idleWriteTimer];
  [v24 setDelegateQueue:v23];

  v25 = [(HMMTRAccessoryConnectionRequest *)v14 idleWriteTimer];
  [v25 setDelegate:v14];

  if (v10)
  {
    v26 = [(HMMTRAccessoryConnectionRequest *)v14 idleWriteTimer];
    [v26 resume];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_restartConnectionIdleTimer:(double)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(HMMTRAccessoryConnectionRequest *)self idleTimer];
  v6 = [v5 isRunning];

  v7 = [(HMMTRAccessoryConnectionRequest *)self idleTimer];
  [v7 cancel];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v11;
    v20 = 2048;
    v21 = a3;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updating AccessoryConnectionRequest Idle time to: %f", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a3];
  [(HMMTRAccessoryConnectionRequest *)v9 setIdleTimer:v12];

  v13 = [(HMMTRAccessoryConnectionRequest *)v9 workQueue];
  v14 = [(HMMTRAccessoryConnectionRequest *)v9 idleTimer];
  [v14 setDelegateQueue:v13];

  v15 = [(HMMTRAccessoryConnectionRequest *)v9 idleTimer];
  [v15 setDelegate:v9];

  if (v6)
  {
    v16 = [(HMMTRAccessoryConnectionRequest *)v9 idleTimer];
    [v16 resume];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (double)_getIdleAccessoryConnectionTimeoutWEDShortWrite
{
  v2 = CFPreferencesCopyAppValue(@"hmmtr.thread.wed.idletimer.shortwrite", *MEMORY[0x277CBF028]);
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 15.0;
  }

  return v5;
}

- (double)_getIdleAccessoryConnectionTimeoutWEDShortRead
{
  v2 = CFPreferencesCopyAppValue(@"hmmtr.thread.wed.idletimer.shortread", *MEMORY[0x277CBF028]);
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2.0;
  }

  return v5;
}

- (double)_getIdleAccessoryConnectionTimeoutWEDShort
{
  v2 = CFPreferencesCopyAppValue(@"hmmtr.thread.wed.idletimer.short", *MEMORY[0x277CBF028]);
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 7.5;
  }

  return v5;
}

- (HMMTRAccessoryConnectionRequest)initWithQueue:(id)a3 server:(id)a4 priority:(unint64_t)a5 completion:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v34.receiver = self;
  v34.super_class = HMMTRAccessoryConnectionRequest;
  v15 = [(HMMTRAccessoryConnectionRequest *)&v34 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_server, v13);
    v17 = [v13 nodeID];
    nodeID = v16->_nodeID;
    v16->_nodeID = v17;

    v19 = [v13 knownToSystemCommissioner];
    if (v19)
    {
      v6 = [v13 browser];
      [v6 systemCommissionerFabricUUID];
    }

    else
    {
      [v13 fabricUUID];
    }
    v20 = ;
    objc_storeStrong(&v16->_fabricUUID, v20);
    if (v19)
    {

      v20 = v6;
    }

    objc_storeStrong(&v16->_workQueue, a3);
    objc_storeWeak(&v16->_parentFabricRequest, 0);
    v16->_connectionPriority = a5;
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingOperations = v16->_pendingOperations;
    v16->_pendingOperations = v21;

    v23 = v16->_pendingOperations;
    v24 = MEMORY[0x2318887D0](v14);
    [(NSMutableArray *)v23 addObject:v24];

    v16->_connectionIdleTime = 0;
    v25 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:7.5];
    idleTimer = v16->_idleTimer;
    v16->_idleTimer = v25;

    [(HMFTimer *)v16->_idleTimer setDelegateQueue:v12];
    [(HMFTimer *)v16->_idleTimer setDelegate:v16];
    v27 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:60.0];
    idleReadTimer = v16->_idleReadTimer;
    v16->_idleReadTimer = v27;

    [(HMFTimer *)v16->_idleReadTimer setDelegateQueue:v12];
    [(HMFTimer *)v16->_idleReadTimer setDelegate:v16];
    v29 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:60.0];
    idleWriteTimer = v16->_idleWriteTimer;
    v16->_idleWriteTimer = v29;

    [(HMFTimer *)v16->_idleWriteTimer setDelegateQueue:v12];
    [(HMFTimer *)v16->_idleWriteTimer setDelegate:v16];
    v31 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:60.0];
    lifeTimer = v16->_lifeTimer;
    v16->_lifeTimer = v31;

    [(HMFTimer *)v16->_lifeTimer setDelegateQueue:v12];
    [(HMFTimer *)v16->_lifeTimer setDelegate:v16];
    [(HMFTimer *)v16->_lifeTimer resume];
  }

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16, &__block_literal_global_1142);
  }

  v3 = logCategory__hmf_once_v17;

  return v3;
}

uint64_t __46__HMMTRAccessoryConnectionRequest_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v17 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end