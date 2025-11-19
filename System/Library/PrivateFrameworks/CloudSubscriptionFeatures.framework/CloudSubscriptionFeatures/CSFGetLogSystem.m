@interface CSFGetLogSystem
@end

@implementation CSFGetLogSystem

uint64_t ___CSFGetLogSystem_block_invoke()
{
  _CSFGetLogSystem_log = os_log_create("com.apple.CloudSubscriptionFeatures", "objc");

  return MEMORY[0x1EEE66BB8]();
}

@end