@interface GenerateDateFormatterMMDDTime
@end

@implementation GenerateDateFormatterMMDDTime

id ___GenerateDateFormatterMMDDTime_block_invoke()
{
  v0 = __MMDDTimeFormatter;
  if (!__MMDDTimeFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __MMDDTimeFormatter;
    __MMDDTimeFormatter = v1;

    v3 = __MMDDTimeFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"M/d j:mm a" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __MMDDTimeFormatter;
  }

  return v0;
}

@end