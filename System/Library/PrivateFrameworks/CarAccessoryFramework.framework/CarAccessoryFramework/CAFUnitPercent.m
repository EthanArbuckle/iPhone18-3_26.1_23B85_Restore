@interface CAFUnitPercent
+ (CAFUnitPercent)percent;
@end

@implementation CAFUnitPercent

+ (CAFUnitPercent)percent
{
  if (percent_onceToken_171 != -1)
  {
    +[CAFUnitPercent percent];
  }

  v3 = percent__percent;

  return v3;
}

void __25__CAFUnitPercent_percent__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v0 = [(NSDimension *)[CAFUnitPercent alloc] initWithSymbol:@"%" converter:v2];
  v1 = percent__percent;
  percent__percent = v0;
}

@end