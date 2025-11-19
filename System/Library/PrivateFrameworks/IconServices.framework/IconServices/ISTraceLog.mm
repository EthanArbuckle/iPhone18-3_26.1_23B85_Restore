@interface ISTraceLog
@end

@implementation ISTraceLog

uint64_t ___ISTraceLog_block_invoke()
{
  _ISTraceLog_log = os_log_create("com.apple.iconservices", "trace");

  return MEMORY[0x1EEE66BB8]();
}

@end