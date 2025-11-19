@interface HKTieredDecimalPrecisionPercentageFormatter
@end

@implementation HKTieredDecimalPrecisionPercentageFormatter

uint64_t __62___HKTieredDecimalPrecisionPercentageFormatter_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_HKTieredDecimalPrecisionPercentageFormatter);
  v1 = sharedInstance_numberFormatter_372;
  sharedInstance_numberFormatter_372 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end