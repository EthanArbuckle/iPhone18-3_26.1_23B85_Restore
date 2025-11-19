@interface HMMTRFabricVoidV0DataStore
+ (id)logCategory;
@end

@implementation HMMTRFabricVoidV0DataStore

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_5596 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_5596, &__block_literal_global_5597);
  }

  v3 = logCategory__hmf_once_v1_5598;

  return v3;
}

uint64_t __41__HMMTRFabricVoidV0DataStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v1_5598 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end