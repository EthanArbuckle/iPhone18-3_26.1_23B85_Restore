@interface HMDIDSActivityMonitorObserver
+ (id)logCategory;
- (HMDIDSActivityMonitorObserver)initWithActivityMonitor:(id)a3;
- (id)logIdentifier;
- (void)activityMonitor:(id)a3 didReceiveActivityUpdate:(id)a4;
- (void)addObserver:(id)a3 forSubActivity:(id)a4;
- (void)configureWithDataSource:(id)a3;
- (void)removeObserver:(id)a3 forSubActivity:(id)a4;
- (void)startObservingPresenceForDevice:(id)a3;
- (void)stopObservingPresenceForDevice:(id)a3;
@end

@implementation HMDIDSActivityMonitorObserver

- (id)logIdentifier
{
  v2 = [(HMDIDSActivityMonitorObserver *)self activityMonitor];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)activityMonitor:(id)a3 didReceiveActivityUpdate:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMDAccountRegistry sharedRegistry];
  v9 = [v7 pushToken];
  v10 = [v8 deviceForPushToken:v9];

  if (v10)
  {
    os_unfair_lock_lock_with_options();
    subactivityToDelegatesMap = self->_subactivityToDelegatesMap;
    v12 = [v7 subActivity];
    v13 = [(NSMutableDictionary *)subactivityToDelegatesMap objectForKeyedSubscript:v12];

    v14 = [v13 allObjects];

    os_unfair_lock_unlock(&self->_lock);
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v18;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying delegates of IDS Activity update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v14;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v20)
    {
      v21 = *v29;
      do
      {
        v22 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v28 + 1) + 8 * v22++) observer:v16 didUpdateDevice:v10 isOnline:{objc_msgSend(v7, "isDeviceOnline", v28)}];
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v26;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Received IDS Activity update for unkonwn device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingPresenceForDevice:(id)a3
{
  v4 = a3;
  v5 = [(HMDIDSActivityMonitorObserver *)self dataSource];
  [v5 stopObservingDevice:v4 subActivity:*MEMORY[0x277D18518]];
}

- (void)startObservingPresenceForDevice:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSActivityMonitorObserver *)self dataSource];

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@startObservingPresenceForDevice: called before configureWithDataSource:", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = [(HMDIDSActivityMonitorObserver *)self dataSource];
  [v10 startObservingDevice:v4 subActivity:*MEMORY[0x277D18518]];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3 forSubActivity:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(NSMutableDictionary *)self->_subactivityToDelegatesMap objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    [v7 removeObject:v9];
    if (![v8 count])
    {
      [(NSMutableDictionary *)self->_subactivityToDelegatesMap setObject:0 forKeyedSubscript:v6];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)a3 forSubActivity:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(NSMutableDictionary *)self->_subactivityToDelegatesMap count];
  v8 = [(NSMutableDictionary *)self->_subactivityToDelegatesMap objectForKeyedSubscript:v6];
  if (!v8)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_subactivityToDelegatesMap setObject:v8 forKeyedSubscript:v6];
  }

  [v8 addObject:v10];

  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    v9 = [(HMDIDSActivityMonitorObserver *)self activityMonitor];
    [v9 listenWithDelegate:self];
  }
}

- (void)configureWithDataSource:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v4;
  v5 = [(HMDIDSActivityMonitorObserver *)self dataSource];

  if (v5)
  {
LABEL_7:
    v6 = _HMFPreconditionFailure();
    [(HMDIDSActivityMonitorObserver *)v6 initWithActivityMonitor:v7, v8];
    return;
  }

  [(HMDIDSActivityMonitorObserver *)self setDataSource:v9];
}

- (HMDIDSActivityMonitorObserver)initWithActivityMonitor:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDIDSActivityMonitorObserver;
  v6 = [(HMDIDSActivityMonitorObserver *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityMonitor, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    subactivityToDelegatesMap = v7->_subactivityToDelegatesMap;
    v7->_subactivityToDelegatesMap = v8;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_137582 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_137582, &__block_literal_global_147_137583);
  }

  v3 = logCategory__hmf_once_v18_137584;

  return v3;
}

uint64_t __44__HMDIDSActivityMonitorObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v18_137584;
  logCategory__hmf_once_v18_137584 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end