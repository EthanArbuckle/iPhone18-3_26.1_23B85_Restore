@interface GKLeaderboardChallengeCompletedSummaryInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeCompletedSummaryInternal)initWithServerRepresentation:(id)a3;
@end

@implementation GKLeaderboardChallengeCompletedSummaryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_670 != -1)
  {
    +[GKLeaderboardChallengeCompletedSummaryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_669;

  return v3;
}

void __73__GKLeaderboardChallengeCompletedSummaryInternal_secureCodedPropertyKeys__block_invoke()
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"totalCount";
  v12[0] = objc_opt_class();
  v11[1] = @"totalGames";
  v12[1] = objc_opt_class();
  v11[2] = @"totalFriends";
  v12[2] = objc_opt_class();
  v11[3] = @"gameCounts";
  v0 = MEMORY[0x277CBEB98];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v2 = [v0 setWithArray:v1];
  v12[3] = v2;
  v11[4] = @"playerCounts";
  v3 = MEMORY[0x277CBEB98];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v5 = [v3 setWithArray:v4];
  v12[4] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v7 = secureCodedPropertyKeys_sSecureCodedKeys_669;
  secureCodedPropertyKeys_sSecureCodedKeys_669 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (GKLeaderboardChallengeCompletedSummaryInternal)initWithServerRepresentation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GKLeaderboardChallengeCompletedSummaryInternal;
  v5 = [(GKLeaderboardChallengeCompletedSummaryInternal *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"total-count"];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setTotalCount:v6];

    v7 = [v4 objectForKeyedSubscript:@"total-games"];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setTotalGames:v7];

    v8 = [v4 objectForKeyedSubscript:@"total-friends"];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setTotalFriends:v8];

    v9 = [v4 objectForKeyedSubscript:@"by-games"];
    v10 = [v9 _gkMapWithBlock:&__block_literal_global_702];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setGameCounts:v10];

    v11 = [v4 objectForKeyedSubscript:@"by-players"];
    v12 = [v11 _gkMapWithBlock:&__block_literal_global_707];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setPlayerCounts:v12];
  }

  return v5;
}

@end