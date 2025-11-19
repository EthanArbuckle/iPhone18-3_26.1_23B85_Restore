@interface CMSILogingFacility
@end

@implementation CMSILogingFacility

uint64_t ___CMSILogingFacility_block_invoke()
{
  _CMSILogingFacility_oslog = os_log_create("com.apple.agora.interface", "log");

  return MEMORY[0x2821F96F8]();
}

@end