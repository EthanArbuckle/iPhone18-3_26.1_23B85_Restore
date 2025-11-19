@interface HMDSyncOperationQueue
+ (id)logCategory;
- (BOOL)isInMaximumTimeInterval;
- (BOOL)processFiredTimer:(id)a3;
- (HMDSyncOperationManager)manager;
- (NSArray)stagedOperations;
- (NSArray)waitingOperations;
- (NSString)description;
- (id)allOperations;
- (id)initName:(id)a3 syncManager:(id)a4 initialDelay:(double)a5 initialBackoff:(double)a6 hasBackoff:(BOOL)a7;
- (id)nextOperation;
- (id)operationsToCancel;
- (int64_t)count;
- (int64_t)countTotal;
- (void)_addOperation:(id)a3;
- (void)_addStagedOperation:(id)a3;
- (void)_addWaitingOperation:(id)a3;
- (void)_createBackoffTimer;
- (void)_removeStagedOperation:(id)a3;
- (void)_removeWaitingOperation:(id)a3;
- (void)addOperation:(id)a3 withDelay:(double)a4;
- (void)dropAllOperations;
- (void)dropOperation:(id)a3;
- (void)resetBackoffTimer;
- (void)stageOperation:(id)a3;
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
  v3 = [(HMDSyncOperationQueue *)self waitingOperations];
  v4 = [v3 copy];

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
        v9 = [v8 delayTimer];
        [v9 cancel];

        [v8 setDelayTimer:0];
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = [(HMDSyncOperationQueue *)self backoffTimer];
  [v10 cancel];

  [(HMDSyncOperationQueue *)self setBackoffTimer:0];
  v11 = [(HMDSyncOperationQueue *)self allOperations];
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_stagedOperations removeAllObjects];
  [(NSMutableArray *)self->_waitingOperations removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)allOperations
{
  v3 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  [v3 addObjectsFromArray:self->_stagedOperations];
  [v3 addObjectsFromArray:self->_waitingOperations];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)nextOperation
{
  v3 = [(HMDSyncOperationQueue *)self stagedOperations];
  v4 = [v3 count];

  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(NSMutableArray *)self->_stagedOperations objectAtIndex:0];
    [(NSMutableArray *)self->_stagedOperations removeObjectAtIndex:0];
    os_unfair_lock_unlock(&self->_lock);
    v6 = [(HMDSyncOperationQueue *)self backoffTimer];
    [v6 resume];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInMaximumTimeInterval
{
  v3 = [(HMDSyncOperationQueue *)self backoffTimer];
  if (v3)
  {
    v4 = [(HMDSyncOperationQueue *)self backoffTimer];
    [v4 timeInterval];
    v6 = v5;
    v7 = [(HMDSyncOperationQueue *)self backoffTimer];
    [v7 maximumTimeInterval];
    v9 = v6 >= v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)processFiredTimer:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSyncOperationQueue *)self backoffTimer];

  if (v5 == v4)
  {
    v20 = [(HMDSyncOperationQueue *)self backoffTimer];
    [v20 cancel];

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
    v6 = [(HMDSyncOperationQueue *)self waitingOperations];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      v8 = *v24;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [v10 delayTimer];
        v12 = v11 == v4;

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v10;
      v15 = [v14 delayTimer];
      [v15 cancel];

      [v14 setDelayTimer:0];
      if (!v14)
      {
        v13 = 0;
        goto LABEL_20;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = self;
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
      [(NSMutableArray *)v17->_waitingOperations removeObject:v14];
      [(NSMutableArray *)v17->_stagedOperations addObject:v14];
      os_unfair_lock_unlock(&v17->_lock);
      v13 = 1;
      v6 = v14;
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
  v3 = [(HMDSyncOperationQueue *)self waitingOperations];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 delayTimer];
        [v8 cancel];

        [v7 setDelayTimer:0];
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_stagedOperations removeAllObjects];
  [(NSMutableArray *)self->_waitingOperations removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)dropOperation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableArray *)self->_waitingOperations containsObject:v6])
    {
      [(NSMutableArray *)self->_waitingOperations removeObject:v6];
      v5 = [v6 delayTimer];
      [v5 cancel];

      [v6 setDelayTimer:0];
    }

    else if ([(NSMutableArray *)self->_stagedOperations containsObject:v6])
    {
      [(NSMutableArray *)self->_stagedOperations removeObject:v6];
    }

    os_unfair_lock_unlock(&self->_lock);
    v4 = v6;
  }
}

- (void)stageOperation:(id)a3
{
  if (a3)
  {
    [(HMDSyncOperationQueue *)self _addOperation:?];
  }
}

- (void)addOperation:(id)a3 withDelay:(double)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = [(HMDSyncOperationQueue *)self manager];
    if ([(HMDSyncOperationQueue *)self hasExponentialBackoff])
    {
      [(HMDSyncOperationQueue *)self initialDelay];
      v9 = v8;
      v10 = [(HMDSyncOperationQueue *)self backoffTimer];

      if (v10)
      {
        v11 = [(HMDSyncOperationQueue *)self backoffTimer];
        [v11 timeInterval];
        v9 = v12;
      }

      if (v9 >= a4)
      {
        a4 = v9;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v16;
        v26 = 2048;
        v27 = a4;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Current delay is %g", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      if (a4 > 0.0)
      {
        v17 = [v7 timerFactory];
        v18 = v17[2](a4);
        [v6 setDelayTimer:v18];

        v19 = [v6 delayTimer];
        [v19 setDelegate:v7];
      }

      [(HMDSyncOperationQueue *)v14 _createBackoffTimer];
    }

    else if (a4 > 0.0)
    {
      v20 = [v7 timerFactory];
      v21 = v20[2](a4);
      [v6 setDelayTimer:v21];

      v22 = [v6 delayTimer];
      [v22 setDelegate:v7];
    }

    [(HMDSyncOperationQueue *)self _addOperation:v6];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_addOperation:(id)a3
{
  v149 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v5 = [(HMDSyncOperationQueue *)self stagedOperations];
  v6 = [v5 countByEnumeratingWithState:&v136 objects:v148 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v136 + 1) + 8 * i);
        v11 = [v4 zoneName];
        v12 = [v10 zoneName];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v14 = [v4 options];
          v15 = [v14 isDelayRespected];

          v16 = objc_autoreleasePoolPush();
          v17 = self;
          v18 = HMFGetOSLogHandle();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
          if (!v15)
          {
            if (v19)
            {
              v35 = HMFGetLogIdentifier();
              *buf = 138543362;
              v142 = v35;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Dropping new operation, already have staged operation", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v16);
            v36 = [v4 options];
            v37 = [v36 isCloudConflict];

            if (v37)
            {
              v38 = [v4 options];
              v39 = [v38 isCloudConflict];
              v40 = [v10 options];
              [v40 setCloudConflict:v39];
            }

            v41 = [v4 operationCompletions];
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
          [(HMDSyncOperationQueue *)v17 _removeStagedOperation:v10];
          v21 = [v10 options];
          v22 = [v21 isCloudConflict];

          if (v22)
          {
            v23 = [v10 options];
            v24 = [v23 isCloudConflict];
            v25 = [v4 options];
            [v25 setCloudConflict:v24];
          }

          v26 = [v10 operationCompletions];
          [v4 updateOperationCompletionsWithArray:v26];

          goto LABEL_16;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v136 objects:v148 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v27 = [v4 delayTimer];

  if (!v27)
  {
    v130 = 0uLL;
    v131 = 0uLL;
    *(&v128 + 1) = 0;
    v129 = 0uLL;
    v51 = [(HMDSyncOperationQueue *)self waitingOperations];
    v52 = [v51 countByEnumeratingWithState:&v128 objects:v140 count:16];
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
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v128 + 1) + 8 * j);
        v57 = [v4 zoneName];
        v58 = [v56 zoneName];
        v59 = [v57 isEqualToString:v58];

        if (v59)
        {
          v60 = objc_autoreleasePoolPush();
          v61 = self;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            v64 = [v56 zoneName];
            *buf = 138543618;
            v142 = v63;
            v143 = 2112;
            v144 = v64;
            _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Dropping scheduled operation, new operation being added directly to staged for %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v60);
          v5 = v56;

          if (v5)
          {
            v65 = [v5 options];
            v66 = [v65 isDelayRespected];

            if (v66)
            {
              v67 = objc_autoreleasePoolPush();
              v68 = v61;
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
              v41 = [v4 operationCompletions];
              v42 = v5;
LABEL_92:
              [v42 updateOperationCompletionsWithArray:v41];
              goto LABEL_93;
            }

            v88 = [v5 delayTimer];
            [v88 cancel];

            [v5 setDelayTimer:0];
            [(HMDSyncOperationQueue *)v61 _removeWaitingOperation:v5];
            v89 = [v5 options];
            v90 = [v89 isCloudConflict];

            if (v90)
            {
              v91 = [v5 options];
              v92 = [v91 isCloudConflict];
              v93 = [v4 options];
              [v93 setCloudConflict:v92];
            }

            v51 = [v5 operationCompletions];
            [v4 updateOperationCompletionsWithArray:v51];
LABEL_66:
          }

          v94 = objc_autoreleasePoolPush();
          v95 = self;
          v96 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
          {
            v97 = HMFGetLogIdentifier();
            *buf = 138543618;
            v142 = v97;
            v143 = 2112;
            v144 = v4;
            _os_log_impl(&dword_2531F8000, v96, OS_LOG_TYPE_INFO, "%{public}@Schedule operation without delay %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v94);
          [(HMDSyncOperationQueue *)v95 _addStagedOperation:v4];
          goto LABEL_94;
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v128 objects:v140 count:16];
      if (!v53)
      {
LABEL_44:
        v5 = 0;
        goto LABEL_66;
      }
    }
  }

  v134 = 0uLL;
  v135 = 0uLL;
  v132 = 0uLL;
  v133 = 0uLL;
  v28 = [(HMDSyncOperationQueue *)self waitingOperations];
  v5 = [v28 countByEnumeratingWithState:&v132 objects:v147 count:16];
  if (!v5)
  {
    goto LABEL_80;
  }

  v29 = *v133;
  while (2)
  {
    for (k = 0; k != v5; k = k + 1)
    {
      if (*v133 != v29)
      {
        objc_enumerationMutation(v28);
      }

      v31 = *(*(&v132 + 1) + 8 * k);
      v32 = [v4 zoneName];
      v33 = [v31 zoneName];
      v34 = [v32 isEqualToString:v33];

      if (v34)
      {
        v5 = v31;

        if (!v5)
        {
          goto LABEL_81;
        }

        v43 = [v4 options];
        if ([v43 isDelayRespected])
        {
          v44 = [v5 options];
          v45 = [v44 isDelayRespected];

          if ((v45 & 1) == 0)
          {
            v46 = objc_autoreleasePoolPush();
            v47 = self;
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

        v71 = [v4 options];
        if ([v71 isDelayRespected])
        {
        }

        else
        {
          v72 = [v5 options];
          v73 = [v72 isDelayRespected];

          if (v73)
          {
            v46 = objc_autoreleasePoolPush();
            v74 = self;
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

        v77 = [v4 options];
        if ([v77 isDelayRespected])
        {
          v78 = [v5 options];
          v79 = [v78 isDelayRespected];

          if (v79)
          {
            v80 = [v5 delayTimer];
            [v80 timeInterval];
            v82 = v81;
            v83 = [v4 delayTimer];
            [v83 timeInterval];
            v85 = v84;

            v46 = objc_autoreleasePoolPush();
            v86 = self;
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
              v108 = [v5 delayTimer];
              [v108 cancel];

              [v5 setDelayTimer:0];
              [(HMDSyncOperationQueue *)self _removeWaitingOperation:v5];
              v109 = [v5 options];
              v110 = [v109 isCloudConflict];

              if (v110)
              {
                v111 = [v5 options];
                v112 = [v111 isCloudConflict];
                v113 = [v4 options];
                [v113 setCloudConflict:v112];
              }

              v28 = [v5 operationCompletions];
              [v4 updateOperationCompletionsWithArray:v28];
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

        v28 = [v4 options];
        if ([v28 isDelayRespected])
        {
          goto LABEL_80;
        }

        v98 = [v5 options];
        v99 = [v98 isDelayRespected];

        if (v99)
        {
          goto LABEL_81;
        }

        v100 = [v5 delayTimer];
        [v100 timeInterval];
        v102 = v101;
        v103 = [v4 delayTimer];
        [v103 timeInterval];
        v105 = v104;

        v46 = objc_autoreleasePoolPush();
        v106 = self;
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
        v122 = [v4 options];
        v123 = [v122 isCloudConflict];

        if (v123)
        {
          v124 = [v4 options];
          v125 = [v124 isCloudConflict];
          v126 = [v5 options];
          [v126 setCloudConflict:v125];
        }

        goto LABEL_91;
      }
    }

    v5 = [v28 countByEnumeratingWithState:&v132 objects:v147 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_80:

LABEL_81:
  v114 = objc_autoreleasePoolPush();
  v115 = self;
  v116 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
  {
    v117 = HMFGetLogIdentifier();
    v118 = [v4 delayTimer];
    [v118 timeInterval];
    v120 = v119;
    v121 = [v5 zoneName];
    *buf = 138543874;
    v142 = v117;
    v143 = 2048;
    v144 = v120;
    v145 = 2112;
    v146 = v121;
    _os_log_impl(&dword_2531F8000, v116, OS_LOG_TYPE_INFO, "%{public}@Schedule operation with delay %g: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v114);
  [(HMDSyncOperationQueue *)v115 _addWaitingOperation:v4];
  v41 = [v4 delayTimer];
  [v41 resume];
LABEL_93:

LABEL_94:
  v127 = *MEMORY[0x277D85DE8];
}

- (void)resetBackoffTimer
{
  v3 = [(HMDSyncOperationQueue *)self backoffTimer];
  [v3 cancel];

  [(HMDSyncOperationQueue *)self setBackoffTimer:0];
}

- (void)_createBackoffTimer
{
  if ([(HMDSyncOperationQueue *)self hasExponentialBackoff])
  {
    v3 = [(HMDSyncOperationQueue *)self backoffTimer];

    if (!v3)
    {
      v4 = objc_alloc(MEMORY[0x277D0F7B0]);
      [(HMDSyncOperationQueue *)self initialBackoff];
      v5 = [v4 initWithMinimumTimeInterval:cloudUploadTimerIntervalExponentialFactor maximumTimeInterval:1 exponentialFactor:? options:?];
      [(HMDSyncOperationQueue *)self setBackoffTimer:v5];

      v7 = [(HMDSyncOperationQueue *)self backoffTimer];
      v6 = [(HMDSyncOperationQueue *)self manager];
      [v7 setDelegate:v6];
    }
  }
}

- (int64_t)count
{
  v2 = [(HMDSyncOperationQueue *)self stagedOperations];
  v3 = [v2 count];

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
  v5 = [(HMDSyncOperationQueue *)self name];
  stagedOperations = self->_stagedOperations;
  v7 = [v3 stringWithFormat:@"<%@ %@, Staged Operations = %@, Waiting Operations = %@>", v4, v5, stagedOperations, self->_waitingOperations];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)_removeWaitingOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_waitingOperations removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addWaitingOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_waitingOperations addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeStagedOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_stagedOperations removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addStagedOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_stagedOperations addObject:v4];
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

- (id)initName:(id)a3 syncManager:(id)a4 initialDelay:(double)a5 initialBackoff:(double)a6 hasBackoff:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v22.receiver = self;
  v22.super_class = HMDSyncOperationQueue;
  v15 = [(HMDSyncOperationQueue *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_name, a3);
    objc_storeWeak(&v16->_manager, v14);
    v17 = [MEMORY[0x277CBEB18] array];
    stagedOperations = v16->_stagedOperations;
    v16->_stagedOperations = v17;

    v19 = [MEMORY[0x277CBEB18] array];
    waitingOperations = v16->_waitingOperations;
    v16->_waitingOperations = v19;

    v16->_initialDelay = a5;
    v16->_initialBackoff = a6;
    v16->_hasExponentialBackoff = a7;
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