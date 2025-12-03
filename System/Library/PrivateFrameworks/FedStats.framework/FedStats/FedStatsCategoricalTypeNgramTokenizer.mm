@interface FedStatsCategoricalTypeNgramTokenizer
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
+ (id)mutateParameters:(id)parameters usingFieldValues:(id)values assetURLs:(id)ls requiredFields:(id *)fields assetNames:(id *)names error:(id *)error;
- (FedStatsCategoricalTypeNgramTokenizer)initWithShuffleMethod:(id)method popularWordsDB:(id)b;
- (id)tokenize:(id)tokenize;
- (void)shuffleWords:(id)words;
@end

@implementation FedStatsCategoricalTypeNgramTokenizer

- (FedStatsCategoricalTypeNgramTokenizer)initWithShuffleMethod:(id)method popularWordsDB:(id)b
{
  methodCopy = method;
  bCopy = b;
  v12.receiver = self;
  v12.super_class = FedStatsCategoricalTypeNgramTokenizer;
  v9 = [(FedStatsCategoricalTypeNgramTokenizer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shuffleMethod, method);
    objc_storeStrong(&v10->_popularWordsDB, b);
  }

  return v10;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v6 = [parametersCopy objectForKey:@"shuffleMethod"];
  v7 = v6;
  if (!v6)
  {
    v10 = 0;
    goto LABEL_9;
  }

  if (([v6 isEqualToString:@"popular"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"nonPopular") & 1) == 0)
  {
    if (error)
      v14 = {;
      *error = [FedStatsError errorWithCode:101 description:v14];
    }

LABEL_14:
    v10 = 0;
    goto LABEL_16;
  }

  v8 = [parametersCopy objectForKey:@"fileName"];
  if (!v8)
  {
    if (error)
    {
      [FedStatsError errorWithCode:300 description:@"No popular words downloaded."];
      v10 = 0;
      *error = v13 = 0;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v9 = v8;
  v16 = 0;
  v10 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v8 minIndex:0x7FFFFFFFFFFFFFFFLL maxIndex:0x7FFFFFFFFFFFFFFFLL checkForPrimaryKey:1 error:&v16];
  v11 = v16;
  v12 = v11;
  if (!error || !v11)
  {

    if (v12)
    {
      goto LABEL_16;
    }

LABEL_9:
    v13 = [[FedStatsCategoricalTypeNgramTokenizer alloc] initWithShuffleMethod:v7 popularWordsDB:v10];
    goto LABEL_17;
  }

  *error = [FedStatsError errorWithCode:101 underlyingError:v11 description:@"Load popular words for database failed."];

LABEL_16:
  v13 = 0;
LABEL_17:

  return v13;
}

- (void)shuffleWords:(id)words
{
  wordsCopy = words;
  shuffleMethod = [(FedStatsCategoricalTypeNgramTokenizer *)self shuffleMethod];
  if (shuffleMethod)
  {
    v6 = shuffleMethod;
    popularWordsDB = [(FedStatsCategoricalTypeNgramTokenizer *)self popularWordsDB];

    if (popularWordsDB)
    {
      popularWordsDB2 = [(FedStatsCategoricalTypeNgramTokenizer *)self popularWordsDB];
      v14 = 0;
      v9 = [popularWordsDB2 encodeCategories:wordsCopy error:&v14];
      v10 = v14;

      if (!v10)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __54__FedStatsCategoricalTypeNgramTokenizer_shuffleWords___block_invoke;
        v11[3] = &unk_278FF6100;
        v12 = v9;
        selfCopy = self;
        [wordsCopy sortUsingComparator:v11];
      }
    }
  }
}

uint64_t __54__FedStatsCategoricalTypeNgramTokenizer_shuffleWords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKey:v5];
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = -1;
  }

  v10 = [*(a1 + 32) objectForKey:v6];

  if (v10)
  {
    v11 = [*(a1 + 32) objectForKey:v6];
    v12 = [v11 unsignedIntegerValue];
  }

  else
  {
    v12 = -1;
  }

  v13 = [*(a1 + 40) shuffleMethod];
  v14 = [v13 isEqualToString:@"popular"];

  if (v9 < v12)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if (v9 > v12)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (id)tokenize:(id)tokenize
{
  tokenizeCopy = tokenize;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [tokenizeCopy componentsSeparatedByString:@" "];
    v6 = [v5 mutableCopy];

    if ([v6 count])
    {
      [(FedStatsCategoricalTypeNgramTokenizer *)self shuffleWords:v6];
      v7 = +[FedStatsLog logger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(FedStatsCategoricalTypeNgramTokenizer *)v6 tokenize:v7];
      }

      v8 = [v6 count];
      v9 = v8 - 1;
      if (v8 != 1)
      {
        do
        {
          [v6 insertObject:@"<BT>" atIndex:v9--];
        }

        while (v9);
      }

      v10 = [v6 copy];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
  _os_log_debug_impl(&dword_24AAFE000, a2, OS_LOG_TYPE_DEBUG, "Ngram words: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end