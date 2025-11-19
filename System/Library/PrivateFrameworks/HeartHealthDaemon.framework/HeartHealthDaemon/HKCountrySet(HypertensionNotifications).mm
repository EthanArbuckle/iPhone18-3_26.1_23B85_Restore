@interface HKCountrySet(HypertensionNotifications)
+ (id)localAvailabilityForHypertensionNotifications;
+ (void)localAvailabilityForHypertensionNotifications;
@end

@implementation HKCountrySet(HypertensionNotifications)

+ (id)localAvailabilityForHypertensionNotifications
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_283CD3430 compatibilityVersion:1 contentVersion:4 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(HypertensionNotifications) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForHypertensionNotifications
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+HypertensionNotifications.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end