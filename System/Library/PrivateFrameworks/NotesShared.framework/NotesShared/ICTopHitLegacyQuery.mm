@interface ICTopHitLegacyQuery
- (ICTopHitLegacyQuery)initWithQueryString:(id)a3 keyboardLanguage:(id)a4;
- (id)newSearchQueryWithContext:(id)a3;
@end

@implementation ICTopHitLegacyQuery

- (ICTopHitLegacyQuery)initWithQueryString:(id)a3 keyboardLanguage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICTopHitLegacyQuery;
  v9 = [(ICSearchQuery *)&v12 initWithExternalRankingQueries:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queryString, a3);
    objc_storeStrong(&v10->_keyboardLanguage, a4);
    v10->_modernResultsOnly = 1;
  }

  return v10;
}

- (id)newSearchQueryWithContext:(id)a3
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 preferredLocalizations];
  v7 = [v6 firstObject];
  v8 = [v4 canonicalLocaleIdentifierFromString:v7];

  v9 = [(ICTopHitLegacyQuery *)self keyboardLanguage];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  v13 = objc_alloc(MEMORY[0x277CC34E0]);
  v14 = [(ICTopHitLegacyQuery *)self queryString];
  v15 = [(ICSearchQuery *)self attributesToFetch];
  v16 = [v13 initWithSearchString:v14 keyboardLanguage:v12 attributes:v15 hitCount:2];

  return v16;
}

@end