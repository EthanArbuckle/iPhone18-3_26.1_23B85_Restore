@interface HKCountrySet(MenstrualCyclesHeartRateInput)
+ (id)localAvailabilityForMenstrualCyclesHeartRateInput;
+ (void)localAvailabilityForMenstrualCyclesHeartRateInput;
@end

@implementation HKCountrySet(MenstrualCyclesHeartRateInput)

+ (id)localAvailabilityForMenstrualCyclesHeartRateInput
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_283CC33F0 compatibilityVersion:1 contentVersion:7 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(MenstrualCyclesHeartRateInput) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForMenstrualCyclesHeartRateInput
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKCountrySet+MenstrualCyclesHeartRateInput.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end