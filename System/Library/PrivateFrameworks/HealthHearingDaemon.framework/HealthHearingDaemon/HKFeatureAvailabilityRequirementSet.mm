@interface HKFeatureAvailabilityRequirementSet
+ (id)advertisableFeatureRequirementsForIdentifier:(uint64_t)a1;
+ (id)promptTileRequirementsForIdentifier:(uint64_t)a1;
+ (id)settingsUserInteractionEnabledRequirementsForIdentifier:(uint64_t)a1;
+ (id)settingsVisibilityRequirementsForIdentifier:(uint64_t)a1;
+ (id)usageRequirementsForIdentifier:(uint64_t)a1;
@end

@implementation HKFeatureAvailabilityRequirementSet

+ (id)advertisableFeatureRequirementsForIdentifier:(uint64_t)a1
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];
  v4 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:{v2, v3}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];

  v9[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)settingsVisibilityRequirementsForIdentifier:(uint64_t)a1
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];

  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)settingsUserInteractionEnabledRequirementsForIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] usageRequirementsForIdentifier:v2];

  return v3;
}

+ (id)usageRequirementsForIdentifier:(uint64_t)a1
{
  v11[5] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v2];
  v4 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:{v2, v3}];
  v11[1] = v4;
  v5 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v11[2] = v5;
  v6 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];
  v11[3] = v6;
  v7 = [MEMORY[0x277CCD428] hearingFeatureHardwareRequirementsForFeatureIdentifier:v2];

  v11[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)promptTileRequirementsForIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] usageRequirementsForIdentifier:v2];

  v4 = [v3 mutableCopy];
  v5 = [MEMORY[0x277CCD428] userDefaultsKeyIsNotPresent:*MEMORY[0x277CCC150]];
  [v4 addObject:v5];

  return v4;
}

@end