@interface GenerateDateFormatterShortMonthYear
@end

@implementation GenerateDateFormatterShortMonthYear

id ___GenerateDateFormatterShortMonthYear_block_invoke()
{
  v0 = __shortMonthYearFormatter;
  if (!__shortMonthYearFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __shortMonthYearFormatter;
    __shortMonthYearFormatter = v1;

    v3 = __shortMonthYearFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"MMM y" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __shortMonthYearFormatter;
  }

  return v0;
}

@end