@interface IPServerLog
@end

@implementation IPServerLog

uint64_t ___IPServerLog_block_invoke()
{
  _IPServerLog_log = os_log_create("com.apple.installprogress", "server");

  return MEMORY[0x2821F96F8]();
}

@end