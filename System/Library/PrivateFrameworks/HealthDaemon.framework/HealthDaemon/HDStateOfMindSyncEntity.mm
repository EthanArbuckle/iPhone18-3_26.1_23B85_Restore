@interface HDStateOfMindSyncEntity
+ (BOOL)supportsSyncStore:(id)a3;
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
@end

@implementation HDStateOfMindSyncEntity

+ (BOOL)supportsSyncStore:(id)a3
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 features];
  v5 = [v4 chamomile];

  return v5;
}

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 daemon];
  v7 = [v6 behavior];
  if ([v7 supportsSampleExpiration])
  {
    v8 = [MEMORY[0x277CCDD30] sharedBehavior];
    v9 = [v8 features];
    v10 = [v9 chamomile];

    if (v10)
    {
      v11 = [MEMORY[0x277CBEA80] currentCalendar];
      v12 = [MEMORY[0x277CCD8D8] stateOfMindType];
      v17[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      v14 = [v11 hd_predicateForSamplesWithTypes:v13 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCF18]];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_6:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end