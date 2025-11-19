@interface Siri
@end

@implementation Siri

void __Siri_log_block_invoke()
{
  v3 = [@"Siri" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = Siri_log__hmf_once_v1;
  Siri_log__hmf_once_v1 = v1;
}

@end