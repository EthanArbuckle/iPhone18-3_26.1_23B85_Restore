@interface HMDIDSFirewallManager
+ (id)logCategory;
- (HMDIDSFirewallManager)initWithContext:(id)a3;
- (NSArray)userIDs;
- (void)addFireWallEntryForUserIDs:(id)a3;
- (void)handleDidAddHome;
- (void)handleDidAddUserWithUserID:(id)a3;
- (void)handleDidAddUserWithUserID:(id)a3 completion:(id)a4;
- (void)handleDidRemoveHome;
- (void)handleDidRemoveUser;
- (void)replaceFireWallEntriesWithUserIDs:(id)a3;
- (void)start;
@end

@implementation HMDIDSFirewallManager

- (void)handleDidRemoveUser
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDIDSFirewallManager *)self context];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling did remove user", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDIDSFirewallManager *)v6 userIDs];
  [(HMDIDSFirewallManager *)v6 replaceFireWallEntriesWithUserIDs:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleDidAddUserWithUserID:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDIDSFirewallManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543619;
    v20 = v13;
    v21 = 2117;
    v22 = v6;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Adding firewall entry for userID: %{sensitive}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDIDSFirewallManager *)v11 context];
  v18 = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v16 = [HMDIDSFirewallManager firewallEntriesForUserIDs:v15];
  [v14 addFirewallEntries:v16 completion:v7];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleDidAddUserWithUserID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSFirewallManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543619;
    v15 = v10;
    v16 = 2117;
    v17 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling did add user with userID: %{sensitive}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = v4;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [(HMDIDSFirewallManager *)v8 addFireWallEntryForUserIDs:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleDidRemoveHome
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDIDSFirewallManager *)self context];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling did remove home", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDIDSFirewallManager *)v6 userIDs];
  [(HMDIDSFirewallManager *)v6 replaceFireWallEntriesWithUserIDs:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleDidAddHome
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDIDSFirewallManager *)self context];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling did add home", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDIDSFirewallManager *)v6 context];
  [v9 registerForHomeUserNotifications];

  v10 = [(HMDIDSFirewallManager *)v6 userIDs];
  [(HMDIDSFirewallManager *)v6 replaceFireWallEntriesWithUserIDs:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addFireWallEntryForUserIDs:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSFirewallManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543619;
    v15 = v10;
    v16 = 2117;
    v17 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding firewall entries for userIDs: %{sensitive}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDIDSFirewallManager *)v8 context];
  v12 = [HMDIDSFirewallManager firewallEntriesForUserIDs:v4];
  [v11 addFirewallEntries:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)replaceFireWallEntriesWithUserIDs:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSFirewallManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543619;
    v15 = v10;
    v16 = 2117;
    v17 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Replacing firewall entries with userIDs: %{sensitive}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDIDSFirewallManager *)v8 context];
  v12 = [HMDIDSFirewallManager firewallEntriesForUserIDs:v4];
  [v11 replaceFireWallEntries:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDIDSFirewallManager *)self context];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting HMDIDSFirewallManager", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDIDSFirewallManager *)v6 context];
  [v9 configure];

  v10 = [(HMDIDSFirewallManager *)v6 userIDs];
  [(HMDIDSFirewallManager *)v6 replaceFireWallEntriesWithUserIDs:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (NSArray)userIDs
{
  v2 = [(HMDIDSFirewallManager *)self context];
  v3 = [v2 homeManager];
  v4 = [v3 homes];
  v5 = v4;
  v6 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = MEMORY[0x277CBEB98];
  v9 = [v7 na_flatMap:&__block_literal_global_109_157594];

  v10 = [v8 setWithArray:v9];
  v11 = [v10 allObjects];

  return v11;
}

id __32__HMDIDSFirewallManager_userIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 usersIncludingPendingUsers:1];
  v3 = [v2 na_map:&__block_literal_global_112_157597];

  return v3;
}

- (HMDIDSFirewallManager)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDIDSFirewallManager;
  v6 = [(HMDIDSFirewallManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    [(HMDIDSFirewallManagerContext *)v7->_context setFirewallManager:v7];
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t21_157603 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21_157603, &__block_literal_global_116_157604);
  }

  v3 = logCategory__hmf_once_v22_157605;

  return v3;
}

void __36__HMDIDSFirewallManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v22_157605;
  logCategory__hmf_once_v22_157605 = v1;
}

id __51__HMDIDSFirewallManager_firewallEntriesForUserIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277D18A48] URIWithUnprefixedURI:a2];
  v3 = [objc_alloc(MEMORY[0x277D18718]) initWithURI:v2];

  return v3;
}

@end