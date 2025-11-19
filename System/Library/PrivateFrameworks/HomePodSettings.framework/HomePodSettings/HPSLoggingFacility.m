@interface HPSLoggingFacility
@end

@implementation HPSLoggingFacility

uint64_t ___HPSLoggingFacility_block_invoke()
{
  _HPSLoggingFacility_oslog = os_log_create("com.apple.HPSettings", "log");

  return MEMORY[0x2821F96F8]();
}

@end