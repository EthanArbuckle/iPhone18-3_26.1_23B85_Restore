@interface GKLeaderboardChallengeSummaryInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeSummaryInternal)initWithServerRepresentation:(id)representation;
@end

@implementation GKLeaderboardChallengeSummaryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_484 != -1)
  {
    +[GKLeaderboardChallengeSummaryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_483;

  return v3;
}

void __64__GKLeaderboardChallengeSummaryInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"completedCount";
  v4[0] = objc_opt_class();
  v3[1] = @"winCount";
  v4[1] = objc_opt_class();
  v3[2] = @"invitedPlayers";
  v4[2] = objc_opt_class();
  v3[3] = @"activeChallenges";
  v4[3] = objc_opt_class();
  v3[4] = @"completedChallenges";
  v4[4] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_483;
  secureCodedPropertyKeys_sSecureCodedKeys_483 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKLeaderboardChallengeSummaryInternal)initWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = GKLeaderboardChallengeSummaryInternal;
  v5 = [(GKLeaderboardChallengeSummaryInternal *)&v15 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"completed"];
    [(GKLeaderboardChallengeSummaryInternal *)v5 setCompletedCount:v6];

    v7 = [representationCopy objectForKeyedSubscript:@"wins"];
    [(GKLeaderboardChallengeSummaryInternal *)v5 setWinCount:v7];

    v8 = [representationCopy objectForKeyedSubscript:@"invites"];
    v9 = [GKLeaderboardChallengeInvitePageInternal initWithServerFragment:v8];
    [(GKLeaderboardChallengeSummaryInternal *)v5 setInvitedPlayers:v9];

    v10 = [representationCopy objectForKeyedSubscript:@"active-challenges"];
    v11 = [GKLeaderboardChallengeActivePageInternal initWithServerFragment:v10];
    [(GKLeaderboardChallengeSummaryInternal *)v5 setActiveChallenges:v11];

    v12 = [representationCopy objectForKeyedSubscript:@"completed-challenges"];
    v13 = [GKLeaderboardChallengeDetailsPageInternal initWithServerFragment:v12];
    [(GKLeaderboardChallengeSummaryInternal *)v5 setCompletedChallenges:v13];
  }

  return v5;
}

@end