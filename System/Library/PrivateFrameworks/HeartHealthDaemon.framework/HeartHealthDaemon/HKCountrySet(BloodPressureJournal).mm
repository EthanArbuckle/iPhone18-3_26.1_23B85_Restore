@interface HKCountrySet(BloodPressureJournal)
+ (id)localAvailabilityForBloodPressureJournal;
+ (void)localAvailabilityForBloodPressureJournal;
@end

@implementation HKCountrySet(BloodPressureJournal)

+ (id)localAvailabilityForBloodPressureJournal
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_283CD3448 compatibilityVersion:1 contentVersion:4 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(BloodPressureJournal) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForBloodPressureJournal
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKCountrySet+BloodPressureJournal.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end