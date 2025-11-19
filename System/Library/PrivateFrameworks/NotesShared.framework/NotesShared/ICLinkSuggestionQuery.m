@interface ICLinkSuggestionQuery
- (ICLinkSuggestionQuery)initWithQueryString:(id)a3 includeNotes:(BOOL)a4 includeWebsites:(BOOL)a5;
- (id)attributesToFetch;
- (id)newSearchQueryContext;
- (id)newSearchQueryWithContext:(id)a3;
@end

@implementation ICLinkSuggestionQuery

- (ICLinkSuggestionQuery)initWithQueryString:(id)a3 includeNotes:(BOOL)a4 includeWebsites:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = ICLinkSuggestionQuery;
  v9 = [(ICSearchQuery *)&v12 initWithExternalRankingQueries:0];
  if (v9)
  {
    v10 = [ICSearchQueryOperation prefixMatchingQueryStringTitleForSearchString:v8];
    [(ICLinkSuggestionQuery *)v9 setQueryString:v10];

    [(ICLinkSuggestionQuery *)v9 setIncludeNotes:v6];
    [(ICLinkSuggestionQuery *)v9 setIncludeWebsites:v5];
  }

  return v9;
}

- (id)newSearchQueryContext
{
  v2 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v2 setDisableBlockingOnIndex:1];
  return v2;
}

- (id)newSearchQueryWithContext:(id)a3
{
  v4 = MEMORY[0x277CC3498];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(ICLinkSuggestionQuery *)self queryString];
  v8 = [v6 initWithQueryString:v7 queryContext:v5];

  return v8;
}

- (id)attributesToFetch
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC2678];
  v7[0] = *MEMORY[0x277D36158];
  v7[1] = v2;
  v3 = *MEMORY[0x277CC2670];
  v7[2] = *MEMORY[0x277CC2760];
  v7[3] = v3;
  v4 = *MEMORY[0x277CC3070];
  v7[4] = *MEMORY[0x277CC2A80];
  v7[5] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];

  return v5;
}

@end