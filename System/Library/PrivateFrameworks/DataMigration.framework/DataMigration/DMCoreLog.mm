@interface DMCoreLog
@end

@implementation DMCoreLog

uint64_t ___DMCoreLog_block_invoke()
{
  _DMCoreLog_log = os_log_create("com.apple.migration", "core");

  return MEMORY[0x2821F96F8]();
}

@end