@interface HDMinorExperiencesProfileExtension
- (HDMinorExperiencesProfileExtension)initWithProfile:(id)a3;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
@end

@implementation HDMinorExperiencesProfileExtension

- (HDMinorExperiencesProfileExtension)initWithProfile:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDMinorExperiencesProfileExtension;
  v5 = [(HDMinorExperiencesProfileExtension *)&v14 init];
  if (v5)
  {
    v6 = [[HDExampleFeatureProfileExtension alloc] initWithProfile:v4];
    v15[0] = v6;
    v7 = [[HDGlucoseExperienceProfileExtension alloc] initWithProfile:v4];
    v15[1] = v7;
    v8 = [[HDRespiratoryRateMeasurementsProfileExtension alloc] initWithProfile:v4];
    v15[2] = v8;
    v9 = [[HDWristTemperatureMeasurementsProfileExtension alloc] initWithProfile:v4];
    v15[3] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    minorExperiences = v5->_minorExperiences;
    v5->_minorExperiences = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  v4 = a3;
  minorExperiences = self->_minorExperiences;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HDMinorExperiencesProfileExtension_featureAvailabilityExtensionForFeatureIdentifier___block_invoke;
  v10[3] = &unk_2796BCCE0;
  v11 = v4;
  v6 = v4;
  v7 = [(NSArray *)minorExperiences hk_map:v10];
  v8 = [v7 firstObject];

  return v8;
}

@end