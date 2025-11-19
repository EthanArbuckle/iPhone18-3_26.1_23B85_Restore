@interface HMDMessageFilter
+ (id)logCategory;
- (HMDMessageFilter)initWithName:(id)a3;
@end

@implementation HMDMessageFilter

- (HMDMessageFilter)initWithName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMDMessageFilter;
  v5 = [(HMDMessageFilter *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"com.apple.msgfltr", v4];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    workQueue = v5->_workQueue;
    v5->_workQueue = v11;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_86162 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_86162, &__block_literal_global_86163);
  }

  v3 = logCategory__hmf_once_v1_86164;

  return v3;
}

uint64_t __31__HMDMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_86164;
  logCategory__hmf_once_v1_86164 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end