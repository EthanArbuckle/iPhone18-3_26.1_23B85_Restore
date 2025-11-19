@interface HDActivityCacheSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_objectWithCodable:(id)a3 collection:(id)a4;
@end

@implementation HDActivityCacheSyncEntity

+ (id)_objectWithCodable:(id)a3 collection:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCCFA0] createWithCodable:a3];
  if (![v6 version])
  {
    v7 = [v5 provenance];
    v8 = [v7 originBuild];
    if ([v8 hk_compareBuildVersionWithString:@"20A6"] < 0)
    {
      v9 = [v5 provenance];
      v10 = [v9 originBuild];
      v11 = [v10 hk_compareBuildVersionWithString:@"20R57"];

      if (v11 < 0)
      {
        v12 = 1;
        goto LABEL_6;
      }
    }

    else
    {
    }

    v12 = 2;
LABEL_6:
    [v6 _setVersion:v12];
  }

  return v6;
}

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
    v10 = [MEMORY[0x277CCD8D8] activityCacheType];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v9 hd_predicateForSamplesWithTypes:v11 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCEE0]];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end