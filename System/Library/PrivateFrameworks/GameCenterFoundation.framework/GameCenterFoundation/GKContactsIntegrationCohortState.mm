@interface GKContactsIntegrationCohortState
+ (id)secureCodedPropertyKeys;
- (id)initCohortNoneCount:(unint64_t)a3 cohortNotSetCount:(unint64_t)a4 cohortOptedInCount:(unint64_t)a5 cohortOptedOutCount:(unint64_t)a6 cohortUnknownCount:(unint64_t)a7 percentSyncedAtleastOnce:(double)a8;
@end

@implementation GKContactsIntegrationCohortState

- (id)initCohortNoneCount:(unint64_t)a3 cohortNotSetCount:(unint64_t)a4 cohortOptedInCount:(unint64_t)a5 cohortOptedOutCount:(unint64_t)a6 cohortUnknownCount:(unint64_t)a7 percentSyncedAtleastOnce:(double)a8
{
  v15.receiver = self;
  v15.super_class = GKContactsIntegrationCohortState;
  result = [(GKContactsIntegrationCohortState *)&v15 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
    *(result + 3) = a5;
    *(result + 4) = a6;
    *(result + 5) = a7;
    *(result + 6) = a8;
  }

  return result;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_25 != -1)
  {
    +[GKContactsIntegrationCohortState secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_24;

  return v3;
}

void __59__GKContactsIntegrationCohortState_secureCodedPropertyKeys__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"cohortNoneCount";
  v4[0] = objc_opt_class();
  v3[1] = @"cohortNotSetCount";
  v4[1] = objc_opt_class();
  v3[2] = @"cohortOptedInCount";
  v4[2] = objc_opt_class();
  v3[3] = @"cohortOptedOutCount";
  v4[3] = objc_opt_class();
  v3[4] = @"cohortUnknownCount";
  v4[4] = objc_opt_class();
  v3[5] = @"percentSyncedAtleastOnce";
  v4[5] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_24;
  secureCodedPropertyKeys_sSecureCodedKeys_24 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end