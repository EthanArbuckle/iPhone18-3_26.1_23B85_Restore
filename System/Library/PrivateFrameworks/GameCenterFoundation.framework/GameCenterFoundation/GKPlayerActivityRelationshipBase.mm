@interface GKPlayerActivityRelationshipBase
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipBase)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation GKPlayerActivityRelationshipBase

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_300 != -1)
  {
    +[GKPlayerActivityRelationshipBase secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_299;

  return v3;
}

void __59__GKPlayerActivityRelationshipBase_secureCodedPropertyKeys__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"name";
  v4[0] = objc_opt_class();
  v3[1] = @"image";
  v4[1] = objc_opt_class();
  v3[2] = @"identifier";
  v4[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_299;
  secureCodedPropertyKeys_sSecureCodedKeys_299 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKPlayerActivityRelationshipBase)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GKPlayerActivityRelationshipBase;
  v5 = [(GKPlayerActivityRelationshipBase *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    [(GKPlayerActivityRelationshipBase *)v5 setName:v6];

    v7 = [v4 objectForKeyedSubscript:@"image"];
    [(GKPlayerActivityRelationshipBase *)v5 setImage:v7];

    v8 = [v4 objectForKeyedSubscript:@"id"];
    [(GKPlayerActivityRelationshipBase *)v5 setIdentifier:v8];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(GKPlayerActivityRelationshipBase *)self identifier];
  v5 = [(GKPlayerActivityRelationshipBase *)self name];
  v6 = [(GKPlayerActivityRelationshipBase *)self image];
  v7 = [v3 stringWithFormat:@"id: %@\nname: %@ \nimage: %@", v4, v5, v6];

  return v7;
}

@end