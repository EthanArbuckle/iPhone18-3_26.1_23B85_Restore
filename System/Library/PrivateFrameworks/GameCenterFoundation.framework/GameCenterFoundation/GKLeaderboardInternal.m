@interface GKLeaderboardInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation GKLeaderboardInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_25 != -1)
  {
    +[GKLeaderboardInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_25;

  return v3;
}

void __48__GKLeaderboardInternal_secureCodedPropertyKeys__block_invoke()
{
  v15[28] = *MEMORY[0x277D85DE8];
  v14[0] = @"baseLeaderboardID";
  v15[0] = objc_opt_class();
  v14[1] = @"context";
  v15[1] = objc_opt_class();
  v14[2] = @"creator";
  v15[2] = objc_opt_class();
  v14[3] = @"duration";
  v15[3] = objc_opt_class();
  v14[4] = @"friendRank";
  v15[4] = objc_opt_class();
  v14[5] = @"friendRankCount";
  v15[5] = objc_opt_class();
  v14[6] = @"groupIdentifier";
  v15[6] = objc_opt_class();
  v14[7] = @"icons";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v15[7] = v3;
  v14[8] = @"ascResourceID";
  v15[8] = objc_opt_class();
  v14[9] = @"identifier";
  v15[9] = objc_opt_class();
  v14[10] = @"lastSubmittedDate";
  v15[10] = objc_opt_class();
  v14[11] = @"leaderboardSetIdentifier";
  v15[11] = objc_opt_class();
  v14[12] = @"maxRank";
  v15[12] = objc_opt_class();
  v14[13] = @"nextStartDate";
  v15[13] = objc_opt_class();
  v14[14] = @"overallRank";
  v15[14] = objc_opt_class();
  v14[15] = @"overallRankCount";
  v15[15] = objc_opt_class();
  v14[16] = @"playerScore";
  v15[16] = objc_opt_class();
  v14[17] = @"recordID";
  v15[17] = objc_opt_class();
  v14[18] = @"releaseState";
  v15[18] = objc_opt_class();
  v14[19] = @"scores";
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v15[19] = v7;
  v14[20] = @"startDate";
  v15[20] = objc_opt_class();
  v14[21] = @"title";
  v15[21] = objc_opt_class();
  v14[22] = @"type";
  v15[22] = objc_opt_class();
  v14[23] = @"supportsChallenges";
  v15[23] = objc_opt_class();
  v14[24] = @"activityIdentifier";
  v15[24] = objc_opt_class();
  v14[25] = @"activityProperties";
  v8 = MEMORY[0x277CBEB98];
  v9 = +[GKInternalRepresentation secureCodedJsonTypes];
  v10 = [v8 setWithSet:v9];
  v15[25] = v10;
  v14[26] = @"leaderboardDescription";
  v15[26] = objc_opt_class();
  v14[27] = @"visibility";
  v15[27] = objc_opt_class();
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:28];
  v12 = secureCodedPropertyKeys_sSecureCodedKeys_25;
  secureCodedPropertyKeys_sSecureCodedKeys_25 = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKLeaderboardInternal *)self identifier];
    v7 = [v5 identifier];
    if (v6 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 isEqualToString:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(GKLeaderboardInternal *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end