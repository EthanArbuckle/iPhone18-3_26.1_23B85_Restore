@interface HMDCameraClipUploadVideoSegmentOperation
+ (id)logCategory;
@end

@implementation HMDCameraClipUploadVideoSegmentOperation

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_32336 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_32336, &__block_literal_global_32337);
  }

  v3 = logCategory__hmf_once_v1_32338;

  return v3;
}

void __55__HMDCameraClipUploadVideoSegmentOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_32338;
  logCategory__hmf_once_v1_32338 = v1;
}

@end