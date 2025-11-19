@interface GenerateDateFormatterHourMinuteLong
@end

@implementation GenerateDateFormatterHourMinuteLong

id ___GenerateDateFormatterHourMinuteLong_block_invoke()
{
  v0 = __hourMinuteLongFormatter;
  if (!__hourMinuteLongFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __hourMinuteLongFormatter;
    __hourMinuteLongFormatter = v1;

    v3 = __hourMinuteLongFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"j:mm:ss.SS a" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __hourMinuteLongFormatter;
  }

  return v0;
}

@end