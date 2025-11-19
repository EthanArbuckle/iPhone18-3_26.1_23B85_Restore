@interface GKLeaderboardChallengePlayerAndCountInternal
+ (id)initWithServerFragment:(id)a3;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengePlayerAndCountInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_660 != -1)
  {
    +[GKLeaderboardChallengePlayerAndCountInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_659;

  return v3;
}

void __71__GKLeaderboardChallengePlayerAndCountInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"playerID";
  v3[1] = @"count";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_659;
  secureCodedPropertyKeys_sSecureCodedKeys_659 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)initWithServerFragment:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GKLeaderboardChallengePlayerAndCountInternal);
  v5 = [v3 objectForKeyedSubscript:@"player-id"];
  [(GKLeaderboardChallengePlayerAndCountInternal *)v4 setPlayerID:v5];

  v6 = [v3 objectForKeyedSubscript:@"count"];

  [(GKLeaderboardChallengePlayerAndCountInternal *)v4 setCount:v6];

  return v4;
}

@end