@interface QuickWebsiteSearchQuery
- (QuickWebsiteSearchQuery)initWithUserEnteredQuery:(id)query;
@end

@implementation QuickWebsiteSearchQuery

- (QuickWebsiteSearchQuery)initWithUserEnteredQuery:(id)query
{
  queryCopy = query;
  v21.receiver = self;
  v21.super_class = QuickWebsiteSearchQuery;
  v6 = [(QuickWebsiteSearchQuery *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_completionQuery, query);
    queryString = [queryCopy queryString];
    safari_stringByTrimmingWhitespace = [queryString safari_stringByTrimmingWhitespace];

    v10 = [safari_stringByTrimmingWhitespace rangeOfString:@" "];
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = [safari_stringByTrimmingWhitespace substringToIndex:v10];
      websiteNamePrefix = v7->_websiteNamePrefix;
      v7->_websiteNamePrefix = v14;

      if ([safari_stringByTrimmingWhitespace length] <= (v12 + v13))
      {
LABEL_7:
        v19 = v7;

        goto LABEL_8;
      }

      v16 = [safari_stringByTrimmingWhitespace substringFromIndex:?];
      searchTerms = v7->_searchTerms;
      v7->_searchTerms = v16;
    }

    else
    {
      v18 = safari_stringByTrimmingWhitespace;
      searchTerms = v7->_websiteNamePrefix;
      v7->_websiteNamePrefix = v18;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

@end