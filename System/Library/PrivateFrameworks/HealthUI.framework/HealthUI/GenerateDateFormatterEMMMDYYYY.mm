@interface GenerateDateFormatterEMMMDYYYY
@end

@implementation GenerateDateFormatterEMMMDYYYY

id ___GenerateDateFormatterEMMMDYYYY_block_invoke()
{
  v0 = __EMMMDYYYYFormatter;
  if (!__EMMMDYYYYFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __EMMMDYYYYFormatter;
    __EMMMDYYYYFormatter = v1;

    v3 = __EMMMDYYYYFormatter;
    v4 = MEMORY[0x1E696AB78];
    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = [v4 dateFormatFromTemplate:@"E options:MMM d locale:{yyyy", 0, v5}];
    [v3 setDateFormat:v6];

    v0 = __EMMMDYYYYFormatter;
  }

  return v0;
}

@end