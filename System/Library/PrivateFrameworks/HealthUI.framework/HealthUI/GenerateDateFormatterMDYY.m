@interface GenerateDateFormatterMDYY
@end

@implementation GenerateDateFormatterMDYY

id ___GenerateDateFormatterMDYY_block_invoke()
{
  v0 = __MDYYFormatter;
  if (!__MDYYFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __MDYYFormatter;
    __MDYYFormatter = v1;

    v3 = __MDYYFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"M/d/yy" options:0 locale:v5];
    [v3 setDateFormat:v6];

    v0 = __MDYYFormatter;
  }

  return v0;
}

@end