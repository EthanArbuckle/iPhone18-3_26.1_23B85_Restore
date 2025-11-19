@interface GenerateDateFormatterLongDateLongTime
@end

@implementation GenerateDateFormatterLongDateLongTime

uint64_t ___GenerateDateFormatterLongDateLongTime_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterLongDateLongTime___dateFormatter;
  _GenerateDateFormatterLongDateLongTime___dateFormatter = v0;

  [_GenerateDateFormatterLongDateLongTime___dateFormatter setDateStyle:2];
  v2 = _GenerateDateFormatterLongDateLongTime___dateFormatter;

  return [v2 setTimeStyle:2];
}

@end