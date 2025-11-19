@interface DMTLogOperation
@end

@implementation DMTLogOperation

uint64_t ___DMTLogOperation_block_invoke()
{
  _DMTLogOperation_logObj = os_log_create("com.apple.devicemanagementtools", "Operation");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___DMTLogOperation_block_invoke_0()
{
  _DMTLogOperation_logObj_0 = os_log_create("com.apple.devicemanagementtools", "Operation");

  return MEMORY[0x2821F96F8]();
}

@end