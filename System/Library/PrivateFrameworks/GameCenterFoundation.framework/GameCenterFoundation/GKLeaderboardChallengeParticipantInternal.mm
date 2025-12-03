@interface GKLeaderboardChallengeParticipantInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeParticipantInternal)initWithServerFragment:(id)fragment;
@end

@implementation GKLeaderboardChallengeParticipantInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_51 != -1)
  {
    +[GKLeaderboardChallengeParticipantInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_50;

  return v3;
}

void __68__GKLeaderboardChallengeParticipantInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"playerID";
  v4[0] = objc_opt_class();
  v3[1] = @"formattedScoreValue";
  v4[1] = objc_opt_class();
  v3[2] = @"scoreValue";
  v4[2] = objc_opt_class();
  v3[3] = @"attemptCount";
  v4[3] = objc_opt_class();
  v3[4] = @"rank";
  v4[4] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_50;
  secureCodedPropertyKeys_sSecureCodedKeys_50 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKLeaderboardChallengeParticipantInternal)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v12.receiver = self;
  v12.super_class = GKLeaderboardChallengeParticipantInternal;
  v5 = [(GKLeaderboardChallengeParticipantInternal *)&v12 init];
  if (v5)
  {
    v6 = [fragmentCopy objectForKeyedSubscript:@"player-id"];
    [(GKLeaderboardChallengeParticipantInternal *)v5 setPlayerID:v6];

    v7 = [fragmentCopy objectForKeyedSubscript:@"formatted-score-value"];
    [(GKLeaderboardChallengeParticipantInternal *)v5 setFormattedScoreValue:v7];

    v8 = [fragmentCopy objectForKeyedSubscript:@"score-value"];
    [(GKLeaderboardChallengeParticipantInternal *)v5 setScoreValue:v8];

    v9 = [fragmentCopy objectForKeyedSubscript:@"attempt-count"];
    [(GKLeaderboardChallengeParticipantInternal *)v5 setAttemptCount:v9];

    v10 = [fragmentCopy objectForKeyedSubscript:@"rank"];
    [(GKLeaderboardChallengeParticipantInternal *)v5 setRank:v10];
  }

  return v5;
}

@end