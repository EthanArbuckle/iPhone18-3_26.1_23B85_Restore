@interface EMFQueryLogger
+ (id)documentWeightsStringFromQueryResult:(id)result usingLocaleData:(__EmojiLocaleDataWrapper *)data;
+ (id)overriddenResultsStringFromQueryResult:(id)result usingLocaleData:(__EmojiLocaleDataWrapper *)data;
- (EMFQueryLogger)initWithEmojiLocaleData:(__EmojiLocaleDataWrapper *)data;
- (void)dealloc;
- (void)logQueryResult:(id)result;
@end

@implementation EMFQueryLogger

- (EMFQueryLogger)initWithEmojiLocaleData:(__EmojiLocaleDataWrapper *)data
{
  v6.receiver = self;
  v6.super_class = EMFQueryLogger;
  v4 = [(EMFQueryLogger *)&v6 init];
  if (v4)
  {
    CFRetain(data);
    v4->_localeData = data;
  }

  return v4;
}

- (void)dealloc
{
  localeData = self->_localeData;
  if (localeData)
  {
    CFRelease(localeData);
  }

  v4.receiver = self;
  v4.super_class = EMFQueryLogger;
  [(EMFQueryLogger *)&v4 dealloc];
}

- (void)logQueryResult:(id)result
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  query = [resultCopy query];
  queryString = [query queryString];

  query2 = [resultCopy query];
  tokens = [query2 tokens];
  v9 = [tokens componentsJoinedByString:{@", "}];

  v10 = [objc_opt_class() documentWeightsStringFromQueryResult:resultCopy usingLocaleData:self->_localeData];
  v11 = [objc_opt_class() overriddenResultsStringFromQueryResult:resultCopy usingLocaleData:self->_localeData];

  v12 = emf_logging_get_query_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138413058;
    v14 = queryString;
    v15 = 2112;
    v16 = v9;
    v17 = 2080;
    v18 = [v10 cStringUsingEncoding:4];
    v19 = 2112;
    v20 = v11;
    _os_log_debug_impl(&dword_1AF04E000, v12, OS_LOG_TYPE_DEBUG, "\nQuery Result Info\nQuery string: '%@'\nQuery tokens: '%@'\nDocument Weights:\n%s\nQueryOverride: '%@'", &v13, 0x2Au);
  }
}

+ (id)documentWeightsStringFromQueryResult:(id)result usingLocaleData:(__EmojiLocaleDataWrapper *)data
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [result emojiMatchesAndDocumentWeightsUsingEmojiLocaleData:data];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = MEMORY[0x1E696AEC0];
        v13 = [v11 objectAtIndexedSubscript:0];
        v14 = [v11 objectAtIndexedSubscript:1];
        v15 = [v12 stringWithFormat:@"%@:\t %@", v13, v14, v18];

        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v5 componentsJoinedByString:@"\n"];

  return v16;
}

+ (id)overriddenResultsStringFromQueryResult:(id)result usingLocaleData:(__EmojiLocaleDataWrapper *)data
{
  v23 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  resultOverride = [resultCopy resultOverride];

  if (resultOverride)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<["];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [resultCopy emojiMatchesForOverriddenResultsUsingEmojiLocaleData:data];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 appendString:*(*(&v18 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    resultOverride2 = [resultCopy resultOverride];
    overrideBehavior = [resultOverride2 overrideBehavior];
    resultOverride3 = [resultCopy resultOverride];
    [v7 appendFormat:@"] behavior=%lu; searchType=%lu>", overrideBehavior, objc_msgSend(resultOverride3, "overrideSearchType")];

    v16 = [v7 copy];
  }

  else
  {
    v16 = &stru_1F24C94E8;
  }

  return v16;
}

@end