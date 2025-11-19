@interface CompositeSettings
@end

@implementation CompositeSettings

void __CompositeSettings_Database_log_block_invoke()
{
  v3 = [@"CompositeSettings_Database" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = CompositeSettings_Database_log__hmf_once_v1;
  CompositeSettings_Database_log__hmf_once_v1 = v1;
}

@end