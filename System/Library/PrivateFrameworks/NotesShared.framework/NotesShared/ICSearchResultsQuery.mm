@interface ICSearchResultsQuery
+ (id)queryForClassifiedImages;
- (ICSearchResultsQuery)initWithQueryString:(id)a3 externalRankingQueries:(id)a4 modernResultsOnly:(BOOL)a5 attributes:(id)a6;
- (ICSearchResultsQuery)initWithQueryString:(id)a3 rankingQueriesDefinition:(id)a4 modernResultsOnly:(BOOL)a5;
- (id)attributesToFetch;
- (id)newSearchQueryContext;
- (id)newSearchQueryWithContext:(id)a3;
@end

@implementation ICSearchResultsQuery

- (ICSearchResultsQuery)initWithQueryString:(id)a3 rankingQueriesDefinition:(id)a4 modernResultsOnly:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ICSearchResultsQuery;
  v10 = [(ICSearchQuery *)&v13 initWithRankingQueriesDefinition:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queryString, a3);
    v11->_modernResultsOnly = a5;
  }

  return v11;
}

- (ICSearchResultsQuery)initWithQueryString:(id)a3 externalRankingQueries:(id)a4 modernResultsOnly:(BOOL)a5 attributes:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = ICSearchResultsQuery;
  v13 = [(ICSearchQuery *)&v16 initWithExternalRankingQueries:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queryString, a3);
    v14->_modernResultsOnly = a5;
    objc_storeStrong(&v14->_attributes, a6);
  }

  return v14;
}

- (id)attributesToFetch
{
  attributes = self->_attributes;
  if (attributes)
  {
    v3 = attributes;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ICSearchResultsQuery;
    v3 = [(ICSearchQuery *)&v5 attributesToFetch];
  }

  return v3;
}

- (id)newSearchQueryContext
{
  v3 = objc_alloc_init(MEMORY[0x277CC34A0]);
  v4 = [(ICSearchQuery *)self rankingQueries];
  [v3 setRankingQueries:v4];

  return v3;
}

- (id)newSearchQueryWithContext:(id)a3
{
  v4 = MEMORY[0x277CC3498];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(ICSearchResultsQuery *)self queryString];
  v8 = [v6 initWithQueryString:v7 context:v5];

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