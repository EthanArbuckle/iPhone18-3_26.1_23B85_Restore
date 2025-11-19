@interface GenerateDateFormatterLongDayMonthDateYear
@end

@implementation GenerateDateFormatterLongDayMonthDateYear

id ___GenerateDateFormatterLongDayMonthDateYear_block_invoke()
{
  v0 = __longDayMonthDateYearFormatter;
  if (!__longDayMonthDateYearFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __longDayMonthDateYearFormatter;
    __longDayMonthDateYearFormatter = v1;

    v3 = __longDayMonthDateYearFormatter;
    v4 = CPDateFormatStringForFormatType();
    [v3 setDateFormat:v4];

    v0 = __longDayMonthDateYearFormatter;
  }

  return v0;
}

@end