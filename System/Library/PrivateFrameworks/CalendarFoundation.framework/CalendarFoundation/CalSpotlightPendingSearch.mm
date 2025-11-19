@interface CalSpotlightPendingSearch
+ (id)_createSearchQueryWithPredicate:(id)a3 options:(id)a4;
+ (id)_pendingSearches;
+ (id)_queue;
+ (id)_resultForSearchableItem:(id)a3;
+ (id)_resultsForSearchableItems:(id)a3;
- (CalSpotlightPendingSearch)initWithString:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5;
- (CalSpotlightPendingSearch)searchWithString:(id)a3;
- (void)_searchEnded;
- (void)_startSearchWithQuery:(id)a3;
- (void)cancel;
- (void)searchQuery:(id)a3 didFailWithError:(id)a4;
- (void)searchQuery:(id)a3 didReturnItems:(id)a4;
- (void)searchQuery:(id)a3 statusChanged:(unint64_t)a4;
@end

@implementation CalSpotlightPendingSearch

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[CalSpotlightPendingSearch _queue];
  }

  v3 = _queue_queue;

  return v3;
}

uint64_t __35__CalSpotlightPendingSearch__queue__block_invoke()
{
  _queue_queue = dispatch_queue_create("com.apple.calendar.foundation.spotlightquerycontroller.internalqueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_createSearchQueryWithPredicate:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(EKWeakLinkClass(@"MDSearchQuery" 0xBuLL))];

  return v7;
}

- (CalSpotlightPendingSearch)initWithString:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CalSpotlightPendingSearch;
  v11 = [(CalSpotlightPendingSearch *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(CalSpotlightPendingSearch *)v11 setClientBundleID:v9];
    v13 = objc_opt_new();
    [(CalSpotlightPendingSearch *)v12 setSearchableItemIdentifiers:v13];

    v14 = objc_opt_new();
    [(CalSpotlightPendingSearch *)v12 setSearchableItems:v14];

    [(CalSpotlightPendingSearch *)v12 setCompletionHandler:v10];
    [(CalSpotlightPendingSearch *)v12 searchWithString:v8];
  }

  return v12;
}

+ (id)_pendingSearches
{
  v2 = _pendingSearches_pendingSearches;
  if (!_pendingSearches_pendingSearches)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = _pendingSearches_pendingSearches;
    _pendingSearches_pendingSearches = v3;

    v2 = _pendingSearches_pendingSearches;
  }

  return v2;
}

- (void)_startSearchWithQuery:(id)a3
{
  v5 = a3;
  v4 = [objc_opt_class() _pendingSearches];
  [v4 addObject:self];

  [(CalSpotlightPendingSearch *)self setQuery:v5];
  [v5 start];
}

- (void)_searchEnded
{
  [(CalSpotlightPendingSearch *)self setQuery:0];
  v3 = [objc_opt_class() _pendingSearches];
  [v3 removeObject:self];
}

- (CalSpotlightPendingSearch)searchWithString:(id)a3
{
  v4 = a3;
  v5 = [(CalSpotlightPendingSearch *)self query];

  if (v5)
  {
    [CalSpotlightPendingSearch searchWithString:];
  }

  v6 = [objc_opt_class() _queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__CalSpotlightPendingSearch_searchWithString___block_invoke;
  v9[3] = &unk_1E7EC6528;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(v6, v9);

  return result;
}

void __46__CalSpotlightPendingSearch_searchWithString___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) length])
  {
    v2 = EKWeakLinkStringConstant("MDSearchQueryOptionFetchAttributes", 0xBuLL);
    v17 = v2;
    v3 = EKWeakLinkStringConstant("MDItemIdentifier", 0xBuLL);
    v16[0] = v3;
    v4 = EKWeakLinkStringConstant("MDItemTitle", 0xBuLL);
    v16[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v18[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    v7 = MEMORY[0x1E696AE18];
    v8 = [*MEMORY[0x1E6982D30] identifier];
    v9 = [v7 predicateWithFormat:@"kMDItemContentType == %@ && kMDItemTitle contains[cd] %@", v8, *(a1 + 32)];

    v10 = *(a1 + 40);
    v11 = [objc_opt_class() _createSearchQueryWithPredicate:v9 options:v6];
    v12 = [*(a1 + 40) clientBundleID];
    [v11 setClientBundleID:v12];

    [v11 setDelegate:*(a1 + 40)];
    [*(a1 + 40) _startSearchWithQuery:v11];

    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = [*(a1 + 40) completionHandler];
    (*(v15 + 2))(v15, MEMORY[0x1E695E0F0], 0);
    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)cancel
{
  v3 = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CalSpotlightPendingSearch_cancel__block_invoke;
  block[3] = &unk_1E7EC66B0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __35__CalSpotlightPendingSearch_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) query];

  if (v2)
  {
    v3 = [*(a1 + 32) query];
    [v3 cancel];

    v4 = *(a1 + 32);

    [v4 _searchEnded];
  }
}

+ (id)_resultForSearchableItem:(id)a3
{
  v3 = [a3 attributeSet];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identifier];
    v6 = [v4 title];
    v7 = v6;
    v8 = 0;
    if (v5 && v6)
    {
      v8 = objc_opt_new();
      [v8 setIdentifier:v5];
      [v8 setTitle:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_resultsForSearchableItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _resultForSearchableItem:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)searchQuery:(id)a3 didReturnItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CalSpotlightPendingSearch_searchQuery_didReturnItems___block_invoke;
  block[3] = &unk_1E7EC72B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __56__CalSpotlightPendingSearch_searchQuery_didReturnItems___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) query];

  if (v2)
  {
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __56__CalSpotlightPendingSearch_searchQuery_didReturnItems___block_invoke_cold_1();
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 attributeSet];
          v11 = [v10 identifier];

          if (v11)
          {
            v12 = [*(a1 + 32) searchableItemIdentifiers];
            v13 = [v12 containsObject:v11];

            if ((v13 & 1) == 0)
            {
              v14 = [*(a1 + 32) searchableItemIdentifiers];
              [v14 addObject:v11];

              v15 = [*(a1 + 32) searchableItems];
              [v15 addObject:v9];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)searchQuery:(id)a3 statusChanged:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CalSpotlightPendingSearch_searchQuery_statusChanged___block_invoke;
  block[3] = &unk_1E7EC72D8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __55__CalSpotlightPendingSearch_searchQuery_statusChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) query];

  if (v2)
  {
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __55__CalSpotlightPendingSearch_searchQuery_statusChanged___block_invoke_cold_1();
    }

    if (*(a1 + 48) == 3)
    {
      [*(a1 + 32) _searchEnded];
      v4 = *(a1 + 32);
      v5 = objc_opt_class();
      v6 = [*(a1 + 32) searchableItems];
      v7 = [v6 array];
      v8 = [v5 _resultsForSearchableItems:v7];

      v9 = [*(a1 + 32) completionHandler];
      (v9)[2](v9, v8, 0);
    }
  }
}

- (void)searchQuery:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CalSpotlightPendingSearch_searchQuery_didFailWithError___block_invoke;
  block[3] = &unk_1E7EC72B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __58__CalSpotlightPendingSearch_searchQuery_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) query];

  if (v2)
  {
    [*(a1 + 32) _searchEnded];
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58__CalSpotlightPendingSearch_searchQuery_didFailWithError___block_invoke_cold_1();
    }

    v4 = [*(a1 + 32) completionHandler];
    v4[2](v4, MEMORY[0x1E695E0F0], *(a1 + 48));
  }
}

- (void)searchWithString:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CalSpotlightQueryController.m" lineNumber:110 description:@"searchWithString: called multiple times"];
}

void __56__CalSpotlightPendingSearch_searchQuery_didReturnItems___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_1_4(v2) predicate];
  v4 = *(v0 + 48);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_1(&dword_1B990D000, v5, v6, "Spotlight query %@ with predicate %@ did return items: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __55__CalSpotlightPendingSearch_searchQuery_statusChanged___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_1_4(v2) predicate];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v0 + 48)];
  OUTLINED_FUNCTION_3_1(&dword_1B990D000, v4, v5, "Spotlight query %@ with predicate %@ did change status: [%@]", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void __58__CalSpotlightPendingSearch_searchQuery_didFailWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v2 = *MEMORY[0x1E69E9840];
  v4 = [OUTLINED_FUNCTION_1_4(v3) predicate];
  v5 = *(v1 + 48);
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(&dword_1B990D000, v0, OS_LOG_TYPE_ERROR, "Spotlight query %@ with predicate %@ failed with error: %@", v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

@end