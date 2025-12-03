@interface HKCountrySet(HearingTest)
+ (id)localAvailabilityForHearingTest;
+ (void)localAvailabilityForHearingTest;
@end

@implementation HKCountrySet(HearingTest)

+ (id)localAvailabilityForHearingTest
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_2863A9CC8 compatibilityVersion:1 contentVersion:13 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(HearingTest) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForHearingTest
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKCountrySet+HearingTest.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end