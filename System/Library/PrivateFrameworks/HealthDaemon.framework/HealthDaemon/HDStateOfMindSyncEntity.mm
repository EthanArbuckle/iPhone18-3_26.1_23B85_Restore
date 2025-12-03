@interface HDStateOfMindSyncEntity
+ (BOOL)supportsSyncStore:(id)store;
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
@end

@implementation HDStateOfMindSyncEntity

+ (BOOL)supportsSyncStore:(id)store
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  chamomile = [features chamomile];

  return chamomile;
}

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  v17[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  if ([behavior supportsSampleExpiration])
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    features = [mEMORY[0x277CCDD30] features];
    chamomile = [features chamomile];

    if (chamomile)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      stateOfMindType = [MEMORY[0x277CCD8D8] stateOfMindType];
      v17[0] = stateOfMindType;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      v14 = [currentCalendar hd_predicateForSamplesWithTypes:v13 endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCF18]];

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