@interface GKMatchedPlayers
- (GKMatchedPlayers)initWithMatch:(id)match players:(id)players;
- (id)description;
@end

@implementation GKMatchedPlayers

- (GKMatchedPlayers)initWithMatch:(id)match players:(id)players
{
  matchCopy = match;
  playersCopy = players;
  v16.receiver = self;
  v16.super_class = GKMatchedPlayers;
  v8 = [(GKMatchedPlayers *)&v16 init];
  if (v8)
  {
    properties = [matchCopy properties];
    properties2 = [properties count];
    if (properties2)
    {
      properties2 = [matchCopy properties];
    }

    properties = v8->_properties;
    v8->_properties = properties2;

    objc_storeStrong(&v8->_players, players);
    playerProperties = [matchCopy playerProperties];
    playerProperties2 = [playerProperties count];
    if (playerProperties2)
    {
      playerProperties2 = [matchCopy playerProperties];
    }

    playerProperties = v8->_playerProperties;
    v8->_playerProperties = playerProperties2;
  }

  return v8;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  properties = [(GKMatchedPlayers *)self properties];
  [string appendFormat:@"<%@ %p properties:%@, players[properties]:\n", v5, self, properties];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  players = [(GKMatchedPlayers *)self players];
  v8 = [players countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(players);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 description];
        playerProperties = [(GKMatchedPlayers *)self playerProperties];
        v15 = [playerProperties objectForKeyedSubscript:v12];
        [string appendFormat:@"    %@[%@]", v13, v15];
      }

      v9 = [players countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];

  return string;
}

@end