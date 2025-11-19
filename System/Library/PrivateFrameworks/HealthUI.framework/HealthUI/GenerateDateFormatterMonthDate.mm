@interface GenerateDateFormatterMonthDate
@end

@implementation GenerateDateFormatterMonthDate

id ___GenerateDateFormatterMonthDate_block_invoke()
{
  v0 = __monthDateFormatter;
  if (!__monthDateFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __monthDateFormatter;
    __monthDateFormatter = v1;

    v3 = __monthDateFormatter;
    v4 = CPDateFormatStringForFormatType();
    [v3 setDateFormat:v4];

    v0 = __monthDateFormatter;
  }

  return v0;
}

@end