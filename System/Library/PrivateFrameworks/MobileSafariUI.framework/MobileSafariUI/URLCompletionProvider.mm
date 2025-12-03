@interface URLCompletionProvider
- (URLCompletionProvider)initWithBookmarkProvider:(id)provider cloudTabStore:(id)store profileIdentifier:(id)identifier maxResults:(unint64_t)results searchableCollectionsMask:(int)mask;
- (id)_doUpdateForPrefix:(id)prefix filterResultsUsingProfileIdentifier:(id)identifier withSearchParameters:(id)parameters;
- (id)completionsForQuery:(id)query isCFSearch:(BOOL)search;
- (id)findCompletionsForKey:(id)key isCFSearch:(BOOL)search;
- (id)getKeyForQueryString:(id)string isCFSearch:(BOOL)search;
- (unint64_t)cfErrorForQuery:(id)query;
- (unint64_t)maximumCachedCompletionCount;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_endURLCompletionBackgroundTask;
- (void)clearCachedCompletions;
- (void)dealloc;
- (void)setQueryToComplete:(id)complete;
@end

@implementation URLCompletionProvider

- (URLCompletionProvider)initWithBookmarkProvider:(id)provider cloudTabStore:(id)store profileIdentifier:(id)identifier maxResults:(unint64_t)results searchableCollectionsMask:(int)mask
{
  v7 = *&mask;
  providerCopy = provider;
  storeCopy = store;
  identifierCopy = identifier;
  v30.receiver = self;
  v30.super_class = URLCompletionProvider;
  v16 = [(CompletionProvider *)&v30 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_bookmarkProvider, provider);
    v17->_maxResults = results;
    pthread_mutex_init(&v17->_prefixMutex, 0);
    v17->_urlCompletionBackgroundTaskIdentifier = *MEMORY[0x277D767B0];
    v18 = [[URLCompletionDatabase alloc] initWithCloudTabStore:storeCopy profileIdentifier:identifierCopy searchableCollectionsMask:v7 bookmarkProvider:providerCopy];
    completionDatabase = v17->_completionDatabase;
    v17->_completionDatabase = v18;

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilesafari.URLCompletionProvider.%p", v17];
    v21 = dispatch_queue_create([v20 UTF8String], 0);
    completionQueue = v17->_completionQueue;
    v17->_completionQueue = v21;

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilesafari.URLCompletionProvider.cf.%p", v17];
    v24 = dispatch_queue_create([v23 UTF8String], 0);
    cfCompletionQueue = v17->_cfCompletionQueue;
    v17->_cfCompletionQueue = v24;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v27 = +[History sharedHistory];
    [defaultCenter addObserver:v17 selector:sel__historyDidChange_ name:*MEMORY[0x277D4A248] object:v27];
    [defaultCenter addObserver:v17 selector:sel__historyDidChange_ name:*MEMORY[0x277D4A240] object:v27];
    [defaultCenter addObserver:v17 selector:sel__historyDidChange_ name:*MEMORY[0x277D4A228] object:v27];
    [defaultCenter addObserver:v17 selector:sel__historyDidChange_ name:*MEMORY[0x277D4A230] object:v27];
    [defaultCenter addObserver:v17 selector:sel__bookmarksDidChange_ name:*MEMORY[0x277D7B618] object:0];
    [defaultCenter addObserver:v17 selector:sel__bookmarksDidChange_ name:*MEMORY[0x277D7B608] object:0];
    [defaultCenter addObserver:v17 selector:sel__bookmarksDidChange_ name:*MEMORY[0x277D7B640] object:0];
    [defaultCenter addObserver:v17 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    v28 = v17;
  }

  return v17;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  pthread_mutex_destroy(&self->_prefixMutex);
  if (self->_urlCompletionBackgroundTaskIdentifier != *MEMORY[0x277D767B0])
  {
    [(URLCompletionProvider *)self _endURLCompletionBackgroundTask];
  }

  v4.receiver = self;
  v4.super_class = URLCompletionProvider;
  [(URLCompletionProvider *)&v4 dealloc];
}

- (id)_doUpdateForPrefix:(id)prefix filterResultsUsingProfileIdentifier:(id)identifier withSearchParameters:(id)parameters
{
  v38 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  identifierCopy = identifier;
  parametersCopy = parameters;
  if (self->_bookmarksWereModified)
  {
    [(WBSURLCompletionDatabase *)self->_completionDatabase clearBookmarkMatchesCachesKeepingEmptyValues:0];
    self->_bookmarksWereModified = 0;
  }

  if (self->_historyWasModified)
  {
    self->_historyWasModified = 0;
    [(WBSURLCompletionDatabase *)self->_completionDatabase clearMatchesCaches];
  }

  else
  {
    [(WBSURLCompletionDatabase *)self->_completionDatabase clearBookmarkMatchesCachesKeepingEmptyValues:1];
  }

  providesTopHits = self->_providesTopHits;
  if (self->_providesTopHits)
  {
    v12 = &v35;
  }

  else
  {
    v12 = 0;
  }

  if (providesTopHits)
  {
    v35 = 0;
  }

  completionDatabase = self->_completionDatabase;
  v34 = 0;
  [(WBSURLCompletionDatabase *)completionDatabase getBestMatchesForTypedString:prefixCopy filterResultsUsingProfileIdentifier:identifierCopy topHits:v12 matches:&v34 limit:self->_maxResults forQueryID:[(WBSCompletionQuery *)self->_query queryID] withSearchParameters:parametersCopy];
  if (providesTopHits)
  {
    v14 = v35;
  }

  else
  {
    v14 = 0;
  }

  v15 = v34;
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count") + objc_msgSend(v15, "count")}];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v18)
  {
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [v16 addObject:*(*(&v30 + 1) + 8 * i)];
      }

      v18 = [v17 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v18);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v22)
  {
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v21);
        }

        [v16 addObject:*(*(&v26 + 1) + 8 * j)];
      }

      v22 = [v21 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v22);
  }

  return v16;
}

- (unint64_t)maximumCachedCompletionCount
{
  if ([(NSArray *)self->_searchParametersList count])
  {
    return 8 * [(NSArray *)self->_searchParametersList count];
  }

  else
  {
    return 8;
  }
}

- (id)completionsForQuery:(id)query isCFSearch:(BOOL)search
{
  searchCopy = search;
  queryCopy = query;
  objc_storeStrong(&self->_query, query);
  v10.receiver = self;
  v10.super_class = URLCompletionProvider;
  v8 = [(CompletionProvider *)&v10 completionsForQuery:queryCopy isCFSearch:searchCopy];

  return v8;
}

- (id)findCompletionsForKey:(id)key isCFSearch:(BOOL)search
{
  searchCopy = search;
  keyCopy = key;
  v7 = [(URLCompletionProvider *)self getKeyForQueryString:keyCopy isCFSearch:0];
  v18.receiver = self;
  v18.super_class = URLCompletionProvider;
  v8 = [(CompletionProvider *)&v18 findCompletionsForKey:v7 isCFSearch:0];
  firstObject = [(NSArray *)self->_searchParametersList firstObject];
  isCFSearch = [firstObject isCFSearch];

  if (isCFSearch)
  {
    v11 = [(URLCompletionProvider *)self getKeyForQueryString:keyCopy isCFSearch:1];

    v17.receiver = self;
    v17.super_class = URLCompletionProvider;
    v12 = [(CompletionProvider *)&v17 findCompletionsForKey:v11 isCFSearch:1];
    v7 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (searchCopy)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  return v14;
}

- (void)clearCachedCompletions
{
  v4.receiver = self;
  v4.super_class = URLCompletionProvider;
  [(CompletionProvider *)&v4 clearCachedCompletions];
  currentPrefix = self->_currentPrefix;
  self->_currentPrefix = 0;
}

- (void)setQueryToComplete:(id)complete
{
  completeCopy = complete;
  pthread_mutex_lock(&self->_prefixMutex);
  currentPrefix = self->_currentPrefix;
  queryString = [completeCopy queryString];
  LOBYTE(currentPrefix) = [(NSString *)currentPrefix isEqualToString:queryString];

  if ((currentPrefix & 1) == 0)
  {
    v7 = self->_query;
    queryString2 = [completeCopy queryString];
    v9 = [queryString2 copy];
    v10 = self->_currentPrefix;
    self->_currentPrefix = v9;

    self->_needScheduleBackgroundTaskOnAppSuspend = 1;
    v11 = self->_searchParametersList;
    completionQueue = self->_completionQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__URLCompletionProvider_setQueryToComplete___block_invoke;
    v15[3] = &unk_2781D6180;
    v15[4] = self;
    v16 = completeCopy;
    v17 = v7;
    v18 = v11;
    v13 = v11;
    v14 = v7;
    dispatch_async(completionQueue, v15);
  }

  pthread_mutex_unlock(&self->_prefixMutex);
}

void __44__URLCompletionProvider_setQueryToComplete___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  pthread_mutex_lock((*(a1 + 32) + 72));
  v3 = [*(*(a1 + 32) + 56) copy];
  pthread_mutex_unlock((*(a1 + 32) + 72));
  v4 = [*(a1 + 40) queryString];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [*(*(a1 + 32) + 176) feedbackDispatcher];
    [v6 didBeginSearchOfType:1 withQuery:*(a1 + 48) endpoint:0];

    v7 = [*(a1 + 56) firstObject];
    v8 = [v7 isCFSearch];

    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x3032000000;
    v50[3] = __Block_byref_object_copy__13;
    v50[4] = __Block_byref_object_dispose__13;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__13;
    v48 = __Block_byref_object_dispose__13;
    v49 = 0;
    v9 = [*(a1 + 40) triggerEvent];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = *(a1 + 56);
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v11)
    {
      v12 = *v41;
      do
      {
        v13 = 0;
        do
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v40 + 1) + 8 * v13++) setIsForVoiceSearch:v9 == 4];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v11);
    }

    v14 = *(a1 + 32);
    v15 = [*(a1 + 48) profileIdentifierToFilterResults];
    v16 = [*(a1 + 56) lastObject];
    v17 = [v14 _doUpdateForPrefix:v3 filterResultsUsingProfileIdentifier:v15 withSearchParameters:v16];
    v18 = v45[5];
    v45[5] = v17;

    if (v8)
    {
      v19 = dispatch_group_create();
      v20 = *(a1 + 32);
      v21 = *(v20 + 160);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__URLCompletionProvider_setQueryToComplete___block_invoke_214;
      block[3] = &unk_2781DB710;
      v39 = v50;
      block[4] = v20;
      v36 = v3;
      v37 = *(a1 + 48);
      v38 = *(a1 + 56);
      dispatch_group_async(v19, v21, block);
      v22 = [*(a1 + 56) firstObject];
      [v22 CFSearchTimeout];
      v24 = dispatch_time(0, (v23 * 1000000000.0));
      v25 = dispatch_group_wait(v19, v24) == 0;

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        *(*(a1 + 32) + 65) = 1;
        *(*(a1 + 32) + 64) = 1;
        v26 = 2;
      }
    }

    else
    {
      v26 = 0;
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __44__URLCompletionProvider_setQueryToComplete___block_invoke_2;
    v28[3] = &unk_2781DB738;
    v28[4] = *(a1 + 32);
    v27 = *(a1 + 48);
    v34 = v8;
    v33 = v26;
    v29 = v27;
    v31 = v50;
    v30 = v3;
    v32 = &v44;
    dispatch_async(MEMORY[0x277D85CD0], v28);

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(v50, 8);
  }

  objc_autoreleasePoolPop(v2);
}

void __44__URLCompletionProvider_setQueryToComplete___block_invoke_214(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = [*(a1 + 48) profileIdentifierToFilterResults];
  v4 = [*(a1 + 56) firstObject];
  v5 = [v2 _doUpdateForPrefix:v3 filterResultsUsingProfileIdentifier:v8 withSearchParameters:v4];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __44__URLCompletionProvider_setQueryToComplete___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 176) feedbackDispatcher];
  [v2 didReceiveResultsForQuery:*(a1 + 40) searchType:1];

  if (*(a1 + 80) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 72);
    if (v4)
    {
      v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
      v9[0] = v2;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    }

    else
    {
      v5 = *(*(*(a1 + 56) + 8) + 40);
    }

    [v3 setCompletions:v5 forString:*(a1 + 48) isCFSearch:1];
    if (v4)
    {
    }
  }

  v7 = *(a1 + 32);
  v6 = a1 + 32;
  [v7 setCompletions:*(*(*(v6 + 32) + 8) + 40) forString:*(v6 + 16) isCFSearch:0];
  return [*v6 _endURLCompletionBackgroundTask];
}

- (void)_applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  if (self->_needScheduleBackgroundTaskOnAppSuspend && self->_urlCompletionBackgroundTaskIdentifier == *MEMORY[0x277D767B0])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__URLCompletionProvider__applicationDidEnterBackground___block_invoke;
    v6[3] = &unk_2781D60B8;
    v6[4] = self;
    self->_urlCompletionBackgroundTaskIdentifier = [mEMORY[0x277D75128] beginBackgroundTaskWithName:@"com.apple.mobilesafari.URLCompletionTask" expirationHandler:v6];
  }
}

- (void)_endURLCompletionBackgroundTask
{
  self->_needScheduleBackgroundTaskOnAppSuspend = 0;
  v2 = *MEMORY[0x277D767B0];
  if (self->_urlCompletionBackgroundTaskIdentifier != *MEMORY[0x277D767B0])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] endBackgroundTask:self->_urlCompletionBackgroundTaskIdentifier];

    self->_urlCompletionBackgroundTaskIdentifier = v2;
  }
}

- (id)getKeyForQueryString:(id)string isCFSearch:(BOOL)search
{
  searchCopy = search;
  stringCopy = string;
  firstObject = [(NSArray *)self->_searchParametersList firstObject];
  isCFSearch = [firstObject isCFSearch];

  if (isCFSearch)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:searchCopy];
    stringCopy = [v9 stringWithFormat:@"%lu-%@", objc_msgSend(v10, "integerValue"), stringCopy];

    stringCopy = stringCopy;
  }

  return stringCopy;
}

- (unint64_t)cfErrorForQuery:(id)query
{
  queryString = [query queryString];
  v5 = [(URLCompletionProvider *)self findCompletionsForKey:queryString isCFSearch:1];

  if ([v5 count] == 1)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 isEqual:&unk_2827FC1A8];

    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end