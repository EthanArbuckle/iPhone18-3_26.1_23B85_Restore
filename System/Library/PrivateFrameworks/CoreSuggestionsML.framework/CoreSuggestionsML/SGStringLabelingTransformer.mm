@interface SGStringLabelingTransformer
+ (id)convertLabelsToMapping:(id)mapping;
+ (id)withLabelStrings:(id)strings;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStringLabelingTransformer:(id)transformer;
- (SGStringLabelingTransformer)initWithLabelMapping:(id)mapping;
- (SGStringLabelingTransformer)initWithLabelStrings:(id)strings;
- (SGStringLabelingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
@end

@implementation SGStringLabelingTransformer

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGStringLabelingTransformer *)self isEqualToStringLabelingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToStringLabelingTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (transformerCopy)
  {
    v5 = self->_labelMapping;
    v6 = v5;
    if (v5 == transformerCopy[1])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSDictionary *)v5 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SGStringLabelingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v6 = [plist objectForKeyedSubscript:{@"LABEL_MAPPING", chunks, context}];
  v7 = [(SGStringLabelingTransformer *)self initWithLabelMapping:v6];

  return v7;
}

- (id)toPlistWithChunks:(id)chunks
{
  v8[1] = *MEMORY[0x277D85DE8];
  labelMapping = self->_labelMapping;
  v7 = @"LABEL_MAPPING";
  v8[0] = labelMapping;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[SGStringLabelingTransformer transform:]", "SGStringLabelingTransformer.m", 58, "[input isKindOfClass:[NSString class]]");
  }

  v5 = [(NSDictionary *)self->_labelMapping objectForKeyedSubscript:transformCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &unk_28599AF30;
  }

  v8 = v7;

  return v7;
}

- (SGStringLabelingTransformer)initWithLabelMapping:(id)mapping
{
  mappingCopy = mapping;
  if (!mappingCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGStringLabelingTransformer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"mapping"}];
  }

  v11.receiver = self;
  v11.super_class = SGStringLabelingTransformer;
  v7 = [(SGStringLabelingTransformer *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_labelMapping, mapping);
  }

  return v8;
}

- (SGStringLabelingTransformer)initWithLabelStrings:(id)strings
{
  stringsCopy = strings;
  if (!stringsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGStringLabelingTransformer.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"labels"}];
  }

  v6 = [SGStringLabelingTransformer convertLabelsToMapping:stringsCopy];
  v7 = [(SGStringLabelingTransformer *)self initWithLabelMapping:v6];

  return v7;
}

+ (id)convertLabelsToMapping:(id)mapping
{
  v32 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  if (!mappingCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGStringLabelingTransformer.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"labels"}];
  }

  v4 = objc_opt_new();
  if ([mappingCopy count])
  {
    v5 = 0;
    v22 = mappingCopy;
    do
    {
      context = objc_autoreleasePoolPush();
      v6 = [mappingCopy objectAtIndex:v5];
      v24 = v5 + 1;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 + 1];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v28;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v27 + 1) + 8 * i);
            v14 = [v4 objectForKeyedSubscript:v13];
            if (v14)
            {
              v15 = v14;
              v16 = [v4 objectForKeyedSubscript:v13];
              v17 = [v16 isEqualToNumber:v7];

              if ((v17 & 1) == 0)
              {
                currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGStringLabelingTransformer.m" lineNumber:34 description:{@"duplicate label %@", v13}];
              }
            }

            [v4 setObject:v7 forKey:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v10);
      }

      objc_autoreleasePoolPop(context);
      mappingCopy = v22;
      v5 = v24;
    }

    while (v24 < [v22 count]);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)withLabelStrings:(id)strings
{
  stringsCopy = strings;
  v5 = [[self alloc] initWithLabelStrings:stringsCopy];

  return v5;
}

@end