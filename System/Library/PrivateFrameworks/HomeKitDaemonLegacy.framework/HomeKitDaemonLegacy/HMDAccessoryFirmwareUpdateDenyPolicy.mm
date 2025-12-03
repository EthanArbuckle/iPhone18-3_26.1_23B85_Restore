@interface HMDAccessoryFirmwareUpdateDenyPolicy
+ (id)logCategory;
- (void)configure;
@end

@implementation HMDAccessoryFirmwareUpdateDenyPolicy

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_103599 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_103599, &__block_literal_global_110);
  }

  v3 = logCategory__hmf_once_v11_103600;

  return v3;
}

uint64_t __51__HMDAccessoryFirmwareUpdateDenyPolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_103600;
  logCategory__hmf_once_v11_103600 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)configure
{
  v10 = *MEMORY[0x277D85DE8];
  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:0];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deny policy configured", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

@end