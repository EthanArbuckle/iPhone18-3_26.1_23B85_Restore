@interface GenerateDateFormatterDayHourMinute
@end

@implementation GenerateDateFormatterDayHourMinute

id ___GenerateDateFormatterDayHourMinute_block_invoke()
{
  v0 = __dayHourMinuteFormatter;
  if (!__dayHourMinuteFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __dayHourMinuteFormatter;
    __dayHourMinuteFormatter = v1;

    v3 = __dayHourMinuteFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"ccc j:mm a" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __dayHourMinuteFormatter;
  }

  return v0;
}

@end