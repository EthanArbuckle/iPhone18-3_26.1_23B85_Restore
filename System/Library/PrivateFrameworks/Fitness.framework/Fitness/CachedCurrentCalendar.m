@interface CachedCurrentCalendar
@end

@implementation CachedCurrentCalendar

uint64_t ___CachedCurrentCalendar_block_invoke()
{
  _CachedCurrentCalendar___calendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];

  return MEMORY[0x2821F96F8]();
}

@end