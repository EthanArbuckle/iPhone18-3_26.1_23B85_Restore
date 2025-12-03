@interface ICTopHitLegacyQuery
- (ICTopHitLegacyQuery)initWithQueryString:(id)string keyboardLanguage:(id)language;
- (id)newSearchQueryWithContext:(id)context;
@end

@implementation ICTopHitLegacyQuery

- (ICTopHitLegacyQuery)initWithQueryString:(id)string keyboardLanguage:(id)language
{
  stringCopy = string;
  languageCopy = language;
  v12.receiver = self;
  v12.super_class = ICTopHitLegacyQuery;
  v9 = [(ICSearchQuery *)&v12 initWithExternalRankingQueries:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queryString, string);
    objc_storeStrong(&v10->_keyboardLanguage, language);
    v10->_modernResultsOnly = 1;
  }

  return v10;
}

- (id)newSearchQueryWithContext:(id)context
{
  v4 = MEMORY[0x277CBEAF8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v8 = [v4 canonicalLocaleIdentifierFromString:firstObject];

  keyboardLanguage = [(ICTopHitLegacyQuery *)self keyboardLanguage];
  v10 = keyboardLanguage;
  if (keyboardLanguage)
  {
    v11 = keyboardLanguage;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  v13 = objc_alloc(MEMORY[0x277CC34E0]);
  queryString = [(ICTopHitLegacyQuery *)self queryString];
  attributesToFetch = [(ICSearchQuery *)self attributesToFetch];
  v16 = [v13 initWithSearchString:queryString keyboardLanguage:v12 attributes:attributesToFetch hitCount:2];

  return v16;
}

@end