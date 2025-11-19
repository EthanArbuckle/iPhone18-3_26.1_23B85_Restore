@interface GenerateDateFormatterLongMonthDateYear
@end

@implementation GenerateDateFormatterLongMonthDateYear

uint64_t ___GenerateDateFormatterLongMonthDateYear_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterLongMonthDateYear___dateFormatter;
  _GenerateDateFormatterLongMonthDateYear___dateFormatter = v0;

  [_GenerateDateFormatterLongMonthDateYear___dateFormatter setDateStyle:3];
  v2 = _GenerateDateFormatterLongMonthDateYear___dateFormatter;

  return [v2 setTimeStyle:0];
}

@end