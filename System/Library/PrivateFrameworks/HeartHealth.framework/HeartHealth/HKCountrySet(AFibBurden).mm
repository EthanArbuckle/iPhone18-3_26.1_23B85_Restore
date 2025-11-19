@interface HKCountrySet(AFibBurden)
+ (id)localAvailabilityForAFibBurden;
+ (void)localAvailabilityForAFibBurden;
@end

@implementation HKCountrySet(AFibBurden)

+ (id)localAvailabilityForAFibBurden
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_283BE0E58 compatibilityVersion:1 contentVersion:14 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(AFibBurden) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForAFibBurden
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+AFibBurden.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end