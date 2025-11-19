@interface HKElectrocardiogram
@end

@implementation HKElectrocardiogram

uint64_t __58__HKElectrocardiogram_WDExtensions__wd_commaSeparatedData__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v5 = [v3 stringFromNumber:v4];
  [v2 appendString:v5];

  v6 = *(a1 + 32);

  return [v6 appendString:@"\n"];
}

@end