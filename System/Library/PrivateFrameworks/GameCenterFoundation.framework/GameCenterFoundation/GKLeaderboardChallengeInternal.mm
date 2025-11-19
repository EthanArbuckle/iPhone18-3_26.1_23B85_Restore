@interface GKLeaderboardChallengeInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeInternal)initWithServerRepresentation:(id)a3;
@end

@implementation GKLeaderboardChallengeInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__GKLeaderboardChallengeInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (secureCodedPropertyKeys_onceToken_194 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_194, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_193;

  return v2;
}

void __57__GKLeaderboardChallengeInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v18[9] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v14.receiver = *(a1 + 32);
  v14.super_class = &OBJC_METACLASS___GKLeaderboardChallengeInternal;
  v2 = objc_msgSendSuper2(&v14, sel_secureCodedPropertyKeys);
  v3 = [v1 dictionaryWithDictionary:v2];

  v17[0] = @"leaderboardID";
  v18[0] = objc_opt_class();
  v17[1] = @"attemptLimit";
  v18[1] = objc_opt_class();
  v17[2] = @"state";
  v18[2] = objc_opt_class();
  v17[3] = @"creatorPlayerID";
  v18[3] = objc_opt_class();
  v17[4] = @"scheduledDuration";
  v18[4] = objc_opt_class();
  v17[5] = @"challengeDefinitionID";
  v18[5] = objc_opt_class();
  v17[6] = @"durationCode";
  v18[6] = objc_opt_class();
  v17[7] = @"participants";
  v4 = MEMORY[0x277CBEB98];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v6 = [v4 setWithArray:v5];
  v18[7] = v6;
  v17[8] = @"invitees";
  v7 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v9 = [v7 setWithArray:v8];
  v18[8] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:9];
  [v3 addEntriesFromDictionary:v10];

  v11 = [v3 copy];
  v12 = secureCodedPropertyKeys_sSecureCodedKeys_193;
  secureCodedPropertyKeys_sSecureCodedKeys_193 = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (GKLeaderboardChallengeInternal)initWithServerRepresentation:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = GKLeaderboardChallengeInternal;
  v5 = [(GKLeaderboardChallengeInternal *)&v22 init];
  v6 = v5;
  if (v5)
  {
    [(GKBaseLeaderboardChallengeInternal *)v5 updateWithServerResponse:v4];
    v7 = [v4 objectForKeyedSubscript:@"leaderboard-id"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_283AFD1E0;
    }

    [(GKLeaderboardChallengeInternal *)v6 setLeaderboardID:v9];

    v10 = [v4 objectForKeyedSubscript:@"attempt-limit"];
    [(GKLeaderboardChallengeInternal *)v6 setAttemptLimit:v10];

    v11 = [v4 objectForKeyedSubscript:@"state"];
    [(GKLeaderboardChallengeInternal *)v6 setState:v11];

    v12 = [v4 objectForKeyedSubscript:@"creator-player-id"];
    [(GKLeaderboardChallengeInternal *)v6 setCreatorPlayerID:v12];

    v13 = [v4 objectForKeyedSubscript:@"scheduled-duration"];
    [v13 doubleValue];
    [(GKLeaderboardChallengeInternal *)v6 setScheduledDuration:v14 / 1000.0];

    v15 = [v4 objectForKeyedSubscript:@"challenge-vendor-id"];
    [(GKLeaderboardChallengeInternal *)v6 setChallengeDefinitionID:v15];

    v16 = [v4 objectForKeyedSubscript:@"durationCode"];
    [(GKLeaderboardChallengeInternal *)v6 setDurationCode:v16];

    v17 = [v4 objectForKeyedSubscript:@"participants"];
    v18 = [v17 _gkMapWithBlock:&__block_literal_global_246];
    [(GKLeaderboardChallengeInternal *)v6 setParticipants:v18];

    v19 = [v4 objectForKeyedSubscript:@"invited-players"];
    v20 = [v19 _gkMapWithBlock:&__block_literal_global_251];
    [(GKLeaderboardChallengeInternal *)v6 setInvitees:v20];
  }

  return v6;
}

GKLeaderboardChallengeParticipantInternal *__63__GKLeaderboardChallengeInternal_initWithServerRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeParticipantInternal alloc] initWithServerFragment:v2];

  return v3;
}

GKLeaderboardChallengeInviteeInternal *__63__GKLeaderboardChallengeInternal_initWithServerRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeInviteeInternal alloc] initWithServerFragment:v2];

  return v3;
}

@end