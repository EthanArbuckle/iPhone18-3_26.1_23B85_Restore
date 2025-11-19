@interface NSUnitFuelEfficiency
@end

@implementation NSUnitFuelEfficiency

void __60__NSUnitFuelEfficiency_CAFUnit__millilitersPer100Kilometers__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:0.001];
  v0 = [objc_alloc(MEMORY[0x277CCAE08]) initWithSymbol:@"mL/100km" converter:v2];
  v1 = millilitersPer100Kilometers__millilitersPer100Kilometers;
  millilitersPer100Kilometers__millilitersPer100Kilometers = v0;
}

@end