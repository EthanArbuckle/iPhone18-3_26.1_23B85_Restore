@interface GKLeaderboardChallengeActiveInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeActiveInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__GKLeaderboardChallengeActiveInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_445 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_445, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_444;

  return v2;
}

void __63__GKLeaderboardChallengeActiveInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___GKLeaderboardChallengeActiveInternal;
  v2 = objc_msgSendSuper2(&v8, sel_secureCodedPropertyKeys);
  v3 = [v1 dictionaryWithDictionary:v2];

  v9 = @"localizedText";
  v10[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 addEntriesFromDictionary:v4];

  v5 = [v3 copy];
  v6 = secureCodedPropertyKeys_sSecureCodedKeys_444;
  secureCodedPropertyKeys_sSecureCodedKeys_444 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeActiveInternal);
  [(GKLeaderboardChallengeDetailsInternal *)v4 updateWithServerFragment:fragmentCopy];
  v5 = [fragmentCopy objectForKeyedSubscript:@"card-text"];

  [(GKLeaderboardChallengeActiveInternal *)v4 setLocalizedText:v5];

  return v4;
}

@end