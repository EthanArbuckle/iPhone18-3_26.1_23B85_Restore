@interface HKQuantity(HKMenstrualCycles)
+ (id)hkmc_quantityWithDegreesCelsius:()HKMenstrualCycles;
+ (id)hkmc_quantityWithDegreesFahrenheit:()HKMenstrualCycles;
- (double)hkmc_degreesCelsius;
- (double)hkmc_degreesFahrenheit;
@end

@implementation HKQuantity(HKMenstrualCycles)

+ (id)hkmc_quantityWithDegreesCelsius:()HKMenstrualCycles
{
  v2 = MEMORY[0x277CCD7E8];
  degreeCelsiusUnit = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  v4 = [v2 quantityWithUnit:degreeCelsiusUnit doubleValue:self];

  return v4;
}

+ (id)hkmc_quantityWithDegreesFahrenheit:()HKMenstrualCycles
{
  v2 = MEMORY[0x277CCD7E8];
  degreeFahrenheitUnit = [MEMORY[0x277CCDAB0] degreeFahrenheitUnit];
  v4 = [v2 quantityWithUnit:degreeFahrenheitUnit doubleValue:self];

  return v4;
}

- (double)hkmc_degreesCelsius
{
  degreeCelsiusUnit = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  [self doubleValueForUnit:degreeCelsiusUnit];
  v4 = v3;

  return v4;
}

- (double)hkmc_degreesFahrenheit
{
  degreeFahrenheitUnit = [MEMORY[0x277CCDAB0] degreeFahrenheitUnit];
  [self doubleValueForUnit:degreeFahrenheitUnit];
  v4 = v3;

  return v4;
}

@end