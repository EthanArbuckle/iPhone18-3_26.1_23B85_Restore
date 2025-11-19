@interface GenerateDateFormatterLongDateShortTime
@end

@implementation GenerateDateFormatterLongDateShortTime

uint64_t ___GenerateDateFormatterLongDateShortTime_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterLongDateShortTime___dateFormatter;
  _GenerateDateFormatterLongDateShortTime___dateFormatter = v0;

  [_GenerateDateFormatterLongDateShortTime___dateFormatter setDateStyle:2];
  v2 = _GenerateDateFormatterLongDateShortTime___dateFormatter;

  return [v2 setTimeStyle:1];
}

@end