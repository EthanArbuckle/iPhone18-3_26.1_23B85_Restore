@interface FLLogSystemQuery
@end

@implementation FLLogSystemQuery

uint64_t ___FLLogSystemQuery_block_invoke()
{
  _FLLogSystemQuery_log = os_log_create("com.apple.followup", "query");

  return MEMORY[0x2821F96F8]();
}

@end