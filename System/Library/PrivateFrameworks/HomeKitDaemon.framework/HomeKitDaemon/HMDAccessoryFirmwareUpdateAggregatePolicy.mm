@interface HMDAccessoryFirmwareUpdateAggregatePolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (HMDAccessoryFirmwareUpdateAggregatePolicy)initWithPolicies:(id)policies accessory:(id)accessory workQueue:(id)queue;
- (void)_registerForNotifications;
- (void)configure;
- (void)handlePolicyStatusChange:(id)change;
@end

@implementation HMDAccessoryFirmwareUpdateAggregatePolicy

- (BOOL)evaluate
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  policies = [(HMDAccessoryFirmwareUpdateAggregatePolicy *)self policies];
  v4 = [policies countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(policies);
        }

        if (([*(*(&v18 + 1) + 8 * v7) status] & 1) == 0)
        {
          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            *buf = 138543362;
            v23 = v16;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to NO", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v13);
          result = 0;
          goto LABEL_15;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [policies countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to YES", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  result = 1;
LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handlePolicyStatusChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDAccessoryFirmwareUpdateAggregatePolicy_handlePolicyStatusChange___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

void __70__HMDAccessoryFirmwareUpdateAggregatePolicy_handlePolicyStatusChange___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  if ([v2 conformsToProtocol:&unk_283EC8C00])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 40) policies];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [*(a1 + 32) userInfo];
    v8 = [v7 hmf_BOOLForKey:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedKey"];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 1024;
      v17 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received updated status from sub policy - %d", &v14, 0x12u);
    }

    objc_autoreleasePoolPop(v9);
    [*(a1 + 40) evaluateAndNotify];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  policies = [(HMDAccessoryFirmwareUpdateAggregatePolicy *)self policies];
  v4 = [policies countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(policies);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:self selector:sel_handlePolicyStatusChange_ name:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedNotification" object:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [policies countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  policies = [(HMDAccessoryFirmwareUpdateAggregatePolicy *)self policies];
  v4 = [policies countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(policies);
        }

        [*(*(&v9 + 1) + 8 * v7++) configure];
      }

      while (v5 != v7);
      v5 = [policies countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:[(HMDAccessoryFirmwareUpdateAggregatePolicy *)self evaluate]];
  [(HMDAccessoryFirmwareUpdateAggregatePolicy *)self _registerForNotifications];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryFirmwareUpdateAggregatePolicy)initWithPolicies:(id)policies accessory:(id)accessory workQueue:(id)queue
{
  policiesCopy = policies;
  v13.receiver = self;
  v13.super_class = HMDAccessoryFirmwareUpdateAggregatePolicy;
  v10 = [(HMDAccessoryFirmwareUpdatePolicy *)&v13 initWithAccessory:accessory workQueue:queue];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_policies, policies);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_155591 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_155591, &__block_literal_global_88_155592);
  }

  v3 = logCategory__hmf_once_v5_155593;

  return v3;
}

void __56__HMDAccessoryFirmwareUpdateAggregatePolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_155593;
  logCategory__hmf_once_v5_155593 = v1;
}

@end