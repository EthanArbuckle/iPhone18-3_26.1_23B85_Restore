@interface HKCountrySet(IrregularRhythmNotificationsV2)
+ (id)localAvailabilityForIrregularRhythmNotificationsV2;
+ (void)localAvailabilityForIrregularRhythmNotificationsV2;
@end

@implementation HKCountrySet(IrregularRhythmNotificationsV2)

+ (id)localAvailabilityForIrregularRhythmNotificationsV2
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_283CD34F0 compatibilityVersion:1 contentVersion:20 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(IrregularRhythmNotificationsV2) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForIrregularRhythmNotificationsV2
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+IrregularRhythmNotificationsV2.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end