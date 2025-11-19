@interface IPDefaultLog
@end

@implementation IPDefaultLog

uint64_t ___IPDefaultLog_block_invoke()
{
  _IPDefaultLog_log = os_log_create("com.apple.installprogress", "default");

  return MEMORY[0x2821F96F8]();
}

@end