@interface GKPlayerActivityRelationshipLeaderboard
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipLeaderboard)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivityRelationshipLeaderboard

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__GKPlayerActivityRelationshipLeaderboard_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_527 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_527, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_526;

  return v2;
}

void __66__GKPlayerActivityRelationshipLeaderboard_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___GKPlayerActivityRelationshipLeaderboard;
  v1 = objc_msgSendSuper2(&v9, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v10[0] = @"scores";
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v10[1] = @"leaderboardInternal";
  v11[0] = v5;
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v2 addEntriesFromDictionary:v6];

  v7 = secureCodedPropertyKeys_sSecureCodedKeys_526;
  secureCodedPropertyKeys_sSecureCodedKeys_526 = v2;

  v8 = *MEMORY[0x277D85DE8];
}

- (GKPlayerActivityRelationshipLeaderboard)initWithDictionary:(id)dictionary
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = GKPlayerActivityRelationshipLeaderboard;
  v5 = [(GKPlayerActivityRelationshipBase *)&v33 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if ([v6 isEqualToString:@"FRIENDS"])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [(GKPlayerActivityRelationshipLeaderboard *)v5 setLeaderboardType:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"scores"];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [GKPlayerActivityRelationshipLeaderboardScore alloc];
          v17 = [(GKPlayerActivityRelationshipLeaderboardScore *)v16 initWithDictionary:v15, v29];
          [v9 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }

    [(GKPlayerActivityRelationshipLeaderboard *)v5 setScores:v9];
    v18 = objc_opt_new();
    identifier = [(GKPlayerActivityRelationshipBase *)v5 identifier];
    [v18 setBaseLeaderboardID:identifier];

    name = [(GKPlayerActivityRelationshipBase *)v5 name];
    [v18 setTitle:name];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"instance-id"];
    v22 = [dictionaryCopy objectForKeyedSubscript:@"start-date"];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
    v24 = v23;
    if (v21 && v22 && v23)
    {
      [v18 setIdentifier:v21];
      [v18 setType:1];
      v25 = [MEMORY[0x277CBEAA8] _gkDateFromServerTimestamp:v22];
      [v18 setStartDate:v25];

      [v24 doubleValue];
      [v18 setDuration:?];
    }

    else
    {
      identifier2 = [(GKPlayerActivityRelationshipBase *)v5 identifier];
      [v18 setIdentifier:identifier2];

      [v18 setType:0];
    }

    [(GKPlayerActivityRelationshipLeaderboard *)v5 setLeaderboardInternal:v18, v29];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = GKPlayerActivityRelationshipLeaderboard;
  v4 = [(GKPlayerActivityRelationshipBase *)&v11 description];
  name = [(GKPlayerActivityRelationshipBase *)self name];
  image = [(GKPlayerActivityRelationshipBase *)self image];
  scores = [(GKPlayerActivityRelationshipLeaderboard *)self scores];
  leaderboardInternal = [(GKPlayerActivityRelationshipLeaderboard *)self leaderboardInternal];
  v9 = [v3 stringWithFormat:@"%@ \nname: %@ \nimage: %@, scores: %@, leaderboard: %@", v4, name, image, scores, leaderboardInternal];

  return v9;
}

@end