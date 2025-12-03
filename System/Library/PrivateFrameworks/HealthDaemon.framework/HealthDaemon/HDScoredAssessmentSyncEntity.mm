@interface HDScoredAssessmentSyncEntity
+ (BOOL)supportsSyncStore:(id)store;
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_objectWithCodable:(id)codable collection:(id)collection;
@end

@implementation HDScoredAssessmentSyncEntity

+ (id)_objectWithCodable:(id)codable collection:(id)collection
{
  codableCopy = codable;
  sample = [codableCopy sample];
  dataType = [sample dataType];

  if (_HKValidDataTypeCode())
  {
    v7 = [MEMORY[0x277CCD720] dataTypeWithCode:dataType];
    dataObjectClass = [v7 dataObjectClass];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v9 = [dataObjectClass createWithCodable:codableCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  if (![behavior supportsSampleExpiration])
  {
    v11 = 0;
    goto LABEL_5;
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  chamomile = [features chamomile];

  if (chamomile)
  {
    daemon = [MEMORY[0x277CBEA80] currentCalendar];
    behavior = [MEMORY[0x277CCD720] _allScoredAssessmentTypes];
    v11 = [daemon hd_predicateForSamplesWithTypes:behavior endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCEE8]];
LABEL_5:

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

+ (BOOL)supportsSyncStore:(id)store
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  chamomile = [features chamomile];

  return chamomile;
}

@end