@interface GKLeaderboardScore
+ (id)convertToGKScore:(id)a3;
@end

@implementation GKLeaderboardScore

+ (id)convertToGKScore:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 player];

        if (v11)
        {
          v12 = [GKScore alloc];
          v13 = [v10 leaderboardID];
          v14 = [v10 player];
          v15 = [(GKScore *)v12 initWithLeaderboardIdentifier:v13 player:v14];
        }

        else
        {
          v15 = objc_alloc_init(GKScore);

          v13 = [v10 leaderboardID];
          [(GKScore *)v15 setLeaderboardIdentifier:v13];
        }

        v7 = v15;

        -[GKScore setValue:](v15, "setValue:", [v10 value]);
        -[GKScore setContext:](v15, "setContext:", [v10 context]);
        [v4 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

@end