@interface FCTopStoriesGroupConfig
- (FCTopStoriesGroupConfig)initWithDictionary:(id)dictionary;
@end

@implementation FCTopStoriesGroupConfig

- (FCTopStoriesGroupConfig)initWithDictionary:(id)dictionary
{
  v31.receiver = self;
  v31.super_class = FCTopStoriesGroupConfig;
  v3 = [(FCGroupConfig *)&v31 initWithDictionary:dictionary];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [(FCGroupConfig *)v3 dictionary];
    v8 = [dictionary2 objectForKeyedSubscript:@"mandatory_articles"];

    if (v8)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __46__FCTopStoriesGroupConfig_initWithDictionary___block_invoke;
      v28[3] = &unk_1E7C3EEC0;
      v29 = dictionary;
      v30 = array;
      [v8 enumerateObjectsUsingBlock:v28];
    }

    dictionary3 = [(FCGroupConfig *)v3 dictionary];
    v10 = [dictionary3 objectForKeyedSubscript:@"personalized_articles"];

    if (v10)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __46__FCTopStoriesGroupConfig_initWithDictionary___block_invoke_2;
      v25 = &unk_1E7C3EEC0;
      v26 = array2;
      v27 = dictionary;
      [v10 enumerateObjectsUsingBlock:&v22];
    }

    v11 = [(FCGroupConfig *)v3 dictionary:v22];
    v12 = [v11 objectForKeyedSubscript:@"publishDate"];

    if (v12)
    {
      v13 = [MEMORY[0x1E695DF00] fc_dateFromStringWithISO8601Format:v12];
    }

    else
    {
      v13 = 0;
    }

    mandatoryArticleIDPairs = v3->_mandatoryArticleIDPairs;
    v3->_mandatoryArticleIDPairs = array;
    v15 = array;

    optionalArticleIDs = v3->_optionalArticleIDs;
    v3->_optionalArticleIDs = array2;
    v17 = array2;

    topStoriesMetadataByArticleID = v3->_topStoriesMetadataByArticleID;
    v3->_topStoriesMetadataByArticleID = dictionary;
    v19 = dictionary;

    publishDate = v3->_publishDate;
    v3->_publishDate = v13;
  }

  return v3;
}

void __46__FCTopStoriesGroupConfig_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [v3 objectForKeyedSubscript:@"id"];
  v4 = [[FCArticleMetadata alloc] initWithDictionary:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v10];

  v5 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"paidArticle", 0);

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"id"];
    if (v6)
    {
      v7 = [[FCArticleMetadata alloc] initWithDictionary:v5];
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v9 = [FCPair pairWithFirst:v10 second:v6];
  [v8 addObject:v9];
}

void __46__FCTopStoriesGroupConfig_initWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 objectForKeyedSubscript:@"id"];
  [*(a1 + 32) addObject:v5];
  v4 = [[FCArticleMetadata alloc] initWithDictionary:v3];

  [*(a1 + 40) setObject:v4 forKeyedSubscript:v5];
}

@end