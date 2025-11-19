@interface CDPSignpostLogSystem
@end

@implementation CDPSignpostLogSystem

uint64_t ___CDPSignpostLogSystem_block_invoke()
{
  _CDPSignpostLogSystem_log = os_log_create("com.apple.cdp", "signpost");

  return MEMORY[0x1EEE66BB8]();
}

@end