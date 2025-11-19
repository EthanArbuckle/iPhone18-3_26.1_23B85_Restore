@interface HMDProcessMonitor
+ (BOOL)shouldUpgradeFromBackgroundToForegroundForProcessInfo:(id)a3 processState:(id)a4;
+ (id)foregroundAssertionReasonForProcessState:(id)a3;
+ (id)logCategory;
+ (unint64_t)applicationStateForProcessInfo:(id)a3 rbsProcessState:(id)a4;
+ (unint64_t)applicationStateFromRBSProcessState:(id)a3;
- (HMDProcessMonitor)initWithQueue:(id)a3;
- (NSArray)foregroundProcesses;
- (NSArray)processes;
- (NSMutableSet)processInfos;
- (id)_processInfoForPID:(os_unfair_lock *)a1;
- (id)processInfoForPID:(int)a3;
- (id)processInfoForXPCConnection:(id)a3;
- (void)_removeProcess:(id)a3;
- (void)dealloc;
- (void)removeProcess:(id)a3;
- (void)updateApplicationMonitor;
- (void)updateProcessInfo:(id)a3 withProcessState:(id)a4;
- (void)updateProcessInfoForRBSProcessHandle:(id)a3 usingUpdate:(id)a4;
@end

@implementation HMDProcessMonitor

- (void)updateProcessInfoForRBSProcessHandle:(id)a3 usingUpdate:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 state];
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating process info with new state: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = -[HMDProcessMonitor processInfoForPID:](v9, "processInfoForPID:", [v6 pid]);
  if (v13)
  {
    v14 = [v7 state];
    [(HMDProcessMonitor *)v9 updateProcessInfo:v13 withProcessState:v14];

    if ([v13 isTerminated])
    {
      [(HMDProcessMonitor *)v9 removeProcess:v13];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 pid];
      v21 = 138543618;
      v22 = v18;
      v23 = 2048;
      v24 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot find process info with pid %lu", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateProcessInfo:(id)a3 withProcessState:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() applicationStateForProcessInfo:v6 rbsProcessState:v7];
  if ([v6 state] != v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
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
        v13 = off_27972E080[v8];
      }

      v14 = v13;
      *buf = 138543874;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating application state to %{public}@ for process: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [v6 _updateState:v8];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = HMDProcessMonitorProcessStateDidChangeNotification;
    v19 = @"processInfo";
    v20 = v6;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v15 postNotificationName:v16 object:v10 userInfo:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_removeProcess:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDProcessMonitor *)self processInfos];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  if (isInternalBuild())
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = @"processInfo";
    v11[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v6 postNotificationName:@"HMDProcessMonitorProcessRemovedNotification" object:self userInfo:v7];
  }

  v8 = [v4 applicationInfo];
  [v8 removeProcess:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeProcess:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing process info: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDProcessMonitor *)v6 _removeProcess:v4];
  v9 = [v4 applicationInfo];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 processes];
    v12 = [v11 count];

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
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating application monitor because last process info was removed from application info", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      [(HMDProcessMonitor *)v6 updateApplicationMonitor];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)processInfoForXPCConnection:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = -[HMDProcessMonitor _processInfoForPID:](self, [v4 processIdentifier]);
  if (v5)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = [HMDProcessInfo alloc];
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v5 = [(HMDProcessInfo *)v6 initWithAuditToken:buf];
    v7 = [(HMDProcessMonitor *)self processInfos];
    [v7 addObject:v5];

    os_unfair_lock_unlock(&self->_lock);
    v8 = [(HMDProcessInfo *)v5 applicationInfo];
    [v8 addProcess:v5];

    if (isInternalBuild())
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v19 = @"processInfo";
      v20 = v5;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [v9 postNotificationName:@"HMDProcessMonitorProcessAddedNotification" object:self userInfo:v10];
    }

    if ([(HMDProcessInfo *)v5 shouldMonitor])
    {
      [(HMDProcessMonitor *)self updateApplicationMonitor];
      v11 = [(HMDProcessInfo *)v5 processHandle];
      v12 = [v11 currentState];
      [(HMDProcessMonitor *)self updateProcessInfo:v5 withProcessState:v12];
    }

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Created process info: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_processInfoForPID:(os_unfair_lock *)a1
{
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 2);
    v4 = [(os_unfair_lock *)a1 processInfos];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__HMDProcessMonitor__processInfoForPID___block_invoke;
    v7[3] = &__block_descriptor_36_e24_B16__0__HMDProcessInfo_8l;
    v8 = a2;
    v5 = [v4 na_firstObjectPassingTest:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)processInfoForPID:(int)a3
{
  os_unfair_lock_lock_with_options();
  v5 = [(HMDProcessMonitor *)self _processInfoForPID:a3];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSArray)foregroundProcesses
{
  v2 = [(HMDProcessMonitor *)self processes];
  v3 = [v2 na_filter:&__block_literal_global_111657];

  return v3;
}

- (NSArray)processes
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDProcessMonitor *)self processInfos];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSMutableSet)processInfos
{
  os_unfair_lock_assert_owner(&self->_lock);
  processInfos = self->_processInfos;

  return processInfos;
}

- (void)updateApplicationMonitor
{
  v3 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  v4 = [(HMDProcessMonitor *)self processInfos];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke;
  v18[3] = &unk_27972B2F8;
  v5 = v3;
  v19 = v5;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke_2;
  aBlock[3] = &unk_27972B348;
  v6 = v5;
  v15 = v6;
  objc_copyWeak(&v16, &location);
  v7 = _Block_copy(aBlock);
  v8 = [(HMDProcessMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDProcessMonitor_updateApplicationMonitor__block_invoke_2_24;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

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
  v7[3] = &unk_27972B320;
  objc_copyWeak(&v8, (a1 + 40));
  [v3 setUpdateHandler:v7];
  objc_destroyWeak(&v8);

  v6 = *MEMORY[0x277D85DE8];
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
    block[3] = &unk_279734960;
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self for RBSProcessMonitorUpdateInfo", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_rbsProcessMonitor invalidate];
  v3.receiver = self;
  v3.super_class = HMDProcessMonitor;
  [(HMDProcessMonitor *)&v3 dealloc];
}

- (HMDProcessMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDProcessMonitor;
  v6 = [(HMDProcessMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    processInfos = v7->_processInfos;
    v7->_processInfos = v8;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_111683 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_111683, &__block_literal_global_45_111684);
  }

  v3 = logCategory__hmf_once_v15_111685;

  return v3;
}

uint64_t __32__HMDProcessMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_111685;
  logCategory__hmf_once_v15_111685 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (unint64_t)applicationStateForProcessInfo:(id)a3 rbsProcessState:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 shouldMonitor])
  {
    v8 = [a1 applicationStateFromRBSProcessState:v7];
    v9 = v8;
    if (v8 != 4)
    {
      if (v8 == 1)
      {
        v10 = [a1 foregroundAssertionReasonForProcessState:v7];
        if (v10)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = a1;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            v21 = 138543874;
            v22 = v14;
            v23 = 2112;
            v24 = v6;
            v25 = 2112;
            v26 = v10;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Upgrading app state to foreground for process %@: %@", &v21, 0x20u);
          }

          objc_autoreleasePoolPop(v11);
          v9 = 0;
        }

        else
        {
          v9 = 1;
        }
      }

      if ([v6 isEntitledForSPIAccess])
      {
        if (v9 == 1 && [a1 shouldUpgradeFromBackgroundToForegroundForProcessInfo:v6 processState:v7])
        {
          v15 = objc_autoreleasePoolPush();
          v16 = a1;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v21 = 138543618;
            v22 = v18;
            v23 = 2112;
            v24 = v6;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Upgrading app state to foreground as the client has SPI access and is background running: %@", &v21, 0x16u);
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

+ (BOOL)shouldUpgradeFromBackgroundToForegroundForProcessInfo:(id)a3 processState:(id)a4
{
  v5 = a3;
  v6 = [a4 assertions];
  v7 = [v6 na_any:&__block_literal_global_43_111692];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v5 applicationIdentifier];
    v10 = [v9 isEqualToString:*MEMORY[0x277CD09C8]];

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

+ (unint64_t)applicationStateFromRBSProcessState:(id)a3
{
  v3 = a3;
  v4 = [v3 taskState];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v5 = 4;
      goto LABEL_11;
    }

    if (v4 != 2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v4 == 4)
  {
LABEL_8:
    v6 = [v3 endowmentNamespaces];
    v7 = [v6 containsObject:*MEMORY[0x277D0AC90]];

    v5 = v7 ^ 1u;
    goto LABEL_11;
  }

  if (v4 != 3)
  {
LABEL_9:
    v5 = -1;
    goto LABEL_11;
  }

  v5 = 3;
LABEL_11:

  return v5;
}

+ (id)foregroundAssertionReasonForProcessState:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [a3 assertions];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 type];
        if (v9 == 3)
        {
          v12 = [v8 reason];
          if (v12 == 7 || v12 == 10008 || v12 == 9)
          {
            v15 = MEMORY[0x277CCACA8];
            v18 = [v8 name];
            v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "reason")}];
            v16 = [v8 explanation];
            v20 = [v15 stringWithFormat:@"%@(%@):%@", v18, v19, v16];

            goto LABEL_21;
          }
        }

        else if (v9 == 2)
        {
          v10 = [v8 domain];
          v11 = [v10 isEqualToString:@"com.apple.siri:IntentStartupGrant"];

          if (v11)
          {
            v17 = MEMORY[0x277CCACA8];
            v18 = [v8 domain];
            v19 = [v8 explanation];
            v20 = [v17 stringWithFormat:@"%@:%@", v18, v19];
LABEL_21:

            goto LABEL_22;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
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