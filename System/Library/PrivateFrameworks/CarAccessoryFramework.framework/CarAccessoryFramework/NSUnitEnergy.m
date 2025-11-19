@interface NSUnitEnergy
@end

@implementation NSUnitEnergy

void __34__NSUnitEnergy_CAFUnit__wattHours__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:3600.0];
  v0 = [objc_alloc(MEMORY[0x277CCADF8]) initWithSymbol:@"Wh" converter:v2];
  v1 = wattHours__wattHours;
  wattHours__wattHours = v0;
}

void __39__NSUnitEnergy_CAFUnit__milliwattHours__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:3600000.0];
  v0 = [objc_alloc(MEMORY[0x277CCADF8]) initWithSymbol:@"mWh" converter:v2];
  v1 = milliwattHours__wattHours;
  milliwattHours__wattHours = v0;
}

@end