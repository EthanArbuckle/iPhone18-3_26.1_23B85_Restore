@interface HKTieredDecimalPrecisionNumberFormatter
@end

@implementation HKTieredDecimalPrecisionNumberFormatter

uint64_t __58___HKTieredDecimalPrecisionNumberFormatter_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_HKTieredDecimalPrecisionNumberFormatter);
  v1 = sharedInstance_numberFormatter;
  sharedInstance_numberFormatter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end