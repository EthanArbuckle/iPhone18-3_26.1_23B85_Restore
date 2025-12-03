@interface HMDIDSFirewallManager
+ (id)logCategory;
- (HMDIDSFirewallManager)initWithContext:(id)context;
- (NSArray)userIDs;
- (void)addFireWallEntryForUserIDs:(id)ds;
- (void)handleDidAddHome;
- (void)handleDidAddUserWithUserID:(id)d;
- (void)handleDidAddUserWithUserID:(id)d completion:(id)completion;
- (void)handleDidRemoveHome;
- (void)handleDidRemoveUser;
- (void)replaceFireWallEntriesWithUserIDs:(id)ds;
- (void)start;
@end

@implementation HMDIDSFirewallManager

- (void)handleDidRemoveUser
{
  v13 = *MEMORY[0x277D85DE8];
  context = [(HMDIDSFirewallManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling did remove user", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  userIDs = [(HMDIDSFirewallManager *)selfCopy userIDs];
  [(HMDIDSFirewallManager *)selfCopy replaceFireWallEntriesWithUserIDs:userIDs];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleDidAddUserWithUserID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  context = [(HMDIDSFirewallManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543619;
    v20 = v13;
    v21 = 2117;
    v22 = dCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Adding firewall entry for userID: %{sensitive}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDIDSFirewallManager *)selfCopy context];
  v18 = dCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v16 = [HMDIDSFirewallManager firewallEntriesForUserIDs:v15];
  [context2 addFirewallEntries:v16 completion:completionCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleDidAddUserWithUserID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  context = [(HMDIDSFirewallManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543619;
    v15 = v10;
    v16 = 2117;
    v17 = dCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling did add user with userID: %{sensitive}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = dCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [(HMDIDSFirewallManager *)selfCopy addFireWallEntryForUserIDs:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleDidRemoveHome
{
  v13 = *MEMORY[0x277D85DE8];
  context = [(HMDIDSFirewallManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling did remove home", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  userIDs = [(HMDIDSFirewallManager *)selfCopy userIDs];
  [(HMDIDSFirewallManager *)selfCopy replaceFireWallEntriesWithUserIDs:userIDs];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleDidAddHome
{
  v14 = *MEMORY[0x277D85DE8];
  context = [(HMDIDSFirewallManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling did add home", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context2 = [(HMDIDSFirewallManager *)selfCopy context];
  [context2 registerForHomeUserNotifications];

  userIDs = [(HMDIDSFirewallManager *)selfCopy userIDs];
  [(HMDIDSFirewallManager *)selfCopy replaceFireWallEntriesWithUserIDs:userIDs];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addFireWallEntryForUserIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  context = [(HMDIDSFirewallManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543619;
    v15 = v10;
    v16 = 2117;
    v17 = dsCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding firewall entries for userIDs: %{sensitive}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context2 = [(HMDIDSFirewallManager *)selfCopy context];
  v12 = [HMDIDSFirewallManager firewallEntriesForUserIDs:dsCopy];
  [context2 addFirewallEntries:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)replaceFireWallEntriesWithUserIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  context = [(HMDIDSFirewallManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543619;
    v15 = v10;
    v16 = 2117;
    v17 = dsCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Replacing firewall entries with userIDs: %{sensitive}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context2 = [(HMDIDSFirewallManager *)selfCopy context];
  v12 = [HMDIDSFirewallManager firewallEntriesForUserIDs:dsCopy];
  [context2 replaceFireWallEntries:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  context = [(HMDIDSFirewallManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting HMDIDSFirewallManager", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context2 = [(HMDIDSFirewallManager *)selfCopy context];
  [context2 configure];

  userIDs = [(HMDIDSFirewallManager *)selfCopy userIDs];
  [(HMDIDSFirewallManager *)selfCopy replaceFireWallEntriesWithUserIDs:userIDs];

  v11 = *MEMORY[0x277D85DE8];
}

- (NSArray)userIDs
{
  context = [(HMDIDSFirewallManager *)self context];
  homeManager = [context homeManager];
  homes = [homeManager homes];
  v5 = homes;
  v6 = MEMORY[0x277CBEBF8];
  if (homes)
  {
    v6 = homes;
  }

  v7 = v6;

  v8 = MEMORY[0x277CBEB98];
  v9 = [v7 na_flatMap:&__block_literal_global_109_70861];

  v10 = [v8 setWithArray:v9];
  allObjects = [v10 allObjects];

  return allObjects;
}

id __32__HMDIDSFirewallManager_userIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 users];
  v3 = [v2 na_map:&__block_literal_global_112_70864];

  return v3;
}

- (HMDIDSFirewallManager)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HMDIDSFirewallManager;
  v6 = [(HMDIDSFirewallManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    [(HMDIDSFirewallManagerContext *)v7->_context setFirewallManager:v7];
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t21_70869 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21_70869, &__block_literal_global_116_70870);
  }

  v3 = logCategory__hmf_once_v22_70871;

  return v3;
}

uint64_t __36__HMDIDSFirewallManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v22_70871;
  logCategory__hmf_once_v22_70871 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

id __51__HMDIDSFirewallManager_firewallEntriesForUserIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277D18A48] URIWithUnprefixedURI:a2];
  v3 = [objc_alloc(MEMORY[0x277D18718]) initWithURI:v2];

  return v3;
}

@end