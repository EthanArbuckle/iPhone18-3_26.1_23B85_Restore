@interface HMDSyncOperationQueue
+ (id)logCategory;
- (BOOL)isInMaximumTimeInterval;
- (BOOL)processFiredTimer:(id)timer;
- (HMDSyncOperationManager)manager;
- (NSArray)stagedOperations;
- (NSArray)waitingOperations;
- (NSString)description;
- (id)allOperations;
- (id)initName:(id)name syncManager:(id)manager initialDelay:(double)delay initialBackoff:(double)backoff hasBackoff:(BOOL)hasBackoff;
- (id)nextOperation;
- (id)operationsToCancel;
- (int64_t)count;
- (int64_t)countTotal;
- (void)_addOperation:(id)operation;
- (void)_addStagedOperation:(id)operation;
- (void)_addWaitingOperation:(id)operation;
- (void)_createBackoffTimer;
- (void)_removeStagedOperation:(id)operation;
- (void)_removeWaitingOperation:(id)operation;
- (void)addOperation:(id)operation withDelay:(double)delay;
- (void)dropAllOperations;
- (void)dropOperation:(id)operation;
- (void)resetBackoffTimer;
- (void)stageOperation:(id)operation;
@end

@implementation HMDSyncOperationQueue

- (HMDSyncOperationManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (id)operationsToCancel
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  waitingOperations = [(HMDSyncOperationQueue *)self waitingOperations];
  v4 = [waitingOperations copy];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        delayTimer = [v8 delayTimer];
        [delayTimer cancel];

        [v8 setDelayTimer:0];
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  backoffTimer = [(HMDSyncOperationQueue *)self backoffTimer];
  [backoffTimer cancel];

  [(HMDSyncOperationQueue *)self setBackoffTimer:0];
  allOperations = [(HMDSyncOperationQueue *)self allOperations];
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_stagedOperations removeAllObjects];
  [(NSMutableArray *)self->_waitingOperations removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return allOperations;
}

- (id)allOperations
{
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  [array addObjectsFromArray:self->_stagedOperations];
  [array addObjectsFromArray:self->_waitingOperations];
  os_unfair_lock_unlock(&self->_lock);

  return array;
}

- (id)nextOperation
{
  stagedOperations = [(HMDSyncOperationQueue *)self stagedOperations];
  v4 = [stagedOperations count];

  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(NSMutableArray *)self->_stagedOperations objectAtIndex:0];
    [(NSMutableArray *)self->_stagedOperations removeObjectAtIndex:0];
    os_unfair_lock_unlock(&self->_lock);
    backoffTimer = [(HMDSyncOperationQueue *)self backoffTimer];
    [backoffTimer resume];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInMaximumTimeInterval
{
  backoffTimer = [(HMDSyncOperationQueue *)self backoffTimer];
  if (backoffTimer)
  {
    backoffTimer2 = [(HMDSyncOperationQueue *)self backoffTimer];
    [backoffTimer2 timeInterval];
    v6 = v5;
    backoffTimer3 = [(HMDSyncOperationQueue *)self backoffTimer];
    [backoffTimer3 maximumTimeInterval];
    v9 = v6 >= v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)processFiredTimer:(id)timer
{
  v32 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  backoffTimer = [(HMDSyncOperationQueue *)self backoffTimer];

  if (backoffTimer == timerCopy)
  {
    backoffTimer2 = [(HMDSyncOperationQueue *)self backoffTimer];
    [backoffTimer2 cancel];

    if (![(HMDSyncOperationQueue *)self countTotal])
    {
      [(HMDSyncOperationQueue *)self setBackoffTimer:0];
    }

    v13 = 1;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    waitingOperations = [(HMDSyncOperationQueue *)self waitingOperations];
    v7 = [waitingOperations countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      v8 = *v24;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(waitingOperations);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        delayTimer = [v10 delayTimer];
        v12 = delayTimer == timerCopy;

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [waitingOperations countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v10;
      delayTimer2 = [v14 delayTimer];
      [delayTimer2 cancel];

      [v14 setDelayTimer:0];
      if (!v14)
      {
        v13 = 0;
        goto LABEL_20;
      }

      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v19;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Sync queue delay timer fired, staging %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      os_unfair_lock_lock_with_options();
      [(NSMutableArray *)selfCopy->_waitingOperations removeObject:v14];
      [(NSMutableArray *)selfCopy->_stagedOperations addObject:v14];
      os_unfair_lock_unlock(&selfCopy->_lock);
      v13 = 1;
      waitingOperations = v14;
    }

    else
    {
LABEL_10:
      v13 = 0;
    }
  }

LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)dropAllOperations
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  waitingOperations = [(HMDSyncOperationQueue *)self waitingOperations];
  v4 = [waitingOperations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(waitingOperations);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        delayTimer = [v7 delayTimer];
        [delayTimer cancel];

        [v7 setDelayTimer:0];
      }

      v4 = [waitingOperations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_stagedOperations removeAllObjects];
  [(NSMutableArray *)self->_waitingOperations removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)dropOperation:(id)operation
{
  operationCopy = operation;
  if (operationCopy)
  {
    v6 = operationCopy;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableArray *)self->_waitingOperations containsObject:v6])
    {
      [(NSMutableArray *)self->_waitingOperations removeObject:v6];
      delayTimer = [v6 delayTimer];
      [delayTimer cancel];

      [v6 setDelayTimer:0];
    }

    else if ([(NSMutableArray *)self->_stagedOperations containsObject:v6])
    {
      [(NSMutableArray *)self->_stagedOperations removeObject:v6];
    }

    os_unfair_lock_unlock(&self->_lock);
    operationCopy = v6;
  }
}

- (void)stageOperation:(id)operation
{
  if (operation)
  {
    [(HMDSyncOperationQueue *)self _addOperation:?];
  }
}

- (void)addOperation:(id)operation withDelay:(double)delay
{
  v28 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (operationCopy)
  {
    manager = [(HMDSyncOperationQueue *)self manager];
    if ([(HMDSyncOperationQueue *)self hasExponentialBackoff])
    {
      [(HMDSyncOperationQueue *)self initialDelay];
      v9 = v8;
      backoffTimer = [(HMDSyncOperationQueue *)self backoffTimer];

      if (backoffTimer)
      {
        backoffTimer2 = [(HMDSyncOperationQueue *)self backoffTimer];
        [backoffTimer2 timeInterval];
        v9 = v12;
      }

      if (v9 >= delay)
      {
        delay = v9;
      }

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v16;
        v26 = 2048;
        delayCopy = delay;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Current delay is %g", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      if (delay > 0.0)
      {
        timerFactory = [manager timerFactory];
        v18 = timerFactory[2](delay);
        [operationCopy setDelayTimer:v18];

        delayTimer = [operationCopy delayTimer];
        [delayTimer setDelegate:manager];
      }

      [(HMDSyncOperationQueue *)selfCopy _createBackoffTimer];
    }

    else if (delay > 0.0)
    {
      timerFactory2 = [manager timerFactory];
      v21 = timerFactory2[2](delay);
      [operationCopy setDelayTimer:v21];

      delayTimer2 = [operationCopy delayTimer];
      [delayTimer2 setDelegate:manager];
    }

    [(HMDSyncOperationQueue *)self _addOperation:operationCopy];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_addOperation:(id)operation
{
  v149 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  stagedOperations = [(HMDSyncOperationQueue *)self stagedOperations];
  v6 = [stagedOperations countByEnumeratingWithState:&v136 objects:v148 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v137;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v137 != v8)
        {
          objc_enumerationMutation(stagedOperations);
        }

        v10 = *(*(&v136 + 1) + 8 * i);
        zoneName = [operationCopy zoneName];
        zoneName2 = [v10 zoneName];
        v13 = [zoneName isEqualToString:zoneName2];

        if (v13)
        {
          options = [operationCopy options];
          isDelayRespected = [options isDelayRespected];

          v16 = objc_autoreleasePoolPush();
          selfCopy = self;
          v18 = HMFGetOSLogHandle();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
          if (!isDelayRespected)
          {
            if (v19)
            {
              v35 = HMFGetLogIdentifier();
              *buf = 138543362;
              v142 = v35;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Dropping new operation, already have staged operation", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v16);
            options2 = [operationCopy options];
            isCloudConflict = [options2 isCloudConflict];

            if (isCloudConflict)
            {
              options3 = [operationCopy options];
              isCloudConflict2 = [options3 isCloudConflict];
              options4 = [v10 options];
              [options4 setCloudConflict:isCloudConflict2];
            }

            operationCompletions = [operationCopy operationCompletions];
            v42 = v10;
            goto LABEL_92;
          }

          if (v19)
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543362;
            v142 = v20;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Dropping staged operation, new operation has longer delay that must be respected", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v16);
          [(HMDSyncOperationQueue *)selfCopy _removeStagedOperation:v10];
          options5 = [v10 options];
          isCloudConflict3 = [options5 isCloudConflict];

          if (isCloudConflict3)
          {
            options6 = [v10 options];
            isCloudConflict4 = [options6 isCloudConflict];
            options7 = [operationCopy options];
            [options7 setCloudConflict:isCloudConflict4];
          }

          operationCompletions2 = [v10 operationCompletions];
          [operationCopy updateOperationCompletionsWithArray:operationCompletions2];

          goto LABEL_16;
        }
      }

      v7 = [stagedOperations countByEnumeratingWithState:&v136 objects:v148 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  delayTimer = [operationCopy delayTimer];

  if (!delayTimer)
  {
    v130 = 0uLL;
    v131 = 0uLL;
    *(&v128 + 1) = 0;
    v129 = 0uLL;
    waitingOperations = [(HMDSyncOperationQueue *)self waitingOperations];
    v52 = [waitingOperations countByEnumeratingWithState:&v128 objects:v140 count:16];
    if (!v52)
    {
      goto LABEL_44;
    }

    v53 = v52;
    v54 = *v129;
    while (1)
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v129 != v54)
        {
          objc_enumerationMutation(waitingOperations);
        }

        v56 = *(*(&v128 + 1) + 8 * j);
        zoneName3 = [operationCopy zoneName];
        zoneName4 = [v56 zoneName];
        v59 = [zoneName3 isEqualToString:zoneName4];

        if (v59)
        {
          v60 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            zoneName5 = [v56 zoneName];
            *buf = 138543618;
            v142 = v63;
            v143 = 2112;
            v144 = zoneName5;
            _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Dropping scheduled operation, new operation being added directly to staged for %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v60);
          stagedOperations = v56;

          if (stagedOperations)
          {
            options8 = [stagedOperations options];
            isDelayRespected2 = [options8 isDelayRespected];

            if (isDelayRespected2)
            {
              v67 = objc_autoreleasePoolPush();
              v68 = selfCopy2;
              v69 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
              {
                v70 = HMFGetLogIdentifier();
                *buf = 138543362;
                v142 = v70;
                _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_INFO, "%{public}@Dropping new operation, found operation has delay that must respected", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v67);
LABEL_91:
              operationCompletions = [operationCopy operationCompletions];
              v42 = stagedOperations;
LABEL_92:
              [v42 updateOperationCompletionsWithArray:operationCompletions];
              goto LABEL_93;
            }

            delayTimer2 = [stagedOperations delayTimer];
            [delayTimer2 cancel];

            [stagedOperations setDelayTimer:0];
            [(HMDSyncOperationQueue *)selfCopy2 _removeWaitingOperation:stagedOperations];
            options9 = [stagedOperations options];
            isCloudConflict5 = [options9 isCloudConflict];

            if (isCloudConflict5)
            {
              options10 = [stagedOperations options];
              isCloudConflict6 = [options10 isCloudConflict];
              options11 = [operationCopy options];
              [options11 setCloudConflict:isCloudConflict6];
            }

            waitingOperations = [stagedOperations operationCompletions];
            [operationCopy updateOperationCompletionsWithArray:waitingOperations];
LABEL_66:
          }

          v94 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v96 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
          {
            v97 = HMFGetLogIdentifier();
            *buf = 138543618;
            v142 = v97;
            v143 = 2112;
            v144 = operationCopy;
            _os_log_impl(&dword_2531F8000, v96, OS_LOG_TYPE_INFO, "%{public}@Schedule operation without delay %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v94);
          [(HMDSyncOperationQueue *)selfCopy3 _addStagedOperation:operationCopy];
          goto LABEL_94;
        }
      }

      v53 = [waitingOperations countByEnumeratingWithState:&v128 objects:v140 count:16];
      if (!v53)
      {
LABEL_44:
        stagedOperations = 0;
        goto LABEL_66;
      }
    }
  }

  v134 = 0uLL;
  v135 = 0uLL;
  v132 = 0uLL;
  v133 = 0uLL;
  waitingOperations2 = [(HMDSyncOperationQueue *)self waitingOperations];
  stagedOperations = [waitingOperations2 countByEnumeratingWithState:&v132 objects:v147 count:16];
  if (!stagedOperations)
  {
    goto LABEL_80;
  }

  v29 = *v133;
  while (2)
  {
    for (k = 0; k != stagedOperations; k = k + 1)
    {
      if (*v133 != v29)
      {
        objc_enumerationMutation(waitingOperations2);
      }

      v31 = *(*(&v132 + 1) + 8 * k);
      zoneName6 = [operationCopy zoneName];
      zoneName7 = [v31 zoneName];
      v34 = [zoneName6 isEqualToString:zoneName7];

      if (v34)
      {
        stagedOperations = v31;

        if (!stagedOperations)
        {
          goto LABEL_81;
        }

        options12 = [operationCopy options];
        if ([options12 isDelayRespected])
        {
          options13 = [stagedOperations options];
          isDelayRespected3 = [options13 isDelayRespected];

          if ((isDelayRespected3 & 1) == 0)
          {
            v46 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543362;
              v142 = v49;
              v50 = "%{public}@Dropping found operation, must respect delay for new operation";
LABEL_76:
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, v50, buf, 0xCu);

              goto LABEL_77;
            }

            goto LABEL_77;
          }
        }

        else
        {
        }

        options14 = [operationCopy options];
        if ([options14 isDelayRespected])
        {
        }

        else
        {
          options15 = [stagedOperations options];
          isDelayRespected4 = [options15 isDelayRespected];

          if (isDelayRespected4)
          {
            v46 = objc_autoreleasePoolPush();
            selfCopy5 = self;
            v48 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              goto LABEL_89;
            }

            v75 = HMFGetLogIdentifier();
            *buf = 138543362;
            v142 = v75;
            v76 = "%{public}@Dropping new operation, must respect delay for found operation";
            goto LABEL_88;
          }
        }

        options16 = [operationCopy options];
        if ([options16 isDelayRespected])
        {
          options17 = [stagedOperations options];
          isDelayRespected5 = [options17 isDelayRespected];

          if (isDelayRespected5)
          {
            delayTimer3 = [stagedOperations delayTimer];
            [delayTimer3 timeInterval];
            v82 = v81;
            delayTimer4 = [operationCopy delayTimer];
            [delayTimer4 timeInterval];
            v85 = v84;

            v46 = objc_autoreleasePoolPush();
            selfCopy6 = self;
            v48 = HMFGetOSLogHandle();
            v87 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
            if (v82 < v85)
            {
              if (v87)
              {
                v49 = HMFGetLogIdentifier();
                *buf = 138543362;
                v142 = v49;
                v50 = "%{public}@Dropping found operation, new operation delay is longer and must respected";
                goto LABEL_76;
              }

LABEL_77:

              objc_autoreleasePoolPop(v46);
              delayTimer5 = [stagedOperations delayTimer];
              [delayTimer5 cancel];

              [stagedOperations setDelayTimer:0];
              [(HMDSyncOperationQueue *)self _removeWaitingOperation:stagedOperations];
              options18 = [stagedOperations options];
              isCloudConflict7 = [options18 isCloudConflict];

              if (isCloudConflict7)
              {
                options19 = [stagedOperations options];
                isCloudConflict8 = [options19 isCloudConflict];
                options20 = [operationCopy options];
                [options20 setCloudConflict:isCloudConflict8];
              }

              waitingOperations2 = [stagedOperations operationCompletions];
              [operationCopy updateOperationCompletionsWithArray:waitingOperations2];
              goto LABEL_80;
            }

            if (v87)
            {
              v75 = HMFGetLogIdentifier();
              *buf = 138543362;
              v142 = v75;
              v76 = "%{public}@Dropping new operation, found operation delay is longer and must respected";
LABEL_88:
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, v76, buf, 0xCu);

              goto LABEL_89;
            }

            goto LABEL_89;
          }
        }

        else
        {
        }

        waitingOperations2 = [operationCopy options];
        if ([waitingOperations2 isDelayRespected])
        {
          goto LABEL_80;
        }

        options21 = [stagedOperations options];
        isDelayRespected6 = [options21 isDelayRespected];

        if (isDelayRespected6)
        {
          goto LABEL_81;
        }

        delayTimer6 = [stagedOperations delayTimer];
        [delayTimer6 timeInterval];
        v102 = v101;
        delayTimer7 = [operationCopy delayTimer];
        [delayTimer7 timeInterval];
        v105 = v104;

        v46 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v48 = HMFGetOSLogHandle();
        v107 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
        if (v102 > v105)
        {
          if (v107)
          {
            v49 = HMFGetLogIdentifier();
            *buf = 138543362;
            v142 = v49;
            v50 = "%{public}@Dropping found operation, new operation delay is shorter";
            goto LABEL_76;
          }

          goto LABEL_77;
        }

        if (v107)
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543362;
          v142 = v75;
          v76 = "%{public}@Dropping new operation, found operation delay is shorter";
          goto LABEL_88;
        }

LABEL_89:

        objc_autoreleasePoolPop(v46);
        options22 = [operationCopy options];
        isCloudConflict9 = [options22 isCloudConflict];

        if (isCloudConflict9)
        {
          options23 = [operationCopy options];
          isCloudConflict10 = [options23 isCloudConflict];
          options24 = [stagedOperations options];
          [options24 setCloudConflict:isCloudConflict10];
        }

        goto LABEL_91;
      }
    }

    stagedOperations = [waitingOperations2 countByEnumeratingWithState:&v132 objects:v147 count:16];
    if (stagedOperations)
    {
      continue;
    }

    break;
  }

LABEL_80:

LABEL_81:
  v114 = objc_autoreleasePoolPush();
  selfCopy8 = self;
  v116 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
  {
    v117 = HMFGetLogIdentifier();
    delayTimer8 = [operationCopy delayTimer];
    [delayTimer8 timeInterval];
    v120 = v119;
    zoneName8 = [stagedOperations zoneName];
    *buf = 138543874;
    v142 = v117;
    v143 = 2048;
    v144 = v120;
    v145 = 2112;
    v146 = zoneName8;
    _os_log_impl(&dword_2531F8000, v116, OS_LOG_TYPE_INFO, "%{public}@Schedule operation with delay %g: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v114);
  [(HMDSyncOperationQueue *)selfCopy8 _addWaitingOperation:operationCopy];
  operationCompletions = [operationCopy delayTimer];
  [operationCompletions resume];
LABEL_93:

LABEL_94:
  v127 = *MEMORY[0x277D85DE8];
}

- (void)resetBackoffTimer
{
  backoffTimer = [(HMDSyncOperationQueue *)self backoffTimer];
  [backoffTimer cancel];

  [(HMDSyncOperationQueue *)self setBackoffTimer:0];
}

- (void)_createBackoffTimer
{
  if ([(HMDSyncOperationQueue *)self hasExponentialBackoff])
  {
    backoffTimer = [(HMDSyncOperationQueue *)self backoffTimer];

    if (!backoffTimer)
    {
      v4 = objc_alloc(MEMORY[0x277D0F7B0]);
      [(HMDSyncOperationQueue *)self initialBackoff];
      v5 = [v4 initWithMinimumTimeInterval:cloudUploadTimerIntervalExponentialFactor maximumTimeInterval:1 exponentialFactor:? options:?];
      [(HMDSyncOperationQueue *)self setBackoffTimer:v5];

      backoffTimer2 = [(HMDSyncOperationQueue *)self backoffTimer];
      manager = [(HMDSyncOperationQueue *)self manager];
      [backoffTimer2 setDelegate:manager];
    }
  }
}

- (int64_t)count
{
  stagedOperations = [(HMDSyncOperationQueue *)self stagedOperations];
  v3 = [stagedOperations count];

  return v3;
}

- (int64_t)countTotal
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_stagedOperations count];
  v4 = [(NSMutableArray *)self->_waitingOperations count];
  os_unfair_lock_unlock(&self->_lock);
  return v4 + v3;
}

- (NSString)description
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(HMDSyncOperationQueue *)self name];
  stagedOperations = self->_stagedOperations;
  v7 = [v3 stringWithFormat:@"<%@ %@, Staged Operations = %@, Waiting Operations = %@>", v4, name, stagedOperations, self->_waitingOperations];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)_removeWaitingOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_waitingOperations removeObject:operationCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addWaitingOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_waitingOperations addObject:operationCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeStagedOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_stagedOperations removeObject:operationCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addStagedOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_stagedOperations addObject:operationCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)waitingOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_waitingOperations copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)stagedOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_stagedOperations copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)initName:(id)name syncManager:(id)manager initialDelay:(double)delay initialBackoff:(double)backoff hasBackoff:(BOOL)hasBackoff
{
  nameCopy = name;
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = HMDSyncOperationQueue;
  v15 = [(HMDSyncOperationQueue *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_name, name);
    objc_storeWeak(&v16->_manager, managerCopy);
    array = [MEMORY[0x277CBEB18] array];
    stagedOperations = v16->_stagedOperations;
    v16->_stagedOperations = array;

    array2 = [MEMORY[0x277CBEB18] array];
    waitingOperations = v16->_waitingOperations;
    v16->_waitingOperations = array2;

    v16->_initialDelay = delay;
    v16->_initialBackoff = backoff;
    v16->_hasExponentialBackoff = hasBackoff;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t28_96927 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t28_96927, &__block_literal_global_96928);
  }

  v3 = logCategory__hmf_once_v29_96929;

  return v3;
}

uint64_t __36__HMDSyncOperationQueue_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v29_96929;
  logCategory__hmf_once_v29_96929 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end