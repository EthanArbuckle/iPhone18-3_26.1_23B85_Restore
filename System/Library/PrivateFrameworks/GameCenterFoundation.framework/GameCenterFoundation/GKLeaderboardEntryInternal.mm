@interface GKLeaderboardEntryInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardEntryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_295 != -1)
  {
    +[GKLeaderboardEntryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_294;

  return v3;
}

void __53__GKLeaderboardEntryInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[8] = *MEMORY[0x277D85DE8];
  v3[0] = @"player";
  v4[0] = objc_opt_class();
  v3[1] = @"rank";
  v4[1] = objc_opt_class();
  v3[2] = @"score";
  v4[2] = objc_opt_class();
  v3[3] = @"formattedScore";
  v4[3] = objc_opt_class();
  v3[4] = @"context";
  v4[4] = objc_opt_class();
  v3[5] = @"date";
  v4[5] = objc_opt_class();
  v3[6] = @"state";
  v4[6] = objc_opt_class();
  v3[7] = @"baseLeaderboardID";
  v4[7] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:8];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_294;
  secureCodedPropertyKeys_sSecureCodedKeys_294 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end