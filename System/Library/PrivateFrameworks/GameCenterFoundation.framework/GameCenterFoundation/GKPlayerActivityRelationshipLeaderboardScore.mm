@interface GKPlayerActivityRelationshipLeaderboardScore
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipLeaderboardScore)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivityRelationshipLeaderboardScore

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_441 != -1)
  {
    +[GKPlayerActivityRelationshipLeaderboardScore secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_440;

  return v3;
}

void __71__GKPlayerActivityRelationshipLeaderboardScore_secureCodedPropertyKeys__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"player";
  v4[0] = objc_opt_class();
  v3[1] = @"score";
  v4[1] = objc_opt_class();
  v3[2] = @"rank";
  v4[2] = objc_opt_class();
  v3[3] = @"message";
  v4[3] = objc_opt_class();
  v3[4] = @"gained";
  v4[4] = objc_opt_class();
  v3[5] = @"symbol";
  v4[5] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_440;
  secureCodedPropertyKeys_sSecureCodedKeys_440 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKPlayerActivityRelationshipLeaderboardScore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = GKPlayerActivityRelationshipLeaderboardScore;
  v5 = [(GKPlayerActivityRelationshipLeaderboardScore *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"description"];
    [(GKPlayerActivityRelationshipLeaderboardScore *)v5 setScore:v6];

    v7 = [GKPlayerActivityRelationshipPlayer alloc];
    v8 = [dictionaryCopy objectForKeyedSubscript:@"player"];
    v9 = [(GKPlayerActivityRelationshipPlayer *)v7 initWithDictionary:v8];
    [(GKPlayerActivityRelationshipLeaderboardScore *)v5 setPlayer:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"rank"];
    -[GKPlayerActivityRelationshipLeaderboardScore setRank:](v5, "setRank:", [v10 integerValue]);

    v11 = [dictionaryCopy objectForKeyedSubscript:@"message"];
    [(GKPlayerActivityRelationshipLeaderboardScore *)v5 setMessage:v11];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"gained"];
    -[GKPlayerActivityRelationshipLeaderboardScore setGained:](v5, "setGained:", [v12 BOOLValue]);

    v13 = [dictionaryCopy objectForKeyedSubscript:@"symbol"];
    [(GKPlayerActivityRelationshipLeaderboardScore *)v5 setSymbol:v13];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  score = [(GKPlayerActivityRelationshipLeaderboardScore *)self score];
  player = [(GKPlayerActivityRelationshipLeaderboardScore *)self player];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKPlayerActivityRelationshipLeaderboardScore rank](self, "rank")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKPlayerActivityRelationshipLeaderboardScore gained](self, "gained")}];
  message = [(GKPlayerActivityRelationshipLeaderboardScore *)self message];
  symbol = [(GKPlayerActivityRelationshipLeaderboardScore *)self symbol];
  v10 = [v3 stringWithFormat:@"score: %@ \nplayer: %@ \nrank: %@ \ngained: %@ \n message: %@ \n symbol: %@", score, player, v6, v7, message, symbol];

  return v10;
}

@end