@interface GKBaseLeaderboardChallengeInternal
+ (id)secureCodedPropertyKeys;
- (void)updateWithServerResponse:(id)a3;
@end

@implementation GKBaseLeaderboardChallengeInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_104 != -1)
  {
    +[GKBaseLeaderboardChallengeInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_103;

  return v3;
}

void __61__GKBaseLeaderboardChallengeInternal_secureCodedPropertyKeys__block_invoke()
{
  v8[7] = *MEMORY[0x277D85DE8];
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
  v7[4] = @"startDate";
  v8[4] = objc_opt_class();
  v7[5] = @"endDate";
  v8[5] = objc_opt_class();
  v7[6] = @"scheduledEndDate";
  v8[6] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:7];
  v4 = secureCodedPropertyKeys_sSecureCodedKeys_103;
  secureCodedPropertyKeys_sSecureCodedKeys_103 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateWithServerResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"challenge-id"];
  [(GKBaseLeaderboardChallengeInternal *)self setChallengeID:v5];

  v6 = [v4 objectForKeyedSubscript:@"challenge-vendor-id"];
  [(GKBaseLeaderboardChallengeInternal *)self setChallengeVendorID:v6];

  v7 = [v4 objectForKeyedSubscript:@"bundle-id"];
  [(GKBaseLeaderboardChallengeInternal *)self setBundleID:v7];

  v8 = [v4 objectForKeyedSubscript:@"bundle-ids"];
  [(GKBaseLeaderboardChallengeInternal *)self setBundleIDs:v8];

  v9 = MEMORY[0x277CBEAA8];
  v10 = [v4 objectForKeyedSubscript:@"start-timestamp"];
  v11 = [v9 _gkDateFromServerTimestamp:v10];
  [(GKBaseLeaderboardChallengeInternal *)self setStartDate:v11];

  v12 = MEMORY[0x277CBEAA8];
  v13 = [v4 objectForKeyedSubscript:@"end-timestamp"];
  v14 = [v12 _gkDateFromServerTimestamp:v13];
  [(GKBaseLeaderboardChallengeInternal *)self setEndDate:v14];

  v15 = MEMORY[0x277CBEAA8];
  v17 = [v4 objectForKeyedSubscript:@"scheduled-end-timestamp"];

  v16 = [v15 _gkDateFromServerTimestamp:v17];
  [(GKBaseLeaderboardChallengeInternal *)self setScheduledEndDate:v16];
}

@end