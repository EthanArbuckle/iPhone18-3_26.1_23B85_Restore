@interface CRKLogSession
@end

@implementation CRKLogSession

uint64_t ___CRKLogSession_block_invoke()
{
  _CRKLogSession_logObj = os_log_create("com.apple.classroom", "Session");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___CRKLogSession_block_invoke_0()
{
  _CRKLogSession_logObj_0 = os_log_create("com.apple.classroom", "Session");

  return MEMORY[0x2821F96F8]();
}

@end