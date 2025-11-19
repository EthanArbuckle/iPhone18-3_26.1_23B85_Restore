@interface HMDCameraClipUploadVideoSegmentOperation
+ (id)logCategory;
@end

@implementation HMDCameraClipUploadVideoSegmentOperation

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_23030 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_23030, &__block_literal_global_23031);
  }

  v3 = logCategory__hmf_once_v1_23032;

  return v3;
}

uint64_t __55__HMDCameraClipUploadVideoSegmentOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_23032;
  logCategory__hmf_once_v1_23032 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end