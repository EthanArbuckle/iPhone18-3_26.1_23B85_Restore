@interface GenerateDateFormatterMMDDYYTime
@end

@implementation GenerateDateFormatterMMDDYYTime

id ___GenerateDateFormatterMMDDYYTime_block_invoke()
{
  v0 = __MMDDYYTimeFormatter;
  if (!__MMDDYYTimeFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __MMDDYYTimeFormatter;
    __MMDDYYTimeFormatter = v1;

    v3 = __MMDDYYTimeFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"M/d/yy j:mm a" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __MMDDYYTimeFormatter;
  }

  return v0;
}

@end