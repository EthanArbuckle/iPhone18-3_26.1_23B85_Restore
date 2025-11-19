@interface HKFeatureAvailabilityRequirementSet(Hearing)
+ (id)hearingAidRequirementSet;
+ (id)hearingAidV2RequirementSet;
+ (id)hearingProtectionPPERequirementSet;
+ (id)hearingProtectionRequirementSet;
+ (id)hearingTestRequirementSet;
@end

@implementation HKFeatureAvailabilityRequirementSet(Hearing)

+ (id)hearingAidRequirementSet
{
  v15[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC038];
  v1 = objc_alloc(MEMORY[0x277CCD420]);
  v14[0] = *MEMORY[0x277CCBE00];
  v2 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v0];
  v13[0] = v2;
  v3 = [MEMORY[0x277CCD428] hearingFeatureHardwareRequirementsForFeatureIdentifier:v0];
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v15[0] = v4;
  v14[1] = *MEMORY[0x277CCBDF0];
  v5 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] advertisableFeatureRequirementsForIdentifier:v0];
  v15[1] = v5;
  v14[2] = *MEMORY[0x277CCBE70];
  v6 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsVisibilityRequirementsForIdentifier:v0];
  v15[2] = v6;
  v14[3] = *MEMORY[0x277CCBE68];
  v7 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsUserInteractionEnabledRequirementsForIdentifier:v0];
  v15[3] = v7;
  v14[4] = *MEMORY[0x277CCBEA0];
  v8 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] usageRequirementsForIdentifier:v0];
  v15[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v10 = [v1 initWithRequirementsByContext:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)hearingAidV2RequirementSet
{
  v15[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC040];
  v1 = objc_alloc(MEMORY[0x277CCD420]);
  v14[0] = *MEMORY[0x277CCBE00];
  v2 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v0];
  v13[0] = v2;
  v3 = [MEMORY[0x277CCD428] hearingFeatureHardwareRequirementsForFeatureIdentifier:v0];
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v15[0] = v4;
  v14[1] = *MEMORY[0x277CCBDF0];
  v5 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] advertisableFeatureRequirementsForIdentifier:v0];
  v15[1] = v5;
  v14[2] = *MEMORY[0x277CCBE70];
  v6 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsVisibilityRequirementsForIdentifier:v0];
  v15[2] = v6;
  v14[3] = *MEMORY[0x277CCBE68];
  v7 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsUserInteractionEnabledRequirementsForIdentifier:v0];
  v15[3] = v7;
  v14[4] = *MEMORY[0x277CCBEA0];
  v8 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] usageRequirementsForIdentifier:v0];
  v15[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v10 = [v1 initWithRequirementsByContext:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)hearingProtectionRequirementSet
{
  v15[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC048];
  v1 = objc_alloc(MEMORY[0x277CCD420]);
  v14[0] = *MEMORY[0x277CCBE00];
  v2 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v0];
  v13[0] = v2;
  v3 = [MEMORY[0x277CCD428] hearingFeatureHardwareRequirementsForFeatureIdentifier:v0];
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v15[0] = v4;
  v14[1] = *MEMORY[0x277CCBDF0];
  v5 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] advertisableFeatureRequirementsForIdentifier:v0];
  v15[1] = v5;
  v14[2] = *MEMORY[0x277CCBE70];
  v6 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsVisibilityRequirementsForIdentifier:v0];
  v15[2] = v6;
  v14[3] = *MEMORY[0x277CCBE68];
  v7 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsUserInteractionEnabledRequirementsForIdentifier:v0];
  v15[3] = v7;
  v14[4] = *MEMORY[0x277CCBEA0];
  v8 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] usageRequirementsForIdentifier:v0];
  v15[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v10 = [v1 initWithRequirementsByContext:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)hearingProtectionPPERequirementSet
{
  v15[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC050];
  v1 = objc_alloc(MEMORY[0x277CCD420]);
  v14[0] = *MEMORY[0x277CCBE00];
  v2 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v0];
  v13[0] = v2;
  v3 = [MEMORY[0x277CCD428] hearingFeatureHardwareRequirementsForFeatureIdentifier:v0];
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v15[0] = v4;
  v14[1] = *MEMORY[0x277CCBDF0];
  v5 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] advertisableFeatureRequirementsForIdentifier:v0];
  v15[1] = v5;
  v14[2] = *MEMORY[0x277CCBE70];
  v6 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsVisibilityRequirementsForIdentifier:v0];
  v15[2] = v6;
  v14[3] = *MEMORY[0x277CCBE68];
  v7 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsUserInteractionEnabledRequirementsForIdentifier:v0];
  v15[3] = v7;
  v14[4] = *MEMORY[0x277CCBEA0];
  v8 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] usageRequirementsForIdentifier:v0];
  v15[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v10 = [v1 initWithRequirementsByContext:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)hearingTestRequirementSet
{
  v15[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC058];
  v1 = objc_alloc(MEMORY[0x277CCD420]);
  v14[0] = *MEMORY[0x277CCBE00];
  v2 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v0];
  v13 = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277CCBDF0];
  v4 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] advertisableFeatureRequirementsForIdentifier:v0];
  v15[1] = v4;
  v14[2] = *MEMORY[0x277CCBE70];
  v5 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsVisibilityRequirementsForIdentifier:v0];
  v15[2] = v5;
  v14[3] = *MEMORY[0x277CCBE68];
  v6 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] settingsUserInteractionEnabledRequirementsForIdentifier:v0];
  v15[3] = v6;
  v14[4] = *MEMORY[0x277CCBEA0];
  v7 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] usageRequirementsForIdentifier:v0];
  v15[4] = v7;
  v14[5] = *MEMORY[0x277D11238];
  v8 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] promptTileRequirementsForIdentifier:v0];
  v15[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];
  v10 = [v1 initWithRequirementsByContext:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end