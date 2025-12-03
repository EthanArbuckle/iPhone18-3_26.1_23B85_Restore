@interface ICSearchResultsQuery
+ (id)queryForClassifiedImages;
- (ICSearchResultsQuery)initWithQueryString:(id)string externalRankingQueries:(id)queries modernResultsOnly:(BOOL)only attributes:(id)attributes;
- (ICSearchResultsQuery)initWithQueryString:(id)string rankingQueriesDefinition:(id)definition modernResultsOnly:(BOOL)only;
- (id)attributesToFetch;
- (id)newSearchQueryContext;
- (id)newSearchQueryWithContext:(id)context;
@end

@implementation ICSearchResultsQuery

- (ICSearchResultsQuery)initWithQueryString:(id)string rankingQueriesDefinition:(id)definition modernResultsOnly:(BOOL)only
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = ICSearchResultsQuery;
  v10 = [(ICSearchQuery *)&v13 initWithRankingQueriesDefinition:definition];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queryString, string);
    v11->_modernResultsOnly = only;
  }

  return v11;
}

- (ICSearchResultsQuery)initWithQueryString:(id)string externalRankingQueries:(id)queries modernResultsOnly:(BOOL)only attributes:(id)attributes
{
  stringCopy = string;
  attributesCopy = attributes;
  v16.receiver = self;
  v16.super_class = ICSearchResultsQuery;
  v13 = [(ICSearchQuery *)&v16 initWithExternalRankingQueries:queries];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queryString, string);
    v14->_modernResultsOnly = only;
    objc_storeStrong(&v14->_attributes, attributes);
  }

  return v14;
}

- (id)attributesToFetch
{
  attributes = self->_attributes;
  if (attributes)
  {
    attributesToFetch = attributes;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ICSearchResultsQuery;
    attributesToFetch = [(ICSearchQuery *)&v5 attributesToFetch];
  }

  return attributesToFetch;
}

- (id)newSearchQueryContext
{
  v3 = objc_alloc_init(MEMORY[0x277CC34A0]);
  rankingQueries = [(ICSearchQuery *)self rankingQueries];
  [v3 setRankingQueries:rankingQueries];

  return v3;
}

- (id)newSearchQueryWithContext:(id)context
{
  v4 = MEMORY[0x277CC3498];
  contextCopy = context;
  v6 = [v4 alloc];
  queryString = [(ICSearchResultsQuery *)self queryString];
  v8 = [v6 initWithQueryString:queryString context:contextCopy];

  return v8;
}

+ (id)queryForClassifiedImages
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = [ICSearchResultsQuery alloc];
  v3 = *MEMORY[0x277CC2EE0];
  v8[0] = *MEMORY[0x277CC2EC8];
  v8[1] = v3;
  v4 = *MEMORY[0x277CC2F48];
  v8[2] = *MEMORY[0x277CC2F10];
  v8[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v6 = [(ICSearchResultsQuery *)v2 initWithQueryString:@"*==*" externalRankingQueries:0 modernResultsOnly:0 attributes:v5];

  return v6;
}

@end