@interface CELogSystem
@end

@implementation CELogSystem

uint64_t ___CELogSystem_block_invoke()
{
  _CELogSystem_log = os_log_create("com.apple.cloudexperience", "log");

  return MEMORY[0x2821F96F8]();
}

@end