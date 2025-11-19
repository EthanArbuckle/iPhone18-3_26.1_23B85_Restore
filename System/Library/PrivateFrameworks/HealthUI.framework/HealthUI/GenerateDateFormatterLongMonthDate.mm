@interface GenerateDateFormatterLongMonthDate
@end

@implementation GenerateDateFormatterLongMonthDate

id ___GenerateDateFormatterLongMonthDate_block_invoke()
{
  v0 = __longMonthDateFormatter;
  if (!__longMonthDateFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __longMonthDateFormatter;
    __longMonthDateFormatter = v1;

    v3 = __longMonthDateFormatter;
    v4 = CPDateFormatStringForFormatType();
    [v3 setDateFormat:v4];

    v0 = __longMonthDateFormatter;
  }

  return v0;
}

@end