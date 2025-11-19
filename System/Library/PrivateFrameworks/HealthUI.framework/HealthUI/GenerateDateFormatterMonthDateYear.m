@interface GenerateDateFormatterMonthDateYear
@end

@implementation GenerateDateFormatterMonthDateYear

id ___GenerateDateFormatterMonthDateYear_block_invoke()
{
  v0 = __monthDateYearFormatter;
  if (!__monthDateYearFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __monthDateYearFormatter;
    __monthDateYearFormatter = v1;

    v3 = __monthDateYearFormatter;
    v4 = CPDateFormatStringForFormatType();
    [v3 setDateFormat:v4];

    v0 = __monthDateYearFormatter;
  }

  return v0;
}

@end