@interface HMMTRFabricConnectionRequest
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_hasActiveAccessoryConnections;
- (BOOL)_hasPendingAccessoryConnections;
- (BOOL)_removeFromActiveIPConnections:(id)connections;
- (BOOL)_removeFromActiveThreadConnections:(id)connections;
- (BOOL)_removeFromActiveThreadWEDConnections:(id)connections;
- (BOOL)_tryMergeIntoExistingConnection:(id)connection;
- (BOOL)abortOperationsForConnectionRequest:(id)request reason:(id)reason;
- (BOOL)hasPendingHighPriorityConnectionRequest;
- (BOOL)hasPendingLowPriorityConnectionRequestsOnly;
- (BOOL)isEqual:(id)equal;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRFabricConnectionRequest)initWithQueue:(id)queue browser:(id)browser fabricUUID:(id)d systemCommissionerFabric:(BOOL)fabric;
- (id)activeIPConnectionRequests;
- (id)activeThreadConnectionRequests;
- (id)activeThreadWEDConnectionRequests;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)pendingConnectionRequests;
- (id)privateDescription;
- (unint64_t)hash;
- (void)_addToActiveIPConnections:(id)connections;
- (void)_addToActiveThreadConnections:(id)connections;
- (void)_addToActiveThreadWEDConnections:(id)connections;
- (void)_addToPendingConnections:(id)connections;
- (void)_calculateFabricIdleTime;
- (void)_connectPendingConnections;
- (void)_kickIdleTimer;
- (void)_removeFromPendingConnections:(id)connections;
- (void)_restartConnectionIdleTimer:(double)timer;
- (void)abortAllLowPriorityOperationsWithReason:(id)reason;
- (void)abortAllOperationsWithReason:(id)reason;
- (void)connectToAccessoryWhenAllowed:(id)allowed;
- (void)dispatchBlock:(id)block;
- (void)notifyOperationsCompleted:(id)completed;
- (void)operationsCompletedForAccessoryConnectionRequest:(id)request;
- (void)retryOperations;
- (void)startOperations;
- (void)stopOperations;
- (void)suspendOperations;
- (void)timerDidFire:(id)fire;
- (void)updateAllConnectionIdleTimeoutsToMinimum;
@end

@implementation HMMTRFabricConnectionRequest

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (unint64_t)hash
{
  fabricUUID = [(HMMTRFabricConnectionRequest *)self fabricUUID];
  v3 = [fabricUUID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fabricUUID = [(HMMTRFabricConnectionRequest *)v5 fabricUUID];
    fabricUUID2 = [(HMMTRFabricConnectionRequest *)self fabricUUID];
    v8 = [fabricUUID isEqual:fabricUUID2];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  fabricUUID = [(HMMTRFabricConnectionRequest *)self fabricUUID];
  v22 = [v3 initWithName:@"FabricUUID" value:fabricUUID];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRFabricConnectionRequest *)self systemCommissionerFabric];
  v21 = HMFBooleanToString();
  v5 = [v4 initWithName:@"SystemCommissionerFabric" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  activeIPConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeIPConnectionRequests];
  v8 = [v6 initWithName:@"ActiveIPRequests:" value:activeIPConnectionRequests];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  activeThreadConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadConnectionRequests];
  v11 = [v9 initWithName:@"ActiveThreadRequests:" value:activeThreadConnectionRequests];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  activeThreadWEDConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadWEDConnectionRequests];
  v14 = [v12 initWithName:@"ActiveThreadWEDRequests:" value:activeThreadWEDConnectionRequests];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)self pendingConnectionRequests];
  v17 = [v15 initWithName:@"PendingRequests:" value:pendingConnectionRequests];
  v24[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  fabricUUID = [(HMMTRFabricConnectionRequest *)self fabricUUID];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, fabricUUID];

  return v6;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  fabricUUID = [(HMMTRFabricConnectionRequest *)self fabricUUID];
  systemCommissionerFabric = [(HMMTRFabricConnectionRequest *)self systemCommissionerFabric];
  v6 = &stru_283ED2308;
  if (systemCommissionerFabric)
  {
    v6 = @"/ system commissioner";
  }

  v7 = [v3 stringWithFormat:@"%@%@", fabricUUID, v6];

  return v7;
}

- (void)dispatchBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMMTRFabricConnectionRequest *)self workQueue];
  dispatch_async(workQueue, blockCopy);
}

- (void)updateAllConnectionIdleTimeoutsToMinimum
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    fabricUUID = [(HMMTRFabricConnectionRequest *)selfCopy fabricUUID];
    *buf = 138543618;
    v24 = v6;
    v25 = 2112;
    v26 = fabricUUID;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@updateAllConnectionIdleTimeoutsToMinimum for fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  os_unfair_lock_lock_with_options();
  array = [(NSMutableOrderedSet *)selfCopy->_pendingConnectionRequests array];
  [orderedSet addObjectsFromArray:array];

  array2 = [(NSMutableOrderedSet *)selfCopy->_activeIPConnectionRequests array];
  [orderedSet addObjectsFromArray:array2];

  array3 = [(NSMutableOrderedSet *)selfCopy->_activeThreadConnectionRequests array];
  [orderedSet addObjectsFromArray:array3];

  array4 = [(NSMutableOrderedSet *)selfCopy->_activeThreadWEDConnectionRequests array];
  [orderedSet addObjectsFromArray:array4];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = orderedSet;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v16++) updateConnectionIdleTime:{0, v18}];
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)abortAllLowPriorityOperationsWithReason:(id)reason
{
  v59 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  array4 = [(NSMutableOrderedSet *)self->_pendingConnectionRequests array];
  [array3 addObjectsFromArray:array4];

  array5 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests array];
  [array2 addObjectsFromArray:array5];

  array6 = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests array];
  [array addObjectsFromArray:array6];

  array7 = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests array];
  [array addObjectsFromArray:array7];

  os_unfair_lock_unlock(&self->_lock);
  hasOnlyQueuedLowPriorityRequests = [(HMMTRFabricConnectionRequest *)self hasOnlyQueuedLowPriorityRequests];
  v12 = [array count] == 0;
  array8 = [MEMORY[0x277CBEB18] array];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = array3;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v58 count:16];
  v16 = v12 && hasOnlyQueuedLowPriorityRequests;
  if (v15)
  {
    v17 = *v49;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        if ([v19 hasPendingLowPriorityConnectionRequest])
        {
          [array8 addObject:v19];
        }

        else
        {
          v16 = 0;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v15);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = array2;
  v21 = [v20 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v21)
  {
    v22 = *v45;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v44 + 1) + 8 * j);
        if ([v24 hasPendingLowPriorityConnectionRequest])
        {
          [array8 addObject:v24];
        }

        else
        {
          v16 = 0;
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v21);
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy = self;
  v27 = HMFGetOSLogHandle();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (v28)
    {
      v29 = HMFGetLogIdentifier();
      fabricUUID = [(HMMTRFabricConnectionRequest *)selfCopy fabricUUID];
      *buf = 138543618;
      v54 = v29;
      v55 = 2112;
      v56 = fabricUUID;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@abortAllLowPriorityOperationsWithReason for fabric: %@ - marking as complete, only had low priority requests", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    [(HMMTRFabricConnectionRequest *)selfCopy setActive:0];
    idleTimer = [(HMMTRFabricConnectionRequest *)selfCopy idleTimer];
    [idleTimer suspend];

    if (![array8 count])
    {
      [(HMMTRFabricConnectionRequest *)selfCopy notifyOperationsCompleted:reasonCopy];
      goto LABEL_37;
    }
  }

  else
  {
    if (v28)
    {
      v32 = HMFGetLogIdentifier();
      fabricUUID2 = [(HMMTRFabricConnectionRequest *)selfCopy fabricUUID];
      *buf = 138543618;
      v54 = v32;
      v55 = 2112;
      v56 = fabricUUID2;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@abortAllLowPriorityOperationsWithReason for fabric: %@ - fabricRequests is not low priority only, letting idle timer expire normally", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = array8;
  v35 = [v34 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v35)
  {
    v36 = *v41;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(v34);
        }

        [*(*(&v40 + 1) + 8 * k) abortAllPendingOperations:reasonCopy];
      }

      v35 = [v34 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v35);
  }

LABEL_37:
  v38 = *MEMORY[0x277D85DE8];
}

- (void)abortAllOperationsWithReason:(id)reason
{
  v32 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    fabricUUID = [(HMMTRFabricConnectionRequest *)selfCopy fabricUUID];
    *buf = 138543618;
    v29 = v8;
    v30 = 2112;
    v31 = fabricUUID;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@abortAllOperations for fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMMTRFabricConnectionRequest *)selfCopy setActive:0];
  idleTimer = [(HMMTRFabricConnectionRequest *)selfCopy idleTimer];
  [idleTimer suspend];

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  os_unfair_lock_lock_with_options();
  array = [(NSMutableOrderedSet *)selfCopy->_pendingConnectionRequests array];
  [orderedSet addObjectsFromArray:array];

  array2 = [(NSMutableOrderedSet *)selfCopy->_activeIPConnectionRequests array];
  [orderedSet addObjectsFromArray:array2];

  array3 = [(NSMutableOrderedSet *)selfCopy->_activeThreadConnectionRequests array];
  [orderedSet addObjectsFromArray:array3];

  array4 = [(NSMutableOrderedSet *)selfCopy->_activeThreadWEDConnectionRequests array];
  [orderedSet addObjectsFromArray:array4];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = orderedSet;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:{12, v23}];
        [v20 abortAllPendingOperations:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  [(HMMTRFabricConnectionRequest *)selfCopy notifyOperationsCompleted:reasonCopy];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)notifyOperationsCompleted:(id)completed
{
  completedCopy = completed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMMTRFabricConnectionRequest_notifyOperationsCompleted___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = completedCopy;
  v5 = completedCopy;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v6];
}

void __58__HMMTRFabricConnectionRequest_notifyOperationsCompleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browser];
  [v2 _operationsCompletedForFabricConnectionRequest:*(a1 + 32) reason:*(a1 + 40)];
}

- (BOOL)abortOperationsForConnectionRequest:(id)request reason:(id)reason
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  reasonCopy = reason;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    nodeID = [requestCopy nodeID];
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = nodeID;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@abortOperationsForConnectionRequest for accessoryConnectionRequest for nodeID: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  v13 = [(NSMutableOrderedSet *)selfCopy->_activeIPConnectionRequests indexOfObject:requestCopy];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL || ([(NSMutableOrderedSet *)selfCopy->_activeIPConnectionRequests objectAtIndex:v13], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [(NSMutableOrderedSet *)selfCopy->_activeThreadConnectionRequests indexOfObject:requestCopy];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL || ([(NSMutableOrderedSet *)selfCopy->_activeThreadConnectionRequests objectAtIndex:v15], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = [(NSMutableOrderedSet *)selfCopy->_activeThreadWEDConnectionRequests indexOfObject:requestCopy];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL || ([(NSMutableOrderedSet *)selfCopy->_activeThreadWEDConnectionRequests objectAtIndex:v16], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v18 = [(NSMutableOrderedSet *)selfCopy->_pendingConnectionRequests indexOfObject:requestCopy];
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        else
        {
          v14 = [(NSMutableOrderedSet *)selfCopy->_pendingConnectionRequests objectAtIndex:v18];
          os_unfair_lock_unlock(&selfCopy->_lock);
          if (v14)
          {
            goto LABEL_10;
          }
        }

        v17 = 0;
        goto LABEL_15;
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_10:
  [v14 abortAllPendingOperations:reasonCopy];

  v17 = 1;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)retryOperations
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(HMMTRFabricConnectionRequest *)self active])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__HMMTRFabricConnectionRequest_retryOperations__block_invoke;
    v8[3] = &unk_2786F0CA8;
    v8[4] = self;
    [(HMMTRFabricConnectionRequest *)self dispatchBlock:v8];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = selfCopy;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalid state, expecting to be active for retryOperations for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HMMTRFabricConnectionRequest_retryOperations__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@retryOperations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    *buf = 138543618;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [*(a1 + 32) browser];
  [v11 operationsStartedForFabricConnectionRequest:*(a1 + 32)];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = *(*(a1 + 32) + 24);
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

        v17 = [*(*(&v20 + 1) + 8 * v16) server];
        [v17 triggerEstablishingMatterSubscription];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  result = [*(a1 + 32) _connectPendingConnections];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)suspendOperations
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__HMMTRFabricConnectionRequest_suspendOperations__block_invoke;
  v2[3] = &unk_2786F0CA8;
  v2[4] = self;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v2];
}

void __49__HMMTRFabricConnectionRequest_suspendOperations__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@suspendOperations", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 32) setActive:0];
  if (([*(a1 + 32) _hasActiveAccessoryConnections] & 1) == 0)
  {
    v11 = [*(a1 + 32) idleTimer];
    [v11 suspend];

    v12 = [*(a1 + 32) idleTimer];
    [v12 fire];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopOperations
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__HMMTRFabricConnectionRequest_stopOperations__block_invoke;
  v2[3] = &unk_2786F0CA8;
  v2[4] = self;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v2];
}

void __46__HMMTRFabricConnectionRequest_stopOperations__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@stopOperations", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 32) setActive:0];
  v11 = [*(a1 + 32) idleTimer];
  [v11 suspend];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startOperations
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__HMMTRFabricConnectionRequest_startOperations__block_invoke;
  v2[3] = &unk_2786F0CA8;
  v2[4] = self;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v2];
}

uint64_t __47__HMMTRFabricConnectionRequest_startOperations__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@startOperations", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [*(a1 + 32) browser];
  [v11 operationsStartedForFabricConnectionRequest:*(a1 + 32)];

  [*(a1 + 32) setActive:1];
  result = [*(a1 + 32) _connectPendingConnections];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)timerDidFire:(id)fire
{
  v19 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@No activity on fabric, releasing connection", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_autoreleasePoolPush();
  v10 = selfCopy;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:3];
  [(HMMTRFabricConnectionRequest *)v10 abortAllOperationsWithReason:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_kickIdleTimer
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
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@_kickIdleTimer", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  idleTimer = [(HMMTRFabricConnectionRequest *)selfCopy idleTimer];
  [idleTimer resume];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasPendingAccessoryConnections
{
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)self pendingConnectionRequests];
  v3 = [pendingConnectionRequests count] != 0;

  return v3;
}

- (BOOL)_hasActiveAccessoryConnections
{
  activeIPConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeIPConnectionRequests];
  v4 = [activeIPConnectionRequests count];

  if (v4)
  {
    return 1;
  }

  activeThreadConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadConnectionRequests];
  v6 = [activeThreadConnectionRequests count];

  if (v6)
  {
    return 1;
  }

  activeThreadWEDConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadWEDConnectionRequests];
  v7 = [activeThreadWEDConnectionRequests count] != 0;

  return v7;
}

- (void)operationsCompletedForAccessoryConnectionRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__HMMTRFabricConnectionRequest_operationsCompletedForAccessoryConnectionRequest___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v6];
}

void __81__HMMTRFabricConnectionRequest_operationsCompletedForAccessoryConnectionRequest___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) nodeID];
    v16 = 138543618;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Marking operation complete for accessory request: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (([*(a1 + 32) _removeFromActiveIPConnections:*(a1 + 40)] & 1) == 0 && (objc_msgSend(*(a1 + 32), "_removeFromActiveThreadConnections:", *(a1 + 40)) & 1) == 0 && (objc_msgSend(*(a1 + 32), "_removeFromActiveThreadWEDConnections:", *(a1 + 40)) & 1) == 0)
  {
    [*(a1 + 32) _removeFromPendingConnections:*(a1 + 40)];
  }

  v7 = [*(a1 + 32) idleTimer];
  if ([v7 isRunning] & 1) != 0 || (objc_msgSend(*(a1 + 32), "_hasActiveAccessoryConnections"))
  {

LABEL_10:
    [*(a1 + 32) _connectPendingConnections];
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) _hasPendingAccessoryConnections];

  if (v9)
  {
    goto LABEL_10;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Marking fabric as idle due to all pending accessory lifeTimer expiring", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = *(a1 + 32);
  v15 = [v14 idleTimer];
  [v14 timerDidFire:v15];

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_connectPendingConnections
{
  v56 = *MEMORY[0x277D85DE8];
  active = [(HMMTRFabricConnectionRequest *)self active];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (!active)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v31;
      v54 = 2112;
      v55 = selfCopy;
      v32 = "%{public}@Fabric is currently inactive, do not connect any pending connections: %@";
      v33 = v7;
      v34 = OS_LOG_TYPE_INFO;
      v35 = 22;
LABEL_37:
      _os_log_impl(&dword_22AEAE000, v33, v34, v32, buf, v35);
    }

LABEL_38:

    objc_autoreleasePoolPop(v4);
    goto LABEL_39;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v8;
    v54 = 2112;
    v55 = selfCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Connecting pending connections for fabric %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)selfCopy pendingConnectionRequests];
  v10 = [pendingConnectionRequests count];

  if (!v10)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = selfCopy;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v31;
      v32 = "%{public}@No more pending connections";
      v33 = v7;
      v34 = OS_LOG_TYPE_DEBUG;
      v35 = 12;
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  pendingConnectionRequests2 = [(HMMTRFabricConnectionRequest *)selfCopy pendingConnectionRequests];
  v13 = [pendingConnectionRequests2 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(pendingConnectionRequests2);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        if ([v17 hasPendingHighPriorityConnectionRequest])
        {
          [(HMMTRFabricConnectionRequest *)selfCopy _removeFromPendingConnections:v17];
          [(HMMTRFabricConnectionRequest *)selfCopy connectToAccessoryWhenAllowed:v17];
        }

        else
        {
          [orderedSet addObject:v17];
        }
      }

      v14 = [pendingConnectionRequests2 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v14);
  }

  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = orderedSet;
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v41 + 1) + 8 * j);
        if ([v24 hasPendingLowPriorityConnectionRequest])
        {
          [(HMMTRFabricConnectionRequest *)selfCopy _removeFromPendingConnections:v24];
          [(HMMTRFabricConnectionRequest *)selfCopy connectToAccessoryWhenAllowed:v24];
        }

        else
        {
          [orderedSet2 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v21);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = orderedSet2;
  v26 = [v25 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v38;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v37 + 1) + 8 * k);
        [(HMMTRFabricConnectionRequest *)selfCopy _removeFromPendingConnections:v30, v37];
        [(HMMTRFabricConnectionRequest *)selfCopy connectToAccessoryWhenAllowed:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v27);
  }

LABEL_39:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)connectToAccessoryWhenAllowed:(id)allowed
{
  allowedCopy = allowed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HMMTRFabricConnectionRequest_connectToAccessoryWhenAllowed___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = allowedCopy;
  v5 = allowedCopy;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v6];
}

void __62__HMMTRFabricConnectionRequest_connectToAccessoryWhenAllowed___block_invoke(uint64_t a1)
{
  v143 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) nodeID];
    *buf = 138543618;
    v134 = v5;
    v135 = 2112;
    v136 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@connectToAccessoryWhenAllowed - nodeID = %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 32);
    *buf = 138543618;
    v134 = v10;
    v135 = 2112;
    v136 = v11;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 40) setParentFabricRequest:*(a1 + 32)];
  if (([*(a1 + 40) hasPendingLowPriorityConnectionRequest] & 1) == 0)
  {
    [*(a1 + 32) setHasOnlyQueuedLowPriorityRequests:0];
  }

  if ([*(a1 + 32) _tryMergeIntoExistingConnection:*(a1 + 40)])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v134 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@merged into existing connection", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_26;
  }

  if ([*(a1 + 32) active])
  {
    v16 = [*(a1 + 40) server];
    v17 = v16;
    if (!v16)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [*(a1 + 40) nodeID];
        *buf = 138543618;
        v134 = v35;
        v135 = 2112;
        v136 = v36;
        _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, "%{public}@Accessory server disappeared, aborting all requests for nodeID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v23 = *(a1 + 40);
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D0F1A0];
      v26 = 2;
      goto LABEL_23;
    }

    if ([v16 isDisabled])
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [*(a1 + 40) nodeID];
        *buf = 138543618;
        v134 = v21;
        v135 = 2112;
        v136 = v22;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Accessory server is disabled, aborting all requests for nodeID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = *(a1 + 40);
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D0F1A0];
      v26 = 12;
LABEL_23:
      v37 = [v24 errorWithDomain:v25 code:v26 userInfo:0];
      [v23 abortAllPendingOperations:v37];
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    v39 = [*(a1 + 32) browser];
    v40 = [*(a1 + 40) server];
    v41 = [v39 isOperationAllowedForAccessoryServer:v40];

    if ((v41 & 1) == 0)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = *(a1 + 32);
      v55 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
LABEL_36:

        objc_autoreleasePoolPop(v53);
        [*(a1 + 32) _addToPendingConnections:*(a1 + 40)];
        goto LABEL_25;
      }

      v56 = HMFGetLogIdentifier();
      v57 = [*(a1 + 40) nodeID];
      *buf = 138543618;
      v134 = v56;
      v135 = 2112;
      v136 = v57;
      v58 = "%{public}@Operations currently not allowed for this nodeID. Adding accessory connection request for nodeID %@ to pending queue";
LABEL_35:
      _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_INFO, v58, buf, 0x16u);

      goto LABEL_36;
    }

    v42 = [*(a1 + 32) browser];
    v43 = [v42 threadRadioManager];
    v44 = [v43 deviceSupportsThreadService];

    v45 = [v17 linkLayerType];
    if (!v45)
    {
      v46 = [v17 supportedLinkLayerTypes];
      v47 = [HMMTRUtilities supportedLinkLayerTypesContainsThread:v46];

      if (v47)
      {
        v48 = objc_autoreleasePoolPush();
        v49 = *(a1 + 32);
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          v52 = [*(a1 + 40) nodeID];
          *buf = 138543618;
          v134 = v51;
          v135 = 2112;
          v136 = v52;
          _os_log_impl(&dword_22AEAE000, v50, OS_LOG_TYPE_INFO, "%{public}@Overriding linkLayerType unknown -> thread for nodeID %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v48);
        v45 = 4;
      }

      else
      {
        v45 = 0;
      }
    }

    if ([v17 isWEDDevice] && (objc_msgSend(v17, "eMACAddress"), v59 = objc_claimAutoreleasedReturnValue(), v59, v59))
    {
      v60 = 1;
    }

    else
    {
      if (v45 < 3)
      {
        goto LABEL_42;
      }

      if (v45 != 4)
      {
        v67 = objc_autoreleasePoolPush();
        v68 = *(a1 + 32);
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = HMFGetLogIdentifier();
          v71 = *(a1 + 40);
          *buf = 138543874;
          v134 = v70;
          v135 = 2048;
          v136 = v45;
          v137 = 2112;
          v138 = v71;
          _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_INFO, "%{public}@Unsupported linkLayerType: %ld for request %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v67);
        v23 = *(a1 + 40);
        v24 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277D0F1A0];
        v26 = 5;
        goto LABEL_23;
      }

      v60 = 0;
    }

    v62 = [*(a1 + 32) browser];
    v63 = [*(a1 + 32) fabricUUID];
    v64 = [v62 isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabricUUID:v63];

    v61 = *(a1 + 32);
    if ((v44 & v64 & 1) == 0)
    {
      goto LABEL_51;
    }

    v65 = [v61 browser];
    if (![v65 connectionRequestSuspended])
    {

      if ((v60 & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_70:
      v92 = [*(a1 + 32) browser];
      v93 = [v92 threadRadioManager];
      v94 = [v93 isThreadNetworkConnected];

      v95 = *(a1 + 32);
      if (!v94)
      {
        v96 = [v95 activeThreadConnectionRequests];
        v97 = [v96 count];

        if (v97)
        {
          v53 = objc_autoreleasePoolPush();
          v54 = *(a1 + 32);
          v55 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            goto LABEL_36;
          }

          v56 = HMFGetLogIdentifier();
          v57 = [*(a1 + 40) nodeID];
          *buf = 138543618;
          v134 = v56;
          v135 = 2112;
          v136 = v57;
          v58 = "%{public}@Waiting for active thread operations to complete, add to pending queue for nodeID %@";
          goto LABEL_35;
        }

        v109 = [*(a1 + 32) activeThreadWEDConnectionRequests];
        v110 = [v109 count];

        if (v110)
        {
          v111 = objc_autoreleasePoolPush();
          v112 = *(a1 + 32);
          v113 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
          {
            v114 = HMFGetLogIdentifier();
            v115 = [*(a1 + 40) nodeID];
            *buf = 138543618;
            v134 = v114;
            v135 = 2112;
            v136 = v115;
            _os_log_impl(&dword_22AEAE000, v113, OS_LOG_TYPE_INFO, "%{public}@Too many active WED session, add to pending queue for nodeID %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v111);
          [*(a1 + 32) _addToPendingConnections:*(a1 + 40)];
          [*(a1 + 32) _updateActiveThreadWEDConnectionsIdleTime:1];
          goto LABEL_25;
        }

        v125 = [*(a1 + 32) browser];
        v126 = [v125 threadRadioManager];
        v127 = [v126 isReadyToEstablishWEDConnection];

        if (v127)
        {
          [*(a1 + 32) _addToActiveThreadWEDConnections:*(a1 + 40)];
          goto LABEL_25;
        }

        v116 = objc_autoreleasePoolPush();
        v117 = *(a1 + 32);
        v118 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
        {
          v119 = HMFGetLogIdentifier();
          v120 = [*(a1 + 40) nodeID];
          *buf = 138543618;
          v134 = v119;
          v135 = 2112;
          v136 = v120;
          v121 = "%{public}@Not ready to establish a WED session, add to pending queue for nodeID %@";
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      goto LABEL_76;
    }

    if ([v17 isPaired])
    {
      v66 = [v17 isPairingInProgress];

      if ((v66 & 1) == 0)
      {
        if (v60)
        {
          goto LABEL_70;
        }

LABEL_62:
        v81 = [*(a1 + 32) activeThreadWEDConnectionRequests];
        v82 = [v81 count];

        if (v82)
        {
          v53 = objc_autoreleasePoolPush();
          v54 = *(a1 + 32);
          v55 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            goto LABEL_36;
          }

          v56 = HMFGetLogIdentifier();
          v57 = [*(a1 + 40) nodeID];
          *buf = 138543618;
          v134 = v56;
          v135 = 2112;
          v136 = v57;
          v58 = "%{public}@Active WED session, add thread request to pending queue for nodeID %@";
          goto LABEL_35;
        }

        v98 = [*(a1 + 32) browser];
        v99 = [v98 threadRadioManager];
        v100 = [v99 isThreadNetworkConnected];

        if (!v100)
        {
          v116 = objc_autoreleasePoolPush();
          v117 = *(a1 + 32);
          v118 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
          {
            v119 = HMFGetLogIdentifier();
            v120 = [*(a1 + 40) nodeID];
            *buf = 138543618;
            v134 = v119;
            v135 = 2112;
            v136 = v120;
            v121 = "%{public}@Thread is not connected, add request to pending queue for nodeID %@";
LABEL_86:
            _os_log_impl(&dword_22AEAE000, v118, OS_LOG_TYPE_INFO, v121, buf, 0x16u);
          }

LABEL_87:

          objc_autoreleasePoolPop(v116);
          [*(a1 + 32) _addToPendingConnections:*(a1 + 40)];
          v122 = [*(a1 + 32) systemCommissionerFabric];
          v37 = [*(a1 + 32) browser];
          v123 = [v37 threadRadioManager];
          v124 = [*(a1 + 32) fabricUUID];
          if (v122)
          {
            [v123 startThreadRadioForSystemCommissionerFabricUUID:v124];
          }

          else
          {
            [v123 startThreadRadioForHomeWithFabricUUID:v124];
          }

          goto LABEL_24;
        }

        v95 = *(a1 + 32);
LABEL_76:
        [v95 _addToActiveThreadConnections:*(a1 + 40)];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v72 = [*(a1 + 32) browser];
    v73 = [v72 threadRadioManager];
    v74 = [v73 isThreadNetworkConnected];

    if (v74)
    {
      v75 = objc_autoreleasePoolPush();
      v76 = *(a1 + 32);
      v77 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        v78 = HMFGetLogIdentifier();
        v79 = [*(a1 + 40) nodeID];
        v80 = HMFBooleanToString();
        *buf = 138543874;
        v134 = v78;
        v135 = 2112;
        v136 = v79;
        v137 = 2112;
        v138 = v80;
        _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_INFO, "%{public}@Accessory connection request for nodeID: %@ (isWED: %@) is for accessory getting paired, handling as normal thread connection since thread is connected", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v75);
      if ((v60 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_70;
    }

    if (v60)
    {
      v83 = [*(a1 + 32) browser];
      v84 = [v83 threadRadioManager];
      v85 = [v84 isReadyToEstablishWEDConnection];

      if (v85)
      {
        v86 = objc_autoreleasePoolPush();
        v87 = *(a1 + 32);
        v88 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v89 = HMFGetLogIdentifier();
          v90 = [*(a1 + 40) nodeID];
          v91 = HMFBooleanToString();
          *buf = 138543874;
          v134 = v89;
          v135 = 2112;
          v136 = v90;
          v137 = 2112;
          v138 = v91;
          _os_log_impl(&dword_22AEAE000, v88, OS_LOG_TYPE_INFO, "%{public}@Accessory connection request for nodeID: %@ (isWED: %@) is for accessory getting paired, handling as normal WED connection since we're ready to establish WED connection", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v86);
        goto LABEL_70;
      }
    }

    v101 = objc_autoreleasePoolPush();
    v102 = *(a1 + 32);
    v103 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      v129 = HMFGetLogIdentifier();
      v128 = [*(a1 + 40) nodeID];
      v104 = HMFBooleanToString();
      v131 = [*(a1 + 32) browser];
      v130 = [v131 threadRadioManager];
      [v130 isThreadNetworkConnected];
      v105 = HMFBooleanToString();
      v106 = [*(a1 + 32) browser];
      v107 = [v106 threadRadioManager];
      [v107 isReadyToEstablishWEDConnection];
      HMFBooleanToString();
      v108 = v132 = v101;
      *buf = 138544386;
      v134 = v129;
      v135 = 2112;
      v136 = v128;
      v137 = 2112;
      v138 = v104;
      v139 = 2112;
      v140 = v105;
      v141 = 2112;
      v142 = v108;
      _os_log_impl(&dword_22AEAE000, v103, OS_LOG_TYPE_INFO, "%{public}@Accessory connection request for nodeID: %@ (isWED: %@) is for accessory getting paired, add to active IP list because !isThreadNetworkConnected(%@) and !isReadyToEstablishWEDConnection(%@)", buf, 0x34u);

      v101 = v132;
    }

    objc_autoreleasePoolPop(v101);
LABEL_42:
    v61 = *(a1 + 32);
LABEL_51:
    [v61 _addToActiveIPConnections:*(a1 + 40)];
    goto LABEL_25;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = *(a1 + 32);
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    v31 = [*(a1 + 40) nodeID];
    *buf = 138543618;
    v134 = v30;
    v135 = 2112;
    v136 = v31;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Fabric is not active. Adding accessory connection request for nodeID %@ to pending queue", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  [*(a1 + 32) _addToPendingConnections:*(a1 + 40)];
LABEL_26:
  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasPendingLowPriorityConnectionRequestsOnly
{
  v16 = *MEMORY[0x277D85DE8];
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)self pendingConnectionRequests];
  if ([pendingConnectionRequests count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = pendingConnectionRequests;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (![*(*(&v11 + 1) + 8 * i) hasPendingLowPriorityConnectionRequest])
          {
            v8 = 0;
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)hasPendingHighPriorityConnectionRequest
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)self pendingConnectionRequests];
  v3 = [pendingConnectionRequests countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(pendingConnectionRequests);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasPendingHighPriorityConnectionRequest])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [pendingConnectionRequests countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_removeFromPendingConnections:(id)connections
{
  v14 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  if ([(NSMutableOrderedSet *)self->_pendingConnectionRequests containsObject:connectionsCopy])
  {
    [(NSMutableOrderedSet *)self->_pendingConnectionRequests removeObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = connectionsCopy;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Removed pending connection to accessory: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addToPendingConnections:(id)connections
{
  v14 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  if (([(NSMutableOrderedSet *)self->_pendingConnectionRequests containsObject:connectionsCopy]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(NSMutableOrderedSet *)self->_pendingConnectionRequests addObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = connectionsCopy;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Pending connection to accessory: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)pendingConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_pendingConnectionRequests array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_tryMergeIntoExistingConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests indexOfObject:connectionCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && ([(NSMutableOrderedSet *)self->_activeIPConnectionRequests objectAtIndex:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (v7 = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests indexOfObject:connectionCopy], v7 != 0x7FFFFFFFFFFFFFFFLL) && ([(NSMutableOrderedSet *)self->_activeThreadConnectionRequests objectAtIndex:v7], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = 1;
    goto LABEL_9;
  }

  v9 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests indexOfObject:connectionCopy];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests objectAtIndex:v9];
    wedConnectionPending = [v6 wedConnectionPending];
    if (v6)
    {
      v8 = wedConnectionPending ^ 1;
LABEL_9:
      os_unfair_lock_unlock(&self->_lock);
      [v6 mergeAccessoryConnectionRequest:connectionCopy];
      if (v8)
      {
        [v6 executeAllPendingOperations];
      }

      goto LABEL_15;
    }
  }

  v11 = [(NSMutableOrderedSet *)self->_pendingConnectionRequests indexOfObject:connectionCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    os_unfair_lock_unlock(&self->_lock);
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v6 = [(NSMutableOrderedSet *)self->_pendingConnectionRequests objectAtIndex:v11];
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    goto LABEL_16;
  }

  [v6 mergeAccessoryConnectionRequest:connectionCopy];
LABEL_15:
  [(HMMTRFabricConnectionRequest *)self _kickIdleTimer];

  v12 = 1;
LABEL_17:

  return v12;
}

- (BOOL)_removeFromActiveThreadWEDConnections:(id)connections
{
  v31 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests containsObject:connectionsCopy];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests removeObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v9;
      v29 = 2112;
      v30 = connectionsCopy;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed active thread WED connection for accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    server = [connectionsCopy server];
    v11 = server;
    if (!server || ([server hasPreferredLocalLink] & 1) != 0)
    {
      goto LABEL_12;
    }

    browser = [(HMMTRFabricConnectionRequest *)selfCopy browser];
    if ([browser connectionRequestSuspended])
    {
      browser2 = [(HMMTRFabricConnectionRequest *)selfCopy browser];
      server2 = [connectionsCopy server];
      v15 = [browser2 isOperationAllowedForAccessoryServer:server2];

      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    [v11 handleWEDDisconnectedWhileNotPairing];
LABEL_12:

    browser3 = [(HMMTRFabricConnectionRequest *)selfCopy browser];
    threadRadioManager = [browser3 threadRadioManager];
    server3 = [connectionsCopy server];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __70__HMMTRFabricConnectionRequest__removeFromActiveThreadWEDConnections___block_invoke;
    v24 = &unk_2786EF9E0;
    v25 = selfCopy;
    v26 = connectionsCopy;
    [threadRadioManager disconnectFromWEDAccessory:server3 completion:&v21];

    [(HMMTRFabricConnectionRequest *)selfCopy _calculateFabricIdleTime:v21];
    goto LABEL_13;
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

void __70__HMMTRFabricConnectionRequest__removeFromActiveThreadWEDConnections___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) server];
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to disconnect from WED accessory %@, error %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addToActiveThreadWEDConnections:(id)connections
{
  v30 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests indexOfObject:connectionsCopy];
  activeThreadWEDConnectionRequests = self->_activeThreadWEDConnectionRequests;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)activeThreadWEDConnectionRequests addObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)activeThreadWEDConnectionRequests objectAtIndex:?];
    if ([v7 hasPendingLowPriorityConnectionRequest])
    {
      v8 = [connectionsCopy hasPendingLowPriorityConnectionRequest] ^ 1;
    }

    else
    {
      v8 = 0;
    }

    [v7 mergeAccessoryConnectionRequest:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    if (v8)
    {
      [(HMMTRFabricConnectionRequest *)self _calculateFabricIdleTime];
    }
  }

  idleTimer = [(HMMTRFabricConnectionRequest *)self idleTimer];
  [idleTimer suspend];

  if (v7)
  {
    if ([connectionsCopy wedConnectionPending])
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        nodeID = [connectionsCopy nodeID];
        *buf = 138543618;
        v27 = v13;
        v28 = 2112;
        v29 = nodeID;
        _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@WED connection is still pending for request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      [v7 executeAllPendingOperations];
      [(HMMTRFabricConnectionRequest *)self _kickIdleTimer];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      nodeID2 = [connectionsCopy nodeID];
      *buf = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = nodeID2;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Adding active thread WED connection for request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [connectionsCopy setWedConnectionPending:1];
    [connectionsCopy updateConnectionIdleTime:2];
    [(HMMTRFabricConnectionRequest *)selfCopy2 _calculateFabricIdleTime];
    [connectionsCopy kickIdleTimer];
    [(HMMTRFabricConnectionRequest *)selfCopy2 _kickIdleTimer];
    browser = [(HMMTRFabricConnectionRequest *)selfCopy2 browser];
    threadRadioManager = [browser threadRadioManager];
    server = [connectionsCopy server];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__HMMTRFabricConnectionRequest__addToActiveThreadWEDConnections___block_invoke;
    v24[3] = &unk_2786EF9E0;
    v24[4] = selfCopy2;
    v25 = connectionsCopy;
    [threadRadioManager connectToWEDAccessory:server completion:v24];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __65__HMMTRFabricConnectionRequest__addToActiveThreadWEDConnections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMMTRFabricConnectionRequest__addToActiveThreadWEDConnections___block_invoke_2;
  v6[3] = &unk_2786EF3C8;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  [v4 dispatchBlock:v6];
}

void __65__HMMTRFabricConnectionRequest__addToActiveThreadWEDConnections___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) server];
      v7 = [*(a1 + 48) server];
      v8 = [v7 eMACAddress];
      v9 = *(a1 + 32);
      v17 = 138544130;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to establish WED connection to accessory %@ with emac %@, error %@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v2);
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:14];
    [v10 abortAllPendingOperations:v11];

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [*(a1 + 48) setWedConnectionPending:0];
    v13 = [*(a1 + 48) server];
    [v13 markForResubscription];

    v14 = [*(a1 + 48) server];
    [v14 triggerEstablishingMatterSubscription];

    [*(a1 + 48) executeAllPendingOperations];
    v15 = *(a1 + 40);
    v16 = *MEMORY[0x277D85DE8];

    [v15 _kickIdleTimer];
  }
}

- (id)activeThreadWEDConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_removeFromActiveThreadConnections:(id)connections
{
  v17 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests containsObject:connectionsCopy];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests removeObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      nodeID = [connectionsCopy nodeID];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = nodeID;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed active thread connection for accessory %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_addToActiveThreadConnections:(id)connections
{
  v20 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests indexOfObject:connectionsCopy];
  activeThreadConnectionRequests = self->_activeThreadConnectionRequests;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)activeThreadConnectionRequests addObject:connectionsCopy];
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)activeThreadConnectionRequests objectAtIndex:?];
    [v7 mergeAccessoryConnectionRequest:connectionsCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  idleTimer = [(HMMTRFabricConnectionRequest *)self idleTimer];
  [idleTimer suspend];

  if (v7)
  {
    [v7 executeAllPendingOperations];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      nodeID = [connectionsCopy nodeID];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = nodeID;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Adding active thread connection for request: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [connectionsCopy updateConnectionIdleTime:0];
    [(HMMTRFabricConnectionRequest *)selfCopy _calculateFabricIdleTime];
    server = [connectionsCopy server];
    [server triggerEstablishingMatterSubscription];

    [connectionsCopy executeAllPendingOperations];
  }

  [(HMMTRFabricConnectionRequest *)self _kickIdleTimer];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)activeThreadConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_removeFromActiveIPConnections:(id)connections
{
  v17 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests containsObject:connectionsCopy];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_activeIPConnectionRequests removeObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      nodeID = [connectionsCopy nodeID];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = nodeID;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed active IP connection for accessory %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_addToActiveIPConnections:(id)connections
{
  v19 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests indexOfObject:connectionsCopy];
  activeIPConnectionRequests = self->_activeIPConnectionRequests;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)activeIPConnectionRequests addObject:connectionsCopy];
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)activeIPConnectionRequests objectAtIndex:?];
    [v7 mergeAccessoryConnectionRequest:connectionsCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  idleTimer = [(HMMTRFabricConnectionRequest *)self idleTimer];
  [idleTimer suspend];

  if (v7)
  {
    [v7 executeAllPendingOperations];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      nodeID = [connectionsCopy nodeID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = nodeID;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Adding active IP connection for request: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [connectionsCopy updateConnectionIdleTime:0];
    [(HMMTRFabricConnectionRequest *)selfCopy _calculateFabricIdleTime];
    [connectionsCopy executeAllPendingOperations];
  }

  [(HMMTRFabricConnectionRequest *)self _kickIdleTimer];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)activeIPConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)_restartConnectionIdleTimer:(double)timer
{
  v21 = *MEMORY[0x277D85DE8];
  idleTimer = [(HMMTRFabricConnectionRequest *)self idleTimer];
  isRunning = [idleTimer isRunning];

  idleTimer2 = [(HMMTRFabricConnectionRequest *)self idleTimer];
  [idleTimer2 cancel];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v11;
    v19 = 2048;
    timerCopy = timer;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updating FabricConnectionRequest Idle time to: %f", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:timer];
  idleTimer = selfCopy->_idleTimer;
  selfCopy->_idleTimer = v12;

  workQueue = [(HMMTRFabricConnectionRequest *)selfCopy workQueue];
  [(HMFTimer *)selfCopy->_idleTimer setDelegateQueue:workQueue];

  [(HMFTimer *)selfCopy->_idleTimer setDelegate:selfCopy];
  if (isRunning)
  {
    idleTimer3 = [(HMMTRFabricConnectionRequest *)selfCopy idleTimer];
    [idleTimer3 resume];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_calculateFabricIdleTime
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeThreadWEDConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadWEDConnectionRequests];
  v4 = [activeThreadWEDConnectionRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(activeThreadWEDConnectionRequests);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 connectionIdleTime] == 2 && !objc_msgSend(v7, "hasPendingLowPriorityConnectionRequest"))
        {
          v4 = 1;
          goto LABEL_12;
        }
      }

      v4 = [activeThreadWEDConnectionRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  [(HMMTRFabricConnectionRequest *)self _updateConnectionIdleTime:v4];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMMTRFabricConnectionRequest)initWithQueue:(id)queue browser:(id)browser fabricUUID:(id)d systemCommissionerFabric:(BOOL)fabric
{
  queueCopy = queue;
  browserCopy = browser;
  dCopy = d;
  v29.receiver = self;
  v29.super_class = HMMTRFabricConnectionRequest;
  v14 = [(HMMTRFabricConnectionRequest *)&v29 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, queue);
    objc_storeWeak(&v15->_browser, browserCopy);
    v15->_active = 0;
    v15->_hasOnlyQueuedLowPriorityRequests = 1;
    v16 = [dCopy copy];
    fabricUUID = v15->_fabricUUID;
    v15->_fabricUUID = v16;

    v15->_systemCommissionerFabric = fabric;
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    activeIPConnectionRequests = v15->_activeIPConnectionRequests;
    v15->_activeIPConnectionRequests = orderedSet;

    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    activeThreadConnectionRequests = v15->_activeThreadConnectionRequests;
    v15->_activeThreadConnectionRequests = orderedSet2;

    orderedSet3 = [MEMORY[0x277CBEB40] orderedSet];
    activeThreadWEDConnectionRequests = v15->_activeThreadWEDConnectionRequests;
    v15->_activeThreadWEDConnectionRequests = orderedSet3;

    orderedSet4 = [MEMORY[0x277CBEB40] orderedSet];
    pendingConnectionRequests = v15->_pendingConnectionRequests;
    v15->_pendingConnectionRequests = orderedSet4;

    v15->_fabricIdleTime = 0;
    v26 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:15.0];
    idleTimer = v15->_idleTimer;
    v15->_idleTimer = v26;

    [(HMFTimer *)v15->_idleTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v15->_idleTimer setDelegate:v15];
  }

  return v15;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t68 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t68, &__block_literal_global_5424);
  }

  v3 = logCategory__hmf_once_v69;

  return v3;
}

uint64_t __43__HMMTRFabricConnectionRequest_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v69 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end