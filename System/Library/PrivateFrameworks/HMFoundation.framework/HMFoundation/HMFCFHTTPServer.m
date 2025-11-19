@interface HMFCFHTTPServer
@end

@implementation HMFCFHTTPServer

uint64_t __31___HMFCFHTTPServer_logCategory__block_invoke()
{
  qword_280AFC238 = HMFCreateOSLogHandle(@"Networking.HTTP.Server.Internal", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

@end