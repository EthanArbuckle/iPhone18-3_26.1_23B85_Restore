@interface HKCountrySet(MenstrualCyclesDeviationDetection)
+ (id)localAvailabilityForMenstrualCyclesDeviationDetection;
+ (void)localAvailabilityForMenstrualCyclesDeviationDetection;
@end

@implementation HKCountrySet(MenstrualCyclesDeviationDetection)

+ (id)localAvailabilityForMenstrualCyclesDeviationDetection
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_283CC33A8 compatibilityVersion:1 contentVersion:6 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(MenstrualCyclesDeviationDetection) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForMenstrualCyclesDeviationDetection
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+MenstrualCyclesDeviationDetection.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end