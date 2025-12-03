@interface HMDIDSActivityMonitorObserver
+ (id)logCategory;
- (HMDIDSActivityMonitorObserver)initWithActivityMonitor:(id)monitor;
- (id)logIdentifier;
- (void)activityMonitor:(id)monitor didReceiveActivityUpdate:(id)update;
- (void)addObserver:(id)observer forSubActivity:(id)activity;
- (void)configureWithDataSource:(id)source;
- (void)removeObserver:(id)observer forSubActivity:(id)activity;
- (void)startObservingPresenceForDevice:(id)device;
- (void)stopObservingPresenceForDevice:(id)device;
@end

@implementation HMDIDSActivityMonitorObserver

- (id)logIdentifier
{
  activityMonitor = [(HMDIDSActivityMonitorObserver *)self activityMonitor];
  logIdentifier = [activityMonitor logIdentifier];

  return logIdentifier;
}

- (void)activityMonitor:(id)monitor didReceiveActivityUpdate:(id)update
{
  v37 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  updateCopy = update;
  v8 = +[HMDAccountRegistry sharedRegistry];
  pushToken = [updateCopy pushToken];
  v10 = [v8 deviceForPushToken:pushToken];

  if (v10)
  {
    os_unfair_lock_lock_with_options();
    subactivityToDelegatesMap = self->_subactivityToDelegatesMap;
    subActivity = [updateCopy subActivity];
    v13 = [(NSMutableDictionary *)subactivityToDelegatesMap objectForKeyedSubscript:subActivity];

    allObjects = [v13 allObjects];

    os_unfair_lock_unlock(&self->_lock);
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v18;
      v35 = 2112;
      v36 = updateCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying delegates of IDS Activity update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = allObjects;
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

          [*(*(&v28 + 1) + 8 * v22++) observer:selfCopy didUpdateDevice:v10 isOnline:{objc_msgSend(updateCopy, "isDeviceOnline", v28)}];
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
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v26;
      v35 = 2112;
      v36 = updateCopy;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Received IDS Activity update for unkonwn device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingPresenceForDevice:(id)device
{
  deviceCopy = device;
  dataSource = [(HMDIDSActivityMonitorObserver *)self dataSource];
  [dataSource stopObservingDevice:deviceCopy subActivity:*MEMORY[0x277D18518]];
}

- (void)startObservingPresenceForDevice:(id)device
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dataSource = [(HMDIDSActivityMonitorObserver *)self dataSource];

  if (!dataSource)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  dataSource2 = [(HMDIDSActivityMonitorObserver *)self dataSource];
  [dataSource2 startObservingDevice:deviceCopy subActivity:*MEMORY[0x277D18518]];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)observer forSubActivity:(id)activity
{
  observerCopy = observer;
  activityCopy = activity;
  os_unfair_lock_lock_with_options();
  v7 = [(NSMutableDictionary *)self->_subactivityToDelegatesMap objectForKeyedSubscript:activityCopy];
  v8 = v7;
  if (v7)
  {
    [v7 removeObject:observerCopy];
    if (![v8 count])
    {
      [(NSMutableDictionary *)self->_subactivityToDelegatesMap setObject:0 forKeyedSubscript:activityCopy];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)observer forSubActivity:(id)activity
{
  observerCopy = observer;
  activityCopy = activity;
  os_unfair_lock_lock_with_options();
  v7 = [(NSMutableDictionary *)self->_subactivityToDelegatesMap count];
  weakObjectsHashTable = [(NSMutableDictionary *)self->_subactivityToDelegatesMap objectForKeyedSubscript:activityCopy];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_subactivityToDelegatesMap setObject:weakObjectsHashTable forKeyedSubscript:activityCopy];
  }

  [weakObjectsHashTable addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    activityMonitor = [(HMDIDSActivityMonitorObserver *)self activityMonitor];
    [activityMonitor listenWithDelegate:self];
  }
}

- (void)configureWithDataSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = sourceCopy;
  dataSource = [(HMDIDSActivityMonitorObserver *)self dataSource];

  if (dataSource)
  {
LABEL_7:
    v6 = _HMFPreconditionFailure();
    [(HMDIDSActivityMonitorObserver *)v6 initWithActivityMonitor:v7, v8];
    return;
  }

  [(HMDIDSActivityMonitorObserver *)self setDataSource:v9];
}

- (HMDIDSActivityMonitorObserver)initWithActivityMonitor:(id)monitor
{
  monitorCopy = monitor;
  v11.receiver = self;
  v11.super_class = HMDIDSActivityMonitorObserver;
  v6 = [(HMDIDSActivityMonitorObserver *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityMonitor, monitor);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    subactivityToDelegatesMap = v7->_subactivityToDelegatesMap;
    v7->_subactivityToDelegatesMap = dictionary;
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