@interface CLLocation
@end

@implementation CLLocation

uint64_t __36__CLLocation_HMFObject__logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_189041;
  logCategory__hmf_once_v1_189041 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end