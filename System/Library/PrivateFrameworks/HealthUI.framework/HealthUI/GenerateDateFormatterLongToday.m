@interface GenerateDateFormatterLongToday
@end

@implementation GenerateDateFormatterLongToday

uint64_t ___GenerateDateFormatterLongToday_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterLongToday___dateFormatter;
  _GenerateDateFormatterLongToday___dateFormatter = v0;

  [_GenerateDateFormatterLongToday___dateFormatter setDateStyle:4];
  [_GenerateDateFormatterLongToday___dateFormatter setTimeStyle:0];
  v2 = _GenerateDateFormatterLongToday___dateFormatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

@end