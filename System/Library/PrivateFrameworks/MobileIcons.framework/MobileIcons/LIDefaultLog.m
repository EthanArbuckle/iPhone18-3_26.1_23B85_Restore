@interface LIDefaultLog
@end

@implementation LIDefaultLog

uint64_t ___LIDefaultLog_block_invoke()
{
  _LIDefaultLog_log = os_log_create("com.apple.iconservices.mobileicons", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___LIDefaultLog_block_invoke_0()
{
  _LIDefaultLog_log_0 = os_log_create("com.apple.iconservices.mobileicons", "default");

  return MEMORY[0x2821F96F8]();
}

@end