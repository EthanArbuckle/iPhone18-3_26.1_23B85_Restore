@interface GKPlayerActivityRelationshipPlayer
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipPlayer)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation GKPlayerActivityRelationshipPlayer

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__GKPlayerActivityRelationshipPlayer_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (secureCodedPropertyKeys_onceToken_337 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_337, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_336;

  return v2;
}

void __61__GKPlayerActivityRelationshipPlayer_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___GKPlayerActivityRelationshipPlayer;
  v1 = objc_msgSendSuper2(&v6, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v7 = @"playerInternal";
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_336;
  secureCodedPropertyKeys_sSecureCodedKeys_336 = v2;

  v5 = *MEMORY[0x277D85DE8];
}

- (GKPlayerActivityRelationshipPlayer)initWithDictionary:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = GKPlayerActivityRelationshipPlayer;
  v3 = [(GKPlayerActivityRelationshipBase *)&v12 initWithDictionary:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(GKPlayerActivityRelationshipBase *)v3 name];
    [v4 setAlias:v5];

    v6 = [(GKPlayerActivityRelationshipBase *)v3 identifier];
    [v4 setPlayerID:v6];

    v7 = [(GKPlayerActivityRelationshipBase *)v3 image];

    if (v7)
    {
      v13 = @"template";
      v8 = [(GKPlayerActivityRelationshipBase *)v3 image];
      v14[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [v4 setPhotos:v9];
    }

    [(GKPlayerActivityRelationshipPlayer *)v3 setPlayerInternal:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = GKPlayerActivityRelationshipPlayer;
  v4 = [(GKPlayerActivityRelationshipBase *)&v8 description];
  v5 = [(GKPlayerActivityRelationshipPlayer *)self playerInternal];
  v6 = [v3 stringWithFormat:@"%@ \nplayer: %@", v4, v5];

  return v6;
}

@end