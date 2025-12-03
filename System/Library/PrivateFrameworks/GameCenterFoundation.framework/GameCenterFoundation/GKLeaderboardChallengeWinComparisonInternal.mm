@interface GKLeaderboardChallengeWinComparisonInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeWinComparisonInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_549 != -1)
  {
    +[GKLeaderboardChallengeWinComparisonInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_548;

  return v3;
}

void __70__GKLeaderboardChallengeWinComparisonInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"bundleID";
  v4[0] = objc_opt_class();
  v3[1] = @"playerWinCount";
  v4[1] = objc_opt_class();
  v3[2] = @"otherPlayerWinCount";
  v4[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_548;
  secureCodedPropertyKeys_sSecureCodedKeys_548 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeWinComparisonInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"bundle-id"];
  [(GKLeaderboardChallengeWinComparisonInternal *)v4 setBundleID:v5];

  v6 = [fragmentCopy objectForKeyedSubscript:@"player-win-count"];
  [(GKLeaderboardChallengeWinComparisonInternal *)v4 setPlayerWinCount:v6];

  v7 = [fragmentCopy objectForKeyedSubscript:@"compare-to-player-win-count"];

  [(GKLeaderboardChallengeWinComparisonInternal *)v4 setOtherPlayerWinCount:v7];

  return v4;
}

@end