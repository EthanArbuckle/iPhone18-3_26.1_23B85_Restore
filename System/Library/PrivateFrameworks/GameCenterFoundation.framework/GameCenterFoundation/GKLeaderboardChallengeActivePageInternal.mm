@interface GKLeaderboardChallengeActivePageInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeActivePageInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_464 != -1)
  {
    +[GKLeaderboardChallengeActivePageInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_463;

  return v3;
}

void __67__GKLeaderboardChallengeActivePageInternal_secureCodedPropertyKeys__block_invoke()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"actives";
  v0 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v2 = [v0 setWithArray:v1];
  v7[1] = @"nextURL";
  v8[0] = v2;
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v4 = secureCodedPropertyKeys_sSecureCodedKeys_463;
  secureCodedPropertyKeys_sSecureCodedKeys_463 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeActivePageInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"result"];
  v6 = [v5 _gkMapWithBlock:&__block_literal_global_472];
  [(GKLeaderboardChallengeActivePageInternal *)v4 setActives:v6];

  v7 = [fragmentCopy objectForKeyedSubscript:@"next-url"];

  [(GKLeaderboardChallengeActivePageInternal *)v4 setNextURL:v7];

  return v4;
}

@end