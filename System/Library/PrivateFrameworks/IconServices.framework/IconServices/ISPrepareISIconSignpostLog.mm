@interface ISPrepareISIconSignpostLog
@end

@implementation ISPrepareISIconSignpostLog

uint64_t ___ISPrepareISIconSignpostLog_block_invoke()
{
  _ISPrepareISIconSignpostLog_log = os_log_create("com.apple.iconservices", "PrepareISIcon");

  return MEMORY[0x1EEE66BB8]();
}

@end