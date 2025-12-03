@interface HDFeatureAvailabilityManager(CardioFitness)
+ (id)_makeRegionAvailabilityProviderWithProfile:()CardioFitness syncManager:;
+ (id)hdhr_makeCardioFitnessFeatureAvailabilityManagerWithProfile:()CardioFitness;
@end

@implementation HDFeatureAvailabilityManager(CardioFitness)

+ (id)hdhr_makeCardioFitnessFeatureAvailabilityManagerWithProfile:()CardioFitness
{
  v5 = *MEMORY[0x277CCC000];
  v6 = MEMORY[0x277D10728];
  v7 = *MEMORY[0x277CCC2D0];
  v8 = a3;
  v9 = [v6 alloc];
  v10 = HKHRCardioFitnessAllowedCountrySet();
  daemon = [v8 daemon];
  v12 = [v9 initWithFeatureIdentifier:v5 defaultCountrySet:v10 healthDaemon:daemon];

  v13 = objc_alloc(MEMORY[0x277D107D8]);
  v14 = HKHRCardioFitnessLocalFeatureAttributes();
  v15 = [v13 initWithFeatureIdentifier:v5 localFeatureAttributes:v14 localCountrySetAvailabilityProvider:v12];

  [v15 synchronizeLocalProperties];
  v16 = [self _makeRegionAvailabilityProviderWithProfile:v8 syncManager:v15];
  v17 = objc_alloc(MEMORY[0x277D106D8]);
  requirementSet = [MEMORY[0x277D12FA8] requirementSet];
  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"7640DD53-A02B-4C03-AB93-9FA49BCD0AB6"];
  v20 = objc_alloc_init(MEMORY[0x277D106E8]);
  v21 = [v17 initWithProfile:v8 featureIdentifier:v5 availabilityRequirements:requirementSet currentOnboardingVersion:1 pairedDeviceCapability:v19 pairedFeatureAttributesProvider:v15 regionAvailabilityProvider:v16 disableAndExpiryProvider:v20 loggingCategory:v7];

  return v21;
}

+ (id)_makeRegionAvailabilityProviderWithProfile:()CardioFitness syncManager:
{
  v5 = *MEMORY[0x277D2BAA8];
  v6 = MEMORY[0x277CCDD30];
  v7 = a4;
  v8 = a3;
  sharedBehavior = [v6 sharedBehavior];
  if ([sharedBehavior isAppleWatch])
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"7640DD53-A02B-4C03-AB93-9FA49BCD0AB6"];
  }

  v11 = objc_alloc(MEMORY[0x277D105A8]);
  daemon = [v8 daemon];
  v13 = MEMORY[0x277CCC2D0];
  v14 = [v11 initWithDaemon:daemon allowedCountriesDataSource:v7 availableRegionsDevicePropertyName:v5 loggingCategory:*MEMORY[0x277CCC2D0] shouldReturnLocalAvailabilityForNilDeviceRegions:1];

  v15 = [objc_alloc(MEMORY[0x277D10968]) initWithAllowedCountriesDataSource:v14 profile:v8 featureCapability:v10 loggingCategory:*v13];

  return v15;
}

@end