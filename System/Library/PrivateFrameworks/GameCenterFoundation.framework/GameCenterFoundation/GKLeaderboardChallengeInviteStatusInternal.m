@interface GKLeaderboardChallengeInviteStatusInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeInviteStatusInternal)initWithServerRepresentation:(id)a3;
@end

@implementation GKLeaderboardChallengeInviteStatusInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_316 != -1)
  {
    +[GKLeaderboardChallengeInviteStatusInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_315;

  return v3;
}

void __69__GKLeaderboardChallengeInviteStatusInternal_secureCodedPropertyKeys__block_invoke()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"invitees";
  v0 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v2 = [v0 setWithArray:v1];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = secureCodedPropertyKeys_sSecureCodedKeys_315;
  secureCodedPropertyKeys_sSecureCodedKeys_315 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (GKLeaderboardChallengeInviteStatusInternal)initWithServerRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKLeaderboardChallengeInviteStatusInternal;
  v5 = [(GKLeaderboardChallengeInviteStatusInternal *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"responses"];
    v7 = [v6 _gkMapWithBlock:&__block_literal_global_325];
    [(GKLeaderboardChallengeInviteStatusInternal *)v5 setInvitees:v7];
  }

  return v5;
}

GKLeaderboardChallengeInviteeStatusInternal *__75__GKLeaderboardChallengeInviteStatusInternal_initWithServerRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeInviteeStatusInternal alloc] initWithServerFragment:v2];

  return v3;
}

@end