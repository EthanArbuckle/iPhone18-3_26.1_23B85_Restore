@interface GKPlayerActivityItemInternal
+ (id)constantToTypeMap;
+ (id)secureCodedPropertyKeys;
+ (id)typeToConstantMap;
+ (id)typeToConstantMapMetrics;
- (GKPlayerActivityItemInternal)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivityItemInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_12 != -1)
  {
    +[GKPlayerActivityItemInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_12;

  return v3;
}

void __55__GKPlayerActivityItemInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v3[0] = @"uuid";
  v4[0] = objc_opt_class();
  v3[1] = @"scrollId";
  v4[1] = objc_opt_class();
  v3[2] = @"activityType";
  v4[2] = objc_opt_class();
  v3[3] = @"layoutType";
  v4[3] = objc_opt_class();
  v3[4] = @"timeStamp";
  v4[4] = objc_opt_class();
  v3[5] = @"message";
  v4[5] = objc_opt_class();
  v3[6] = @"summaryMessage";
  v4[6] = objc_opt_class();
  v3[7] = @"relationships";
  v4[7] = objc_opt_class();
  v3[8] = @"instrumentationKey";
  v4[8] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_12;
  secureCodedPropertyKeys_sSecureCodedKeys_12 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKPlayerActivityItemInternal)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = GKPlayerActivityItemInternal;
  v5 = [(GKPlayerActivityItemInternal *)&v31 init];
  if (v5)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(GKPlayerActivityItemInternal *)v5 setUuid:uUIDString];

    v8 = MEMORY[0x277CBEAA8];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    v10 = [v8 _gkDateFromServerTimestamp:v9];
    [(GKPlayerActivityItemInternal *)v5 setTimeStamp:v10];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"message"];
    [(GKPlayerActivityItemInternal *)v5 setMessage:v11];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"summary"];
    [(GKPlayerActivityItemInternal *)v5 setSummaryMessage:v12];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    [(GKPlayerActivityItemInternal *)v5 setScrollId:v13];

    scrollId = [(GKPlayerActivityItemInternal *)v5 scrollId];
    v15 = [scrollId length];

    if (!v15)
    {
      uuid = [(GKPlayerActivityItemInternal *)v5 uuid];
      [(GKPlayerActivityItemInternal *)v5 setScrollId:uuid];
    }

    v17 = +[GKPlayerActivityItemInternal constantToTypeMap];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      integerValue = [v19 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    [(GKPlayerActivityItemInternal *)v5 setActivityType:integerValue];
    v21 = [GKPlayerActivityRelationships alloc];
    v22 = [dictionaryCopy objectForKeyedSubscript:@"relationships"];
    v23 = [(GKPlayerActivityRelationships *)v21 initWithDictionary:v22];
    [(GKPlayerActivityItemInternal *)v5 setRelationships:v23];

    v24 = [dictionaryCopy objectForKeyedSubscript:@"style"];
    v25 = [v24 objectForKeyedSubscript:@"layout"];
    if ([v25 isEqualToString:@"MILESTONE"])
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    [(GKPlayerActivityItemInternal *)v5 setLayoutType:v26];

    v27 = [dictionaryCopy objectForKeyedSubscript:@"instKey"];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_283AFD1E0;
    }

    [(GKPlayerActivityItemInternal *)v5 setInstrumentationKey:v29];
  }

  return v5;
}

+ (id)typeToConstantMap
{
  if (typeToConstantMap_onceToken != -1)
  {
    +[GKPlayerActivityItemInternal typeToConstantMap];
  }

  v3 = typeToConstantMap_typeToConstMap;

  return v3;
}

void __49__GKPlayerActivityItemInternal_typeToConstantMap__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_283B33328;
  v3[1] = &unk_283B33340;
  v4[0] = @"GAME_WITH_PLAYERS";
  v4[1] = @"PLAYER_WITH_GAME";
  v3[2] = &unk_283B33358;
  v3[3] = &unk_283B33370;
  v4[2] = @"FRIEND";
  v4[3] = @"ACHIEVEMENT";
  v3[4] = &unk_283B33388;
  v3[5] = &unk_283B333A0;
  v4[4] = @"SCORE";
  v4[5] = @"SCORES";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = typeToConstantMap_typeToConstMap;
  typeToConstantMap_typeToConstMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)typeToConstantMapMetrics
{
  if (typeToConstantMapMetrics_onceToken != -1)
  {
    +[GKPlayerActivityItemInternal typeToConstantMapMetrics];
  }

  v3 = typeToConstantMapMetrics_typeToConstMap;

  return v3;
}

void __56__GKPlayerActivityItemInternal_typeToConstantMapMetrics__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_283B33328;
  v3[1] = &unk_283B33340;
  v4[0] = @"multiFriendStartedPlaying";
  v4[1] = @"friendStartedPlaying";
  v3[2] = &unk_283B33358;
  v3[3] = &unk_283B33370;
  v4[2] = @"newFriend";
  v4[3] = @"achievement";
  v3[4] = &unk_283B33388;
  v3[5] = &unk_283B333A0;
  v4[4] = @"leaderboard";
  v4[5] = @"leaderboard";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = typeToConstantMapMetrics_typeToConstMap;
  typeToConstantMapMetrics_typeToConstMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)constantToTypeMap
{
  if (constantToTypeMap_onceToken != -1)
  {
    +[GKPlayerActivityItemInternal constantToTypeMap];
  }

  v3 = constantToTypeMap_constToTypeMap;

  return v3;
}

void __49__GKPlayerActivityItemInternal_constantToTypeMap__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"GAME_WITH_PLAYERS";
  v3[1] = @"PLAYER_WITH_GAME";
  v4[0] = &unk_283B33328;
  v4[1] = &unk_283B33340;
  v3[2] = @"FRIEND";
  v3[3] = @"ACHIEVEMENT";
  v4[2] = &unk_283B33358;
  v4[3] = &unk_283B33370;
  v3[4] = @"SCORE";
  v3[5] = @"SCORES";
  v4[4] = &unk_283B33388;
  v4[5] = &unk_283B333A0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = constantToTypeMap_constToTypeMap;
  constantToTypeMap_constToTypeMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  selfCopy = self;
  v15 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  uuid = [(GKPlayerActivityItemInternal *)self uuid];
  scrollId = [(GKPlayerActivityItemInternal *)self scrollId];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKPlayerActivityItemInternal activityType](self, "activityType")}];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKPlayerActivityItemInternal layoutType](self, "layoutType")}];
  message = [(GKPlayerActivityItemInternal *)self message];
  summaryMessage = [(GKPlayerActivityItemInternal *)self summaryMessage];
  timeStamp = [(GKPlayerActivityItemInternal *)self timeStamp];
  relationships = [(GKPlayerActivityItemInternal *)self relationships];
  instrumentationKey = [(GKPlayerActivityItemInternal *)self instrumentationKey];
  v13 = [v15 stringWithFormat:@"<%@ %p>: {\n            \tuuid: %@ \n            \tscrollId: %@ \n            \tactivityType: %@ \n            \tlayoutType: %@ \n            \tmessage: %@ \n            \tsummaryMessage: %@ \n            \ttimestamp: %@ \n            \trelations: %@ \n            \tinstrumentationKey: %@ \n            }", v3, &selfCopy, uuid, scrollId, v6, v7, message, summaryMessage, timeStamp, relationships, instrumentationKey];

  return v13;
}

@end