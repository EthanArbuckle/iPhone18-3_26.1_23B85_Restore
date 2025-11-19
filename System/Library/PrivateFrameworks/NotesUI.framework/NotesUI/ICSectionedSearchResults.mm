@interface ICSectionedSearchResults
+ (id)newSearchResultsBySection;
- (BOOL)hasSearchResults;
- (BOOL)hideSearchResultsForIdentifier:(id)a3;
- (BOOL)hideSearchResultsForObjects:(id)a3;
- (BOOL)passesVisibilityTesting:(id)a3 forSearchResult:(id)a4;
- (BOOL)removeSearchResultWithIdentifier:(id)a3 forHiding:(BOOL)a4;
- (BOOL)removeSearchResultWithIdentifier:(id)a3 fromSection:(unint64_t)a4 forHiding:(BOOL)a5;
- (BOOL)replaceSearchResultObject:(id)a3 withObject:(id)a4;
- (ICSectionedSearchResults)init;
- (NSArray)allSearchResults;
- (id)description;
- (id)indexPathOfObject:(id)a3;
- (id)indexPathOfSearchResult:(id)a3;
- (id)removeSearchResultAtRow:(int64_t)a3 section:(unint64_t)a4;
- (id)searchResultAtRow:(int64_t)a3 section:(unint64_t)a4;
- (id)searchResultObjectsInSection:(unint64_t)a3;
- (id)searchResultSectionForSectionIndex:(unint64_t)a3;
- (id)searchResultWithObject:(id)a3;
- (id)searchResultsBySectionForSearchResults:(id)a3 passingVisibilityTesting:(id)a4;
- (id)searchResultsInSection:(unint64_t)a3;
- (unint64_t)addSearchResults:(id)a3 removingFoundIdentifiers:(id)a4 passingVisibilityTesting:(id)a5;
- (unint64_t)addSearchResultsBySection:(id)a3;
- (unint64_t)countForSection:(unint64_t)a3;
- (unint64_t)removeSearchResultsWithIdentifiers:(id)a3 forHiding:(BOOL)a4;
- (unint64_t)sectionForSearchResult:(id)a3;
- (void)addSearchResult:(id)a3 toSection:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)addSearchResults:(id)a3 toSection:(unint64_t)a4;
- (void)clear;
- (void)dealloc;
- (void)filterSearchResultsUsingVisiblityTesting:(id)a3;
- (void)noteWillBeDeletedOrTrashed:(id)a3;
- (void)noteWillBeUndeletedOrUntrashed:(id)a3;
- (void)objectsDidChange:(id)a3;
- (void)setSearchResults:(id)a3 forSection:(unint64_t)a4;
- (void)updateForSortTypeChange;
@end

@implementation ICSectionedSearchResults

+ (id)newSearchResultsBySection
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  for (i = 0; i != 3; ++i)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    [v2 setObject:v4 forKeyedSubscript:v5];
  }

  return v2;
}

- (ICSectionedSearchResults)init
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = ICSectionedSearchResults;
  v2 = [(ICSectionedSearchResults *)&v26 init];
  if (v2)
  {
    v3 = [objc_opt_class() newSearchResultsBySection];
    v21 = v2;
    [(ICSectionedSearchResults *)v2 setSearchResultsBySection:v3];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [MEMORY[0x1E69B7AA8] sharedIndexer];
    v5 = [v4 dataSources];

    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      v9 = *MEMORY[0x1E695D360];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if ([v11 conformsToProtocol:&unk_1F50919E0])
          {
            v12 = MEMORY[0x1E696AD88];
            v13 = v11;
            v14 = [v12 defaultCenter];
            v15 = [v13 mainThreadContext];
            [v14 addObserver:v21 selector:sel_objectsDidChange_ name:v9 object:v15];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v2 = v21;
    [v16 addObserver:v21 selector:sel_noteWillBeUndeletedOrUntrashed_ name:*MEMORY[0x1E69B7518] object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v21 selector:sel_noteWillBeUndeletedOrUntrashed_ name:*MEMORY[0x1E69B7520] object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v21 selector:sel_noteWillBeDeletedOrTrashed_ name:*MEMORY[0x1E69B7510] object:0];

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v21 selector:sel_noteWillBeDeletedOrTrashed_ name:*MEMORY[0x1E69B7528] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSectionedSearchResults;
  [(ICSectionedSearchResults *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ICSectionedSearchResults;
  v4 = [(ICSectionedSearchResults *)&v9 description];
  v5 = [(ICSectionedSearchResults *)self searchResultsBySection];
  v6 = [v5 description];
  v7 = [v3 stringWithFormat:@"%@(%@)", v4, v6];

  return v7;
}

- (void)objectsDidChange:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(ICSectionedSearchResults *)self disableAutomaticUpdates])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695D2F8]];

    if ([v7 count])
    {
      [v5 unionSet:v7];
    }

    v25 = v7;
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695D4D0]];

    if ([v9 count])
    {
      [v5 unionSet:v9];
    }

    v10 = [MEMORY[0x1E695DFA8] set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          if ([v16 conformsToProtocol:&unk_1F5041E28])
          {
            v17 = v16;
            if (([v17 isDeleted] & 1) != 0 || objc_msgSend(v17, "isHiddenFromSearch"))
            {
              v18 = [v17 searchIndexingIdentifier];

              if (v18)
              {
                v19 = [v17 searchIndexingIdentifier];
                [v10 addObject:v19];
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v20 = [v10 allObjects];
    v21 = [(ICSectionedSearchResults *)self removeSearchResultsWithIdentifiers:v20 forHiding:0];

    if (v21 || ([v4 userInfo], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectForKeyedSubscript:", *MEMORY[0x1E695D330]), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
    {
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__ICSectionedSearchResults_objectsDidChange___block_invoke;
      block[3] = &unk_1E846AA18;
      objc_copyWeak(&v27, &location);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }
}

void __45__ICSectionedSearchResults_objectsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"ICSearchResultsDidUpdateNotification" object:v3];

    WeakRetained = v3;
  }
}

- (void)noteWillBeUndeletedOrUntrashed:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  v6 = ICCheckedDynamicCast();

  v7 = [v6 searchIndexingIdentifier];
  if (v7)
  {
    v8 = 0;
    for (i = 0; i != 3; ++i)
    {
      while (1)
      {
        v10 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:i];
        v11 = [v10 hiddenSearchResults];
        v12 = [v11 objectForKeyedSubscript:v7];

        if (!v12)
        {
          break;
        }

        v17[0] = v12;
        v8 = 1;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        [(ICSectionedSearchResults *)self addSearchResults:v13 toSection:i];

        v14 = [v10 unhiddenSearchResults];
        [v14 setObject:v12 forKeyedSubscript:v7];

        if (i++ == 2)
        {
          goto LABEL_10;
        }
      }
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 postNotificationName:@"ICSearchResultsDidUpdateNotification" object:self];
  }

LABEL_11:
}

- (void)noteWillBeDeletedOrTrashed:(id)a3
{
  v16 = a3;
  objc_opt_class();
  v4 = [v16 object];
  v5 = ICCheckedDynamicCast();

  v6 = [v5 searchIndexingIdentifier];
  if (v6)
  {
    v7 = 0;
    for (i = 0; i != 3; ++i)
    {
      while (1)
      {
        v9 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:i];
        v10 = [v9 unhiddenSearchResults];
        v11 = [v10 objectForKeyedSubscript:v6];

        if (!v11)
        {
          break;
        }

        v12 = [v11 object];
        v13 = [v12 searchIndexingIdentifier];
        v7 = 1;
        [(ICSectionedSearchResults *)self removeSearchResultWithIdentifier:v13 forHiding:1];

        if (i++ == 2)
        {
          goto LABEL_10;
        }
      }
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"ICSearchResultsDidUpdateNotification" object:self];
  }

LABEL_11:
}

- (NSArray)allSearchResults
{
  v3 = [(ICSectionedSearchResults *)self searchResultsInSection:0];
  v4 = [(ICSectionedSearchResults *)self searchResultsInSection:1];
  v5 = [(ICSectionedSearchResults *)self searchResultsInSection:2];
  v6 = [v3 arrayByAddingObjectsFromArray:v4];
  v7 = [v6 arrayByAddingObjectsFromArray:v5];

  return v7;
}

- (void)clear
{
  v3 = [objc_opt_class() newSearchResultsBySection];
  [(ICSectionedSearchResults *)self setSearchResultsBySection:v3];
}

- (BOOL)hasSearchResults
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = [(ICSectionedSearchResults *)self searchResultsBySection];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v7 searchResults];
    v9 = [v8 count];

    if (v9)
    {
      break;
    }

    v4 = v3++ < 2;
  }

  while (v3 != 3);
  return v4;
}

- (unint64_t)countForSection:(unint64_t)a3
{
  v3 = [(ICSectionedSearchResults *)self searchResultsInSection:a3];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)sectionForSearchResult:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  if ([v4 isTopHit])
  {
    v5 = [v3 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = [v3 object];
  v9 = v8;
  if (v8)
  {
    v7 = [v8 searchResultsSection];
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICSectionedSearchResults sectionForSearchResult:v10];
    }

    v7 = 1;
  }

LABEL_11:
  return v7;
}

- (id)searchResultAtRow:(int64_t)a3 section:(unint64_t)a4
{
  if (a4 >= 3)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v8 = [(ICSectionedSearchResults *)self searchResultsInSection:a4];
  if ([v8 count] <= a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:a3];
  }

  return v9;
}

- (id)searchResultWithObject:(id)a3
{
  v4 = a3;
  v5 = [(ICSectionedSearchResults *)self allSearchResults];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__ICSectionedSearchResults_searchResultWithObject___block_invoke;
  v9[3] = &unk_1E846AA40;
  v10 = v4;
  v6 = v4;
  v7 = [v5 ic_objectPassingTest:v9];

  return v7;
}

uint64_t __51__ICSectionedSearchResults_searchResultWithObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)searchResultSectionForSectionIndex:(unint64_t)a3
{
  if (a3 >= 3)
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v6 = [(ICSectionedSearchResults *)self searchResultsBySection];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)searchResultsInSection:(unint64_t)a3
{
  v3 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:a3];
  v4 = [v3 searchResults];
  v5 = [v4 array];

  return v5;
}

- (id)searchResultObjectsInSection:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 >= 3)
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(ICSectionedSearchResults *)self searchResultsInSection:a3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) object];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];

  return v13;
}

- (void)setSearchResults:(id)a3 forSection:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = NSStringFromSelector(a2);
    v14 = 138413314;
    v15 = v11;
    v16 = 2048;
    v17 = self;
    v18 = 2112;
    v19 = v13;
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = v7;
    _os_log_debug_impl(&dword_1D4171000, v8, OS_LOG_TYPE_DEBUG, "[%@(%p) %@] section %ld results %@", &v14, 0x34u);
  }

  if (a4 >= 3)
  {
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v10 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:a4];
  [v10 resetToSearchResults:v7];
}

- (void)addSearchResult:(id)a3 toSection:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  if (a4 >= 3)
  {
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v10 = [(ICSectionedSearchResults *)self searchResultsInSection:a4];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E695DEC8] array];
  }

  v13 = v12;

  v14 = [v13 mutableCopy];
  if (a5 == 0x7FFFFFFFFFFFFFFFLL || [v13 count] <= a5)
  {
    [v14 addObject:v8];
  }

  else
  {
    [v14 insertObject:v8 atIndex:a5];
  }

  v15 = [v14 copy];
  [(ICSectionedSearchResults *)self setSearchResults:v15 forSection:a4];
}

- (void)addSearchResults:(id)a3 toSection:(unint64_t)a4
{
  v6 = a3;
  if (a4 >= 3)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v8 = [(ICSectionedSearchResults *)self searchResultsInSection:a4];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DEC8] array];
  }

  v11 = v10;

  v12 = [v11 arrayByAddingObjectsFromArray:v6];
  [(ICSectionedSearchResults *)self setSearchResults:v12 forSection:a4];
}

- (id)removeSearchResultAtRow:(int64_t)a3 section:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (a4 >= 3)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v8 = [(ICSectionedSearchResults *)self searchResultAtRow:a3 section:a4];
  v9 = [(ICSectionedSearchResults *)self searchResultsInSection:a4];
  v10 = [v9 mutableCopy];
  if ([v10 count] <= a3 || (objc_msgSend(v10, "objectAtIndexedSubscript:", a3), v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != v8))
  {
    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134218498;
      v17 = a3;
      v18 = 2048;
      v19 = a4;
      v20 = 2112;
      v21 = v8;
      _os_log_debug_impl(&dword_1D4171000, v12, OS_LOG_TYPE_DEBUG, "Search result mismatch at row %ld section %ld %@", &v16, 0x20u);
    }
  }

  v13 = [v8 object];
  v14 = [v13 searchIndexingIdentifier];

  [(ICSectionedSearchResults *)self removeSearchResultWithIdentifier:v14 fromSection:a4 forHiding:1];

  return v8;
}

- (BOOL)removeSearchResultWithIdentifier:(id)a3 fromSection:(unint64_t)a4 forHiding:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:a4];
  LOBYTE(v5) = [v9 removeSearchResultForIdentifier:v8 forHiding:v5];

  return v5;
}

- (BOOL)removeSearchResultWithIdentifier:(id)a3 forHiding:(BOOL)a4
{
  v4 = a4;
  v7 = 0;
  for (i = 0; i != 3; ++i)
  {
    v7 |= [(ICSectionedSearchResults *)self removeSearchResultWithIdentifier:a3 fromSection:i forHiding:v4];
  }

  return v7 & 1;
}

- (unint64_t)removeSearchResultsWithIdentifiers:(id)a3 forHiding:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        objc_opt_class();
        v12 = ICCheckedDynamicCast();
        if (v12)
        {
          v9 += [(ICSectionedSearchResults *)self removeSearchResultWithIdentifier:v12 forHiding:v4];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)passesVisibilityTesting:(id)a3 forSearchResult:(id)a4
{
  v5 = a3;
  v6 = [a4 object];
  v7 = v6;
  if (!v6)
  {
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICSectionedSearchResults sectionForSearchResult:v9];
    }

LABEL_11:

LABEL_12:
    v10 = 0;
    goto LABEL_18;
  }

  if (v5 && ![v5 supportsVisibilityTestingType:{objc_msgSend(v6, "visibilityTestingType")}])
  {
    goto LABEL_12;
  }

  if ([v7 searchResultType] != 1)
  {
    if (![v7 searchResultType])
    {
      v8 = [v5 predicateForSearchableNotes];
      goto LABEL_14;
    }

    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults passesVisibilityTesting:forSearchResult:];
    }

    goto LABEL_11;
  }

  v8 = [v5 predicateForSearchableAttachments];
LABEL_14:
  v11 = v8;
  if (v8)
  {
    v10 = [v8 evaluateWithObject:v7];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:
  return v10;
}

- (id)searchResultsBySectionForSearchResults:(id)a3 passingVisibilityTesting:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v25;
    *&v10 = 134217984;
    v22 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([(ICSectionedSearchResults *)self passesVisibilityTesting:v7 forSearchResult:v14, v22])
        {
          v15 = [(ICSectionedSearchResults *)self sectionForSearchResult:v14];
          if (v15 >= 3)
          {
            v16 = os_log_create("com.apple.notes", "UI");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v29 = v15;
              _os_log_error_impl(&dword_1D4171000, v16, OS_LOG_TYPE_ERROR, "Invalid search results sections %lu", buf, 0xCu);
            }
          }

          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
          v18 = [v8 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = [MEMORY[0x1E695DF70] array];
            v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
            [v8 setObject:v18 forKeyedSubscript:v19];
          }

          [v18 addObject:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  v20 = [v8 copy];

  return v20;
}

- (unint64_t)addSearchResultsBySection:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v18;
    *&v6 = 134217984;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) integerValue];
        if (v11 >= 3)
        {
          v12 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v22 = v11;
            _os_log_error_impl(&dword_1D4171000, v12, OS_LOG_TYPE_ERROR, "Invalid search results sections %lu", buf, 0xCu);
          }
        }

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
        v14 = [v4 objectForKeyedSubscript:v13];

        v8 += [v14 count];
        [(ICSectionedSearchResults *)self addSearchResults:v14 toSection:v11];
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)addSearchResults:(id)a3 removingFoundIdentifiers:(id)a4 passingVisibilityTesting:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(ICSectionedSearchResults *)self removeSearchResultsWithIdentifiers:a4 forHiding:0];
  v10 = [(ICSectionedSearchResults *)self searchResultsBySectionForSearchResults:v9 passingVisibilityTesting:v8];

  v11 = [(ICSectionedSearchResults *)self addSearchResultsBySection:v10];
  return v11;
}

- (void)filterSearchResultsUsingVisiblityTesting:(id)a3
{
  v4 = a3;
  for (i = 0; i != 3; ++i)
  {
    v6 = [(ICSectionedSearchResults *)self searchResultsInSection:i];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__ICSectionedSearchResults_filterSearchResultsUsingVisiblityTesting___block_invoke;
    v9[3] = &unk_1E846AA68;
    v9[4] = self;
    v7 = v4;
    v10 = v7;
    v8 = [v6 ic_objectsPassingTest:v9];
    [(ICSectionedSearchResults *)self setSearchResults:v8 forSection:i];
  }
}

uint64_t __69__ICSectionedSearchResults_filterSearchResultsUsingVisiblityTesting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    v5 = [*(a1 + 32) passesVisibilityTesting:*(a1 + 40) forSearchResult:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hideSearchResultsForIdentifier:(id)a3
{
  v4 = a3;
  v5 = 0;
  for (i = 0; i != 3; ++i)
  {
    v7 = [(ICSectionedSearchResults *)self searchResultsBySection];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v9 = [v7 objectForKeyedSubscript:v8];

    v5 |= [v9 removeSearchResultForIdentifier:v4 forHiding:1];
  }

  return v5 & 1;
}

- (BOOL)hideSearchResultsForObjects:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = ICProtocolCast();
        objc_opt_class();
        v10 = ICDynamicCast();
        v11 = [v10 object];
        v12 = [v11 searchIndexingIdentifier];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = [v9 searchIndexingIdentifier];

          if (!v13)
          {
            goto LABEL_10;
          }
        }

        v6 |= [(ICSectionedSearchResults *)self hideSearchResultsForIdentifier:v13];

LABEL_10:
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v5)
      {
        goto LABEL_14;
      }
    }
  }

  LOBYTE(v6) = 0;
LABEL_14:

  return v6 & 1;
}

- (id)indexPathOfSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(ICSectionedSearchResults *)self sectionForSearchResult:v4];
  v6 = [(ICSectionedSearchResults *)self searchResultsInSection:v5];
  v7 = [v6 indexOfObject:v4];

  v8 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:v5];

  return v8;
}

- (id)indexPathOfObject:(id)a3
{
  v4 = [(ICSectionedSearchResults *)self searchResultWithObject:a3];
  v5 = [(ICSectionedSearchResults *)self indexPathOfSearchResult:v4];

  return v5;
}

- (BOOL)replaceSearchResultObject:(id)a3 withObject:(id)a4
{
  v30 = a4;
  v6 = [a3 searchIndexingIdentifier];
  v7 = 0;
  v8 = 1;
  while (1)
  {
    v9 = [(ICSectionedSearchResults *)self searchResultsBySection];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = [v11 identifierToSearchResult];
    v13 = [v12 objectForKeyedSubscript:v6];

    if (v13)
    {
      break;
    }

    v8 = v7++ < 2;
    if (v7 == 3)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v26 = [ICSearchResultConfiguration alloc];
  v29 = [v13 configuration];
  v14 = [v29 searchString];
  v28 = [v13 configuration];
  v23 = [v28 searchSuggestionType];
  v25 = [v13 configuration];
  v22 = [v25 isTopHit];
  v24 = [v13 configuration];
  v15 = [v24 foundAttachmentObjectID];
  v16 = [v13 configuration];
  v17 = [v16 sortableSearchableItem];
  v27 = [(ICSearchResultConfiguration *)v26 initWithSearchString:v14 searchSuggestionType:v23 isTopHit:v22 foundAttachmentObjectID:v15 sortableSearchableItem:v17];

  v18 = [[ICSearchResult alloc] initWithObject:v30 configuration:v27];
  -[ICSearchResult setMathNote:](v18, "setMathNote:", [v13 isMathNote]);
  v19 = [(ICSectionedSearchResults *)self searchResultsInSection:v7];
  v20 = [v19 indexOfObject:v13];

  [(ICSectionedSearchResults *)self hideSearchResultsForIdentifier:v6];
  [(ICSectionedSearchResults *)self addSearchResult:v18 toSection:v7 atIndex:v20];

LABEL_6:
  return v8;
}

- (void)updateForSortTypeChange
{
  v4 = [(ICSectionedSearchResults *)self searchResultsInSection:1];
  v3 = [(ICSectionedSearchResults *)self searchResultsInSection:2];
  [(ICSectionedSearchResults *)self setSearchResults:v4 forSection:1];
  [(ICSectionedSearchResults *)self setSearchResults:v3 forSection:2];
}

@end