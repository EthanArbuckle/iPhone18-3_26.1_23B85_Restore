@interface GenerateDateFormatterDayMonthDateYear
@end

@implementation GenerateDateFormatterDayMonthDateYear

id ___GenerateDateFormatterDayMonthDateYear_block_invoke()
{
  v0 = __dayMonthDateYearFormatter;
  if (!__dayMonthDateYearFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __dayMonthDateYearFormatter;
    __dayMonthDateYearFormatter = v1;

    v3 = __dayMonthDateYearFormatter;
    v4 = CPDateFormatStringForFormatType();
    [v3 setDateFormat:v4];

    v0 = __dayMonthDateYearFormatter;
  }

  return v0;
}

@end