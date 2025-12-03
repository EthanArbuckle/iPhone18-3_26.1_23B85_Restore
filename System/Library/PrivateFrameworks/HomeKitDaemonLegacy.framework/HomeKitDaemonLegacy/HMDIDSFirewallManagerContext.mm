@interface HMDIDSFirewallManagerContext
+ (id)logCategory;
- (HMDHomeManager)homeManager;
- (HMDIDSFirewallManager)firewallManager;
- (HMDIDSFirewallManagerContext)initWithHomeManager:(id)manager IDSFirewall:(id)firewall notificationCenter:(id)center workQueue:(id)queue;
- (void)addFirewallEntries:(id)entries;
- (void)addFirewallEntries:(id)entries completion:(id)completion;
- (void)configure;
- (void)handleHomeAddedNotification:(id)notification;
- (void)handleHomeRemovedNotification:(id)notification;
- (void)handleHomeUserAddedNotification:(id)notification;
- (void)handleHomeUserRemovedNotification:(id)notification;
- (void)registerForHomeUserNotifications;
- (void)replaceFireWallEntries:(id)entries;
@end

@implementation HMDIDSFirewallManagerContext

- (HMDIDSFirewallManager)firewallManager
{
  WeakRetained = objc_loadWeakRetained(&self->_firewallManager);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)addFirewallEntries:(id)entries completion:(id)completion
{
  completionCopy = completion;
  entriesCopy = entries;
  firewall = [(HMDIDSFirewallManagerContext *)self firewall];
  [firewall donateEntries:entriesCopy withCompletion:completionCopy];
}

- (void)addFirewallEntries:(id)entries
{
  entriesCopy = entries;
  firewall = [(HMDIDSFirewallManagerContext *)self firewall];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDIDSFirewallManagerContext_addFirewallEntries___block_invoke;
  v7[3] = &unk_2797358C8;
  v7[4] = self;
  v8 = entriesCopy;
  v6 = entriesCopy;
  [firewall donateEntries:v6 withCompletion:v7];
}

void __51__HMDIDSFirewallManagerContext_addFirewallEntries___block_invoke(uint64_t a1, void *a2)
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
      v8 = *(a1 + 40);
      v10 = 138543875;
      v11 = v7;
      v12 = 2117;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to add firewall entries: %{sensitive}@ with error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)replaceFireWallEntries:(id)entries
{
  entriesCopy = entries;
  firewall = [(HMDIDSFirewallManagerContext *)self firewall];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDIDSFirewallManagerContext_replaceFireWallEntries___block_invoke;
  v7[3] = &unk_2797358C8;
  v7[4] = self;
  v8 = entriesCopy;
  v6 = entriesCopy;
  [firewall replaceDonatedEntriesWithEntries:v6 withCompletion:v7];
}

void __55__HMDIDSFirewallManagerContext_replaceFireWallEntries___block_invoke(uint64_t a1, void *a2)
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
      v8 = *(a1 + 40);
      v10 = 138543875;
      v11 = v7;
      v12 = 2117;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to replace firewall entries: %{sensitive}@ with error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeUserRemovedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDIDSFirewallManagerContext *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDIDSFirewallManagerContext_handleHomeUserRemovedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __66__HMDIDSFirewallManagerContext_handleHomeUserRemovedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDUserNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543619;
    v13 = v9;
    v14 = 2117;
    v15 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling removed user: %{sensitive}@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [*(a1 + 40) firewallManager];
  [v10 handleDidRemoveUser];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeUserAddedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDIDSFirewallManagerContext *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDIDSFirewallManagerContext_handleHomeUserAddedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDIDSFirewallManagerContext_handleHomeUserAddedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDUserNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling added user: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v5 userID];
  if (v10)
  {
    v11 = [*(a1 + 40) firewallManager];
    [v11 handleDidAddUserWithUserID:v10];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543619;
      v18 = v15;
      v19 = 2117;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@User does not have userID. User: %{sensitive}@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDIDSFirewallManagerContext *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDIDSFirewallManagerContext_handleHomeRemovedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __62__HMDIDSFirewallManagerContext_handleHomeRemovedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDHomeNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification home removed: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [*(a1 + 40) firewallManager];
  [v10 handleDidRemoveHome];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedNotification:(id)notification
{
  workQueue = [(HMDIDSFirewallManagerContext *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDIDSFirewallManagerContext_handleHomeAddedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __60__HMDIDSFirewallManagerContext_handleHomeAddedNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) firewallManager];
  [v1 handleDidAddHome];
}

- (void)registerForHomeUserNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDIDSFirewallManagerContext *)self homeManager];
  v4 = homeManager;
  if (homeManager)
  {
    homes = [homeManager homes];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__HMDIDSFirewallManagerContext_registerForHomeUserNotifications__block_invoke;
    v11[3] = &unk_27972D760;
    v11[4] = self;
    [homes na_each:v11];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Attempted to register for home user notifications for HMDIDSFirewallManagerContext with nil homeManager", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __64__HMDIDSFirewallManagerContext_registerForHomeUserNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 notificationCenter];
  [v5 addObserver:*(a1 + 32) selector:sel_handleHomeUserAddedNotification_ name:@"HMDHomeUserAddedNotification" object:v4];

  v6 = [*(a1 + 32) notificationCenter];
  [v6 addObserver:*(a1 + 32) selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v4];
}

- (void)configure
{
  v13 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDIDSFirewallManagerContext *)self homeManager];
  if (homeManager)
  {
    notificationCenter = [(HMDIDSFirewallManagerContext *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleHomeAddedNotification_ name:@"HMDHomeAddedNotification" object:homeManager];

    notificationCenter2 = [(HMDIDSFirewallManagerContext *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:homeManager];

    [(HMDIDSFirewallManagerContext *)self registerForHomeUserNotifications];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Attempted to configure HMDIDSFirewallManagerContext with nil homeManager", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDIDSFirewallManagerContext)initWithHomeManager:(id)manager IDSFirewall:(id)firewall notificationCenter:(id)center workQueue:(id)queue
{
  managerCopy = manager;
  firewallCopy = firewall;
  centerCopy = center;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = HMDIDSFirewallManagerContext;
  v14 = [(HMDIDSFirewallManagerContext *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_homeManager, managerCopy);
    objc_storeStrong(&v15->_firewall, firewall);
    objc_storeStrong(&v15->_notificationCenter, center);
    objc_storeStrong(&v15->_workQueue, queue);
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_70823 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_70823, &__block_literal_global_70824);
  }

  v3 = logCategory__hmf_once_v12_70825;

  return v3;
}

uint64_t __43__HMDIDSFirewallManagerContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_70825;
  logCategory__hmf_once_v12_70825 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end