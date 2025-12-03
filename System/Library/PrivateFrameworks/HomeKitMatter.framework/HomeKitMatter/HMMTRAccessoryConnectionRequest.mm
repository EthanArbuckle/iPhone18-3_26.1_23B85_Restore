@interface HMMTRAccessoryConnectionRequest
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMMTRAccessoryConnectionRequest)initWithQueue:(id)queue server:(id)server priority:(unint64_t)priority completion:(id)completion;
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
- (void)_handleReadWriteTimerDidFire:(id)fire altTimer:(id)timer;
- (void)_restartConnectionIdleTimer:(double)timer;
- (void)_restartReadWriteIdleTimersWithReadInterval:(double)interval writeInterval:(double)writeInterval;
- (void)abortAllPendingOperations:(id)operations;
- (void)executeAllPendingOperations;
- (void)kickIdleTimer;
- (void)mergeAccessoryConnectionRequest:(id)request;
- (void)timerDidFire:(id)fire;
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
  nodeID = [(HMMTRAccessoryConnectionRequest *)self nodeID];
  v4 = [nodeID hash];

  fabricUUID = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
  v6 = [fabricUUID hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    nodeID = [(HMMTRAccessoryConnectionRequest *)v6 nodeID];
    nodeID2 = [(HMMTRAccessoryConnectionRequest *)self nodeID];
    v9 = [nodeID isEqual:nodeID2];

    if (v9)
    {
      fabricUUID = [(HMMTRAccessoryConnectionRequest *)v6 fabricUUID];
      fabricUUID2 = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
      v12 = [fabricUUID isEqual:fabricUUID2];
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
  nodeID = [(HMMTRAccessoryConnectionRequest *)self nodeID];
  v5 = [v3 initWithName:@"NodeID" value:nodeID];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  fabricUUID = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
  v8 = [v6 initWithName:@"FabricUUID" value:fabricUUID];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  nodeID = [(HMMTRAccessoryConnectionRequest *)self nodeID];
  fabricUUID = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
  v7 = [v3 stringWithFormat:@"%@ %@ [%@]", shortDescription, nodeID, fabricUUID];

  return v7;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  nodeID = [(HMMTRAccessoryConnectionRequest *)self nodeID];
  fabricUUID = [(HMMTRAccessoryConnectionRequest *)self fabricUUID];
  v6 = [v3 stringWithFormat:@"%@/%@", nodeID, fabricUUID];

  return v6;
}

- (void)timerDidFire:(id)fire
{
  v32 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  idleTimer = [(HMMTRAccessoryConnectionRequest *)self idleTimer];

  if (idleTimer == fireCopy)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@No activity for accessory, releasing connection", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    idleWriteTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy4 idleWriteTimer];
    [idleWriteTimer suspend];

    idleReadTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy4 idleReadTimer];
    [idleReadTimer suspend];

    lifeTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy4 lifeTimer];
    [lifeTimer suspend];
    goto LABEL_11;
  }

  idleWriteTimer2 = [(HMMTRAccessoryConnectionRequest *)self idleWriteTimer];

  if (idleWriteTimer2 == fireCopy)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@timerDidFire - idleWriteTimer", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    idleWriteTimer3 = [(HMMTRAccessoryConnectionRequest *)selfCopy3 idleWriteTimer];
    idleReadTimer2 = [(HMMTRAccessoryConnectionRequest *)selfCopy3 idleReadTimer];
    goto LABEL_18;
  }

  idleReadTimer3 = [(HMMTRAccessoryConnectionRequest *)self idleReadTimer];

  if (idleReadTimer3 == fireCopy)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v27;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@timerDidFire - idleReadTimer", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    idleWriteTimer3 = [(HMMTRAccessoryConnectionRequest *)selfCopy3 idleReadTimer];
    idleReadTimer2 = [(HMMTRAccessoryConnectionRequest *)selfCopy3 idleWriteTimer];
LABEL_18:
    v28 = idleReadTimer2;
    [(HMMTRAccessoryConnectionRequest *)selfCopy3 _handleReadWriteTimerDidFire:idleWriteTimer3 altTimer:idleReadTimer2];

    goto LABEL_19;
  }

  lifeTimer2 = [(HMMTRAccessoryConnectionRequest *)self lifeTimer];

  if (lifeTimer2 == fireCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Lifetime of the accessory connection request expired, releasing connection", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    lifeTimer = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
    [(HMMTRAccessoryConnectionRequest *)selfCopy4 abortAllPendingOperations:lifeTimer];
LABEL_11:

    idleWriteTimer3 = [(HMMTRAccessoryConnectionRequest *)selfCopy4 parentFabricRequest];
    [idleWriteTimer3 operationsCompletedForAccessoryConnectionRequest:selfCopy4];
LABEL_19:
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadWriteTimerDidFire:(id)fire altTimer:(id)timer
{
  v25 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  timerCopy = timer;
  server = [(HMMTRAccessoryConnectionRequest *)self server];
  isReadyToReadFromMTRDevice = [server isReadyToReadFromMTRDevice];

  if (isReadyToReadFromMTRDevice)
  {
    isRunning = [timerCopy isRunning];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (isRunning)
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
      idleTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy idleTimer];
      [idleTimer fire];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@handleReadWriteTimerDidFire - sub not yet establish, kick timer", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    [fireCopy resume];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)kickIdleTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@kickIdleTimer", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  idleTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy idleTimer];
  [idleTimer resume];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)abortAllPendingOperations:(id)operations
{
  v28 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@abortAllPendingOperations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  _getAllPendingOperations = [(HMMTRAccessoryConnectionRequest *)selfCopy _getAllPendingOperations];
  idleTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy idleTimer];
  [idleTimer suspend];

  idleWriteTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy idleWriteTimer];
  [idleWriteTimer suspend];

  idleReadTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy idleReadTimer];
  [idleReadTimer suspend];

  lifeTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy lifeTimer];
  [lifeTimer suspend];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = _getAllPendingOperations;
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

  parentFabricRequest = [(HMMTRAccessoryConnectionRequest *)selfCopy parentFabricRequest];
  [parentFabricRequest operationsCompletedForAccessoryConnectionRequest:selfCopy];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)executeAllPendingOperations
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@executeAllPendingOperations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  connectionPriority = [(HMMTRAccessoryConnectionRequest *)selfCopy connectionPriority];
  _getAllPendingOperations = [(HMMTRAccessoryConnectionRequest *)selfCopy _getAllPendingOperations];
  if ([_getAllPendingOperations count])
  {
    idleTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy idleTimer];
    [idleTimer suspend];

    if (connectionPriority == 1)
    {
      idleWriteTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy idleWriteTimer];
      [idleWriteTimer suspend];
    }

    idleReadTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy idleReadTimer];
    [idleReadTimer suspend];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = _getAllPendingOperations;
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

    [(HMMTRAccessoryConnectionRequest *)selfCopy kickIdleTimer];
    if (connectionPriority == 1)
    {
      idleWriteTimer2 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleWriteTimer];
      [idleWriteTimer2 resume];
    }

    idleReadTimer2 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleReadTimer];
    [idleReadTimer2 resume];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)mergeAccessoryConnectionRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  if ([(HMMTRAccessoryConnectionRequest *)selfCopy hasPendingLowPriorityConnectionRequest])
  {
    if (([requestCopy hasPendingLowPriorityConnectionRequest] & 1) == 0)
    {
      -[HMMTRAccessoryConnectionRequest setConnectionPriority:](selfCopy, "setConnectionPriority:", [requestCopy connectionPriority]);
      if ([(HMMTRAccessoryConnectionRequest *)selfCopy connectionIdleTime]== 2)
      {
        [(HMMTRAccessoryConnectionRequest *)selfCopy updateConnectionIdleTime:2 force:1];
      }
    }
  }

  if ([requestCopy connectionPriority] == 1)
  {
    [(HMMTRAccessoryConnectionRequest *)selfCopy setConnectionPriority:1];
  }

  pendingOperations = selfCopy->_pendingOperations;
  _getAllPendingOperations = [requestCopy _getAllPendingOperations];
  [(NSMutableArray *)pendingOperations addObjectsFromArray:_getAllPendingOperations];

  os_unfair_lock_unlock(&selfCopy->_lock);
  lifeTimer = [(HMMTRAccessoryConnectionRequest *)selfCopy lifeTimer];
  [lifeTimer resume];

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

- (void)_restartReadWriteIdleTimersWithReadInterval:(double)interval writeInterval:(double)writeInterval
{
  v34 = *MEMORY[0x277D85DE8];
  idleReadTimer = [(HMMTRAccessoryConnectionRequest *)self idleReadTimer];
  isRunning = [idleReadTimer isRunning];

  idleWriteTimer = [(HMMTRAccessoryConnectionRequest *)self idleWriteTimer];
  isRunning2 = [idleWriteTimer isRunning];

  idleReadTimer2 = [(HMMTRAccessoryConnectionRequest *)self idleReadTimer];
  [idleReadTimer2 cancel];

  idleWriteTimer2 = [(HMMTRAccessoryConnectionRequest *)self idleWriteTimer];
  [idleWriteTimer2 cancel];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    v28 = 138543874;
    v29 = v16;
    v30 = 2048;
    intervalCopy = interval;
    v32 = 2048;
    writeIntervalCopy = writeInterval;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Updating AccessoryConnectionRequest read/write idle time to: read: %f, write: %f", &v28, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:interval];
  [(HMMTRAccessoryConnectionRequest *)selfCopy setIdleReadTimer:v17];

  workQueue = [(HMMTRAccessoryConnectionRequest *)selfCopy workQueue];
  idleReadTimer3 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleReadTimer];
  [idleReadTimer3 setDelegateQueue:workQueue];

  idleReadTimer4 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleReadTimer];
  [idleReadTimer4 setDelegate:selfCopy];

  if (isRunning)
  {
    idleReadTimer5 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleReadTimer];
    [idleReadTimer5 resume];
  }

  v22 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:writeInterval];
  [(HMMTRAccessoryConnectionRequest *)selfCopy setIdleWriteTimer:v22];

  workQueue2 = [(HMMTRAccessoryConnectionRequest *)selfCopy workQueue];
  idleWriteTimer3 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleWriteTimer];
  [idleWriteTimer3 setDelegateQueue:workQueue2];

  idleWriteTimer4 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleWriteTimer];
  [idleWriteTimer4 setDelegate:selfCopy];

  if (isRunning2)
  {
    idleWriteTimer5 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleWriteTimer];
    [idleWriteTimer5 resume];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_restartConnectionIdleTimer:(double)timer
{
  v22 = *MEMORY[0x277D85DE8];
  idleTimer = [(HMMTRAccessoryConnectionRequest *)self idleTimer];
  isRunning = [idleTimer isRunning];

  idleTimer2 = [(HMMTRAccessoryConnectionRequest *)self idleTimer];
  [idleTimer2 cancel];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v11;
    v20 = 2048;
    timerCopy = timer;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updating AccessoryConnectionRequest Idle time to: %f", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:timer];
  [(HMMTRAccessoryConnectionRequest *)selfCopy setIdleTimer:v12];

  workQueue = [(HMMTRAccessoryConnectionRequest *)selfCopy workQueue];
  idleTimer3 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleTimer];
  [idleTimer3 setDelegateQueue:workQueue];

  idleTimer4 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleTimer];
  [idleTimer4 setDelegate:selfCopy];

  if (isRunning)
  {
    idleTimer5 = [(HMMTRAccessoryConnectionRequest *)selfCopy idleTimer];
    [idleTimer5 resume];
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

- (HMMTRAccessoryConnectionRequest)initWithQueue:(id)queue server:(id)server priority:(unint64_t)priority completion:(id)completion
{
  queueCopy = queue;
  serverCopy = server;
  completionCopy = completion;
  v34.receiver = self;
  v34.super_class = HMMTRAccessoryConnectionRequest;
  v15 = [(HMMTRAccessoryConnectionRequest *)&v34 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_server, serverCopy);
    nodeID = [serverCopy nodeID];
    nodeID = v16->_nodeID;
    v16->_nodeID = nodeID;

    knownToSystemCommissioner = [serverCopy knownToSystemCommissioner];
    if (knownToSystemCommissioner)
    {
      browser = [serverCopy browser];
      [browser systemCommissionerFabricUUID];
    }

    else
    {
      [serverCopy fabricUUID];
    }
    v20 = ;
    objc_storeStrong(&v16->_fabricUUID, v20);
    if (knownToSystemCommissioner)
    {

      v20 = browser;
    }

    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeWeak(&v16->_parentFabricRequest, 0);
    v16->_connectionPriority = priority;
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingOperations = v16->_pendingOperations;
    v16->_pendingOperations = v21;

    v23 = v16->_pendingOperations;
    v24 = MEMORY[0x2318887D0](completionCopy);
    [(NSMutableArray *)v23 addObject:v24];

    v16->_connectionIdleTime = 0;
    v25 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:7.5];
    idleTimer = v16->_idleTimer;
    v16->_idleTimer = v25;

    [(HMFTimer *)v16->_idleTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v16->_idleTimer setDelegate:v16];
    v27 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:60.0];
    idleReadTimer = v16->_idleReadTimer;
    v16->_idleReadTimer = v27;

    [(HMFTimer *)v16->_idleReadTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v16->_idleReadTimer setDelegate:v16];
    v29 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:60.0];
    idleWriteTimer = v16->_idleWriteTimer;
    v16->_idleWriteTimer = v29;

    [(HMFTimer *)v16->_idleWriteTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v16->_idleWriteTimer setDelegate:v16];
    v31 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:60.0];
    lifeTimer = v16->_lifeTimer;
    v16->_lifeTimer = v31;

    [(HMFTimer *)v16->_lifeTimer setDelegateQueue:queueCopy];
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