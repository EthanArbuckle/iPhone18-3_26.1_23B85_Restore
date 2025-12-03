@interface SGStringMappingTransformer
+ (id)withMappings:(id)mappings;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStringMappingTransformer:(id)transformer;
- (SGStringMappingTransformer)initWithHelperMappingType:(id)type andLanguage:(id)language;
- (SGStringMappingTransformer)initWithMappings:(id)mappings;
- (SGStringMappingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
- (id)withHelperMappingType:(id)type andLanguage:(id)language;
- (unint64_t)hash;
@end

@implementation SGStringMappingTransformer

- (unint64_t)hash
{
  mappings = [(SGStringMappingTransformer *)self mappings];
  v3 = [mappings hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGStringMappingTransformer *)self isEqualToStringMappingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToStringMappingTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (transformerCopy)
  {
    mappings = [(SGStringMappingTransformer *)self mappings];
    mappings2 = [transformerCopy mappings];
    if (mappings == mappings2)
    {
      v9 = 1;
    }

    else
    {
      mappings3 = [(SGStringMappingTransformer *)self mappings];
      mappings4 = [transformerCopy mappings];
      v9 = [mappings3 isEqual:mappings4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SGStringMappingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  v7 = [plistCopy objectForKeyedSubscript:@"MAPPING_TYPE"];
  if (v7 && (v8 = v7, [plistCopy objectForKeyedSubscript:@"MAPPING_LANGUAGE"], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [plistCopy objectForKeyedSubscript:@"MAPPING_TYPE"];
    v11 = [plistCopy objectForKeyedSubscript:@"MAPPING_LANGUAGE"];
    v12 = [(SGStringMappingTransformer *)self initWithHelperMappingType:v10 andLanguage:v11];
  }

  else
  {
    v10 = [plistCopy objectForKeyedSubscript:@"MAPPINGS"];
    v12 = [(SGStringMappingTransformer *)self initWithMappings:v10];
  }

  return v12;
}

- (id)toPlistWithChunks:(id)chunks
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"MAPPINGS";
  mappings = [(SGStringMappingTransformer *)self mappings];
  v8[0] = mappings;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)transform:(id)transform
{
  v22 = *MEMORY[0x277D85DE8];
  transformCopy = transform;
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
  v6 = transformCopy;
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
        mappings = [(SGStringMappingTransformer *)self mappings];
        v13 = [mappings objectForKey:v11];

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

- (SGStringMappingTransformer)initWithHelperMappingType:(id)type andLanguage:(id)language
{
  typeCopy = type;
  languageCopy = language;
  v11.receiver = self;
  v11.super_class = SGStringMappingTransformer;
  v8 = [(SGStringMappingTransformer *)&v11 init];
  if (v8)
  {
    v9 = [SGModelMappingHelper mappingsForType:typeCopy andLanguage:languageCopy];
    [(SGStringMappingTransformer *)v8 setMappings:v9];
  }

  return v8;
}

- (SGStringMappingTransformer)initWithMappings:(id)mappings
{
  mappingsCopy = mappings;
  v8.receiver = self;
  v8.super_class = SGStringMappingTransformer;
  v5 = [(SGStringMappingTransformer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SGStringMappingTransformer *)v5 setMappings:mappingsCopy];
  }

  return v6;
}

- (id)withHelperMappingType:(id)type andLanguage:(id)language
{
  languageCopy = language;
  typeCopy = type;
  v7 = [[SGStringMappingTransformer alloc] initWithHelperMappingType:typeCopy andLanguage:languageCopy];

  return v7;
}

+ (id)withMappings:(id)mappings
{
  mappingsCopy = mappings;
  v4 = [[SGStringMappingTransformer alloc] initWithMappings:mappingsCopy];

  return v4;
}

@end