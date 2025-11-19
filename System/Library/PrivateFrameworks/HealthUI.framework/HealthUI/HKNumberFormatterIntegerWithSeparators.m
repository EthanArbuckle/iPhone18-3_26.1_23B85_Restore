@interface HKNumberFormatterIntegerWithSeparators
@end

@implementation HKNumberFormatterIntegerWithSeparators

uint64_t ___HKNumberFormatterIntegerWithSeparators_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _HKNumberFormatterIntegerWithSeparators__formatter;
  _HKNumberFormatterIntegerWithSeparators__formatter = v0;

  [_HKNumberFormatterIntegerWithSeparators__formatter setNumberStyle:1];
  [_HKNumberFormatterIntegerWithSeparators__formatter setUsesGroupingSeparator:1];
  v2 = _HKNumberFormatterIntegerWithSeparators__formatter;

  return [v2 setMaximumFractionDigits:0];
}

@end