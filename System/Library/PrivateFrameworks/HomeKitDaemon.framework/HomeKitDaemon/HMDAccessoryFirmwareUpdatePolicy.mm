@interface HMDAccessoryFirmwareUpdatePolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (HMDAccessoryFirmwareUpdatePolicy)initWithAccessory:(id)accessory workQueue:(id)queue;
- (HMDHAPAccessory)accessory;
- (id)logIdentifier;
- (void)evaluateAndNotify;
@end

@implementation HMDAccessoryFirmwareUpdatePolicy

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (BOOL)evaluate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to YES", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)evaluateAndNotify
{
  evaluate = [(HMDAccessoryFirmwareUpdatePolicy *)self evaluate];
  if (evaluate != [(HMDAccessoryFirmwareUpdatePolicy *)self status])
  {
    [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:evaluate];

    [(HMDAccessoryFirmwareUpdatePolicy *)self notify:evaluate];
  }
}

- (HMDAccessoryFirmwareUpdatePolicy)initWithAccessory:(id)accessory workQueue:(id)queue
{
  accessoryCopy = accessory;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDAccessoryFirmwareUpdatePolicy;
  v8 = [(HMDAccessoryFirmwareUpdatePolicy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, accessoryCopy);
    objc_storeStrong(&v9->_workQueue, queue);
  }

  return v9;
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_155564 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_155564, &__block_literal_global_155565);
  }

  v3 = logCategory__hmf_once_v1_155566;

  return v3;
}

void __47__HMDAccessoryFirmwareUpdatePolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_155566;
  logCategory__hmf_once_v1_155566 = v1;
}

@end