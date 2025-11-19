@interface GenerateDateFormatterMonthYear
@end

@implementation GenerateDateFormatterMonthYear

id ___GenerateDateFormatterMonthYear_block_invoke()
{
  v0 = __monthYearFormatter;
  if (!__monthYearFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __monthYearFormatter;
    __monthYearFormatter = v1;

    v3 = __monthYearFormatter;
    v4 = CPDateFormatStringForFormatType();
    [v3 setDateFormat:v4];

    v0 = __monthYearFormatter;
  }

  return v0;
}

@end