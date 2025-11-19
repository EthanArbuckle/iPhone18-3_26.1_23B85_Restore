@interface NDOLogSystem
@end

@implementation NDOLogSystem

uint64_t ___NDOLogSystem_block_invoke()
{
  _NDOLogSystem_log = os_log_create("com.apple.NewDeviceOutreach", "core");

  return MEMORY[0x2821F96F8]();
}

@end