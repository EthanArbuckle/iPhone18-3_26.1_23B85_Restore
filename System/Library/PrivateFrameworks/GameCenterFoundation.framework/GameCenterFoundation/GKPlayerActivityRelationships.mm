@interface GKPlayerActivityRelationships
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationships)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivityRelationships

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_572 != -1)
  {
    +[GKPlayerActivityRelationships secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_571;

  return v3;
}

void __56__GKPlayerActivityRelationships_secureCodedPropertyKeys__block_invoke()
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"players";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v16[0] = v2;
  v15[1] = @"games";
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v16[1] = v5;
  v15[2] = @"leaderboards";
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v16[2] = v8;
  v15[3] = @"achievements";
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v16[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v13 = secureCodedPropertyKeys_sSecureCodedKeys_571;
  secureCodedPropertyKeys_sSecureCodedKeys_571 = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (GKPlayerActivityRelationships)initWithDictionary:(id)dictionary
{
  v65 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v60.receiver = self;
  v60.super_class = GKPlayerActivityRelationships;
  v5 = [(GKPlayerActivityRelationships *)&v60 init];
  if (v5)
  {
    [dictionaryCopy objectForKeyedSubscript:@"players"];
    v6 = v43 = v5;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v8 = v6;
    v5 = v43;
    v9 = v8;
    v10 = [v8 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v57;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v57 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[GKPlayerActivityRelationshipPlayer alloc] initWithDictionary:*(*(&v56 + 1) + 8 * i)];
          [v7 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v11);
    }

    v41 = v9;

    [(GKPlayerActivityRelationships *)v43 setPlayers:v7];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"games"];
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v53;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [[GKPlayerActivityRelationshipGame alloc] initWithDictionary:*(*(&v52 + 1) + 8 * j)];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v52 objects:v63 count:16];
      }

      while (v19);
    }

    [(GKPlayerActivityRelationships *)v43 setGames:v16];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"leaderboards"];

    v42 = dictionaryCopy;
    if (v23)
    {
      array = [MEMORY[0x277CBEB18] array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v25 = [dictionaryCopy objectForKeyedSubscript:@"leaderboards"];
      v26 = [v25 countByEnumeratingWithState:&v48 objects:v62 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v49;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v49 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [[GKPlayerActivityRelationshipLeaderboard alloc] initWithDictionary:*(*(&v48 + 1) + 8 * k)];
            [array addObject:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v48 objects:v62 count:16];
        }

        while (v27);
      }

      v5 = v43;
      [(GKPlayerActivityRelationships *)v43 setLeaderboards:array];

      dictionaryCopy = v42;
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"achievements"];

    if (v31)
    {
      array2 = [MEMORY[0x277CBEB18] array];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v33 = [dictionaryCopy objectForKeyedSubscript:@"achievements"];
      v34 = [v33 countByEnumeratingWithState:&v44 objects:v61 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v45;
        do
        {
          for (m = 0; m != v35; ++m)
          {
            if (*v45 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [[GKPlayerActivityRelationshipAchievement alloc] initWithDictionary:*(*(&v44 + 1) + 8 * m)];
            [array2 addObject:v38];
          }

          v35 = [v33 countByEnumeratingWithState:&v44 objects:v61 count:16];
        }

        while (v35);
      }

      v5 = v43;
      [(GKPlayerActivityRelationships *)v43 setAchievements:array2];

      dictionaryCopy = v42;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  players = [(GKPlayerActivityRelationships *)self players];
  games = [(GKPlayerActivityRelationships *)self games];
  leaderboards = [(GKPlayerActivityRelationships *)self leaderboards];
  achievements = [(GKPlayerActivityRelationships *)self achievements];
  v8 = [v3 stringWithFormat:@"players: %@ \ngames: %@ \nleaderboard: %@ \nachievements: %@", players, games, leaderboards, achievements];

  return v8;
}

@end