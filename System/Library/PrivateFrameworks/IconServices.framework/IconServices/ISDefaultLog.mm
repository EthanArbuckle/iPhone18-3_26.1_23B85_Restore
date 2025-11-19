@interface ISDefaultLog
@end

@implementation ISDefaultLog

uint64_t ___ISDefaultLog_block_invoke()
{
  _ISDefaultLog_log = os_log_create("com.apple.iconservices", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end