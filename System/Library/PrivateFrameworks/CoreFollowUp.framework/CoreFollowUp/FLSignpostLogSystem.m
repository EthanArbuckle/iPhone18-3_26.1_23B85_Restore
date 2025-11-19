@interface FLSignpostLogSystem
@end

@implementation FLSignpostLogSystem

uint64_t ___FLSignpostLogSystem_block_invoke()
{
  _FLSignpostLogSystem_log = os_log_create("com.apple.followup", "signpost");

  return MEMORY[0x2821F96F8]();
}

@end