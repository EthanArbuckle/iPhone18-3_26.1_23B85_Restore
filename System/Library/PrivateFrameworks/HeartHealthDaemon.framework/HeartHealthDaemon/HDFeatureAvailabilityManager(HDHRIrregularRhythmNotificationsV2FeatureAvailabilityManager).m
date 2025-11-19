@interface HDFeatureAvailabilityManager(HDHRIrregularRhythmNotificationsV2FeatureAvailabilityManager)
+ (id)hdhr_irregularRhythmNotificationsV2FeatureAvailabilityManagerWithProfile:()HDHRIrregularRhythmNotificationsV2FeatureAvailabilityManager disableAndExpiryProvider:pairedFeaturePropertiesSyncManager:;
@end

@implementation HDFeatureAvailabilityManager(HDHRIrregularRhythmNotificationsV2FeatureAvailabilityManager)

+ (id)hdhr_irregularRhythmNotificationsV2FeatureAvailabilityManagerWithProfile:()HDHRIrregularRhythmNotificationsV2FeatureAvailabilityManager disableAndExpiryProvider:pairedFeaturePropertiesSyncManager:
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  if ([v9 profileType] == 1)
  {
    [v7 synchronizeLocalProperties];
  }

  v10 = objc_alloc(MEMORY[0x277D10968]);
  v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"2B5E630F-55DE-4122-A36B-5F8F77D1363E"];
  v12 = MEMORY[0x277CCC2D8];
  v13 = [v10 initWithAllowedCountriesDataSource:v7 profile:v9 featureCapability:v11 loggingCategory:*MEMORY[0x277CCC2D8]];

  v14 = objc_alloc(MEMORY[0x277CCD420]);
  v26 = *MEMORY[0x277CCBE00];
  v15 = *MEMORY[0x277CCC080];
  v16 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:*MEMORY[0x277CCC080]];
  v25 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v27[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v19 = [v14 initWithRequirementsByContext:v18];

  v20 = objc_alloc(MEMORY[0x277D106D8]);
  v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"2B5E630F-55DE-4122-A36B-5F8F77D1363E"];
  v22 = [v20 initWithProfile:v9 featureIdentifier:v15 availabilityRequirements:v19 currentOnboardingVersion:1 pairedDeviceCapability:v21 pairedFeatureAttributesProvider:v7 regionAvailabilityProvider:v13 disableAndExpiryProvider:v8 loggingCategory:*v12];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end