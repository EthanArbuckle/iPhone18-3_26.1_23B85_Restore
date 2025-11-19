@interface CDPLogSystem
@end

@implementation CDPLogSystem

uint64_t ___CDPLogSystem_block_invoke()
{
  _CDPLogSystem_log = os_log_create("com.apple.cdp", "core");

  return MEMORY[0x1EEE66BB8]();
}

@end