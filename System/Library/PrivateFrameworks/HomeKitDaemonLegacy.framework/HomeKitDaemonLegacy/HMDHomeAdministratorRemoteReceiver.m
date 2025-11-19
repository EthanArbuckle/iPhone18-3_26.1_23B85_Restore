@interface HMDHomeAdministratorRemoteReceiver
@end

@implementation HMDHomeAdministratorRemoteReceiver

uint64_t __68____HMDHomeAdministratorRemoteReceiver_registerForMessage_policies___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __68____HMDHomeAdministratorRemoteReceiver_registerForMessage_policies___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __51____HMDHomeAdministratorRemoteReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v23_169745;
  logCategory__hmf_once_v23_169745 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end