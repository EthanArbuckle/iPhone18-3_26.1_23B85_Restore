@interface GKPlayerActivityRelationshipGame
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipGame)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation GKPlayerActivityRelationshipGame

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__GKPlayerActivityRelationshipGame_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (secureCodedPropertyKeys_onceToken_408 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_408, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_407;

  return v2;
}

void __59__GKPlayerActivityRelationshipGame_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___GKPlayerActivityRelationshipGame;
  v1 = objc_msgSendSuper2(&v7, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v8[0] = @"adamId";
  v3 = objc_opt_class();
  v8[1] = @"icon";
  v9[0] = v3;
  v9[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 addEntriesFromDictionary:v4];

  v5 = secureCodedPropertyKeys_sSecureCodedKeys_407;
  secureCodedPropertyKeys_sSecureCodedKeys_407 = v2;

  v6 = *MEMORY[0x277D85DE8];
}

- (GKPlayerActivityRelationshipGame)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GKPlayerActivityRelationshipGame;
  v5 = [(GKPlayerActivityRelationshipBase *)&v11 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"adam-id"];
    [(GKPlayerActivityRelationshipGame *)v5 setAdamId:v6];

    v7 = [GKPlayerActivityRelationshipIcon alloc];
    v8 = [v4 objectForKeyedSubscript:@"icon"];
    v9 = [(GKPlayerActivityRelationshipIcon *)v7 initWithDictionary:v8];
    [(GKPlayerActivityRelationshipGame *)v5 setIcon:v9];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = GKPlayerActivityRelationshipGame;
  v4 = [(GKPlayerActivityRelationshipBase *)&v9 description];
  v5 = [(GKPlayerActivityRelationshipGame *)self adamId];
  v6 = [(GKPlayerActivityRelationshipGame *)self icon];
  v7 = [v3 stringWithFormat:@"%@ \nadamId: %@\nicon: %@", v4, v5, v6];

  return v7;
}

@end