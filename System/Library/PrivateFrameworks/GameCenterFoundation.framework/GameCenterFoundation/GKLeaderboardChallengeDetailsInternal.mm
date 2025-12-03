@interface GKLeaderboardChallengeDetailsInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
- (void)updateWithServerFragment:(id)fragment;
@end

@implementation GKLeaderboardChallengeDetailsInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__GKLeaderboardChallengeDetailsInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_386 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_386, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_385;

  return v2;
}

void __64__GKLeaderboardChallengeDetailsInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___GKLeaderboardChallengeDetailsInternal;
  v2 = objc_msgSendSuper2(&v11, sel_secureCodedPropertyKeys);
  v3 = [v1 dictionaryWithDictionary:v2];

  v13[0] = @"participants";
  v4 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v6 = [v4 setWithArray:v5];
  v14[0] = v6;
  v13[1] = @"participantCount";
  v14[1] = objc_opt_class();
  v13[2] = @"rank";
  v14[2] = objc_opt_class();
  v13[3] = @"remainingAttempts";
  v14[3] = objc_opt_class();
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v3 addEntriesFromDictionary:v7];

  v8 = [v3 copy];
  v9 = secureCodedPropertyKeys_sSecureCodedKeys_385;
  secureCodedPropertyKeys_sSecureCodedKeys_385 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateWithServerFragment:(id)fragment
{
  v10.receiver = self;
  v10.super_class = GKLeaderboardChallengeDetailsInternal;
  fragmentCopy = fragment;
  [(GKBaseLeaderboardChallengeInternal *)&v10 updateWithServerResponse:fragmentCopy];
  v5 = [fragmentCopy objectForKeyedSubscript:{@"participants-summary", v10.receiver, v10.super_class}];
  v6 = [v5 _gkMapWithBlock:&__block_literal_global_400];
  [(GKLeaderboardChallengeDetailsInternal *)self setParticipants:v6];

  v7 = [fragmentCopy objectForKeyedSubscript:@"participants-count"];
  [(GKLeaderboardChallengeDetailsInternal *)self setParticipantCount:v7];

  v8 = [fragmentCopy objectForKeyedSubscript:@"rank"];
  [(GKLeaderboardChallengeDetailsInternal *)self setRank:v8];

  v9 = [fragmentCopy objectForKeyedSubscript:@"remaining-attempts"];

  [(GKLeaderboardChallengeDetailsInternal *)self setRemainingAttempts:v9];
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeDetailsInternal);
  [(GKLeaderboardChallengeDetailsInternal *)v4 updateWithServerFragment:fragmentCopy];

  return v4;
}

@end