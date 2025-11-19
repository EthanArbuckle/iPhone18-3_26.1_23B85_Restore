@interface CESignpostLogSystem
@end

@implementation CESignpostLogSystem

uint64_t ___CESignpostLogSystem_block_invoke()
{
  _CESignpostLogSystem_log = os_log_create("com.apple.cloudexperience", "core.signpost");

  return MEMORY[0x2821F96F8]();
}

@end