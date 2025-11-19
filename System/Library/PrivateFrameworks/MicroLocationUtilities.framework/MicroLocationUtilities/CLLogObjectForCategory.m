@interface CLLogObjectForCategory
@end

@implementation CLLogObjectForCategory

uint64_t ___CLLogObjectForCategory_MicroLocation_Default_block_invoke()
{
  logObject_MicroLocation_Default = os_log_create("com.apple.MicroLocation", "MicroLocation");

  return MEMORY[0x2821F96F8]();
}

@end