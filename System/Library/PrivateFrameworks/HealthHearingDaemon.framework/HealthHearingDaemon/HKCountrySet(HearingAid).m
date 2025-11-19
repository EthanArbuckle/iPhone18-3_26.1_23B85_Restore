@interface HKCountrySet(HearingAid)
+ (id)localAvailabilityForHearingAid;
+ (void)localAvailabilityForHearingAid;
@end

@implementation HKCountrySet(HearingAid)

+ (id)localAvailabilityForHearingAid
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_2863A9CE0 compatibilityVersion:1 contentVersion:11 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(HearingAid) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForHearingAid
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+HearingAid.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end