@interface GenerateDateFormatterLongMonthDateYearShortTime
@end

@implementation GenerateDateFormatterLongMonthDateYearShortTime

uint64_t ___GenerateDateFormatterLongMonthDateYearShortTime_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterLongMonthDateYearShortTime___dateFormatter;
  _GenerateDateFormatterLongMonthDateYearShortTime___dateFormatter = v0;

  [_GenerateDateFormatterLongMonthDateYearShortTime___dateFormatter setDateStyle:3];
  v2 = _GenerateDateFormatterLongMonthDateYearShortTime___dateFormatter;

  return [v2 setTimeStyle:1];
}

@end