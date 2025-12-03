@interface SearchQueryBuilder
+ (id)searchQueryBuilderWithQuery:(id)query forPrivateBrowsing:(BOOL)browsing;
+ (id)searchQueryBuilderWithXWebSearchURL:(id)l forPrivateBrowsing:(BOOL)browsing;
- (SearchQueryBuilder)initWithQueryString:(id)string forPrivateBrowsing:(BOOL)browsing;
- (SearchQueryBuilder)initWithSearchEngineInfo:(id)info queryString:(id)string;
- (SearchQueryBuilder)initWithXWebSearchURL:(id)l forPrivateBrowsing:(BOOL)browsing;
@end

@implementation SearchQueryBuilder

- (SearchQueryBuilder)initWithSearchEngineInfo:(id)info queryString:(id)string
{
  infoCopy = info;
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = SearchQueryBuilder;
  v9 = [(SearchQueryBuilder *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->queryString, string);
    objc_storeStrong(&v10->engineInfo, info);
    v11 = v10;
  }

  return v10;
}

- (SearchQueryBuilder)initWithQueryString:(id)string forPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  v6 = MEMORY[0x277CDB8A8];
  stringCopy = string;
  sharedInstance = [v6 sharedInstance];
  v9 = [sharedInstance defaultSearchEngineForPrivateBrowsing:browsingCopy];
  v10 = [(SearchQueryBuilder *)self initWithSearchEngineInfo:v9 queryString:stringCopy];

  return v10;
}

- (SearchQueryBuilder)initWithXWebSearchURL:(id)l forPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  lCopy = l;
  if ([lCopy safari_isXWebSearchURL])
  {
    query = [lCopy query];
    stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding)
    {
      mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
      host = [lCopy host];
      if (host)
      {
        v11 = host;
        v12 = [mEMORY[0x277CDB8A8] engineInfoForScriptName:host];
      }

      else
      {
        safari_browserSharedDefaults = [MEMORY[0x277CBEBD0] safari_browserSharedDefaults];
        v15 = safari_browserSharedDefaults;
        v16 = MEMORY[0x277D29278];
        if (!browsingCopy)
        {
          v16 = MEMORY[0x277D29290];
        }

        v11 = [safari_browserSharedDefaults stringForKey:*v16];

        v12 = [mEMORY[0x277CDB8A8] engineInfoFor:v11];
      }

      v17 = v12;
      if (!v12)
      {
        mEMORY[0x277CDB8A8]2 = [MEMORY[0x277CDB8A8] sharedInstance];
        v17 = [mEMORY[0x277CDB8A8]2 defaultSearchEngineForPrivateBrowsing:browsingCopy];
      }

      self = [(SearchQueryBuilder *)self initWithSearchEngineInfo:v17 queryString:stringByRemovingPercentEncoding];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)searchQueryBuilderWithQuery:(id)query forPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  queryCopy = query;
  v6 = [[SearchQueryBuilder alloc] initWithQueryString:queryCopy forPrivateBrowsing:browsingCopy];

  return v6;
}

+ (id)searchQueryBuilderWithXWebSearchURL:(id)l forPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  lCopy = l;
  v6 = [[SearchQueryBuilder alloc] initWithXWebSearchURL:lCopy forPrivateBrowsing:browsingCopy];

  return v6;
}

@end