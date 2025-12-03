@interface HAMenstrualAlgorithmsWristTemperature(HKMenstrualCycles)
+ (id)hkmc_wristTemperatureWithTemperature:()HKMenstrualCycles;
@end

@implementation HAMenstrualAlgorithmsWristTemperature(HKMenstrualCycles)

+ (id)hkmc_wristTemperatureWithTemperature:()HKMenstrualCycles
{
  if (a3)
  {
    v3 = MEMORY[0x277D0FCE0];
    v4 = a3;
    v5 = [v3 alloc];
    quantity = [v4 quantity];
    degreeCelsiusUnit = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
    [quantity doubleValueForUnit:degreeCelsiusUnit];
    v9 = v8;
    watchBundleIdentifier = [v4 watchBundleIdentifier];

    v11 = [v5 initWithTemperature:watchBundleIdentifier forWatchIdentifier:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end