@interface ICSearchResultSection
- (BOOL)removeSearchResultForIdentifier:(id)a3 forHiding:(BOOL)a4;
- (ICSearchResultSection)init;
- (id)description;
- (id)hiddenIdentifiers;
- (id)identifiers;
- (void)addSearchResults:(id)a3;
- (void)resetToSearchResults:(id)a3;
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
  v2 = [(ICSearchResultSection *)self searchResults];
  v3 = [v2 description];

  return v3;
}

- (id)identifiers
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(ICSearchResultSection *)self identifierToSearchResult];
  v5 = [v4 allKeys];
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (id)hiddenIdentifiers
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(ICSearchResultSection *)self hiddenSearchResults];
  v5 = [v4 allKeys];
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (BOOL)removeSearchResultForIdentifier:(id)a3 forHiding:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [(ICSearchResultSection *)self identifierToSearchResult];
    v8 = [v7 objectForKeyedSubscript:v6];

    v9 = v8 != 0;
    if (v8)
    {
      v10 = [(ICSearchResultSection *)self searchResults];
      [v10 removeObject:v8];

      v11 = [(ICSearchResultSection *)self identifierToSearchResult];
      [v11 removeObjectForKey:v6];

      if (v4)
      {
        v12 = [(ICSearchResultSection *)self hiddenSearchResults];
        [v12 setObject:v8 forKeyedSubscript:v6];

        v13 = [(ICSearchResultSection *)self unhiddenSearchResults];
        [v13 removeObjectForKey:v6];
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

- (void)addSearchResults:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 object];
        v11 = [v10 searchIndexingIdentifier];
        if (v11)
        {
          v12 = [(ICSearchResultSection *)self searchResults];
          [v12 addObject:v9];

          v13 = [(ICSearchResultSection *)self identifierToSearchResult];
          [v13 setObject:v9 forKeyedSubscript:v11];

          v14 = [(ICSearchResultSection *)self hiddenSearchResults];
          [v14 removeObjectForKey:v11];

          v15 = [(ICSearchResultSection *)self unhiddenSearchResults];
          [v15 removeObjectForKey:v11];
        }

        else
        {
          [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"identifier" functionName:"-[ICSearchResultSection addSearchResults:]" simulateCrash:1 showAlert:0 format:{@"Search result identifier is nil %@", v10}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)resetToSearchResults:(id)a3
{
  v6 = a3;
  v4 = objc_opt_new();
  [(ICSearchResultSection *)self setSearchResults:v4];

  v5 = objc_opt_new();
  [(ICSearchResultSection *)self setIdentifierToSearchResult:v5];

  [(ICSearchResultSection *)self addSearchResults:v6];
}

@end