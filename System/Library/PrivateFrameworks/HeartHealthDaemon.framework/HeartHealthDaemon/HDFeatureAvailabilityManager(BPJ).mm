@interface HDFeatureAvailabilityManager(BPJ)
+ (id)bloodPressureJournalFeatureAvailabilityManagerWithProfile:()BPJ;
@end

@implementation HDFeatureAvailabilityManager(BPJ)

+ (id)bloodPressureJournalFeatureAvailabilityManagerWithProfile:()BPJ
{
  v3 = *MEMORY[0x277CCBFF8];
  v4 = MEMORY[0x277D107C0];
  v5 = a3;
  v6 = [v4 alloc];
  daemon = [v5 daemon];
  v8 = [v6 initWithDaemon:daemon featureIdentifier:v3];

  bloodPressureJournalFeatureAvailabilityRequirementSet = [MEMORY[0x277CCD420] bloodPressureJournalFeatureAvailabilityRequirementSet];
  localAvailabilityForBloodPressureJournal = [MEMORY[0x277CCD260] localAvailabilityForBloodPressureJournal];
  v11 = objc_alloc(MEMORY[0x277D10728]);
  daemon2 = [v5 daemon];
  v13 = [v11 initWithFeatureIdentifier:v3 defaultCountrySet:localAvailabilityForBloodPressureJournal healthDaemon:daemon2];

  v14 = objc_alloc(MEMORY[0x277D106D8]);
  v15 = [v14 initWithProfile:v5 featureIdentifier:v3 availabilityRequirements:bloodPressureJournalFeatureAvailabilityRequirementSet currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v13 disableAndExpiryProvider:v8 loggingCategory:*MEMORY[0x277CCC2D0]];

  return v15;
}

@end