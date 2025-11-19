@interface PercentNumberFormatter
@end

@implementation PercentNumberFormatter

uint64_t ___PercentNumberFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _PercentNumberFormatter___formatter;
  _PercentNumberFormatter___formatter = v0;

  [_PercentNumberFormatter___formatter setRoundingMode:2];
  [_PercentNumberFormatter___formatter setNumberStyle:3];
  v2 = _PercentNumberFormatter___formatter;

  return [v2 setMaximumFractionDigits:0];
}

@end