@interface GenerateDateFormatterYear
@end

@implementation GenerateDateFormatterYear

id ___GenerateDateFormatterYear_block_invoke()
{
  v0 = __yearFormatter;
  if (!__yearFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __yearFormatter;
    __yearFormatter = v1;

    v3 = __yearFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"y" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __yearFormatter;
  }

  return v0;
}

@end