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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKCountrySet+HypertensionNotifications.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end