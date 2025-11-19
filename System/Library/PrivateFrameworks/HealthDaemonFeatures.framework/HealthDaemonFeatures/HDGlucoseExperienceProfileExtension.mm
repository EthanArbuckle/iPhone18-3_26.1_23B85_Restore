@interface HDGlucoseExperienceProfileExtension
- (HDGlucoseExperienceProfileExtension)initWithProfile:(id)a3;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
- (void)_initWithProfile:(void *)a3 featureIdentifier:(void *)a4 loggingCategory:;
@end

@implementation HDGlucoseExperienceProfileExtension

- (HDGlucoseExperienceProfileExtension)initWithProfile:(id)a3
{
  v4 = *MEMORY[0x277CCC030];
  v5 = a3;
  v6 = HKLogInfrastructure();
  v7 = [(HDGlucoseExperienceProfileExtension *)self _initWithProfile:v5 featureIdentifier:v4 loggingCategory:v6];

  return v7;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  if ([a3 isEqualToString:self->_featureIdentifier])
  {
    v4 = self->_featureAvailabilityManager;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_initWithProfile:(void *)a3 featureIdentifier:(void *)a4 loggingCategory:
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v32.receiver = a1;
    v32.super_class = HDGlucoseExperienceProfileExtension;
    v10 = objc_msgSendSuper2(&v32, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, a3);
      v11 = [v7 daemon];
      v12 = [v11 behavior];
      v13 = [v12 isAppleWatch];

      if ((v13 & 1) == 0)
      {
        v14 = objc_alloc(MEMORY[0x277D107C0]);
        v15 = [v7 daemon];
        v16 = [v14 initWithDaemon:v15 featureIdentifier:v8];

        v17 = objc_alloc(MEMORY[0x277D10728]);
        v18 = [MEMORY[0x277CCD260] localAvailabilityForGlucoseEnhancedCharting];
        v19 = [v7 daemon];
        v20 = [v17 initWithFeatureIdentifier:v8 defaultCountrySet:v18 healthDaemon:v19];

        v21 = objc_alloc(MEMORY[0x277CCD420]);
        v34 = *MEMORY[0x277CCBE00];
        v22 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v8];
        v33 = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
        v35[0] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        v25 = [v21 initWithRequirementsByContext:v24];

        v26 = [objc_alloc(MEMORY[0x277D106D8]) initWithProfile:v7 featureIdentifier:v8 availabilityRequirements:v25 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v20 disableAndExpiryProvider:v16 loggingCategory:v9];
        v27 = a1[1];
        a1[1] = v26;

        v28 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v7 featureAvailabilityExtension:a1[1] loggingCategory:v9];
        v29 = a1[2];
        a1[2] = v28;
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return a1;
}

@end