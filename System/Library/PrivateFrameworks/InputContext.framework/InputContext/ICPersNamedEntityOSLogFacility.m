@interface ICPersNamedEntityOSLogFacility
@end

@implementation ICPersNamedEntityOSLogFacility

uint64_t ___ICPersNamedEntityOSLogFacility_block_invoke()
{
  _ICPersNamedEntityOSLogFacility_logFacility = os_log_create("com.apple.InputContext", "PersonalizationNamedEntity");

  return MEMORY[0x2821F96F8]();
}

@end