@interface ICPersContactOSLogFacility
@end

@implementation ICPersContactOSLogFacility

uint64_t ___ICPersContactOSLogFacility_block_invoke()
{
  _ICPersContactOSLogFacility_logFacility = os_log_create("com.apple.InputContext", "PersonalizationContact");

  return MEMORY[0x2821F96F8]();
}

@end