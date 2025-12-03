@interface ICSectionedSearchResults
+ (id)newSearchResultsBySection;
- (BOOL)hasSearchResults;
- (BOOL)hideSearchResultsForIdentifier:(id)identifier;
- (BOOL)hideSearchResultsForObjects:(id)objects;
- (BOOL)passesVisibilityTesting:(id)testing forSearchResult:(id)result;
- (BOOL)removeSearchResultWithIdentifier:(id)identifier forHiding:(BOOL)hiding;
- (BOOL)removeSearchResultWithIdentifier:(id)identifier fromSection:(unint64_t)section forHiding:(BOOL)hiding;
- (BOOL)replaceSearchResultObject:(id)object withObject:(id)withObject;
- (ICSectionedSearchResults)init;
- (NSArray)allSearchResults;
- (id)description;
- (id)indexPathOfObject:(id)object;
- (id)indexPathOfSearchResult:(id)result;
- (id)removeSearchResultAtRow:(int64_t)row section:(unint64_t)section;
- (id)searchResultAtRow:(int64_t)row section:(unint64_t)section;
- (id)searchResultObjectsInSection:(unint64_t)section;
- (id)searchResultSectionForSectionIndex:(unint64_t)index;
- (id)searchResultWithObject:(id)object;
- (id)searchResultsBySectionForSearchResults:(id)results passingVisibilityTesting:(id)testing;
- (id)searchResultsInSection:(unint64_t)section;
- (unint64_t)addSearchResults:(id)results removingFoundIdentifiers:(id)identifiers passingVisibilityTesting:(id)testing;
- (unint64_t)addSearchResultsBySection:(id)section;
- (unint64_t)countForSection:(unint64_t)section;
- (unint64_t)removeSearchResultsWithIdentifiers:(id)identifiers forHiding:(BOOL)hiding;
- (unint64_t)sectionForSearchResult:(id)result;
- (void)addSearchResult:(id)result toSection:(unint64_t)section atIndex:(unint64_t)index;
- (void)addSearchResults:(id)results toSection:(unint64_t)section;
- (void)clear;
- (void)dealloc;
- (void)filterSearchResultsUsingVisiblityTesting:(id)testing;
- (void)noteWillBeDeletedOrTrashed:(id)trashed;
- (void)noteWillBeUndeletedOrUntrashed:(id)untrashed;
- (void)objectsDidChange:(id)change;
- (void)setSearchResults:(id)results forSection:(unint64_t)section;
- (void)updateForSortTypeChange;
@end

@implementation ICSectionedSearchResults

+ (id)newSearchResultsBySection
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  for (i = 0; i != 3; ++i)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    [dictionary setObject:v4 forKeyedSubscript:v5];
  }

  return dictionary;
}

- (ICSectionedSearchResults)init
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = ICSectionedSearchResults;
  v2 = [(ICSectionedSearchResults *)&v26 init];
  if (v2)
  {
    newSearchResultsBySection = [objc_opt_class() newSearchResultsBySection];
    v21 = v2;
    [(ICSectionedSearchResults *)v2 setSearchResultsBySection:newSearchResultsBySection];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    mEMORY[0x1E69B7AA8] = [MEMORY[0x1E69B7AA8] sharedIndexer];
    dataSources = [mEMORY[0x1E69B7AA8] dataSources];

    v6 = [dataSources countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(dataSources);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if ([v11 conformsToProtocol:&unk_1F50919E0])
          {
            v12 = MEMORY[0x1E696AD88];
            v13 = v11;
            defaultCenter = [v12 defaultCenter];
            mainThreadContext = [v13 mainThreadContext];
            [defaultCenter addObserver:v21 selector:sel_objectsDidChange_ name:v9 object:mainThreadContext];
          }
        }

        v7 = [dataSources countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v2 = v21;
    [defaultCenter2 addObserver:v21 selector:sel_noteWillBeUndeletedOrUntrashed_ name:*MEMORY[0x1E69B7518] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v21 selector:sel_noteWillBeUndeletedOrUntrashed_ name:*MEMORY[0x1E69B7520] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v21 selector:sel_noteWillBeDeletedOrTrashed_ name:*MEMORY[0x1E69B7510] object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v21 selector:sel_noteWillBeDeletedOrTrashed_ name:*MEMORY[0x1E69B7528] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
  searchResultsBySection = [(ICSectionedSearchResults *)self searchResultsBySection];
  v6 = [searchResultsBySection description];
  v7 = [v3 stringWithFormat:@"%@(%@)", v4, v6];

  return v7;
}

- (void)objectsDidChange:(id)change
{
  v34 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (![(ICSectionedSearchResults *)self disableAutomaticUpdates])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    userInfo = [changeCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D2F8]];

    if ([v7 count])
    {
      [v5 unionSet:v7];
    }

    v25 = v7;
    userInfo2 = [changeCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E695D4D0]];

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
              searchIndexingIdentifier = [v17 searchIndexingIdentifier];

              if (searchIndexingIdentifier)
              {
                searchIndexingIdentifier2 = [v17 searchIndexingIdentifier];
                [v10 addObject:searchIndexingIdentifier2];
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    allObjects = [v10 allObjects];
    v21 = [(ICSectionedSearchResults *)self removeSearchResultsWithIdentifiers:allObjects forHiding:0];

    if (v21 || ([changeCopy userInfo], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectForKeyedSubscript:", *MEMORY[0x1E695D330]), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
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

- (void)noteWillBeUndeletedOrUntrashed:(id)untrashed
{
  v17[1] = *MEMORY[0x1E69E9840];
  untrashedCopy = untrashed;
  objc_opt_class();
  object = [untrashedCopy object];
  v6 = ICCheckedDynamicCast();

  searchIndexingIdentifier = [v6 searchIndexingIdentifier];
  if (searchIndexingIdentifier)
  {
    v8 = 0;
    for (i = 0; i != 3; ++i)
    {
      while (1)
      {
        v10 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:i];
        hiddenSearchResults = [v10 hiddenSearchResults];
        v12 = [hiddenSearchResults objectForKeyedSubscript:searchIndexingIdentifier];

        if (!v12)
        {
          break;
        }

        v17[0] = v12;
        v8 = 1;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        [(ICSectionedSearchResults *)self addSearchResults:v13 toSection:i];

        unhiddenSearchResults = [v10 unhiddenSearchResults];
        [unhiddenSearchResults setObject:v12 forKeyedSubscript:searchIndexingIdentifier];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICSearchResultsDidUpdateNotification" object:self];
  }

LABEL_11:
}

- (void)noteWillBeDeletedOrTrashed:(id)trashed
{
  trashedCopy = trashed;
  objc_opt_class();
  object = [trashedCopy object];
  v5 = ICCheckedDynamicCast();

  searchIndexingIdentifier = [v5 searchIndexingIdentifier];
  if (searchIndexingIdentifier)
  {
    v7 = 0;
    for (i = 0; i != 3; ++i)
    {
      while (1)
      {
        v9 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:i];
        unhiddenSearchResults = [v9 unhiddenSearchResults];
        v11 = [unhiddenSearchResults objectForKeyedSubscript:searchIndexingIdentifier];

        if (!v11)
        {
          break;
        }

        object2 = [v11 object];
        searchIndexingIdentifier2 = [object2 searchIndexingIdentifier];
        v7 = 1;
        [(ICSectionedSearchResults *)self removeSearchResultWithIdentifier:searchIndexingIdentifier2 forHiding:1];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICSearchResultsDidUpdateNotification" object:self];
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
  newSearchResultsBySection = [objc_opt_class() newSearchResultsBySection];
  [(ICSectionedSearchResults *)self setSearchResultsBySection:newSearchResultsBySection];
}

- (BOOL)hasSearchResults
{
  v3 = 0;
  v4 = 1;
  do
  {
    searchResultsBySection = [(ICSectionedSearchResults *)self searchResultsBySection];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
    v7 = [searchResultsBySection objectForKeyedSubscript:v6];
    searchResults = [v7 searchResults];
    v9 = [searchResults count];

    if (v9)
    {
      break;
    }

    v4 = v3++ < 2;
  }

  while (v3 != 3);
  return v4;
}

- (unint64_t)countForSection:(unint64_t)section
{
  v3 = [(ICSectionedSearchResults *)self searchResultsInSection:section];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)sectionForSearchResult:(id)result
{
  resultCopy = result;
  configuration = [resultCopy configuration];
  if ([configuration isTopHit])
  {
    object = [resultCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      searchResultsSection = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  object2 = [resultCopy object];
  v9 = object2;
  if (object2)
  {
    searchResultsSection = [object2 searchResultsSection];
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICSectionedSearchResults sectionForSearchResult:v10];
    }

    searchResultsSection = 1;
  }

LABEL_11:
  return searchResultsSection;
}

- (id)searchResultAtRow:(int64_t)row section:(unint64_t)section
{
  if (section >= 3)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v8 = [(ICSectionedSearchResults *)self searchResultsInSection:section];
  if ([v8 count] <= row)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:row];
  }

  return v9;
}

- (id)searchResultWithObject:(id)object
{
  objectCopy = object;
  allSearchResults = [(ICSectionedSearchResults *)self allSearchResults];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__ICSectionedSearchResults_searchResultWithObject___block_invoke;
  v9[3] = &unk_1E846AA40;
  v10 = objectCopy;
  v6 = objectCopy;
  v7 = [allSearchResults ic_objectPassingTest:v9];

  return v7;
}

uint64_t __51__ICSectionedSearchResults_searchResultWithObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)searchResultSectionForSectionIndex:(unint64_t)index
{
  if (index >= 3)
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  searchResultsBySection = [(ICSectionedSearchResults *)self searchResultsBySection];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v8 = [searchResultsBySection objectForKeyedSubscript:v7];

  return v8;
}

- (id)searchResultsInSection:(unint64_t)section
{
  v3 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:section];
  searchResults = [v3 searchResults];
  array = [searchResults array];

  return array;
}

- (id)searchResultObjectsInSection:(unint64_t)section
{
  v20 = *MEMORY[0x1E69E9840];
  if (section >= 3)
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  v7 = [(ICSectionedSearchResults *)self searchResultsInSection:section];
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

        object = [*(*(&v15 + 1) + 8 * i) object];
        [array addObject:object];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [array copy];

  return v13;
}

- (void)setSearchResults:(id)results forSection:(unint64_t)section
{
  v24 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = NSStringFromSelector(a2);
    v14 = 138413314;
    v15 = v11;
    v16 = 2048;
    selfCopy = self;
    v18 = 2112;
    v19 = v13;
    v20 = 2048;
    sectionCopy = section;
    v22 = 2112;
    v23 = resultsCopy;
    _os_log_debug_impl(&dword_1D4171000, v8, OS_LOG_TYPE_DEBUG, "[%@(%p) %@] section %ld results %@", &v14, 0x34u);
  }

  if (section >= 3)
  {
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v10 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:section];
  [v10 resetToSearchResults:resultsCopy];
}

- (void)addSearchResult:(id)result toSection:(unint64_t)section atIndex:(unint64_t)index
{
  resultCopy = result;
  if (section >= 3)
  {
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v10 = [(ICSectionedSearchResults *)self searchResultsInSection:section];
  v11 = v10;
  if (v10)
  {
    array = v10;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v13 = array;

  v14 = [v13 mutableCopy];
  if (index == 0x7FFFFFFFFFFFFFFFLL || [v13 count] <= index)
  {
    [v14 addObject:resultCopy];
  }

  else
  {
    [v14 insertObject:resultCopy atIndex:index];
  }

  v15 = [v14 copy];
  [(ICSectionedSearchResults *)self setSearchResults:v15 forSection:section];
}

- (void)addSearchResults:(id)results toSection:(unint64_t)section
{
  resultsCopy = results;
  if (section >= 3)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v8 = [(ICSectionedSearchResults *)self searchResultsInSection:section];
  v9 = v8;
  if (v8)
  {
    array = v8;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v11 = array;

  v12 = [v11 arrayByAddingObjectsFromArray:resultsCopy];
  [(ICSectionedSearchResults *)self setSearchResults:v12 forSection:section];
}

- (id)removeSearchResultAtRow:(int64_t)row section:(unint64_t)section
{
  v22 = *MEMORY[0x1E69E9840];
  if (section >= 3)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults searchResultAtRow:section:];
    }
  }

  v8 = [(ICSectionedSearchResults *)self searchResultAtRow:row section:section];
  v9 = [(ICSectionedSearchResults *)self searchResultsInSection:section];
  v10 = [v9 mutableCopy];
  if ([v10 count] <= row || (objc_msgSend(v10, "objectAtIndexedSubscript:", row), v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != v8))
  {
    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134218498;
      rowCopy = row;
      v18 = 2048;
      sectionCopy = section;
      v20 = 2112;
      v21 = v8;
      _os_log_debug_impl(&dword_1D4171000, v12, OS_LOG_TYPE_DEBUG, "Search result mismatch at row %ld section %ld %@", &v16, 0x20u);
    }
  }

  object = [v8 object];
  searchIndexingIdentifier = [object searchIndexingIdentifier];

  [(ICSectionedSearchResults *)self removeSearchResultWithIdentifier:searchIndexingIdentifier fromSection:section forHiding:1];

  return v8;
}

- (BOOL)removeSearchResultWithIdentifier:(id)identifier fromSection:(unint64_t)section forHiding:(BOOL)hiding
{
  hidingCopy = hiding;
  identifierCopy = identifier;
  v9 = [(ICSectionedSearchResults *)self searchResultSectionForSectionIndex:section];
  LOBYTE(hidingCopy) = [v9 removeSearchResultForIdentifier:identifierCopy forHiding:hidingCopy];

  return hidingCopy;
}

- (BOOL)removeSearchResultWithIdentifier:(id)identifier forHiding:(BOOL)hiding
{
  hidingCopy = hiding;
  v7 = 0;
  for (i = 0; i != 3; ++i)
  {
    v7 |= [(ICSectionedSearchResults *)self removeSearchResultWithIdentifier:identifier fromSection:i forHiding:hidingCopy];
  }

  return v7 & 1;
}

- (unint64_t)removeSearchResultsWithIdentifiers:(id)identifiers forHiding:(BOOL)hiding
{
  hidingCopy = hiding;
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        objc_opt_class();
        v12 = ICCheckedDynamicCast();
        if (v12)
        {
          v9 += [(ICSectionedSearchResults *)self removeSearchResultWithIdentifier:v12 forHiding:hidingCopy];
        }
      }

      v8 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)passesVisibilityTesting:(id)testing forSearchResult:(id)result
{
  testingCopy = testing;
  object = [result object];
  v7 = object;
  if (!object)
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

  if (testingCopy && ![testingCopy supportsVisibilityTestingType:{objc_msgSend(object, "visibilityTestingType")}])
  {
    goto LABEL_12;
  }

  if ([v7 searchResultType] != 1)
  {
    if (![v7 searchResultType])
    {
      predicateForSearchableNotes = [testingCopy predicateForSearchableNotes];
      goto LABEL_14;
    }

    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICSectionedSearchResults passesVisibilityTesting:forSearchResult:];
    }

    goto LABEL_11;
  }

  predicateForSearchableNotes = [testingCopy predicateForSearchableAttachments];
LABEL_14:
  v11 = predicateForSearchableNotes;
  if (predicateForSearchableNotes)
  {
    v10 = [predicateForSearchableNotes evaluateWithObject:v7];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:
  return v10;
}

- (id)searchResultsBySectionForSearchResults:(id)results passingVisibilityTesting:(id)testing
{
  v31 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  testingCopy = testing;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = resultsCopy;
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
        if ([(ICSectionedSearchResults *)self passesVisibilityTesting:testingCopy forSearchResult:v14, v22])
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
          array = [dictionary objectForKeyedSubscript:v17];

          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
            [dictionary setObject:array forKeyedSubscript:v19];
          }

          [array addObject:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  v20 = [dictionary copy];

  return v20;
}

- (unint64_t)addSearchResultsBySection:(id)section
{
  v24 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [sectionCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(sectionCopy);
        }

        integerValue = [*(*(&v17 + 1) + 8 * i) integerValue];
        if (integerValue >= 3)
        {
          v12 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v22 = integerValue;
            _os_log_error_impl(&dword_1D4171000, v12, OS_LOG_TYPE_ERROR, "Invalid search results sections %lu", buf, 0xCu);
          }
        }

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue];
        v14 = [sectionCopy objectForKeyedSubscript:v13];

        v8 += [v14 count];
        [(ICSectionedSearchResults *)self addSearchResults:v14 toSection:integerValue];
      }

      v7 = [sectionCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)addSearchResults:(id)results removingFoundIdentifiers:(id)identifiers passingVisibilityTesting:(id)testing
{
  testingCopy = testing;
  resultsCopy = results;
  [(ICSectionedSearchResults *)self removeSearchResultsWithIdentifiers:identifiers forHiding:0];
  v10 = [(ICSectionedSearchResults *)self searchResultsBySectionForSearchResults:resultsCopy passingVisibilityTesting:testingCopy];

  v11 = [(ICSectionedSearchResults *)self addSearchResultsBySection:v10];
  return v11;
}

- (void)filterSearchResultsUsingVisiblityTesting:(id)testing
{
  testingCopy = testing;
  for (i = 0; i != 3; ++i)
  {
    v6 = [(ICSectionedSearchResults *)self searchResultsInSection:i];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__ICSectionedSearchResults_filterSearchResultsUsingVisiblityTesting___block_invoke;
    v9[3] = &unk_1E846AA68;
    v9[4] = self;
    v7 = testingCopy;
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

- (BOOL)hideSearchResultsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = 0;
  for (i = 0; i != 3; ++i)
  {
    searchResultsBySection = [(ICSectionedSearchResults *)self searchResultsBySection];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v9 = [searchResultsBySection objectForKeyedSubscript:v8];

    v5 |= [v9 removeSearchResultForIdentifier:identifierCopy forHiding:1];
  }

  return v5 & 1;
}

- (BOOL)hideSearchResultsForObjects:(id)objects
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = objects;
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
        object = [v10 object];
        searchIndexingIdentifier = [object searchIndexingIdentifier];
        if (searchIndexingIdentifier)
        {
          searchIndexingIdentifier2 = searchIndexingIdentifier;
        }

        else
        {
          searchIndexingIdentifier2 = [v9 searchIndexingIdentifier];

          if (!searchIndexingIdentifier2)
          {
            goto LABEL_10;
          }
        }

        v6 |= [(ICSectionedSearchResults *)self hideSearchResultsForIdentifier:searchIndexingIdentifier2];

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

- (id)indexPathOfSearchResult:(id)result
{
  resultCopy = result;
  v5 = [(ICSectionedSearchResults *)self sectionForSearchResult:resultCopy];
  v6 = [(ICSectionedSearchResults *)self searchResultsInSection:v5];
  v7 = [v6 indexOfObject:resultCopy];

  v8 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:v5];

  return v8;
}

- (id)indexPathOfObject:(id)object
{
  v4 = [(ICSectionedSearchResults *)self searchResultWithObject:object];
  v5 = [(ICSectionedSearchResults *)self indexPathOfSearchResult:v4];

  return v5;
}

- (BOOL)replaceSearchResultObject:(id)object withObject:(id)withObject
{
  withObjectCopy = withObject;
  searchIndexingIdentifier = [object searchIndexingIdentifier];
  v7 = 0;
  v8 = 1;
  while (1)
  {
    searchResultsBySection = [(ICSectionedSearchResults *)self searchResultsBySection];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v11 = [searchResultsBySection objectForKeyedSubscript:v10];

    identifierToSearchResult = [v11 identifierToSearchResult];
    v13 = [identifierToSearchResult objectForKeyedSubscript:searchIndexingIdentifier];

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
  configuration = [v13 configuration];
  searchString = [configuration searchString];
  configuration2 = [v13 configuration];
  searchSuggestionType = [configuration2 searchSuggestionType];
  configuration3 = [v13 configuration];
  isTopHit = [configuration3 isTopHit];
  configuration4 = [v13 configuration];
  foundAttachmentObjectID = [configuration4 foundAttachmentObjectID];
  configuration5 = [v13 configuration];
  sortableSearchableItem = [configuration5 sortableSearchableItem];
  v27 = [(ICSearchResultConfiguration *)v26 initWithSearchString:searchString searchSuggestionType:searchSuggestionType isTopHit:isTopHit foundAttachmentObjectID:foundAttachmentObjectID sortableSearchableItem:sortableSearchableItem];

  v18 = [[ICSearchResult alloc] initWithObject:withObjectCopy configuration:v27];
  -[ICSearchResult setMathNote:](v18, "setMathNote:", [v13 isMathNote]);
  v19 = [(ICSectionedSearchResults *)self searchResultsInSection:v7];
  v20 = [v19 indexOfObject:v13];

  [(ICSectionedSearchResults *)self hideSearchResultsForIdentifier:searchIndexingIdentifier];
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