@interface GKPlayerActivitySpecialItemInternal
+ (id)constantToTypeMap;
+ (id)secureCodedPropertyKeys;
+ (id)typeToConstantMap;
- (GKPlayerActivitySpecialItemInternal)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivitySpecialItemInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_226 != -1)
  {
    +[GKPlayerActivitySpecialItemInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_225;

  return v3;
}

void __62__GKPlayerActivitySpecialItemInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"activityType";
  v4[0] = objc_opt_class();
  v3[1] = @"message";
  v4[1] = objc_opt_class();
  v3[2] = @"alternateMessage";
  v4[2] = objc_opt_class();
  v3[3] = @"sfSymbol";
  v4[3] = objc_opt_class();
  v3[4] = @"timeStamp";
  v4[4] = objc_opt_class();
  v3[5] = @"instrumentationKey";
  v4[5] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_225;
  secureCodedPropertyKeys_sSecureCodedKeys_225 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKPlayerActivitySpecialItemInternal)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = GKPlayerActivitySpecialItemInternal;
  v5 = [(GKPlayerActivitySpecialItemInternal *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEAA8];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    v8 = [v6 _gkDateFromServerTimestamp:v7];
    [(GKPlayerActivitySpecialItemInternal *)v5 setTimeStamp:v8];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"message"];
    [(GKPlayerActivitySpecialItemInternal *)v5 setMessage:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"alternate-message"];
    [(GKPlayerActivitySpecialItemInternal *)v5 setAlternateMessage:v10];

    v11 = +[GKPlayerActivitySpecialItemInternal constantToTypeMap];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      integerValue = [v13 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    [(GKPlayerActivitySpecialItemInternal *)v5 setActivityType:integerValue];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"symbol"];
    [(GKPlayerActivitySpecialItemInternal *)v5 setSfSymbol:v15];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"instKey"];
    [(GKPlayerActivitySpecialItemInternal *)v5 setInstrumentationKey:v16];
  }

  return v5;
}

+ (id)typeToConstantMap
{
  if (typeToConstantMap_onceToken_239 != -1)
  {
    +[GKPlayerActivitySpecialItemInternal typeToConstantMap];
  }

  v3 = typeToConstantMap_typeToConstMap_240;

  return v3;
}

void __56__GKPlayerActivitySpecialItemInternal_typeToConstantMap__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = &unk_283B33328;
  v4[0] = @"ADD_FRIENDS";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = typeToConstantMap_typeToConstMap_240;
  typeToConstantMap_typeToConstMap_240 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)constantToTypeMap
{
  if (constantToTypeMap_onceToken_243 != -1)
  {
    +[GKPlayerActivitySpecialItemInternal constantToTypeMap];
  }

  v3 = constantToTypeMap_constToTypeMap_244;

  return v3;
}

void __56__GKPlayerActivitySpecialItemInternal_constantToTypeMap__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"ADD_FRIENDS";
  v4[0] = &unk_283B33328;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = constantToTypeMap_constToTypeMap_244;
  constantToTypeMap_constToTypeMap_244 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  selfCopy = self;
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKPlayerActivitySpecialItemInternal activityType](self, "activityType")}];
  message = [(GKPlayerActivitySpecialItemInternal *)self message];
  alternateMessage = [(GKPlayerActivitySpecialItemInternal *)self alternateMessage];
  sfSymbol = [(GKPlayerActivitySpecialItemInternal *)self sfSymbol];
  timeStamp = [(GKPlayerActivitySpecialItemInternal *)self timeStamp];
  instrumentationKey = [(GKPlayerActivitySpecialItemInternal *)self instrumentationKey];
  v11 = [v3 stringWithFormat:@"<%@ %p>: {\n            \tactivityType: %@ \n            \tmessage: %@ \n            \talternateMessage: %@ \n            \tsfSymbol: %@ \n            \ttimestamp: %@ \n            \tinstrumentationKey: %@ \n            }", v4, &selfCopy, v5, message, alternateMessage, sfSymbol, timeStamp, instrumentationKey];

  return v11;
}

@end