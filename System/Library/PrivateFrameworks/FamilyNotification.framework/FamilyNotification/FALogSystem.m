@interface FALogSystem
@end

@implementation FALogSystem

uint64_t ___FALogSystem_block_invoke()
{
  _FALogSystem_log = os_log_create("com.apple.family", "familyrequest");

  return MEMORY[0x2821F96F8]();
}

@end