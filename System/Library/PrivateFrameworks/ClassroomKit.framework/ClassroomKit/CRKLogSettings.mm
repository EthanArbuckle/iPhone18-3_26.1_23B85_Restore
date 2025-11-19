@interface CRKLogSettings
@end

@implementation CRKLogSettings

uint64_t ___CRKLogSettings_block_invoke()
{
  _CRKLogSettings_logObj = os_log_create("com.apple.classroom", "Settings");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___CRKLogSettings_block_invoke_0()
{
  _CRKLogSettings_logObj_0 = os_log_create("com.apple.classroom", "Settings");

  return MEMORY[0x2821F96F8]();
}

@end