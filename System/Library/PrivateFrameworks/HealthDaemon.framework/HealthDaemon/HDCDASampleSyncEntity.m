@interface HDCDASampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
@end

@implementation HDCDASampleSyncEntity

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 daemon];
  v7 = [v6 behavior];
  v8 = [v7 supportsSampleExpiration];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [MEMORY[0x277CCD368] documentTypeForIdentifier:*MEMORY[0x277CCBCB8]];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v9 hd_predicateForSamplesWithTypes:v11 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end