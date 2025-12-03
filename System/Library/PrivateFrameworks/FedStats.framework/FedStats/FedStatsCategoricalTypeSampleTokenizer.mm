@interface FedStatsCategoricalTypeSampleTokenizer
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
+ (id)mutateParameters:(id)parameters usingFieldValues:(id)values assetURLs:(id)ls requiredFields:(id *)fields assetNames:(id *)names error:(id *)error;
- (FedStatsCategoricalTypeSampleTokenizer)initWithKnownListDB:(id)b;
- (id)tokenize:(id)tokenize;
@end

@implementation FedStatsCategoricalTypeSampleTokenizer

- (FedStatsCategoricalTypeSampleTokenizer)initWithKnownListDB:(id)b
{
  bCopy = b;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalTypeSampleTokenizer;
  v6 = [(FedStatsCategoricalTypeSampleTokenizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knownListDB, b);
  }

  return v7;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v7 = [parametersCopy objectForKey:@"fileName"];
  if (v7)
  {
    v8 = [parametersCopy objectForKey:@"tableName"];
    v9 = [parametersCopy objectForKey:@"columnName"];
    v14 = 0;
    v10 = [FedStatsSQLiteDenyListDatabase databaseWithFileURL:v7 tableName:v8 columnName:v9 error:&v14];
    v11 = v14;
    if (v10)
    {
      v12 = [[self alloc] initWithKnownListDB:v10];
    }

    else if (error)
    {
      [FedStatsError errorWithCode:101 underlyingError:v11 description:@"The URL cannot be loaded as a database"];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [[self alloc] initWithKnownListDB:0];
  }

  return v12;
}

- (id)tokenize:(id)tokenize
{
  v27 = *MEMORY[0x277D85DE8];
  tokenizeCopy = tokenize;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [tokenizeCopy componentsSeparatedByString:@" "];
    array = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ([v12 length])
          {
            knownListDB = [(FedStatsCategoricalTypeSampleTokenizer *)self knownListDB];
            v14 = [knownListDB isInDenyList:v12 partialMatch:0];

            if ((v14 & 1) == 0)
            {
              [array addObject:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    if ([array count])
    {
      v15 = [array objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(array, "count"))}];
      v16 = +[FedStatsLog logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(FedStatsCategoricalTypeSampleTokenizer *)v15 tokenize:v16];
      }

      v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "length")}];
      if ([v15 length])
      {
        v18 = 0;
        do
        {
          v19 = [v15 substringWithRange:{v18, 1, v22}];
          [v17 addObject:v19];

          ++v18;
        }

        while (v18 < [v15 length]);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)mutateParameters:(id)parameters usingFieldValues:(id)values assetURLs:(id)ls requiredFields:(id *)fields assetNames:(id *)names error:(id *)error
{
  parametersCopy = parameters;
  valuesCopy = values;
  lsCopy = ls;
  v16 = [parametersCopy objectForKey:@"fileName"];

  if (v16)
  {
    v17 = [FedStatsCategoricalTypeAssetSpecifier mutateParameters:parametersCopy forKey:@"fileName" usingFieldValues:valuesCopy assetURLs:lsCopy requiredFields:fields assetNames:names error:error];
  }

  else
  {
    v17 = parametersCopy;
  }

  v18 = v17;

  return v18;
}

- (void)tokenize:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24AAFE000, a2, OS_LOG_TYPE_DEBUG, "Sample random word: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end