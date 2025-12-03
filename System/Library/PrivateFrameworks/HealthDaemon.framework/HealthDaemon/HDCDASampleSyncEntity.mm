@interface HDCDASampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
@end

@implementation HDCDASampleSyncEntity

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  v15[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSampleExpiration = [behavior supportsSampleExpiration];

  if (supportsSampleExpiration)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [MEMORY[0x277CCD368] documentTypeForIdentifier:*MEMORY[0x277CCBCB8]];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [currentCalendar hd_predicateForSamplesWithTypes:v11 endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end