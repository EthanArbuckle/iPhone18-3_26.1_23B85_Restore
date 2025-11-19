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
  v7 = [v5 hearingAidRequirementSet];
  v8 = [MEMORY[0x277CCD260] localAvailabilityForHearingAid];
  v9 = [(HDFeatureAvailabilityManager *)a1 hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:v7 defaultCountrySet:v8];

  return v9;
}

+ (id)hearingAidV2FeatureAvailabilityManagerWithProfile:()Hearing
{
  v4 = *MEMORY[0x277CCC040];
  v5 = MEMORY[0x277CCD420];
  v6 = a3;
  v7 = [v5 hearingAidV2RequirementSet];
  v8 = [MEMORY[0x277CCD260] localAvailabilityForHearingAidV2];
  v9 = [(HDFeatureAvailabilityManager *)a1 hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:v7 defaultCountrySet:v8];

  return v9;
}

+ (id)hearingProtectionFeatureAvailabilityManagerWithProfile:()Hearing
{
  v4 = *MEMORY[0x277CCC048];
  v5 = MEMORY[0x277CCD420];
  v6 = a3;
  v7 = [v5 hearingProtectionRequirementSet];
  v8 = [MEMORY[0x277CCD260] localAvailabilityForHearingProtection];
  v9 = [(HDFeatureAvailabilityManager *)a1 hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:v7 defaultCountrySet:v8];

  return v9;
}

+ (id)hearingProtectionPPEFeatureAvailabilityManagerWithProfile:()Hearing
{
  v4 = *MEMORY[0x277CCC050];
  v5 = MEMORY[0x277CCD420];
  v6 = a3;
  v7 = [v5 hearingProtectionPPERequirementSet];
  v8 = [MEMORY[0x277CCD260] localAvailabilityForHearingProtectionPPE];
  v9 = [(HDFeatureAvailabilityManager *)a1 hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:v7 defaultCountrySet:v8];

  return v9;
}

+ (id)hearingTestFeatureAvailabilityManagerWithProfile:()Hearing
{
  v4 = *MEMORY[0x277CCC058];
  v5 = MEMORY[0x277CCD420];
  v6 = a3;
  v7 = [v5 hearingTestRequirementSet];
  v8 = [MEMORY[0x277CCD260] localAvailabilityForHearingTest];
  v9 = [(HDFeatureAvailabilityManager *)a1 hearingFeatureAvailabilityManagerWithProfile:v6 featureIdentifier:v4 availabilityRequirements:v7 defaultCountrySet:v8];

  return v9;
}

@end