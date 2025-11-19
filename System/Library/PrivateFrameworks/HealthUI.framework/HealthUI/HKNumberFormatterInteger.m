@interface HKNumberFormatterInteger
@end

@implementation HKNumberFormatterInteger

uint64_t ___HKNumberFormatterInteger_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _HKNumberFormatterInteger__formatter;
  _HKNumberFormatterInteger__formatter = v0;

  [_HKNumberFormatterInteger__formatter setNumberStyle:0];
  v2 = _HKNumberFormatterInteger__formatter;

  return [v2 setMaximumFractionDigits:0];
}

@end