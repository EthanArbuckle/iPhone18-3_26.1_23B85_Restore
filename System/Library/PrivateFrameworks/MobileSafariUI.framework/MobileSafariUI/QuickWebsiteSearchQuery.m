@interface QuickWebsiteSearchQuery
- (QuickWebsiteSearchQuery)initWithUserEnteredQuery:(id)a3;
@end

@implementation QuickWebsiteSearchQuery

- (QuickWebsiteSearchQuery)initWithUserEnteredQuery:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = QuickWebsiteSearchQuery;
  v6 = [(QuickWebsiteSearchQuery *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_completionQuery, a3);
    v8 = [v5 queryString];
    v9 = [v8 safari_stringByTrimmingWhitespace];

    v10 = [v9 rangeOfString:@" "];
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = [v9 substringToIndex:v10];
      websiteNamePrefix = v7->_websiteNamePrefix;
      v7->_websiteNamePrefix = v14;

      if ([v9 length] <= (v12 + v13))
      {
LABEL_7:
        v19 = v7;

        goto LABEL_8;
      }

      v16 = [v9 substringFromIndex:?];
      searchTerms = v7->_searchTerms;
      v7->_searchTerms = v16;
    }

    else
    {
      v18 = v9;
      searchTerms = v7->_websiteNamePrefix;
      v7->_websiteNamePrefix = v18;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

@end