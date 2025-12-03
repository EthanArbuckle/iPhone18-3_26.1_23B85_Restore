@interface HDFeatureAvailabilityManager(Hearing)
+ (id)hearingAidFeatureAvailabilityManagerWithProfile:()Hearing;
+ (id)hearingAidV2FeatureAvailabilityManagerWithProfile:()Hearing;
+ (id)hearingProtectionFeatureAvailabilityManagerWithProfile:()Hearing;
+ (id)hearingProtectionPPEFeatureAvailabilityManagerWithProfile:()Hearing;
+ (id)hearingTestFeatureAvailabilityManagerWithProfile:()Hearing;
@end

@implementation HDFeatureAvailabilityManager(Hearing)

+ (id)hearingAidFeatureAvailabilityManagerWithProfile:()Hearing
{
  v4 = *MEMORY[0x277CCC038];
  v5 = MEMORY[0x277CCD420];
  v6 = a3;
  hearingAidRequirementSet = [v5 hearingAidRequirementSet];
  localAvailabilityForHearingAid = [MEMORY[0x277CCD260] localAvailabilityForHearingAid];
  v9 = [(HDFeatureAvailabilityManager *)self hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:hearingAidRequirementSet defaultCountrySet:localAvailabilityForHearingAid];

  return v9;
}

+ (id)hearingAidV2FeatureAvailabilityManagerWithProfile:()Hearing
{
  v4 = *MEMORY[0x277CCC040];
  v5 = MEMORY[0x277CCD420];
  v6 = a3;
  hearingAidV2RequirementSet = [v5 hearingAidV2RequirementSet];
  localAvailabilityForHearingAidV2 = [MEMORY[0x277CCD260] localAvailabilityForHearingAidV2];
  v9 = [(HDFeatureAvailabilityManager *)self hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:hearingAidV2RequirementSet defaultCountrySet:localAvailabilityForHearingAidV2];

  return v9;
}

+ (id)hearingProtectionFeatureAvailabilityManagerWithProfile:()Hearing
{
  v4 = *MEMORY[0x277CCC048];
  v5 = MEMORY[0x277CCD420];
  v6 = a3;
  hearingProtectionRequirementSet = [v5 hearingProtectionRequirementSet];
  localAvailabilityForHearingProtection = [MEMORY[0x277CCD260] localAvailabilityForHearingProtection];
  v9 = [(HDFeatureAvailabilityManager *)self hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:hearingProtectionRequirementSet defaultCountrySet:localAvailabilityForHearingProtection];

  return v9;
}

+ (id)hearingProtectionPPEFeatureAvailabilityManagerWithProfile:()Hearing
{
  v4 = *MEMORY[0x277CCC050];
  v5 = MEMORY[0x277CCD420];
  v6 = a3;
  hearingProtectionPPERequirementSet = [v5 hearingProtectionPPERequirementSet];
  localAvailabilityForHearingProtectionPPE = [MEMORY[0x277CCD260] localAvailabilityForHearingProtectionPPE];
  v9 = [(HDFeatureAvailabilityManager *)self hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:hearingProtectionPPERequirementSet defaultCountrySet:localAvailabilityForHearingProtectionPPE];

  return v9;
}

+ (id)hearingTestFeatureAvailabilityManagerWithProfile:()Hearing
{
  v4 = *MEMORY[0x277CCC058];
  v5 = MEMORY[0x277CCD420];
  v6 = a3;
  hearingTestRequirementSet = [v5 hearingTestRequirementSet];
  localAvailabilityForHearingTest = [MEMORY[0x277CCD260] localAvailabilityForHearingTest];
  v9 = [(HDFeatureAvailabilityManager *)self hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:hearingTestRequirementSet defaultCountrySet:localAvailabilityForHearingTest];

  return v9;
}

@end