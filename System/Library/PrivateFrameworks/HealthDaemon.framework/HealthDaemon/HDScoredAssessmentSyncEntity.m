@interface HDScoredAssessmentSyncEntity
+ (BOOL)supportsSyncStore:(id)a3;
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_objectWithCodable:(id)a3 collection:(id)a4;
@end

@implementation HDScoredAssessmentSyncEntity

+ (id)_objectWithCodable:(id)a3 collection:(id)a4
{
  v4 = a3;
  v5 = [v4 sample];
  v6 = [v5 dataType];

  if (_HKValidDataTypeCode())
  {
    v7 = [MEMORY[0x277CCD720] dataTypeWithCode:v6];
    v8 = [v7 dataObjectClass];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v9 = [v8 createWithCodable:v4];
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

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v5 = a3;
  v6 = [a4 daemon];
  v7 = [v6 behavior];
  if (![v7 supportsSampleExpiration])
  {
    v11 = 0;
    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CCDD30] sharedBehavior];
  v9 = [v8 features];
  v10 = [v9 chamomile];

  if (v10)
  {
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [MEMORY[0x277CCD720] _allScoredAssessmentTypes];
    v11 = [v6 hd_predicateForSamplesWithTypes:v7 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCEE8]];
LABEL_5:

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

+ (BOOL)supportsSyncStore:(id)a3
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 features];
  v5 = [v4 chamomile];

  return v5;
}

@end