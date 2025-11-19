@interface FLLogSystem
@end

@implementation FLLogSystem

uint64_t ___FLLogSystem_block_invoke()
{
  _FLLogSystem_log = os_log_create("com.apple.followup", "core");

  return MEMORY[0x2821F96F8]();
}

@end