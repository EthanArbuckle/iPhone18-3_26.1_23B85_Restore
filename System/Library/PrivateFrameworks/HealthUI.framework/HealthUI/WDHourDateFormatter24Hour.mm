@interface WDHourDateFormatter24Hour
@end

@implementation WDHourDateFormatter24Hour

uint64_t ___WDHourDateFormatter24Hour_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _WDHourDateFormatter24Hour___dateFormatter;
  _WDHourDateFormatter24Hour___dateFormatter = v0;

  v2 = _WDHourDateFormatter24Hour___dateFormatter;

  return [v2 setDateFormat:@"H"];
}

@end