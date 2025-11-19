@interface FedStatsCategoricalTypeSampleTokenizer
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
+ (id)mutateParameters:(id)a3 usingFieldValues:(id)a4 assetURLs:(id)a5 requiredFields:(id *)a6 assetNames:(id *)a7 error:(id *)a8;
- (FedStatsCategoricalTypeSampleTokenizer)initWithKnownListDB:(id)a3;
- (id)tokenize:(id)a3;
@end

@implementation FedStatsCategoricalTypeSampleTokenizer

- (FedStatsCategoricalTypeSampleTokenizer)initWithKnownListDB:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalTypeSampleTokenizer;
  v6 = [(FedStatsCategoricalTypeSampleTokenizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knownListDB, a3);
  }

  return v7;
}

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:@"fileName"];
  if (v7)
  {
    v8 = [v6 objectForKey:@"tableName"];
    v9 = [v6 objectForKey:@"columnName"];
    v14 = 0;
    v10 = [FedStatsSQLiteDenyListDatabase databaseWithFileURL:v7 tableName:v8 columnName:v9 error:&v14];
    v11 = v14;
    if (v10)
    {
      v12 = [[a1 alloc] initWithKnownListDB:v10];
    }

    else if (a4)
    {
      [FedStatsError errorWithCode:101 underlyingError:v11 description:@"The URL cannot be loaded as a database"];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [[a1 alloc] initWithKnownListDB:0];
  }

  return v12;
}

- (id)tokenize:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 componentsSeparatedByString:@" "];
    v6 = [MEMORY[0x277CBEB18] array];
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
            v13 = [(FedStatsCategoricalTypeSampleTokenizer *)self knownListDB];
            v14 = [v13 isInDenyList:v12 partialMatch:0];

            if ((v14 & 1) == 0)
            {
              [v6 addObject:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v15 = [v6 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v6, "count"))}];
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

+ (id)mutateParameters:(id)a3 usingFieldValues:(id)a4 assetURLs:(id)a5 requiredFields:(id *)a6 assetNames:(id *)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [v13 objectForKey:@"fileName"];

  if (v16)
  {
    v17 = [FedStatsCategoricalTypeAssetSpecifier mutateParameters:v13 forKey:@"fileName" usingFieldValues:v14 assetURLs:v15 requiredFields:a6 assetNames:a7 error:a8];
  }

  else
  {
    v17 = v13;
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