@interface HKMCPregnancyModeSetupCompletionRecord
- (BOOL)isEqual:(id)a3;
- (HKMCPregnancyModeSetupCompletionRecord)initWithCoder:(id)a3;
- (HKMCPregnancyModeSetupCompletionRecord)initWithVersion:(id)a3 sampleUUID:(id)a4 educationalStepsReviewDate:(id)a5 configurationStepsReviewDate:(id)a6 pregnancyAdjustedFeaturesSet:(id)a7 postPregnancyFeatureAdjustmentCompletionLog:(id)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCPregnancyModeSetupCompletionRecord

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeObject:version forKey:@"Version"];
  [v5 encodeObject:self->_sampleUUID forKey:@"SampleUUID"];
  [v5 encodeObject:self->_educationalStepsReviewDate forKey:@"EducationalStepsReviewDate"];
  [v5 encodeObject:self->_configurationStepsReviewDate forKey:@"ConfigurationStepsReviewDate"];
  [v5 encodeObject:self->_pregnancyAdjustedFeaturesSet forKey:@"_PregnancyAdjustedFeaturesSet"];
  [v5 encodeObject:self->_postPregnancyFeatureAdjustmentCompletionLog forKey:@"PostPregnancyFeatureAdjustmentCompletionLog"];
  v6 = [(NSDictionary *)self->_postPregnancyFeatureAdjustmentCompletionLog objectForKey:@"LowCardioFitness"];
  [v5 encodeObject:v6 forKey:@"_PostPregnancyFeatureAdjustmentCompletionDate"];
}

- (HKMCPregnancyModeSetupCompletionRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = HKMCPregnancyModeSetupCompletionRecord;
  v5 = [(HKMCPregnancyModeSetupCompletionRecord *)&v29 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2];
    version = v5->_version;
    v5->_version = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SampleUUID"];
    sampleUUID = v5->_sampleUUID;
    v5->_sampleUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EducationalStepsReviewDate"];
    educationalStepsReviewDate = v5->_educationalStepsReviewDate;
    v5->_educationalStepsReviewDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ConfigurationStepsReviewDate"];
    configurationStepsReviewDate = v5->_configurationStepsReviewDate;
    v5->_configurationStepsReviewDate = v12;

    v14 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_PregnancyAdjustedFeaturesSet"];
    pregnancyAdjustedFeaturesSet = v5->_pregnancyAdjustedFeaturesSet;
    v5->_pregnancyAdjustedFeaturesSet = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 hk_typesForDictionaryMapping:v18 to:objc_opt_class()];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"PostPregnancyFeatureAdjustmentCompletionLog"];
    postPregnancyFeatureAdjustmentCompletionLog = v5->_postPregnancyFeatureAdjustmentCompletionLog;
    v5->_postPregnancyFeatureAdjustmentCompletionLog = v20;

    if (!v5->_postPregnancyFeatureAdjustmentCompletionLog)
    {
      v22 = [MEMORY[0x277CBEAC0] dictionary];
      v23 = v5->_postPregnancyFeatureAdjustmentCompletionLog;
      v5->_postPregnancyFeatureAdjustmentCompletionLog = v22;
    }

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_PostPregnancyFeatureAdjustmentCompletionDate"];
    if (v24)
    {
      v25 = [(NSDictionary *)v5->_postPregnancyFeatureAdjustmentCompletionLog mutableCopy];
      [v25 setValue:v24 forKey:@"LowCardioFitness"];
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v25];
      v27 = v5->_postPregnancyFeatureAdjustmentCompletionLog;
      v5->_postPregnancyFeatureAdjustmentCompletionLog = v26;
    }
  }

  return v5;
}

- (HKMCPregnancyModeSetupCompletionRecord)initWithVersion:(id)a3 sampleUUID:(id)a4 educationalStepsReviewDate:(id)a5 configurationStepsReviewDate:(id)a6 pregnancyAdjustedFeaturesSet:(id)a7 postPregnancyFeatureAdjustmentCompletionLog:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HKMCPregnancyModeSetupCompletionRecord;
  v18 = [(HKMCPregnancyModeSetupCompletionRecord *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_version, a3);
    objc_storeStrong(&v19->_sampleUUID, a4);
    objc_storeStrong(&v19->_educationalStepsReviewDate, a5);
    objc_storeStrong(&v19->_configurationStepsReviewDate, a6);
    objc_storeStrong(&v19->_pregnancyAdjustedFeaturesSet, a7);
    objc_storeStrong(&v19->_postPregnancyFeatureAdjustmentCompletionLog, a8);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (![(NSNumber *)self->_version isEqualToNumber:v5->_version])
      {
        goto LABEL_19;
      }

      if (![(NSUUID *)self->_sampleUUID isEqual:v5->_sampleUUID])
      {
        goto LABEL_19;
      }

      educationalStepsReviewDate = self->_educationalStepsReviewDate;
      v7 = v5->_educationalStepsReviewDate;
      if (educationalStepsReviewDate != v7 && (!v7 || ![(NSDate *)educationalStepsReviewDate isEqual:?]))
      {
        goto LABEL_19;
      }

      configurationStepsReviewDate = self->_configurationStepsReviewDate;
      v9 = v5->_configurationStepsReviewDate;
      if (configurationStepsReviewDate != v9 && (!v9 || ![(NSDate *)configurationStepsReviewDate isEqual:?]))
      {
        goto LABEL_19;
      }

      pregnancyAdjustedFeaturesSet = self->_pregnancyAdjustedFeaturesSet;
      v11 = v5->_pregnancyAdjustedFeaturesSet;
      if (pregnancyAdjustedFeaturesSet != v11 && (!v11 || ![(NSSet *)pregnancyAdjustedFeaturesSet isEqualToSet:?]))
      {
        goto LABEL_19;
      }

      postPregnancyFeatureAdjustmentCompletionLog = self->_postPregnancyFeatureAdjustmentCompletionLog;
      v13 = v5->_postPregnancyFeatureAdjustmentCompletionLog;
      if (postPregnancyFeatureAdjustmentCompletionLog == v13)
      {
        v14 = 1;
        goto LABEL_20;
      }

      if (v13)
      {
        v14 = [(NSDictionary *)postPregnancyFeatureAdjustmentCompletionLog isEqual:?];
      }

      else
      {
LABEL_19:
        v14 = 0;
      }

LABEL_20:

      goto LABEL_21;
    }

    v14 = 0;
  }

LABEL_21:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_version hash];
  v4 = [(NSUUID *)self->_sampleUUID hash]^ v3;
  v5 = [(NSDate *)self->_educationalStepsReviewDate hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_configurationStepsReviewDate hash];
  v7 = [(NSSet *)self->_pregnancyAdjustedFeaturesSet hash];
  return v6 ^ v7 ^ [(NSDictionary *)self->_postPregnancyFeatureAdjustmentCompletionLog hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  version = self->_version;
  v6 = [(NSUUID *)self->_sampleUUID UUIDString];
  v7 = [v3 stringWithFormat:@"<%@:%p version:%@ sampleUUID:%@ educationalStepsReviewDate:%@ configurationStepsReviewDate:%@pregnancyAdjustedFeaturesSet:%@>postPregnancyFeatureAdjustmentCompletionLog:%@>", v4, self, version, v6, self->_educationalStepsReviewDate, self->_configurationStepsReviewDate, self->_pregnancyAdjustedFeaturesSet, self->_postPregnancyFeatureAdjustmentCompletionLog];

  return v7;
}

@end