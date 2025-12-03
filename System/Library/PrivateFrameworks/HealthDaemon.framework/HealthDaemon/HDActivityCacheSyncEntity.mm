@interface HDActivityCacheSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_objectWithCodable:(id)codable collection:(id)collection;
@end

@implementation HDActivityCacheSyncEntity

+ (id)_objectWithCodable:(id)codable collection:(id)collection
{
  collectionCopy = collection;
  v6 = [MEMORY[0x277CCCFA0] createWithCodable:codable];
  if (![v6 version])
  {
    provenance = [collectionCopy provenance];
    originBuild = [provenance originBuild];
    if ([originBuild hk_compareBuildVersionWithString:@"20A6"] < 0)
    {
      provenance2 = [collectionCopy provenance];
      originBuild2 = [provenance2 originBuild];
      v11 = [originBuild2 hk_compareBuildVersionWithString:@"20R57"];

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
    activityCacheType = [MEMORY[0x277CCD8D8] activityCacheType];
    v15[0] = activityCacheType;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [currentCalendar hd_predicateForSamplesWithTypes:v11 endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCEE0]];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end