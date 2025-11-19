@interface ICProactiveQuickTypeOSLogFacility
@end

@implementation ICProactiveQuickTypeOSLogFacility

uint64_t ___ICProactiveQuickTypeOSLogFacility_block_invoke()
{
  _ICProactiveQuickTypeOSLogFacility_logFacility = os_log_create("com.apple.InputContext", "ProactiveQuickType");

  return MEMORY[0x2821F96F8]();
}

@end