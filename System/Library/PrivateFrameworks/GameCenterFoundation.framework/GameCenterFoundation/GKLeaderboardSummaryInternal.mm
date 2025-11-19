@interface GKLeaderboardSummaryInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardSummaryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_30 != -1)
  {
    +[GKLeaderboardSummaryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_30;

  return v3;
}

void __55__GKLeaderboardSummaryInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[17] = *MEMORY[0x277D85DE8];
  v3[0] = @"baseLeaderboardID";
  v4[0] = objc_opt_class();
  v3[1] = @"leaderboardID";
  v4[1] = objc_opt_class();
  v3[2] = @"timeScope";
  v4[2] = objc_opt_class();
  v3[3] = @"groupID";
  v4[3] = objc_opt_class();
  v3[4] = @"title";
  v4[4] = objc_opt_class();
  v3[5] = @"type";
  v4[5] = objc_opt_class();
  v3[6] = @"formattedScoreValue";
  v4[6] = objc_opt_class();
  v3[7] = @"context";
  v4[7] = objc_opt_class();
  v3[8] = @"status";
  v4[8] = objc_opt_class();
  v3[9] = @"startDate";
  v4[9] = objc_opt_class();
  v3[10] = @"duration";
  v4[10] = objc_opt_class();
  v3[11] = @"nextStartDate";
  v4[11] = objc_opt_class();
  v3[12] = @"scoreValue";
  v4[12] = objc_opt_class();
  v3[13] = @"rank";
  v4[13] = objc_opt_class();
  v3[14] = @"totalEntries";
  v4[14] = objc_opt_class();
  v3[15] = @"friendRank";
  v4[15] = objc_opt_class();
  v3[16] = @"totalFriendEntries";
  v4[16] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:17];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_30;
  secureCodedPropertyKeys_sSecureCodedKeys_30 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end