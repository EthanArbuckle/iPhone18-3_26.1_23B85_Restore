@interface HMDProcessMonitor
+ (BOOL)shouldUpgradeFromBackgroundToForegroundForProcessInfo:(id)info processState:(id)state;
+ (id)foregroundAssertionReasonForProcessState:(id)state;
+ (id)logCategory;
+ (unint64_t)applicationStateForProcessInfo:(id)info rbsProcessState:(id)state;
+ (unint64_t)applicationStateFromRBSProcessState:(id)state;
- (HMDProcessMonitor)initWithQueue:(id)queue;
- (NSArray)foregroundProcesses;
- (NSArray)processes;
- (NSMutableSet)processInfos;
- (id)_processInfoForPID:(os_unfair_lock *)d;
- (id)processInfoForPID:(int)d;
- (id)processInfoForXPCConnection:(id)connection;
- (void)_removeProcess:(id)process;
- (void)dealloc;
- (void)removeProcess:(id)process;
- (void)updateApplicationMonitor;
- (void)updateProcessInfo:(id)info withProcessState:(id)state;
- (void)updateProcessInfoForRBSProcessHandle:(id)handle usingUpdate:(id)update;
@end

@implementation HMDProcessMonitor

- (void)updateApplicationMonitor
{
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  processInfos = [(HMDProcessMonitor *)self processInfos];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke;
  v18[3] = &unk_27867C8C0;
  v5 = array;
  v19 = v5;
  [processInfos hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke_2;
  aBlock[3] = &unk_27867C910;
  v6 = v5;
  v15 = v6;
  objc_copyWeak(&v16, &location);
  v7 = _Block_copy(aBlock);
  queue = [(HMDProcessMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke_2_24;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 shouldMonitor])
  {
    v3 = [v7 processHandle];

    if (v3)
    {
      v4 = MEMORY[0x277D46FA0];
      v5 = [v7 processHandle];
      v6 = [v4 predicateMatchingHandle:v5];

      [*(a1 + 32) addObject:v6];
    }
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_168191 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_168191, &__block_literal_global_45_168192);
  }

  v3 = logCategory__hmf_once_v15_168193;

  return v3;
}

void __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke_2_24(uint64_t a1)
{
  v2 = [*(a1 + 32) rbsProcessMonitor];
  if (v2)
  {
  }

  else if ([*(a1 + 40) count])
  {
    v8 = [MEMORY[0x277D46F80] monitorWithConfiguration:*(a1 + 48)];
    [*(a1 + 32) setRbsProcessMonitor:v8];
    goto LABEL_8;
  }

  v3 = [*(a1 + 32) rbsProcessMonitor];
  if (!v3 || (v4 = v3, v5 = [*(a1 + 40) count], v4, v5))
  {
    v8 = [*(a1 + 32) rbsProcessMonitor];
    [v8 updateConfiguration:*(a1 + 48)];
LABEL_8:

    return;
  }

  v6 = [*(a1 + 32) rbsProcessMonitor];
  [v6 invalidate];

  v7 = *(a1 + 32);

  [v7 setRbsProcessMonitor:0];
}

void __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setPredicates:*(a1 + 32)];
  v4 = objc_alloc_init(MEMORY[0x277D46FB0]);
  v9[0] = *MEMORY[0x277D0AC90];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v4 setValues:25];
  [v3 setStateDescriptor:v4];
  [v3 setServiceClass:25];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke_3;
  v7[3] = &unk_27867C8E8;
  objc_copyWeak(&v8, (a1 + 40));
  [v3 setUpdateHandler:v7];
  objc_destroyWeak(&v8);

  v6 = *MEMORY[0x277D85DE8];
}

void __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke_20;
    block[3] = &unk_27868A010;
    block[4] = v11;
    v18 = v8;
    v19 = v9;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self for RBSProcessMonitorUpdateInfo", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateProcessInfoForRBSProcessHandle:(id)handle usingUpdate:(id)update
{
  v25 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  updateCopy = update;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    state = [updateCopy state];
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = state;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating process info with new state: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = -[HMDProcessMonitor processInfoForPID:](selfCopy, "processInfoForPID:", [handleCopy pid]);
  if (v13)
  {
    state2 = [updateCopy state];
    [(HMDProcessMonitor *)selfCopy updateProcessInfo:v13 withProcessState:state2];

    if ([v13 isTerminated])
    {
      [(HMDProcessMonitor *)selfCopy removeProcess:v13];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [handleCopy pid];
      v21 = 138543618;
      v22 = v18;
      v23 = 2048;
      v24 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot find process info with pid %lu", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateProcessInfo:(id)info withProcessState:(id)state
{
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  stateCopy = state;
  v8 = [objc_opt_class() applicationStateForProcessInfo:infoCopy rbsProcessState:stateCopy];
  if ([infoCopy state] != v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      if (v8 > 4)
      {
        v13 = @"unknown";
      }

      else
      {
        v13 = off_278680668[v8];
      }

      v14 = v13;
      *buf = 138543874;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      v25 = 2112;
      v26 = infoCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating application state to %{public}@ for process: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [infoCopy _updateState:v8];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = HMDProcessMonitorProcessStateDidChangeNotification;
    v19 = @"processInfo";
    v20 = infoCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [defaultCenter postNotificationName:v16 object:selfCopy userInfo:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_removeProcess:(id)process
{
  v11[1] = *MEMORY[0x277D85DE8];
  processCopy = process;
  os_unfair_lock_lock_with_options();
  processInfos = [(HMDProcessMonitor *)self processInfos];
  [processInfos removeObject:processCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (isInternalBuild())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = @"processInfo";
    v11[0] = processCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [defaultCenter postNotificationName:@"HMDProcessMonitorProcessRemovedNotification" object:self userInfo:v7];
  }

  applicationInfo = [processCopy applicationInfo];
  [applicationInfo removeProcess:processCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeProcess:(id)process
{
  v22 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = processCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing process info: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDProcessMonitor *)selfCopy _removeProcess:processCopy];
  applicationInfo = [processCopy applicationInfo];
  v10 = applicationInfo;
  if (applicationInfo)
  {
    processes = [applicationInfo processes];
    v12 = [processes count];

    if (!v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v10;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating application monitor because last process info was removed from application info", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      [(HMDProcessMonitor *)selfCopy updateApplicationMonitor];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)processInfoForXPCConnection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  os_unfair_lock_lock_with_options();
  v5 = -[HMDProcessMonitor _processInfoForPID:](self, [connectionCopy processIdentifier]);
  if (v5)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = [HMDProcessInfo alloc];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v5 = [(HMDProcessInfo *)v6 initWithAuditToken:buf];
    processInfos = [(HMDProcessMonitor *)self processInfos];
    [processInfos addObject:v5];

    os_unfair_lock_unlock(&self->_lock);
    applicationInfo = [(HMDProcessInfo *)v5 applicationInfo];
    [applicationInfo addProcess:v5];

    if (isInternalBuild())
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v19 = @"processInfo";
      v20 = v5;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [defaultCenter postNotificationName:@"HMDProcessMonitorProcessAddedNotification" object:self userInfo:v10];
    }

    if ([(HMDProcessInfo *)v5 shouldMonitor])
    {
      [(HMDProcessMonitor *)self updateApplicationMonitor];
      processHandle = [(HMDProcessInfo *)v5 processHandle];
      currentState = [processHandle currentState];
      [(HMDProcessMonitor *)self updateProcessInfo:v5 withProcessState:currentState];
    }

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Created process info: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_processInfoForPID:(os_unfair_lock *)d
{
  if (d)
  {
    os_unfair_lock_assert_owner(d + 2);
    processInfos = [(os_unfair_lock *)d processInfos];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__HMDProcessMonitor__processInfoForPID___block_invoke;
    v7[3] = &__block_descriptor_36_e24_B16__0__HMDProcessInfo_8l;
    v8 = a2;
    v5 = [processInfos na_firstObjectPassingTest:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)processInfoForPID:(int)d
{
  os_unfair_lock_lock_with_options();
  v5 = [(HMDProcessMonitor *)self _processInfoForPID:d];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSArray)foregroundProcesses
{
  processes = [(HMDProcessMonitor *)self processes];
  v3 = [processes na_filter:&__block_literal_global_168165];

  return v3;
}

- (NSArray)processes
{
  os_unfair_lock_lock_with_options();
  processInfos = [(HMDProcessMonitor *)self processInfos];
  allObjects = [processInfos allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (NSMutableSet)processInfos
{
  os_unfair_lock_assert_owner(&self->_lock);
  processInfos = self->_processInfos;

  return processInfos;
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_rbsProcessMonitor invalidate];
  v3.receiver = self;
  v3.super_class = HMDProcessMonitor;
  [(HMDProcessMonitor *)&v3 dealloc];
}

- (HMDProcessMonitor)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDProcessMonitor;
  v6 = [(HMDProcessMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [MEMORY[0x277CBEB58] set];
    processInfos = v7->_processInfos;
    v7->_processInfos = v8;
  }

  return v7;
}

void __32__HMDProcessMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_168193;
  logCategory__hmf_once_v15_168193 = v1;
}

+ (unint64_t)applicationStateForProcessInfo:(id)info rbsProcessState:(id)state
{
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  stateCopy = state;
  if ([infoCopy shouldMonitor])
  {
    v8 = [self applicationStateFromRBSProcessState:stateCopy];
    v9 = v8;
    if (v8 != 4)
    {
      if (v8 == 1)
      {
        v10 = [self foregroundAssertionReasonForProcessState:stateCopy];
        if (v10)
        {
          v11 = objc_autoreleasePoolPush();
          selfCopy = self;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            v21 = 138543874;
            v22 = v14;
            v23 = 2112;
            v24 = infoCopy;
            v25 = 2112;
            v26 = v10;
            _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Upgrading app state to foreground for process %@: %@", &v21, 0x20u);
          }

          objc_autoreleasePoolPop(v11);
          v9 = 0;
        }

        else
        {
          v9 = 1;
        }
      }

      if ([infoCopy isEntitledForSPIAccess])
      {
        if (v9 == 1 && [self shouldUpgradeFromBackgroundToForegroundForProcessInfo:infoCopy processState:stateCopy])
        {
          v15 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v21 = 138543618;
            v22 = v18;
            v23 = 2112;
            v24 = infoCopy;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Upgrading app state to foreground as the client has SPI access and is background running: %@", &v21, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          v9 = 2;
        }

        else if (v9 == -1)
        {
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = -1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)shouldUpgradeFromBackgroundToForegroundForProcessInfo:(id)info processState:(id)state
{
  infoCopy = info;
  assertions = [state assertions];
  v7 = [assertions na_any:&__block_literal_global_43_168200];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    applicationIdentifier = [infoCopy applicationIdentifier];
    v10 = [applicationIdentifier isEqualToString:*MEMORY[0x277CD09C8]];

    v8 = v10 ^ 1;
  }

  return v8;
}

uint64_t __88__HMDProcessMonitor_shouldUpgradeFromBackgroundToForegroundForProcessInfo_processState___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 domain];
  v3 = [v2 isEqualToString:@"com.apple.dasd:DYLDLaunch"];

  return v3;
}

+ (unint64_t)applicationStateFromRBSProcessState:(id)state
{
  stateCopy = state;
  taskState = [stateCopy taskState];
  if (taskState <= 2)
  {
    if (taskState == 1)
    {
      v5 = 4;
      goto LABEL_11;
    }

    if (taskState != 2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (taskState == 4)
  {
LABEL_8:
    endowmentNamespaces = [stateCopy endowmentNamespaces];
    v7 = [endowmentNamespaces containsObject:*MEMORY[0x277D0AC90]];

    v5 = v7 ^ 1u;
    goto LABEL_11;
  }

  if (taskState != 3)
  {
LABEL_9:
    v5 = -1;
    goto LABEL_11;
  }

  v5 = 3;
LABEL_11:

  return v5;
}

+ (id)foregroundAssertionReasonForProcessState:(id)state
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  assertions = [state assertions];
  v4 = [assertions countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(assertions);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        type = [v8 type];
        if (type == 3)
        {
          reason = [v8 reason];
          if (reason == 7 || reason == 10008 || reason == 9)
          {
            v15 = MEMORY[0x277CCACA8];
            name = [v8 name];
            explanation2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "reason")}];
            explanation = [v8 explanation];
            v20 = [v15 stringWithFormat:@"%@(%@):%@", name, explanation2, explanation];

            goto LABEL_21;
          }
        }

        else if (type == 2)
        {
          domain = [v8 domain];
          v11 = [domain isEqualToString:@"com.apple.siri:IntentStartupGrant"];

          if (v11)
          {
            v17 = MEMORY[0x277CCACA8];
            name = [v8 domain];
            explanation2 = [v8 explanation];
            v20 = [v17 stringWithFormat:@"%@:%@", name, explanation2];
LABEL_21:

            goto LABEL_22;
          }
        }
      }

      v5 = [assertions countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_22:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end