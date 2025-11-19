@interface GenerateDateFormatterMMDDYYYY
@end

@implementation GenerateDateFormatterMMDDYYYY

id ___GenerateDateFormatterMMDDYYYY_block_invoke()
{
  v0 = __MMDDYYYYFormatter;
  if (!__MMDDYYYYFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __MMDDYYYYFormatter;
    __MMDDYYYYFormatter = v1;

    v3 = __MMDDYYYYFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"MM/dd/yyyy" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __MMDDYYYYFormatter;
  }

  return v0;
}

@end