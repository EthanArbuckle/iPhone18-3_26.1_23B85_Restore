@interface ICSearchQuery
+ (id)defaultAttributesToReturnFromCoreSpotlight;
- (BOOL)run:(id *)a3;
- (ICSearchQuery)initWithExternalRankingQueries:(id)a3;
- (ICSearchQuery)initWithRankingQueriesDefinition:(id)a3;
- (NSDictionary)queryResults;
- (id)attributesToFetch;
- (id)newSearchQueryWithContext:(id)a3;
- (id)rankingQueries;
- (void)cancel;
- (void)forceStop;
- (void)setupWithAttributes:(id)a3;
@end

@implementation ICSearchQuery

- (ICSearchQuery)initWithRankingQueriesDefinition:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSearchQuery;
  v6 = [(ICSearchQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rankingQueriesDefinition, a3);
  }

  return v7;
}

- (ICSearchQuery)initWithExternalRankingQueries:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSearchQuery;
  v6 = [(ICSearchQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalRankingQueries, a3);
  }

  return v7;
}

- (id)rankingQueries
{
  v3 = [(ICSearchQuery *)self rankingQueriesDefinition];

  if (v3)
  {
    v4 = [(ICSearchQuery *)self rankingQueriesDefinition];
    v5 = [v4 rankingQueries];
  }

  else
  {
    v5 = [(ICSearchQuery *)self externalRankingQueries];
  }

  return v5;
}

- (id)attributesToFetch
{
  v2 = objc_opt_class();

  return [v2 defaultAttributesToReturnFromCoreSpotlight];
}

- (id)newSearchQueryWithContext:(id)a3
{
  v3 = MEMORY[0x277CC3498];
  v4 = a3;
  v5 = [[v3 alloc] initWithQueryString:&stru_2827172C0 queryContext:v4];

  return v5;
}

- (BOOL)run:(id *)a3
{
  v5 = [(ICSearchQuery *)self searchQuery];

  if (!v5)
  {
    v6 = [(ICSearchQuery *)self attributesToFetch];
    [(ICSearchQuery *)self setupWithAttributes:v6];
  }

  v7 = [(ICSearchQuery *)self searchQuery];

  if (!v7)
  {
    [(ICSearchQuery *)self cancel];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__43;
  v32 = __Block_byref_object_dispose__43;
  v33 = 0;
  v8 = dispatch_semaphore_create(0);
  [(ICSearchQuery *)self setSynchronousSemaphore:v8];

  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __21__ICSearchQuery_run___block_invoke;
  v25[3] = &unk_2781984A0;
  objc_copyWeak(&v26, &location);
  v25[4] = &v28;
  v9 = [(ICSearchQuery *)self searchQuery];
  [v9 setCompletionHandler:v25];

  v10 = [(ICSearchQuery *)self searchQuery];
  [v10 start];

  v11 = [(ICSearchQuery *)self synchronousSemaphore];

  if (!v11)
  {
    goto LABEL_11;
  }

  [(ICSearchQuery *)self timeoutInterval];
  v13 = v12 > 0.0;
  if (v12 <= 0.0)
  {
    v19 = [(ICSearchQuery *)self synchronousSemaphore];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_13;
  }

  v14 = [(ICSearchQuery *)self synchronousSemaphore];
  [(ICSearchQuery *)self timeoutInterval];
  v16 = dispatch_time(0, (v15 * 1000000000.0));
  v17 = dispatch_semaphore_wait(v14, v16);

  v18 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ICSearchQuery run:];
  }

  if (!v17)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_14;
  }

  v19 = [(ICSearchQuery *)self searchQuery];
  [v19 cancel];
LABEL_13:

LABEL_14:
  if ([(ICSearchQuery *)self wasForceStopped])
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D36110] code:216 userInfo:0];
    v21 = v29[5];
    v29[5] = v20;
  }

  if (a3)
  {
    *a3 = v29[5];
  }

  [(ICSearchQuery *)self queryFinishedRunningWithError:v29[5]];
  if (v13 || v29[5] || [(ICSearchQuery *)self wasForceStopped])
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v24 = [(ICSearchQuery *)self searchQuery];
    v22 = [v24 isCancelled] ^ 1;
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v28, 8);

  return v22;
}

void __21__ICSearchQuery_run___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained wasForceStopped])
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __21__ICSearchQuery_run___block_invoke_cold_2();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    if (v4)
    {
      v7 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __21__ICSearchQuery_run___block_invoke_cold_1();
      }
    }

    v8 = [WeakRetained synchronousSemaphore];

    if (v8)
    {
      v9 = [WeakRetained synchronousSemaphore];
      dispatch_semaphore_signal(v9);

      [WeakRetained setSynchronousSemaphore:0];
    }
  }
}

- (void)forceStop
{
  [(ICSearchQuery *)self setWasForceStopped:1];
  v3 = [(ICSearchQuery *)self synchronousSemaphore];

  if (v3)
  {
    v4 = [(ICSearchQuery *)self synchronousSemaphore];
    dispatch_semaphore_signal(v4);

    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQuery forceStop];
    }

    [(ICSearchQuery *)self setSynchronousSemaphore:0];
  }
}

- (void)cancel
{
  v3 = [(ICSearchQuery *)self searchQuery];
  [v3 cancel];

  [(ICSearchQuery *)self forceStop];
}

- (void)setupWithAttributes:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ICSearchQuery *)self newSearchQueryContext];
  [v5 setFetchAttributes:v4];
  v6 = [(ICSearchQuery *)self rankingQueries];
  [v5 setRankingQueries:v6];

  v7 = ICNotesAppBundleIdentifier();
  v18[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v5 setBundleIDs:v8];

  v9 = [v5 filterQueries];
  v10 = [v9 arrayByAddingObject:@"_kMDItemUserActivityType != *"];
  [v5 setFilterQueries:v10];

  v17 = *MEMORY[0x277CCA1A0];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [v5 setProtectionClasses:v11];

  v12 = [(ICSearchQuery *)self newSearchQueryWithContext:v5];
  [(ICSearchQuery *)self setSearchQuery:v12];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__ICSearchQuery_setupWithAttributes___block_invoke;
  v14[3] = &unk_2781984F0;
  objc_copyWeak(&v15, &location);
  v13 = [(ICSearchQuery *)self searchQuery];
  [v13 setFoundItemsHandler:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __37__ICSearchQuery_setupWithAttributes___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __37__ICSearchQuery_setupWithAttributes___block_invoke_cold_1(WeakRetained, v3, v5);
  }

  if ([WeakRetained wasForceStopped])
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __37__ICSearchQuery_setupWithAttributes___block_invoke_cold_3();
    }
  }

  else if (v3)
  {
    v6 = [WeakRetained queryResultsToAddFromBatch:v3];
    if ([v6 count])
    {
      v7 = [WeakRetained mutableQueryResults];
      v8 = v7 == 0;

      if (v8)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [WeakRetained setMutableQueryResults:v9];
      }

      v10 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __37__ICSearchQuery_setupWithAttributes___block_invoke_cold_2(WeakRetained, v3, v10);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x2020000000;
      v24 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __37__ICSearchQuery_setupWithAttributes___block_invoke_17;
      v15[3] = &unk_2781984C8;
      v15[4] = WeakRetained;
      v15[5] = &buf;
      [v3 enumerateObjectsUsingBlock:v15];
      v11 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(*(&buf + 1) + 24);
        v13 = [WeakRetained mutableQueryResults];
        v14 = [v13 count];
        *v16 = 138412802;
        v17 = WeakRetained;
        v18 = 1024;
        v19 = v12;
        v20 = 1024;
        v21 = v14;
        _os_log_debug_impl(&dword_214D51000, v11, OS_LOG_TYPE_DEBUG, "%@ added %d items to a total of %d items", v16, 0x18u);
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = WeakRetained;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "%@ no items returned in foundItemsHandler", &buf, 0xCu);
    }
  }
}

void __37__ICSearchQuery_setupWithAttributes___block_invoke_17(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 attributeSet];
  v4 = [v3 ic_dataSourceIdentifier];
  v5 = [v4 isEqualToString:@"Modern"];
  if (![*(a1 + 32) modernResultsOnly] || (objc_msgSend(*(a1 + 32), "modernResultsOnly") & v5) == 1)
  {
    v6 = [*(a1 + 32) mutableQueryResults];
    v7 = [v8 uniqueIdentifier];
    [v6 setObject:v8 forKey:v7];

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (NSDictionary)queryResults
{
  v2 = [(ICSearchQuery *)self mutableQueryResults];
  v3 = [v2 copy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v6 = v5;

  return v5;
}

+ (id)defaultAttributesToReturnFromCoreSpotlight
{
  v6[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC3350];
  v6[0] = *MEMORY[0x277D36158];
  v6[1] = v2;
  v6[2] = @"_ICItemSearchResultType";
  v6[3] = @"_ICItemRelatedNoteUniqueIdentifier";
  v3 = *MEMORY[0x277CC2770];
  v6[4] = *MEMORY[0x277CC2660];
  v6[5] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];

  return v4;
}

- (void)run:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_214D51000, v1, OS_LOG_TYPE_DEBUG, "Stopped waiting. %@ is %@", v2, 0x16u);
}

void __21__ICSearchQuery_run___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v2 = 2112;
  v3 = &stru_2827172C0;
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Error occured when running CSSearchQuery: %@. %@", v1, 0x16u);
}

void __37__ICSearchQuery_setupWithAttributes___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = [a2 count];
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "%@ returned %d items", &v4, 0x12u);
}

void __37__ICSearchQuery_setupWithAttributes___block_invoke_cold_2(void *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a2 count];
  v6 = [a1 mutableQueryResults];
  v7 = 138412802;
  v8 = a1;
  v9 = 1024;
  v10 = v5;
  v11 = 1024;
  v12 = [v6 count];
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "%@ found %d items, attempting to add to existing %d items", &v7, 0x18u);
}

@end