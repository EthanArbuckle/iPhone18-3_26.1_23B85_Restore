@interface FASignpostLogSystem
@end

@implementation FASignpostLogSystem

uint64_t ___FASignpostLogSystem_block_invoke()
{
  _FASignpostLogSystem_log = os_log_create("com.apple.family", "signpost");

  return MEMORY[0x2821F96F8]();
}

@end