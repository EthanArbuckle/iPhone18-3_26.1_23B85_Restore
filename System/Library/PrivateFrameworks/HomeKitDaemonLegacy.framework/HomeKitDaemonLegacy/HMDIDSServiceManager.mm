@interface HMDIDSServiceManager
+ (HMDIDSServiceManager)sharedManager;
+ (id)logCategory;
- (HMDIDSService)service;
- (HMDIDSServiceManager)initWithDefaults;
- (HMDIDSServiceManager)initWithNotificationCenter:(id)center;
- (dispatch_queue_t)applicationBundleIdentifiersThatNeedWakingMessages;
- (id)serviceWithName:(id)name;
- (void)addProxyServiceLinkPreferencesAssertionHolder:(id)holder;
- (void)handleProcessInfoStateChanged:(id)changed;
- (void)retrieveFirewallWithQueue:(id)queue completion:(id)completion;
- (void)setActivityMonitorDataSource:(id)source;
- (void)unconfigure;
@end

@implementation HMDIDSServiceManager

- (void)retrieveFirewallWithQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  service = [(HMDIDSServiceManager *)self service];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HMDIDSServiceManager_retrieveFirewallWithQueue_completion___block_invoke;
  v10[3] = &unk_2797215B8;
  v11 = completionCopy;
  v9 = completionCopy;
  [service retrieveFirewallWithQueue:queueCopy completion:v10];
}

- (void)handleProcessInfoStateChanged:(id)changed
{
  v27 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    bundleIdentifier = [v8 bundleIdentifier];
    if ([bundleIdentifier length])
    {
      if (self)
      {
        workQueue = self->_workQueue;
      }

      else
      {
        workQueue = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__HMDIDSServiceManager_handleProcessInfoStateChanged___block_invoke;
      block[3] = &unk_279734960;
      block[4] = self;
      v21 = v8;
      v22 = bundleIdentifier;
      dispatch_async(workQueue, block);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v18;
        v25 = 2112;
        v26 = changedCopy;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Missing process info application bundle identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2112;
      v26 = changedCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Bad process info notification object: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __54__HMDIDSServiceManager_handleProcessInfoStateChanged___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v55 = v5;
    v56 = 2112;
    v57 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling process info notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [(HMDIDSServiceManager *)*(a1 + 32) applicationBundleIdentifiersThatNeedWakingMessages];
  v8 = [v7 count];

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v10;
  if (v9)
  {
    v12 = [v10 state];
    if (v12 == -1)
    {
      LODWORD(v9) = [v11 isEntitledForSPIAccess];
    }

    else if (v12 == 2)
    {
      v14 = [v11 applicationInfo];
      LODWORD(v9) = v14 == 0;
    }

    else if (v12)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v13 = [v11 applicationIdentifier];
      if ([&unk_286626BF0 containsObject:v13])
      {
        LODWORD(v9) = 0;
      }

      else
      {
        v15 = [v11 bundleIdentifier];
        LODWORD(v9) = [&unk_286626BF0 containsObject:v15] ^ 1;
      }
    }
  }

  v16 = [(HMDIDSServiceManager *)*(a1 + 32) applicationBundleIdentifiersThatNeedWakingMessages];
  v17 = v16;
  v18 = *(a1 + 48);
  if (v9)
  {
    [v16 addObject:v18];

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v22 = HMFGetLogIdentifier();
    v23 = *(a1 + 48);
    v24 = [(HMDIDSServiceManager *)*(a1 + 32) applicationBundleIdentifiersThatNeedWakingMessages];
    *buf = 138544130;
    v55 = v22;
    v56 = 2160;
    v57 = 1752392040;
    v58 = 2112;
    v59 = v23;
    v60 = 2112;
    v61 = v24;
    v25 = "%{public}@Added '%{mask.hash}@' to waking message priority list: %@";
    goto LABEL_20;
  }

  v26 = [v16 containsObject:v18];

  if (!v26)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = *(a1 + 32);
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v50 = HMFGetLogIdentifier();
      v51 = *(a1 + 48);
      *buf = 138543874;
      v55 = v50;
      v56 = 2160;
      v57 = 1752392040;
      v58 = 2112;
      v59 = v51;
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@No changes to waking priority list for '%{mask.hash}@'", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v47);
    goto LABEL_37;
  }

  v27 = [(HMDIDSServiceManager *)*(a1 + 32) applicationBundleIdentifiersThatNeedWakingMessages];
  [v27 removeObject:*(a1 + 48)];

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 32);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v28 = *(a1 + 48);
    v24 = [(HMDIDSServiceManager *)*(a1 + 32) applicationBundleIdentifiersThatNeedWakingMessages];
    *buf = 138544130;
    v55 = v22;
    v56 = 2160;
    v57 = 1752392040;
    v58 = 2112;
    v59 = v28;
    v60 = 2112;
    v61 = v24;
    v25 = "%{public}@Removed '%{mask.hash}@' from waking message priority list: %@";
LABEL_20:
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, v25, buf, 0x2Au);
  }

LABEL_21:

  objc_autoreleasePoolPop(v19);
  v29 = [(HMDIDSServiceManager *)*(a1 + 32) applicationBundleIdentifiersThatNeedWakingMessages];
  v30 = [v29 count];

  if (!v8 && v30)
  {
    v31 = 2;
    goto LABEL_27;
  }

  if (v8 && !v30)
  {
    v31 = 1;
LABEL_27:
    v32 = [*(a1 + 32) service];
    v53 = 0;
    v33 = [v32 setWakingPushPriority:v31 error:&v53];
    v34 = v53;

    v35 = objc_autoreleasePoolPush();
    v36 = *(a1 + 32);
    v37 = HMFGetOSLogHandle();
    v38 = v37;
    if (v33)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        v40 = *(a1 + 32);
        v41 = [objc_opt_class() sharedIDSServiceName];
        *buf = 138543874;
        v55 = v39;
        v56 = 2114;
        v57 = v41;
        v58 = 2048;
        v59 = v31;
        v42 = "%{public}@Set waking push priority for service '%{public}@' to %ld";
        v43 = v38;
        v44 = OS_LOG_TYPE_INFO;
        v45 = 32;
LABEL_32:
        _os_log_impl(&dword_2531F8000, v43, v44, v42, buf, v45);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      v46 = *(a1 + 32);
      v41 = [objc_opt_class() sharedIDSServiceName];
      *buf = 138544130;
      v55 = v39;
      v56 = 2114;
      v57 = v41;
      v58 = 2048;
      v59 = v31;
      v60 = 2112;
      v61 = v34;
      v42 = "%{public}@Failed to set waking push priority for service '%{public}@' to %ld: %@";
      v43 = v38;
      v44 = OS_LOG_TYPE_ERROR;
      v45 = 42;
      goto LABEL_32;
    }

    objc_autoreleasePoolPop(v35);
  }

LABEL_37:
  v52 = *MEMORY[0x277D85DE8];
}

- (dispatch_queue_t)applicationBundleIdentifiersThatNeedWakingMessages
{
  if (self)
  {
    selfCopy = self;
    dispatch_assert_queue_V2(self[4]);
    self = selfCopy[1];
    v1 = vars8;
  }

  return self;
}

- (void)addProxyServiceLinkPreferencesAssertionHolder:(id)holder
{
  holderCopy = holder;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDIDSServiceManager_addProxyServiceLinkPreferencesAssertionHolder___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = holderCopy;
  v6 = holderCopy;
  dispatch_async(workQueue, v7);
}

void __70__HMDIDSServiceManager_addProxyServiceLinkPreferencesAssertionHolder___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!v3 || (WeakRetained = objc_loadWeakRetained((v3 + 48))) == 0)
  {
    v5 = [_HMDIDSProxyLinkPreferenceAssertion alloc];
    v6 = [*(a1 + 32) serviceWithName:@"com.apple.private.alloy.willow.proxy"];
    WeakRetained = [(_HMDIDSProxyLinkPreferenceAssertion *)v5 initWithIDSProxyService:v6];

    v7 = *(a1 + 32);
    if (v7)
    {
      objc_storeWeak((v7 + 48), WeakRetained);
    }
  }

  objc_setAssociatedObject(*(a1 + 40), "HMD.ProxyIDSServiceAssertion", WeakRetained, 1);

  objc_autoreleasePoolPop(v2);
}

- (void)unconfigure
{
  selfCopy = self;
  if (self)
  {
    self = self->_notificationCenter;
  }

  [(HMDIDSServiceManager *)self removeObserver:selfCopy];
}

- (void)setActivityMonitorDataSource:(id)source
{
  sourceCopy = source;
  activityObserver = [(HMDIDSServiceManager *)self activityObserver];
  [activityObserver configureWithDataSource:sourceCopy];

  activityBroadcaster = [(HMDIDSServiceManager *)self activityBroadcaster];
  [activityBroadcaster configureWithDataSource:sourceCopy];
}

- (HMDIDSServiceManager)initWithNotificationCenter:(id)center
{
  v35 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  v32.receiver = self;
  v32.super_class = HMDIDSServiceManager;
  v6 = [(HMDIDSServiceManager *)&v32 init];
  v7 = v6;
  if (v6)
  {
    if (!v6->_services)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      services = v7->_services;
      v7->_services = v8;
    }

    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    if (!productInfo)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v7;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Unable to determine current product info, this may limit available IDS services", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }

    objc_storeStrong(&v7->_notificationCenter, center);
    v15 = [MEMORY[0x277CBEB58] set];
    applicationBundleIdentifiersThatNeedWakingMessages = v7->_applicationBundleIdentifiersThatNeedWakingMessages;
    v7->_applicationBundleIdentifiersThatNeedWakingMessages = v15;

    v17 = [HMDIDSActivityMonitor alloc];
    v18 = +[HMDIDSServiceManager sharedIDSServiceName];
    v19 = [(HMDIDSActivityMonitor *)v17 initWithActivity:@"com.apple.HomeKit" serviceIdentifier:v18];
    activityMonitor = v7->_activityMonitor;
    v7->_activityMonitor = v19;

    v21 = [[HMDIDSActivityMonitorBroadcaster alloc] initWithActivityMonitor:v7->_activityMonitor];
    activityBroadcaster = v7->_activityBroadcaster;
    v7->_activityBroadcaster = v21;

    v23 = [[HMDIDSActivityMonitorObserver alloc] initWithActivityMonitor:v7->_activityMonitor];
    activityObserver = v7->_activityObserver;
    v7->_activityObserver = v23;

    v25 = HMDispatchQueueNameString();
    uTF8String = [v25 UTF8String];
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_create(uTF8String, v27);
    workQueue = v7->_workQueue;
    v7->_workQueue = v28;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HMDIDSServiceManager)initWithDefaults
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  services = self->_services;
  self->_services = v3;

  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v6 = +[HMDIDSServiceManager sharedIDSServiceName];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *v32 = 138543618;
    *&v32[4] = v10;
    *&v32[12] = 2112;
    *&v32[14] = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Using IDS service %@", v32, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDIDSServiceManager *)selfCopy serviceWithName:v6];
  if (!productInfo)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

      objc_autoreleasePoolPop(v23);
      goto LABEL_17;
    }

    v26 = HMFGetLogIdentifier();
    *v32 = 138543362;
    *&v32[4] = v26;
    v27 = "%{public}@Unable to determine current product info, this may limit available IDS services";
LABEL_15:
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, v27, v32, 0xCu);

    goto LABEL_16;
  }

  if ([productInfo productPlatform] == 3 || +[HMDDeviceCapabilities isCompanionCapable](HMDDeviceCapabilities, "isCompanionCapable"))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *v32 = 138543362;
      *&v32[4] = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Starting proxy service", v32, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HMDIDSServiceManager *)v13 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
  }

  productPlatform = [productInfo productPlatform];
  if ((productPlatform - 1) >= 5)
  {
    if (productPlatform)
    {
      goto LABEL_17;
    }

    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v26 = HMFGetLogIdentifier();
    *v32 = 138543362;
    *&v32[4] = v26;
    v27 = "%{public}@Unable to determine platform, this may limit available IDS services";
    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *v32 = 138543362;
    *&v32[4] = v21;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Starting stream service", v32, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v22 = [(HMDIDSServiceManager *)v19 serviceWithName:@"com.apple.private.alloy.willow.stream"];
LABEL_17:
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v29 = [(HMDIDSServiceManager *)selfCopy initWithNotificationCenter:defaultCenter];

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)serviceWithName:(id)name
{
  nameCopy = name;
  if (self)
  {
    services = self->_services;
  }

  else
  {
    services = 0;
  }

  v6 = services;
  objc_sync_enter(v6);
  if (self)
  {
    v7 = self->_services;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:nameCopy];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D18778]) initWithService:nameCopy];
    if (self)
    {
      v10 = self->_services;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:nameCopy];
  }

  objc_sync_exit(v6);

  return v9;
}

- (HMDIDSService)service
{
  v3 = +[HMDIDSServiceManager sharedIDSServiceName];
  v4 = [(HMDIDSServiceManager *)self serviceWithName:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17, &__block_literal_global_4250);
  }

  v3 = logCategory__hmf_once_v18;

  return v3;
}

uint64_t __35__HMDIDSServiceManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v18 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (HMDIDSServiceManager)sharedManager
{
  v2 = +[HMDRegistry shared];
  idsServiceManager = [v2 idsServiceManager];

  return idsServiceManager;
}

@end