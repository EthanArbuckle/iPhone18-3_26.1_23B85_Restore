@interface GKLeaderboardChallengeDetailsPageInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeDetailsPageInternal)initWithServerRepresentation:(id)representation;
@end

@implementation GKLeaderboardChallengeDetailsPageInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_425 != -1)
  {
    +[GKLeaderboardChallengeDetailsPageInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_424;

  return v3;
}

void __68__GKLeaderboardChallengeDetailsPageInternal_secureCodedPropertyKeys__block_invoke()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"details";
  v0 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v2 = [v0 setWithArray:v1];
  v7[1] = @"nextURL";
  v8[0] = v2;
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v4 = secureCodedPropertyKeys_sSecureCodedKeys_424;
  secureCodedPropertyKeys_sSecureCodedKeys_424 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeDetailsPageInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"result"];
  v6 = [v5 _gkMapWithBlock:&__block_literal_global_433];
  [(GKLeaderboardChallengeDetailsPageInternal *)v4 setDetails:v6];

  v7 = [fragmentCopy objectForKeyedSubscript:@"next-url"];

  [(GKLeaderboardChallengeDetailsPageInternal *)v4 setNextURL:v7];

  return v4;
}

- (GKLeaderboardChallengeDetailsPageInternal)initWithServerRepresentation:(id)representation
{
  v4 = [representation objectForKeyedSubscript:@"result"];
  v5 = [GKLeaderboardChallengeDetailsPageInternal initWithServerFragment:v4];

  return v5;
}

@end