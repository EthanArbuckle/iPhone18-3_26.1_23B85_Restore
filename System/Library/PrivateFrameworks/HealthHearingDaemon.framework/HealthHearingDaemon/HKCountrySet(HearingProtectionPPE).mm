@interface HKCountrySet(HearingProtectionPPE)
+ (id)localAvailabilityForHearingProtectionPPE;
+ (void)localAvailabilityForHearingProtectionPPE;
@end

@implementation HKCountrySet(HearingProtectionPPE)

+ (id)localAvailabilityForHearingProtectionPPE
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_2863A9C68 compatibilityVersion:1 contentVersion:1 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(HearingProtectionPPE) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForHearingProtectionPPE
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+HearingProtectionPPE.m" lineNumber:42 description:@"Local generated country set should never be nil"];
}

@end