@interface GKGameGenre
+ (id)secureCodedPropertyKeys;
- (GKGameGenre)initWithGenreID:(id)a3 name:(id)a4 parentID:(id)a5;
- (id)description;
@end

@implementation GKGameGenre

- (GKGameGenre)initWithGenreID:(id)a3 name:(id)a4 parentID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = GKGameGenre;
  v11 = [(GKGameGenre *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    genreID = v11->_genreID;
    v11->_genreID = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [v10 copy];
    parentID = v11->_parentID;
    v11->_parentID = v16;
  }

  return v11;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_170 != -1)
  {
    +[GKGameGenre secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_169;

  return v3;
}

void __38__GKGameGenre_secureCodedPropertyKeys__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"genreID";
  v4[0] = objc_opt_class();
  v3[1] = @"name";
  v4[1] = objc_opt_class();
  v3[2] = @"parentID";
  v4[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_169;
  secureCodedPropertyKeys_sSecureCodedKeys_169 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GKGameGenre *)self genreID];
  v7 = [(GKGameGenre *)self name];
  v8 = [(GKGameGenre *)self parentID];
  v9 = [v3 stringWithFormat:@"%@: genreID: %@, name: %@, parentID: %@", v5, v6, v7, v8];

  return v9;
}

@end