@interface HDFeatureAvailabilityManager
+ (id)hearingFeatureAvailabilityManagerWithProfile:(void *)a3 featureIdentifier:(void *)a4 availabilityRequirements:(void *)a5 defaultCountrySet:;
@end

@implementation HDFeatureAvailabilityManager

+ (id)hearingFeatureAvailabilityManagerWithProfile:(void *)a3 featureIdentifier:(void *)a4 availabilityRequirements:(void *)a5 defaultCountrySet:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  objc_opt_self();
  v23 = _HKHearingTestAlgorithmVersionString();
  v12 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:v23 deviceIdentifier:@"(01)00195949149948"];
  v13 = [objc_alloc(MEMORY[0x277D10730]) initWithLocalFeatureAttributes:v12];
  v14 = objc_alloc(MEMORY[0x277D106D8]);
  v15 = objc_alloc(MEMORY[0x277D10728]);
  v16 = [v11 daemon];
  v17 = [v15 initWithFeatureIdentifier:v10 defaultCountrySet:v8 healthDaemon:v16];

  v18 = objc_alloc(MEMORY[0x277D107C0]);
  v19 = [v11 daemon];
  v20 = [v18 initWithDaemon:v19 featureIdentifier:v10];
  v21 = [v14 initWithProfile:v11 featureIdentifier:v10 availabilityRequirements:v9 currentOnboardingVersion:1 pairedDeviceCapability:0 pairedFeatureAttributesProvider:v13 regionAvailabilityProvider:v17 disableAndExpiryProvider:v20 loggingCategory:*MEMORY[0x277CCC2C8]];

  return v21;
}

@end