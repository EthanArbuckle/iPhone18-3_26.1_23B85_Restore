@interface FALogSystem
@end

@implementation FALogSystem

uint64_t ___FALogSystem_block_invoke()
{
  _FALogSystem_log = os_log_create("com.apple.family", "familycircle");

  return MEMORY[0x1EEE66BB8]();
}

@end