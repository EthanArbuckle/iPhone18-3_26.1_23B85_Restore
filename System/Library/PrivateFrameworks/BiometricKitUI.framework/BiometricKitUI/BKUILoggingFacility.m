@interface BKUILoggingFacility
@end

@implementation BKUILoggingFacility

uint64_t ___BKUILoggingFacility_block_invoke()
{
  _BKUILoggingFacility_oslog = os_log_create("com.apple.biometrickitui", "log");

  return MEMORY[0x2821F96F8]();
}

@end