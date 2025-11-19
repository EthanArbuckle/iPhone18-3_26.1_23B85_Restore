@interface WDHourDateFormatterAMPM
@end

@implementation WDHourDateFormatterAMPM

void ___WDHourDateFormatterAMPM_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _WDHourDateFormatterAMPM___dateFormatter;
  _WDHourDateFormatterAMPM___dateFormatter = v0;

  v2 = MEMORY[0x1E696AB78];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v2 dateFormatFromTemplate:@"ha" options:0 locale:v3];

  [_WDHourDateFormatterAMPM___dateFormatter setDateFormat:v4];
}

@end