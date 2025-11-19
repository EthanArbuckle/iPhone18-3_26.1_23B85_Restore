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
  v3 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:a1];

  return v4;
}

+ (id)hkmc_quantityWithDegreesFahrenheit:()HKMenstrualCycles
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [MEMORY[0x277CCDAB0] degreeFahrenheitUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:a1];

  return v4;
}

- (double)hkmc_degreesCelsius
{
  v2 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  [a1 doubleValueForUnit:v2];
  v4 = v3;

  return v4;
}

- (double)hkmc_degreesFahrenheit
{
  v2 = [MEMORY[0x277CCDAB0] degreeFahrenheitUnit];
  [a1 doubleValueForUnit:v2];
  v4 = v3;

  return v4;
}

@end