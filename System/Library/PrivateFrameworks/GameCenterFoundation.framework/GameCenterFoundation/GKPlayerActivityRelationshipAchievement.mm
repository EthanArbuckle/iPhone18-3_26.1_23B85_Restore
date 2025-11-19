@interface GKPlayerActivityRelationshipAchievement
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipAchievement)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation GKPlayerActivityRelationshipAchievement

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__GKPlayerActivityRelationshipAchievement_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (secureCodedPropertyKeys_onceToken_499 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_499, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_498;

  return v2;
}

void __66__GKPlayerActivityRelationshipAchievement_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___GKPlayerActivityRelationshipAchievement;
  v1 = objc_msgSendSuper2(&v6, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v7[0] = @"achDescription";
  v8[0] = objc_opt_class();
  v7[1] = @"timeStamp";
  v8[1] = objc_opt_class();
  v7[2] = @"progress";
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_498;
  secureCodedPropertyKeys_sSecureCodedKeys_498 = v2;

  v5 = *MEMORY[0x277D85DE8];
}

- (GKPlayerActivityRelationshipAchievement)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GKPlayerActivityRelationshipAchievement;
  v5 = [(GKPlayerActivityRelationshipBase *)&v14 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"description"];
    [(GKPlayerActivityRelationshipAchievement *)v5 setAchDescription:v6];

    v7 = [v4 objectForKeyedSubscript:@"timestamp"];
    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v7 doubleValue];
    v10 = [v8 initWithTimeIntervalSince1970:v9 / 1000.0];
    [(GKPlayerActivityRelationshipAchievement *)v5 setTimeStamp:v10];

    v11 = [v4 objectForKeyedSubscript:@"progress"];
    if (v11)
    {
      v12 = [v4 objectForKeyedSubscript:@"progress"];
      -[GKPlayerActivityRelationshipAchievement setProgress:](v5, "setProgress:", [v12 integerValue]);
    }

    else
    {
      [(GKPlayerActivityRelationshipAchievement *)v5 setProgress:100];
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = GKPlayerActivityRelationshipAchievement;
  v4 = [(GKPlayerActivityRelationshipBase *)&v10 description];
  v5 = [(GKPlayerActivityRelationshipAchievement *)self achDescription];
  v6 = [(GKPlayerActivityRelationshipAchievement *)self timeStamp];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKPlayerActivityRelationshipAchievement progress](self, "progress")}];
  v8 = [v3 stringWithFormat:@"%@ \ndescription: %@, \ntimeStamp: %@, \nprogress: %@", v4, v5, v6, v7];

  return v8;
}

@end