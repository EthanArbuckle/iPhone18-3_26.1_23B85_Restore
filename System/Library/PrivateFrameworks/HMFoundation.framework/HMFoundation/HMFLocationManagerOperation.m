@interface HMFLocationManagerOperation
@end

@implementation HMFLocationManagerOperation

uint64_t __44____HMFLocationManagerOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Location.Authorization.Operation", @"com.apple.HMFoundation");
  v1 = qword_280AFC460;
  qword_280AFC460 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end