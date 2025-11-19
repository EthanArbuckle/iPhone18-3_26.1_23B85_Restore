@interface EMFQueryLogger
+ (id)documentWeightsStringFromQueryResult:(id)a3 usingLocaleData:(__EmojiLocaleDataWrapper *)a4;
+ (id)overriddenResultsStringFromQueryResult:(id)a3 usingLocaleData:(__EmojiLocaleDataWrapper *)a4;
- (EMFQueryLogger)initWithEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3;
- (void)dealloc;
- (void)logQueryResult:(id)a3;
@end

@implementation EMFQueryLogger

- (EMFQueryLogger)initWithEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3
{
  v6.receiver = self;
  v6.super_class = EMFQueryLogger;
  v4 = [(EMFQueryLogger *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_localeData = a3;
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

- (void)logQueryResult:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 query];
  v6 = [v5 queryString];

  v7 = [v4 query];
  v8 = [v7 tokens];
  v9 = [v8 componentsJoinedByString:{@", "}];

  v10 = [objc_opt_class() documentWeightsStringFromQueryResult:v4 usingLocaleData:self->_localeData];
  v11 = [objc_opt_class() overriddenResultsStringFromQueryResult:v4 usingLocaleData:self->_localeData];

  v12 = emf_logging_get_query_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138413058;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    v17 = 2080;
    v18 = [v10 cStringUsingEncoding:4];
    v19 = 2112;
    v20 = v11;
    _os_log_debug_impl(&dword_1AF04E000, v12, OS_LOG_TYPE_DEBUG, "\nQuery Result Info\nQuery string: '%@'\nQuery tokens: '%@'\nDocument Weights:\n%s\nQueryOverride: '%@'", &v13, 0x2Au);
  }
}

+ (id)documentWeightsStringFromQueryResult:(id)a3 usingLocaleData:(__EmojiLocaleDataWrapper *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a3 emojiMatchesAndDocumentWeightsUsingEmojiLocaleData:a4];
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

+ (id)overriddenResultsStringFromQueryResult:(id)a3 usingLocaleData:(__EmojiLocaleDataWrapper *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 resultOverride];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<["];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v5 emojiMatchesForOverriddenResultsUsingEmojiLocaleData:a4];
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

    v13 = [v5 resultOverride];
    v14 = [v13 overrideBehavior];
    v15 = [v5 resultOverride];
    [v7 appendFormat:@"] behavior=%lu; searchType=%lu>", v14, objc_msgSend(v15, "overrideSearchType")];

    v16 = [v7 copy];
  }

  else
  {
    v16 = &stru_1F24C94E8;
  }

  return v16;
}

@end