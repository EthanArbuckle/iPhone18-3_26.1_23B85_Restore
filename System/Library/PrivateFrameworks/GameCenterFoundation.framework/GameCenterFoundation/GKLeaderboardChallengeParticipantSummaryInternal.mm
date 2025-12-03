@interface GKLeaderboardChallengeParticipantSummaryInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeParticipantSummaryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_376 != -1)
  {
    +[GKLeaderboardChallengeParticipantSummaryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_375;

  return v3;
}

void __75__GKLeaderboardChallengeParticipantSummaryInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"playerID";
  v3[1] = @"rank";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_375;
  secureCodedPropertyKeys_sSecureCodedKeys_375 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeParticipantSummaryInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"player-id"];
  [(GKLeaderboardChallengeParticipantSummaryInternal *)v4 setPlayerID:v5];

  v6 = [fragmentCopy objectForKeyedSubscript:@"rank"];

  [(GKLeaderboardChallengeParticipantSummaryInternal *)v4 setRank:v6];

  return v4;
}

@end