@interface HGObjCLoggingFacility
@end

@implementation HGObjCLoggingFacility

uint64_t ___HGObjCLoggingFacility_block_invoke(uint64_t a1)
{
  _HGObjCLoggingFacility_oslog = os_log_create("com.apple.HeadGestures", *(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end