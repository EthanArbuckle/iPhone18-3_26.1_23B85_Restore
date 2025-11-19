@interface GenerateDateFormatterToday
@end

@implementation GenerateDateFormatterToday

uint64_t ___GenerateDateFormatterToday_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterToday___dateFormatter;
  _GenerateDateFormatterToday___dateFormatter = v0;

  [_GenerateDateFormatterToday___dateFormatter setDateStyle:2];
  [_GenerateDateFormatterToday___dateFormatter setTimeStyle:0];
  v2 = _GenerateDateFormatterToday___dateFormatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

@end