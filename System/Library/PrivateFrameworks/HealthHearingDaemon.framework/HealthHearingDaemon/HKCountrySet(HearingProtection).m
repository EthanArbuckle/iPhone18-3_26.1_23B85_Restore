@interface HKCountrySet(HearingProtection)
+ (id)localAvailabilityForHearingProtection;
+ (void)localAvailabilityForHearingProtection;
@end

@implementation HKCountrySet(HearingProtection)

+ (id)localAvailabilityForHearingProtection
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_2863A9CB0 compatibilityVersion:1 contentVersion:9 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(HearingProtection) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForHearingProtection
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+HearingProtection.m" lineNumber:41 description:@"Local generated country set should never be nil"];
}

@end