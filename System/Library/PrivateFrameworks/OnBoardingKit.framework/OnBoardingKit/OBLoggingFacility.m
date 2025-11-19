@interface OBLoggingFacility
@end

@implementation OBLoggingFacility

uint64_t ___OBLoggingFacility_block_invoke()
{
  _OBLoggingFacility_oslog = os_log_create("com.apple.onboarding", "log");

  return MEMORY[0x1EEE66BB8]();
}

@end