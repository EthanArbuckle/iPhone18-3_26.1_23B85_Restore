@interface HKMCExperienceModel
- (HKMCExperienceModel)initWithCoder:(id)a3;
- (HKMCExperienceModel)initWithPregnancyModeSetupCompletionSet:(id)a3;
@end

@implementation HKMCExperienceModel

- (HKMCExperienceModel)initWithPregnancyModeSetupCompletionSet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKMCExperienceModel;
  v5 = [(HKMCExperienceModel *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    pregnancyModeSetupCompletionSet = v5->_pregnancyModeSetupCompletionSet;
    v5->_pregnancyModeSetupCompletionSet = v6;
  }

  return v5;
}

- (HKMCExperienceModel)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKMCExperienceModel;
  v5 = [(HKMCExperienceModel *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"PregnancyModeSetupCompletionSet"];
    pregnancyModeSetupCompletionSet = v5->_pregnancyModeSetupCompletionSet;
    v5->_pregnancyModeSetupCompletionSet = v7;
  }

  return v5;
}

@end