@interface GKLeaderboardChallengeInviteInternal
+ (id)initWithServerFragment:(id)a3;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeInviteInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_332 != -1)
  {
    +[GKLeaderboardChallengeInviteInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_331;

  return v3;
}

void __63__GKLeaderboardChallengeInviteInternal_secureCodedPropertyKeys__block_invoke()
{
  v8[6] = *MEMORY[0x277D85DE8];
  v7[0] = @"challengeID";
  v8[0] = objc_opt_class();
  v7[1] = @"challengeVendorID";
  v8[1] = objc_opt_class();
  v7[2] = @"bundleID";
  v8[2] = objc_opt_class();
  v7[3] = @"bundleIDs";
  v0 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v2 = [v0 setWithArray:v1];
  v8[3] = v2;
  v7[4] = @"fromPlayerID";
  v8[4] = objc_opt_class();
  v7[5] = @"invitedDate";
  v8[5] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v4 = secureCodedPropertyKeys_sSecureCodedKeys_331;
  secureCodedPropertyKeys_sSecureCodedKeys_331 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)initWithServerFragment:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GKLeaderboardChallengeInviteInternal);
  v5 = [v3 objectForKeyedSubscript:@"challenge-id"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setChallengeID:v5];

  v6 = [v3 objectForKeyedSubscript:@"challenge-vendor-id"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setChallengeVendorID:v6];

  v7 = [v3 objectForKeyedSubscript:@"bundle-id"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setBundleID:v7];

  v8 = [v3 objectForKeyedSubscript:@"bundle-ids"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setBundleIDs:v8];

  v9 = [v3 objectForKeyedSubscript:@"from-player-id"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setFromPlayerID:v9];

  v10 = MEMORY[0x277CBEAA8];
  v11 = [v3 objectForKeyedSubscript:@"invited-timestamp"];

  v12 = [v10 _gkDateFromServerTimestamp:v11];
  [(GKLeaderboardChallengeInviteInternal *)v4 setInvitedDate:v12];

  return v4;
}

@end