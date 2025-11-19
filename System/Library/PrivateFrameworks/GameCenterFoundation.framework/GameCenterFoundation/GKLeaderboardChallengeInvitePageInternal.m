@interface GKLeaderboardChallengeInvitePageInternal
+ (id)initWithServerFragment:(id)a3;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeInvitePageInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_342 != -1)
  {
    +[GKLeaderboardChallengeInvitePageInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_341;

  return v3;
}

void __67__GKLeaderboardChallengeInvitePageInternal_secureCodedPropertyKeys__block_invoke()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"invites";
  v0 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v2 = [v0 setWithArray:v1];
  v7[1] = @"nextURL";
  v8[0] = v2;
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v4 = secureCodedPropertyKeys_sSecureCodedKeys_341;
  secureCodedPropertyKeys_sSecureCodedKeys_341 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)initWithServerFragment:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GKLeaderboardChallengeInvitePageInternal);
  v5 = [v3 objectForKeyedSubscript:@"result"];
  v6 = [v5 _gkMapWithBlock:&__block_literal_global_356];
  [(GKLeaderboardChallengeInvitePageInternal *)v4 setInvites:v6];

  v7 = [v3 objectForKeyedSubscript:@"next-url"];

  [(GKLeaderboardChallengeInvitePageInternal *)v4 setNextURL:v7];

  return v4;
}

@end