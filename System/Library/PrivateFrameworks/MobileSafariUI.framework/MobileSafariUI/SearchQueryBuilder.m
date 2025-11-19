@interface SearchQueryBuilder
+ (id)searchQueryBuilderWithQuery:(id)a3 forPrivateBrowsing:(BOOL)a4;
+ (id)searchQueryBuilderWithXWebSearchURL:(id)a3 forPrivateBrowsing:(BOOL)a4;
- (SearchQueryBuilder)initWithQueryString:(id)a3 forPrivateBrowsing:(BOOL)a4;
- (SearchQueryBuilder)initWithSearchEngineInfo:(id)a3 queryString:(id)a4;
- (SearchQueryBuilder)initWithXWebSearchURL:(id)a3 forPrivateBrowsing:(BOOL)a4;
@end

@implementation SearchQueryBuilder

- (SearchQueryBuilder)initWithSearchEngineInfo:(id)a3 queryString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SearchQueryBuilder;
  v9 = [(SearchQueryBuilder *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->queryString, a4);
    objc_storeStrong(&v10->engineInfo, a3);
    v11 = v10;
  }

  return v10;
}

- (SearchQueryBuilder)initWithQueryString:(id)a3 forPrivateBrowsing:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CDB8A8];
  v7 = a3;
  v8 = [v6 sharedInstance];
  v9 = [v8 defaultSearchEngineForPrivateBrowsing:v4];
  v10 = [(SearchQueryBuilder *)self initWithSearchEngineInfo:v9 queryString:v7];

  return v10;
}

- (SearchQueryBuilder)initWithXWebSearchURL:(id)a3 forPrivateBrowsing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 safari_isXWebSearchURL])
  {
    v7 = [v6 query];
    v8 = [v7 stringByRemovingPercentEncoding];

    if (v8)
    {
      v9 = [MEMORY[0x277CDB8A8] sharedInstance];
      v10 = [v6 host];
      if (v10)
      {
        v11 = v10;
        v12 = [v9 engineInfoForScriptName:v10];
      }

      else
      {
        v14 = [MEMORY[0x277CBEBD0] safari_browserSharedDefaults];
        v15 = v14;
        v16 = MEMORY[0x277D29278];
        if (!v4)
        {
          v16 = MEMORY[0x277D29290];
        }

        v11 = [v14 stringForKey:*v16];

        v12 = [v9 engineInfoFor:v11];
      }

      v17 = v12;
      if (!v12)
      {
        v18 = [MEMORY[0x277CDB8A8] sharedInstance];
        v17 = [v18 defaultSearchEngineForPrivateBrowsing:v4];
      }

      self = [(SearchQueryBuilder *)self initWithSearchEngineInfo:v17 queryString:v8];

      v13 = self;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)searchQueryBuilderWithQuery:(id)a3 forPrivateBrowsing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[SearchQueryBuilder alloc] initWithQueryString:v5 forPrivateBrowsing:v4];

  return v6;
}

+ (id)searchQueryBuilderWithXWebSearchURL:(id)a3 forPrivateBrowsing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[SearchQueryBuilder alloc] initWithXWebSearchURL:v5 forPrivateBrowsing:v4];

  return v6;
}

@end