@interface HKCountrySet(MenstrualCyclesWristTemperatureInput)
+ (id)localAvailabilityForMenstrualCyclesWristTemperatureInput;
+ (void)localAvailabilityForMenstrualCyclesWristTemperatureInput;
@end

@implementation HKCountrySet(MenstrualCyclesWristTemperatureInput)

+ (id)localAvailabilityForMenstrualCyclesWristTemperatureInput
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_283CC33D8 compatibilityVersion:1 contentVersion:9 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(MenstrualCyclesWristTemperatureInput) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForMenstrualCyclesWristTemperatureInput
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKCountrySet+MenstrualCyclesWristTemperatureInput.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end