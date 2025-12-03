@interface ICSearchResultSection
- (BOOL)removeSearchResultForIdentifier:(id)identifier forHiding:(BOOL)hiding;
- (ICSearchResultSection)init;
- (id)description;
- (id)hiddenIdentifiers;
- (id)identifiers;
- (void)addSearchResults:(id)results;
- (void)resetToSearchResults:(id)results;
@end

@implementation ICSearchResultSection

- (ICSearchResultSection)init
{
  v8.receiver = self;
  v8.super_class = ICSearchResultSection;
  v2 = [(ICSearchResultSection *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(ICSearchResultSection *)v2 setSearchResults:v3];

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(ICSearchResultSection *)v2 setIdentifierToSearchResult:v4];

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(ICSearchResultSection *)v2 setHiddenSearchResults:v5];

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(ICSearchResultSection *)v2 setUnhiddenSearchResults:v6];
  }

  return v2;
}

- (id)description
{
  searchResults = [(ICSearchResultSection *)self searchResults];
  v3 = [searchResults description];

  return v3;
}

- (id)identifiers
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  identifierToSearchResult = [(ICSearchResultSection *)self identifierToSearchResult];
  allKeys = [identifierToSearchResult allKeys];
  v6 = [v3 initWithArray:allKeys];

  return v6;
}

- (id)hiddenIdentifiers
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  hiddenSearchResults = [(ICSearchResultSection *)self hiddenSearchResults];
  allKeys = [hiddenSearchResults allKeys];
  v6 = [v3 initWithArray:allKeys];

  return v6;
}

- (BOOL)removeSearchResultForIdentifier:(id)identifier forHiding:(BOOL)hiding
{
  hidingCopy = hiding;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    identifierToSearchResult = [(ICSearchResultSection *)self identifierToSearchResult];
    v8 = [identifierToSearchResult objectForKeyedSubscript:identifierCopy];

    v9 = v8 != 0;
    if (v8)
    {
      searchResults = [(ICSearchResultSection *)self searchResults];
      [searchResults removeObject:v8];

      identifierToSearchResult2 = [(ICSearchResultSection *)self identifierToSearchResult];
      [identifierToSearchResult2 removeObjectForKey:identifierCopy];

      if (hidingCopy)
      {
        hiddenSearchResults = [(ICSearchResultSection *)self hiddenSearchResults];
        [hiddenSearchResults setObject:v8 forKeyedSubscript:identifierCopy];

        unhiddenSearchResults = [(ICSearchResultSection *)self unhiddenSearchResults];
        [unhiddenSearchResults removeObjectForKey:identifierCopy];
      }
    }
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"identifier" functionName:"-[ICSearchResultSection removeSearchResultForIdentifier:forHiding:]" simulateCrash:1 showAlert:0 format:@"identifier is nil"];
    v9 = 0;
  }

  return v9;
}

- (void)addSearchResults:(id)results
{
  v21 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [resultsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        object = [v9 object];
        searchIndexingIdentifier = [object searchIndexingIdentifier];
        if (searchIndexingIdentifier)
        {
          searchResults = [(ICSearchResultSection *)self searchResults];
          [searchResults addObject:v9];

          identifierToSearchResult = [(ICSearchResultSection *)self identifierToSearchResult];
          [identifierToSearchResult setObject:v9 forKeyedSubscript:searchIndexingIdentifier];

          hiddenSearchResults = [(ICSearchResultSection *)self hiddenSearchResults];
          [hiddenSearchResults removeObjectForKey:searchIndexingIdentifier];

          unhiddenSearchResults = [(ICSearchResultSection *)self unhiddenSearchResults];
          [unhiddenSearchResults removeObjectForKey:searchIndexingIdentifier];
        }

        else
        {
          [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"identifier" functionName:"-[ICSearchResultSection addSearchResults:]" simulateCrash:1 showAlert:0 format:{@"Search result identifier is nil %@", object}];
        }
      }

      v6 = [resultsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)resetToSearchResults:(id)results
{
  resultsCopy = results;
  v4 = objc_opt_new();
  [(ICSearchResultSection *)self setSearchResults:v4];

  v5 = objc_opt_new();
  [(ICSearchResultSection *)self setIdentifierToSearchResult:v5];

  [(ICSearchResultSection *)self addSearchResults:resultsCopy];
}

@end