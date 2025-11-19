@interface GenerateDateFormatterMonthDateYearTime
@end

@implementation GenerateDateFormatterMonthDateYearTime

id ___GenerateDateFormatterMonthDateYearTime_block_invoke()
{
  v0 = __monthDateYearTimeFormatter;
  if (!__monthDateYearTimeFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __monthDateYearTimeFormatter;
    __monthDateYearTimeFormatter = v1;

    v3 = __monthDateYearTimeFormatter;
    v4 = CPDateFormatStringForFormatType();
    [v3 setDateFormat:v4];

    v0 = __monthDateYearTimeFormatter;
  }

  return v0;
}

@end