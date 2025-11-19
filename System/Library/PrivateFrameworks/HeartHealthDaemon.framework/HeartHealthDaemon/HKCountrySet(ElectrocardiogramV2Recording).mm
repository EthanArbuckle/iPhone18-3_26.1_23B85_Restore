@interface HKCountrySet(ElectrocardiogramV2Recording)
+ (id)localAvailabilityForElectrocardiogramV2Recording;
+ (void)localAvailabilityForElectrocardiogramV2Recording;
@end

@implementation HKCountrySet(ElectrocardiogramV2Recording)

+ (id)localAvailabilityForElectrocardiogramV2Recording
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_283CD3538 compatibilityVersion:1 contentVersion:16 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(ElectrocardiogramV2Recording) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForElectrocardiogramV2Recording
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+ElectrocardiogramV2Recording.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end