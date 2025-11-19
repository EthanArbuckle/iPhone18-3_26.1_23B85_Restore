@interface SGStringMappingTransformer
+ (id)withMappings:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStringMappingTransformer:(id)a3;
- (SGStringMappingTransformer)initWithHelperMappingType:(id)a3 andLanguage:(id)a4;
- (SGStringMappingTransformer)initWithMappings:(id)a3;
- (SGStringMappingTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
- (id)withHelperMappingType:(id)a3 andLanguage:(id)a4;
- (unint64_t)hash;
@end

@implementation SGStringMappingTransformer

- (unint64_t)hash
{
  v2 = [(SGStringMappingTransformer *)self mappings];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGStringMappingTransformer *)self isEqualToStringMappingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToStringMappingTransformer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SGStringMappingTransformer *)self mappings];
    v6 = [v4 mappings];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(SGStringMappingTransformer *)self mappings];
      v8 = [v4 mappings];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SGStringMappingTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"MAPPING_TYPE"];
  if (v7 && (v8 = v7, [v6 objectForKeyedSubscript:@"MAPPING_LANGUAGE"], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [v6 objectForKeyedSubscript:@"MAPPING_TYPE"];
    v11 = [v6 objectForKeyedSubscript:@"MAPPING_LANGUAGE"];
    v12 = [(SGStringMappingTransformer *)self initWithHelperMappingType:v10 andLanguage:v11];
  }

  else
  {
    v10 = [v6 objectForKeyedSubscript:@"MAPPINGS"];
    v12 = [(SGStringMappingTransformer *)self initWithMappings:v10];
  }

  return v12;
}

- (id)toPlistWithChunks:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"MAPPINGS";
  v3 = [(SGStringMappingTransformer *)self mappings];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)transform:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[SGStringMappingTransformer transform:]", "SGStringMappingTransformer.m", 59, "[input isKindOfClass:[NSArray class]]");
  }

  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(SGStringMappingTransformer *)self mappings];
        v13 = [v12 objectForKey:v11];

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (SGStringMappingTransformer)initWithHelperMappingType:(id)a3 andLanguage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SGStringMappingTransformer;
  v8 = [(SGStringMappingTransformer *)&v11 init];
  if (v8)
  {
    v9 = [SGModelMappingHelper mappingsForType:v6 andLanguage:v7];
    [(SGStringMappingTransformer *)v8 setMappings:v9];
  }

  return v8;
}

- (SGStringMappingTransformer)initWithMappings:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SGStringMappingTransformer;
  v5 = [(SGStringMappingTransformer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SGStringMappingTransformer *)v5 setMappings:v4];
  }

  return v6;
}

- (id)withHelperMappingType:(id)a3 andLanguage:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SGStringMappingTransformer alloc] initWithHelperMappingType:v6 andLanguage:v5];

  return v7;
}

+ (id)withMappings:(id)a3
{
  v3 = a3;
  v4 = [[SGStringMappingTransformer alloc] initWithMappings:v3];

  return v4;
}

@end