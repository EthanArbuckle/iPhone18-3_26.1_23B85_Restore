@interface GenerateDateFormatterHourMinute
@end

@implementation GenerateDateFormatterHourMinute

id ___GenerateDateFormatterHourMinute_block_invoke()
{
  v0 = __hourMinuteFormatter;
  if (!__hourMinuteFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __hourMinuteFormatter;
    __hourMinuteFormatter = v1;

    v3 = __hourMinuteFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"j:mm a" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __hourMinuteFormatter;
  }

  return v0;
}

@end