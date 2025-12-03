@interface GKLeaderboardChallengeInviteeInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeInviteeInternal)initWithServerFragment:(id)fragment;
@end

@implementation GKLeaderboardChallengeInviteeInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_3 != -1)
  {
    +[GKLeaderboardChallengeInviteeInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_3;

  return v3;
}

void __64__GKLeaderboardChallengeInviteeInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"playerID";
  v4[0] = objc_opt_class();
  v3[1] = @"fromPlayerID";
  v4[1] = objc_opt_class();
  v3[2] = @"invitedDate";
  v4[2] = objc_opt_class();
  v3[3] = @"status";
  v4[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_3;
  secureCodedPropertyKeys_sSecureCodedKeys_3 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKLeaderboardChallengeInviteeInternal)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v15.receiver = self;
  v15.super_class = GKLeaderboardChallengeInviteeInternal;
  v5 = [(GKLeaderboardChallengeInviteeInternal *)&v15 init];
  if (v5)
  {
    v6 = [fragmentCopy objectForKeyedSubscript:@"player-id"];
    [(GKLeaderboardChallengeInviteeInternal *)v5 setPlayerID:v6];

    v7 = [fragmentCopy objectForKeyedSubscript:@"from-player-id"];
    [(GKLeaderboardChallengeInviteeInternal *)v5 setFromPlayerID:v7];

    v8 = [fragmentCopy objectForKeyedSubscript:@"invited-timestamp"];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x277CBEAA8];
      [v8 doubleValue];
      v12 = [v10 dateWithTimeIntervalSince1970:v11 / 1000.0];
      [(GKLeaderboardChallengeInviteeInternal *)v5 setInvitedDate:v12];
    }

    v13 = [fragmentCopy objectForKeyedSubscript:@"status"];
    [(GKLeaderboardChallengeInviteeInternal *)v5 setStatus:v13];
  }

  return v5;
}

@end