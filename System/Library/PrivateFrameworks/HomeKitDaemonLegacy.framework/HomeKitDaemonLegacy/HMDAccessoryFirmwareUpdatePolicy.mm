@interface HMDAccessoryFirmwareUpdatePolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (HMDAccessoryFirmwareUpdatePolicy)initWithAccessory:(id)a3 workQueue:(id)a4;
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to YES", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)evaluateAndNotify
{
  v3 = [(HMDAccessoryFirmwareUpdatePolicy *)self evaluate];
  if (v3 != [(HMDAccessoryFirmwareUpdatePolicy *)self status])
  {
    [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:v3];

    [(HMDAccessoryFirmwareUpdatePolicy *)self notify:v3];
  }
}

- (HMDAccessoryFirmwareUpdatePolicy)initWithAccessory:(id)a3 workQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDAccessoryFirmwareUpdatePolicy;
  v8 = [(HMDAccessoryFirmwareUpdatePolicy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, v6);
    objc_storeStrong(&v9->_workQueue, a4);
  }

  return v9;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v3 = [v2 logIdentifier];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_103563 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_103563, &__block_literal_global_103564);
  }

  v3 = logCategory__hmf_once_v1_103565;

  return v3;
}

uint64_t __47__HMDAccessoryFirmwareUpdatePolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_103565;
  logCategory__hmf_once_v1_103565 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end