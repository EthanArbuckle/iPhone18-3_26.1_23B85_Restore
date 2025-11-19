@interface GKMatchedPlayers
- (GKMatchedPlayers)initWithMatch:(id)a3 players:(id)a4;
- (id)description;
@end

@implementation GKMatchedPlayers

- (GKMatchedPlayers)initWithMatch:(id)a3 players:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = GKMatchedPlayers;
  v8 = [(GKMatchedPlayers *)&v16 init];
  if (v8)
  {
    v9 = [v6 properties];
    v10 = [v9 count];
    if (v10)
    {
      v10 = [v6 properties];
    }

    properties = v8->_properties;
    v8->_properties = v10;

    objc_storeStrong(&v8->_players, a4);
    v12 = [v6 playerProperties];
    v13 = [v12 count];
    if (v13)
    {
      v13 = [v6 playerProperties];
    }

    playerProperties = v8->_playerProperties;
    v8->_playerProperties = v13;
  }

  return v8;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GKMatchedPlayers *)self properties];
  [v3 appendFormat:@"<%@ %p properties:%@, players[properties]:\n", v5, self, v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(GKMatchedPlayers *)self players];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 description];
        v14 = [(GKMatchedPlayers *)self playerProperties];
        v15 = [v14 objectForKeyedSubscript:v12];
        [v3 appendFormat:@"    %@[%@]", v13, v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

@end