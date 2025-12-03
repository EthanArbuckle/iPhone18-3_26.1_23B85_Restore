@interface HDFeatureAvailabilityManager
+ (id)hearingFeatureAvailabilityManagerWithProfile:(void *)profile featureIdentifier:(void *)identifier availabilityRequirements:(void *)requirements defaultCountrySet:;
@end

@implementation HDFeatureAvailabilityManager

+ (id)hearingFeatureAvailabilityManagerWithProfile:(void *)profile featureIdentifier:(void *)identifier availabilityRequirements:(void *)requirements defaultCountrySet:
{
  requirementsCopy = requirements;
  identifierCopy = identifier;
  profileCopy = profile;
  v11 = a2;
  objc_opt_self();
  v23 = _HKHearingTestAlgorithmVersionString();
  v12 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:v23 deviceIdentifier:@"(01)00195949149948"];
  v13 = [objc_alloc(MEMORY[0x277D10730]) initWithLocalFeatureAttributes:v12];
  v14 = objc_alloc(MEMORY[0x277D106D8]);
  v15 = objc_alloc(MEMORY[0x277D10728]);
  daemon = [v11 daemon];
  v17 = [v15 initWithFeatureIdentifier:profileCopy defaultCountrySet:requirementsCopy healthDaemon:daemon];

  v18 = objc_alloc(MEMORY[0x277D107C0]);
  daemon2 = [v11 daemon];
  v20 = [v18 initWithDaemon:daemon2 featureIdentifier:profileCopy];
  v21 = [v14 initWithProfile:v11 featureIdentifier:profileCopy availabilityRequirements:identifierCopy currentOnboardingVersion:1 pairedDeviceCapability:0 pairedFeatureAttributesProvider:v13 regionAvailabilityProvider:v17 disableAndExpiryProvider:v20 loggingCategory:*MEMORY[0x277CCC2C8]];

  return v21;
}

@end