@interface HMDMessageFilter
+ (id)logCategory;
- (HMDMessageFilter)initWithName:(id)name;
@end

@implementation HMDMessageFilter

- (HMDMessageFilter)initWithName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = HMDMessageFilter;
  v5 = [(HMDMessageFilter *)&v14 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"com.apple.msgfltr", nameCopy];
    uTF8String = [nameCopy UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    workQueue = v5->_workQueue;
    v5->_workQueue = v11;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_131691 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_131691, &__block_literal_global_131692);
  }

  v3 = logCategory__hmf_once_v1_131693;

  return v3;
}

void __31__HMDMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_131693;
  logCategory__hmf_once_v1_131693 = v1;
}

@end