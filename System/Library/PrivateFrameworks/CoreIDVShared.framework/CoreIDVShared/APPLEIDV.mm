@interface APPLEIDV
@end

@implementation APPLEIDV

uint64_t __APPLEIDV_LOG_CLIENT_block_invoke()
{
  APPLEIDV_LOG_CLIENT_log = os_log_create("com.apple.CoreIDV", "AppleIDVClient");

  return MEMORY[0x2821F96F8]();
}

@end