@interface CPS
@end

@implementation CPS

uint64_t __CPS_LOG_CHANNEL_PREFIXClipUIServices_block_invoke()
{
  CPS_LOG_CHANNEL_PREFIXClipUIServices_log = os_log_create("com.apple.ClipUIServices", "ClipUIServices");

  return MEMORY[0x2821F96F8]();
}

@end