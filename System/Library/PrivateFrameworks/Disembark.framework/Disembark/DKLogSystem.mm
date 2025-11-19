@interface DKLogSystem
@end

@implementation DKLogSystem

uint64_t ___DKLogSystem_block_invoke()
{
  _DKLogSystem_log = os_log_create("com.apple.disembarkui", "general");

  return MEMORY[0x2821F96F8]();
}

@end