@interface HKMCPregnancyModeSetupCompletionRecord
- (BOOL)isEqual:(id)equal;
- (HKMCPregnancyModeSetupCompletionRecord)initWithCoder:(id)coder;
- (HKMCPregnancyModeSetupCompletionRecord)initWithVersion:(id)version sampleUUID:(id)d educationalStepsReviewDate:(id)date configurationStepsReviewDate:(id)reviewDate pregnancyAdjustedFeaturesSet:(id)set postPregnancyFeatureAdjustmentCompletionLog:(id)log;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCPregnancyModeSetupCompletionRecord

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeObject:version forKey:@"Version"];
  [coderCopy encodeObject:self->_sampleUUID forKey:@"SampleUUID"];
  [coderCopy encodeObject:self->_educationalStepsReviewDate forKey:@"EducationalStepsReviewDate"];
  [coderCopy encodeObject:self->_configurationStepsReviewDate forKey:@"ConfigurationStepsReviewDate"];
  [coderCopy encodeObject:self->_pregnancyAdjustedFeaturesSet forKey:@"_PregnancyAdjustedFeaturesSet"];
  [coderCopy encodeObject:self->_postPregnancyFeatureAdjustmentCompletionLog forKey:@"PostPregnancyFeatureAdjustmentCompletionLog"];
  v6 = [(NSDictionary *)self->_postPregnancyFeatureAdjustmentCompletionLog objectForKey:@"LowCardioFitness"];
  [coderCopy encodeObject:v6 forKey:@"_PostPregnancyFeatureAdjustmentCompletionDate"];
}

- (HKMCPregnancyModeSetupCompletionRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = HKMCPregnancyModeSetupCompletionRecord;
  v5 = [(HKMCPregnancyModeSetupCompletionRecord *)&v29 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2];
    version = v5->_version;
    v5->_version = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SampleUUID"];
    sampleUUID = v5->_sampleUUID;
    v5->_sampleUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EducationalStepsReviewDate"];
    educationalStepsReviewDate = v5->_educationalStepsReviewDate;
    v5->_educationalStepsReviewDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ConfigurationStepsReviewDate"];
    configurationStepsReviewDate = v5->_configurationStepsReviewDate;
    v5->_configurationStepsReviewDate = v12;

    v14 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_PregnancyAdjustedFeaturesSet"];
    pregnancyAdjustedFeaturesSet = v5->_pregnancyAdjustedFeaturesSet;
    v5->_pregnancyAdjustedFeaturesSet = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 hk_typesForDictionaryMapping:v18 to:objc_opt_class()];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"PostPregnancyFeatureAdjustmentCompletionLog"];
    postPregnancyFeatureAdjustmentCompletionLog = v5->_postPregnancyFeatureAdjustmentCompletionLog;
    v5->_postPregnancyFeatureAdjustmentCompletionLog = v20;

    if (!v5->_postPregnancyFeatureAdjustmentCompletionLog)
    {
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
      v23 = v5->_postPregnancyFeatureAdjustmentCompletionLog;
      v5->_postPregnancyFeatureAdjustmentCompletionLog = dictionary;
    }

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_PostPregnancyFeatureAdjustmentCompletionDate"];
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

- (HKMCPregnancyModeSetupCompletionRecord)initWithVersion:(id)version sampleUUID:(id)d educationalStepsReviewDate:(id)date configurationStepsReviewDate:(id)reviewDate pregnancyAdjustedFeaturesSet:(id)set postPregnancyFeatureAdjustmentCompletionLog:(id)log
{
  versionCopy = version;
  dCopy = d;
  dateCopy = date;
  reviewDateCopy = reviewDate;
  setCopy = set;
  logCopy = log;
  v24.receiver = self;
  v24.super_class = HKMCPregnancyModeSetupCompletionRecord;
  v18 = [(HKMCPregnancyModeSetupCompletionRecord *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_version, version);
    objc_storeStrong(&v19->_sampleUUID, d);
    objc_storeStrong(&v19->_educationalStepsReviewDate, date);
    objc_storeStrong(&v19->_configurationStepsReviewDate, reviewDate);
    objc_storeStrong(&v19->_pregnancyAdjustedFeaturesSet, set);
    objc_storeStrong(&v19->_postPregnancyFeatureAdjustmentCompletionLog, log);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  uUIDString = [(NSUUID *)self->_sampleUUID UUIDString];
  v7 = [v3 stringWithFormat:@"<%@:%p version:%@ sampleUUID:%@ educationalStepsReviewDate:%@ configurationStepsReviewDate:%@pregnancyAdjustedFeaturesSet:%@>postPregnancyFeatureAdjustmentCompletionLog:%@>", v4, self, version, uUIDString, self->_educationalStepsReviewDate, self->_configurationStepsReviewDate, self->_pregnancyAdjustedFeaturesSet, self->_postPregnancyFeatureAdjustmentCompletionLog];

  return v7;
}

@end