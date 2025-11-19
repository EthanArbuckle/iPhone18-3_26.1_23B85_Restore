@interface HKNumberFormatterIntegerWithPadding
@end

@implementation HKNumberFormatterIntegerWithPadding

uint64_t ___HKNumberFormatterIntegerWithPadding_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _HKNumberFormatterIntegerWithPadding__formatter;
  _HKNumberFormatterIntegerWithPadding__formatter = v0;

  [_HKNumberFormatterIntegerWithPadding__formatter setNumberStyle:0];
  [_HKNumberFormatterIntegerWithPadding__formatter setMaximumFractionDigits:0];
  v2 = _HKNumberFormatterIntegerWithPadding__formatter;

  return [v2 setMinimumIntegerDigits:2];
}

@end