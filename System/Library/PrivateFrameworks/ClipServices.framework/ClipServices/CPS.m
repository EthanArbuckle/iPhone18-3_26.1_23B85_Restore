@interface CPS
@end

@implementation CPS

uint64_t __CPS_LOG_CHANNEL_PREFIXClipServices_block_invoke()
{
  CPS_LOG_CHANNEL_PREFIXClipServices_log = os_log_create("com.apple.ClipServices", "ClipServices");

  return MEMORY[0x2821F96F8]();
}

@end