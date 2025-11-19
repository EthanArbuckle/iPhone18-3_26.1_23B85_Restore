@interface IPClientLog
@end

@implementation IPClientLog

uint64_t ___IPClientLog_block_invoke()
{
  _IPClientLog_log = os_log_create("com.apple.installprogress", "client");

  return MEMORY[0x2821F96F8]();
}

@end