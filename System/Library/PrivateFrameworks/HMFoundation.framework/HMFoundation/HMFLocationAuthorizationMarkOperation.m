@interface HMFLocationAuthorizationMarkOperation
@end

@implementation HMFLocationAuthorizationMarkOperation

uint64_t __54____HMFLocationAuthorizationMarkOperation_logCategory__block_invoke()
{
  qword_280AFC548 = HMFCreateOSLogHandle(@"Location.Authorization.Mark", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

@end