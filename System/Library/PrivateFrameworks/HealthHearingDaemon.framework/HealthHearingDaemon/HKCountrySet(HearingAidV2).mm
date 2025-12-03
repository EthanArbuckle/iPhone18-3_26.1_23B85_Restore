@interface HKCountrySet(HearingAidV2)
+ (id)localAvailabilityForHearingAidV2;
+ (void)localAvailabilityForHearingAidV2;
@end

@implementation HKCountrySet(HearingAidV2)

+ (id)localAvailabilityForHearingAidV2
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_2863A9C50 compatibilityVersion:1 contentVersion:3 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(HearingAidV2) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForHearingAidV2
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKCountrySet+HearingAidV2.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end