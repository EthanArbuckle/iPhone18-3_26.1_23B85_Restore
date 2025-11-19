@interface GenerateDateFormatterHour
@end

@implementation GenerateDateFormatterHour

id ___GenerateDateFormatterHour_block_invoke()
{
  v0 = __hourFormatter;
  if (!__hourFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __hourFormatter;
    __hourFormatter = v1;

    v3 = __hourFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"j a" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __hourFormatter;
  }

  return v0;
}

@end