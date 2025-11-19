@interface MCCLogSystem
@end

@implementation MCCLogSystem

uint64_t ___MCCLogSystem_block_invoke()
{
  _MCCLogSystem_log = os_log_create("com.apple.icloudMCCKit", "core");

  return MEMORY[0x2821F96F8]();
}

@end