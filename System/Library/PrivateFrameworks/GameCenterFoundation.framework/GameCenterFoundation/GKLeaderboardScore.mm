@interface GKLeaderboardScore
+ (id)convertToGKScore:(id)score;
@end

@implementation GKLeaderboardScore

+ (id)convertToGKScore:(id)score
{
  v24 = *MEMORY[0x277D85DE8];
  scoreCopy = score;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = scoreCopy;
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
        player = [v10 player];

        if (player)
        {
          v12 = [GKScore alloc];
          leaderboardID = [v10 leaderboardID];
          player2 = [v10 player];
          v15 = [(GKScore *)v12 initWithLeaderboardIdentifier:leaderboardID player:player2];
        }

        else
        {
          v15 = objc_alloc_init(GKScore);

          leaderboardID = [v10 leaderboardID];
          [(GKScore *)v15 setLeaderboardIdentifier:leaderboardID];
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