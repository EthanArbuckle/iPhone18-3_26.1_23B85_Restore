@interface GenerateDateFormatterDayHour
@end

@implementation GenerateDateFormatterDayHour

id ___GenerateDateFormatterDayHour_block_invoke()
{
  v0 = __dayHourFormatter;
  if (!__dayHourFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __dayHourFormatter;
    __dayHourFormatter = v1;

    v3 = __dayHourFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"ccc j a" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __dayHourFormatter;
  }

  return v0;
}

@end