@interface EDSearchableIndexManager
+ (OS_os_log)log;
+ (id)searchableItemResultForExpression:(id)a3;
- (EDSearchableIndexManager)initWithDatabase:(id)a3 messagePersistence:(id)a4 richLinkPersistence:(id)a5 hookResponder:(id)a6;
- (void)_removeItemsForPersistedMessages:(id)a3;
- (void)_startObservingTurboModeToggle;
- (void)enableIndexingAndBeginScheduling:(BOOL)a3;
- (void)persistenceDidAddDataDetectionResults:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidAddLabels:(id)a3 removeLabels:(id)a4 messages:(id)a5 generationWindow:(id)a6;
- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidChangeCategorizationForMessages:(id)a3 userInitiated:(BOOL)a4 generationWindow:(id)a5;
- (void)persistenceDidChangeFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5;
- (void)persistenceDidFinishUpdates;
- (void)persistenceDidUpdateAuthenticationStateForMessages:(id)a3;
- (void)persistenceDidUpdateData:(id)a3 message:(id)a4;
- (void)persistenceIsAddingDataDetectionResults:(id)a3 generationWindow:(id)a4;
- (void)persistenceIsAddingLabels:(id)a3 removingLabels:(id)a4 messages:(id)a5;
- (void)persistenceIsAddingMessages:(id)a3 journaled:(BOOL)a4 generationWindow:(id)a5;
- (void)persistenceIsChangingCategorizationForMessages:(id)a3;
- (void)persistenceIsChangingFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5;
- (void)persistenceIsUpdatingAuthenticationStateForMessages:(id)a3;
- (void)persistenceWillBeginUpdates;
- (void)resetIndexForNewLibrary;
- (void)scheduleRecurringActivity;
- (void)setNeedsToRedonate;
- (void)test_tearDown;
@end

@implementation EDSearchableIndexManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDSearchableIndexManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_89 != -1)
  {
    dispatch_once(&log_onceToken_89, block);
  }

  v2 = log_log_89;

  return v2;
}

void __31__EDSearchableIndexManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_89;
  log_log_89 = v1;
}

+ (id)searchableItemResultForExpression:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 shouldCancelSearchQuery])
  {
    v5 = +[EDSearchableIndexManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "searchableItemResultForExpression - canceling before querying Spotlight", buf, 2u);
    }

LABEL_20:

    v5 = 0;
    goto LABEL_21;
  }

  if ([v4 isValid])
  {
    v23 = [MEMORY[0x1E699B868] promise];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [MEMORY[0x1E695DF90] dictionary];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke;
    aBlock[3] = &unk_1E8256F20;
    v32 = a1;
    v8 = v6;
    v29 = v8;
    v24 = v7;
    v30 = v24;
    v9 = v23;
    v31 = v9;
    v25 = _Block_copy(aBlock);
    v10 = [MEMORY[0x1E699AE90] queryWithExpression:v4 builder:v25];
    v11 = [v10 progress];
    [a1 addSearchQueryCancelable:v11];

    [v10 start];
    v12 = [v9 future];
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
    v27 = 0;
    v5 = [v12 resultBeforeDate:v13 error:&v27];
    v14 = v27;

    if (!v5 && [v14 ef_isTimeoutError])
    {
      v15 = +[EDSearchableIndexManager log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [v14 ef_publicDescription];
        [(EDSearchableIndexManager *)v16 searchableItemResultForExpression:buf, v15];
      }

      [v10 cancel];
    }

    v17 = [v10 progress];
    [a1 removeSearchQueryCancelable:v17];

    if (!v5)
    {
      v18 = +[EDSearchableIndex log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = [v14 ef_publicDescription];
        [(EDSearchableIndexManager *)v19 searchableItemResultForExpression:v33, v18];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if ([a1 shouldCancelSearchQuery])
  {
    v20 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_INFO, "searchableItemResultForExpression - Canceling after querying Spotlight", v26, 2u);
    }

    goto LABEL_20;
  }

LABEL_21:

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

void __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke(id *a1, void *a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[7] searchableIndexBundleID];
  [v3 setBundleID:v4];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *MEMORY[0x1E6964D90];
  v23[0] = *MEMORY[0x1E6964A30];
  v23[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v5 addObjectsFromArray:v7];

  if (EMIsGreymatterSupported())
  {
    v8 = *MEMORY[0x1E6964D78];
    v22[0] = *MEMORY[0x1E6964DB0];
    v22[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v5 addObjectsFromArray:v9];
  }

  [v3 setFetchAttributes:v5];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke_2;
  v18[3] = &unk_1E8250720;
  v19 = a1[4];
  v20 = a1[5];
  v21 = a1[6];
  [v3 setCompletionBlock:v18];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke_4;
  v15 = &unk_1E8253D08;
  v16 = a1[4];
  v17 = a1[5];
  [v3 setResultsBlock:&v12];
  v10 = [a1[6] errorOnlyCompletionHandlerAdapter];
  [v3 setFailureBlock:v10];

  v11 = *MEMORY[0x1E69E9840];
}

void __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke_3;
  v11 = &unk_1E8256ED0;
  v3 = *(a1 + 32);
  v12 = *(a1 + 40);
  v4 = v2;
  v13 = v4;
  [v3 enumerateObjectsUsingBlock:&v8];
  v5 = *(a1 + 48);
  v6 = objc_alloc(MEMORY[0x1E699AE98]);
  v7 = [v6 initWithIdentifiers:*(a1 + 32) snippetData:{v4, v8, v9, v10, v11}];
  [v5 finishWithResult:v7];
}

void __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v5 = objc_opt_new();
  if (a3 <= 0x1F3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [*(a1 + 32) objectForKeyedSubscript:v19];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = MEMORY[0x1E699ADD8];
          v12 = [v10 attribute];
          v13 = [v11 snippetHintZoneFromString:v12];

          v14 = [v10 tokens];
          [v5 setObject:v14 forKeyedSubscript:v13];
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }
  }

  v15 = objc_alloc(MEMORY[0x1E699AEA0]);
  if ([v5 count])
  {
    v16 = v5;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F8];
  }

  v17 = [v15 initWithSearchableItemIdentifier:v19 snippetHints:v16];
  [*(a1 + 40) addObject:v17];

  v18 = *MEMORY[0x1E69E9840];
}

void __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke_5;
  v14 = &unk_1E8256EF8;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  [a2 enumerateObjectsUsingBlock:&v11];
  v5 = [*(a1 + 40) allValues];
  v6 = +[EDSearchableIndexManager log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v5 count];
    if (v8)
    {
      v10 = MEMORY[0x1E699AC38];
      v2 = [v5 firstObject];
      v9 = [v10 publicDescriptionForSnippetHintsArray:v2];
    }

    else
    {
      v9 = @"No values found.";
    }

    *buf = 138412290;
    v18 = v9;
    _os_log_debug_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEBUG, "Regular query collected snippet hints first value: %@", buf, 0xCu);
    if (v8)
    {
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __62__EDSearchableIndexManager_searchableItemResultForExpression___block_invoke_5(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 uniqueIdentifier];
  v4 = [v10 uniqueIdentifier];
  v5 = [EDSearchableIndexAttachmentItem attachmentPersistentIDFromItemIdentifier:v4];

  if (v5)
  {
    v6 = [v10 attributeSet];
    v7 = [v6 relatedUniqueIdentifier];

    v3 = v7;
  }

  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    if ([*(a1 + 32) count] <= 0x1F3)
    {
      v8 = [v10 attributeSet];
      v9 = [v8 matchingHints];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v3];
    }
  }
}

- (EDSearchableIndexManager)initWithDatabase:(id)a3 messagePersistence:(id)a4 richLinkPersistence:(id)a5 hookResponder:(id)a6
{
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = EDSearchableIndexManager;
  v11 = [(EDSearchableIndexManager *)&v19 init];
  v12 = v11;
  v13 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_database, a3);
    objc_storeStrong(&v12->_messagePersistence, a4);
  }

  v14 = [MEMORY[0x1E699B7B0] currentDevice];
  v15 = [v14 isInternal];

  if (v15)
  {
    [(EDSearchableIndexManager *)v13 _startObservingTurboModeToggle];
    v16 = [[EDSearchableIndexAnalyticsPersistence alloc] initWithDatabase:v9];
    analytics = v13->_analytics;
    v13->_analytics = v16;
  }

  return v13;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDSearchableIndexManager.m" lineNumber:170 description:{@"%s can only be called from unit tests", "-[EDSearchableIndexManager test_tearDown]"}];
  }

  v4 = [(EDSearchableIndexManager *)self index];
  [v4 test_tearDown];
}

- (void)scheduleRecurringActivity
{
  v3 = [(EDSearchableIndexManager *)self index];

  if (v3)
  {
    v4 = [(EDSearchableIndexManager *)self index];
    [v4 scheduleRecurringActivity];
  }

  else
  {

    [(EDSearchableIndexManager *)self setNeedsToScheduleRecurringActivity:1];
  }
}

- (void)_startObservingTurboModeToggle
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E699ACE8];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __58__EDSearchableIndexManager__startObservingTurboModeToggle__block_invoke;
  v8 = &unk_1E8256F48;
  objc_copyWeak(&v9, &location);
  v4 = [v3 observeChangesForPreference:22 usingBlock:&v5];
  [(EDSearchableIndexManager *)self setTurboModeObservationToken:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__EDSearchableIndexManager__startObservingTurboModeToggle__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a3)
  {
    v6 = WeakRetained;
    v5 = [WeakRetained index];
    [v5 refresh];

    WeakRetained = v6;
  }
}

- (void)enableIndexingAndBeginScheduling:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x1E699ACE8] preferenceEnabled:33])
  {
    v5 = +[EDSearchableIndexManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [EDSearchableIndexManager enableIndexingAndBeginScheduling:v5];
    }

    v6 = [(EDSearchableIndexManager *)self index];
    [v6 setIndexingDisabledForPPT:1];
  }

  else
  {
    if (v3)
    {
      v7 = [(EDSearchableIndexManager *)self index];
      [v7 setPersistenceAvailable:1];

      v8 = [(EDSearchableIndexManager *)self scheduler];
      [v8 setScheduling:1];
    }

    else
    {
      v8 = [(EDSearchableIndexManager *)self scheduler];
      [v8 setScheduling:0];
    }

    if ([(EDSearchableIndexManager *)self needsToRedonate])
    {
      v9 = [(EDSearchableIndexManager *)self index];
      [v9 redonateAllItemsWithAcknowledgementHandler:0];

      [(EDSearchableIndexManager *)self setNeedsToRedonate:0];
    }

    if ([(EDSearchableIndexManager *)self needsToScheduleRecurringActivity])
    {
      [(EDSearchableIndexManager *)self scheduleRecurringActivity];

      [(EDSearchableIndexManager *)self setNeedsToScheduleRecurringActivity:0];
    }
  }
}

- (void)resetIndexForNewLibrary
{
  [(EDSearchableIndexManager *)self setNeedsToRedonate:0];
  [(EDSearchableIndexManager *)self enableIndexingAndBeginScheduling:0];
  v3 = [(EDSearchableIndexManager *)self index];
  [v3 resetIndexForNewLibraryWithCompletionHandler:0];
}

- (void)setNeedsToRedonate
{
  if (![(EDSearchableIndexManager *)self needsToRedonate])
  {
    v3 = +[EDSearchableIndexManager log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Setting needs to redonate", v4, 2u);
    }

    [(EDSearchableIndexManager *)self setNeedsToRedonate:1];
  }
}

- (void)persistenceWillBeginUpdates
{
  v2 = [(EDSearchableIndexManager *)self index];
  [v2 beginUpdatesAffectingDataSourceAndIndex];
}

- (void)persistenceDidFinishUpdates
{
  v2 = [(EDSearchableIndexManager *)self index];
  [v2 endUpdatesAffectingDataSourceAndIndex];
}

- (void)persistenceIsAddingMessages:(id)a3 journaled:(BOOL)a4 generationWindow:(id)a5
{
  v7 = a3;
  v6 = [(EDSearchableIndexManager *)self analytics];
  [v6 didAddMessages:v7];
}

- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4
{
  v6 = a3;
  v5 = [(EDSearchableIndexManager *)self index];
  [v5 indexMessages:v6 includeBody:0 indexingType:0];
}

- (void)persistenceDidUpdateData:(id)a3 message:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 persistentID];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(EDSearchableIndexManager *)self index];
    v14[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v8 recordDataNeedsToBeDonatedForMessages:v9];

    v10 = [(EDSearchableIndexManager *)self index];
    v13 = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    [v10 indexMessages:v11 includeBody:1 indexingType:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)persistenceIsChangingFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5
{
  v9 = a3;
  v7 = a4;
  if (([v9 deleted] & 1) == 0)
  {
    v8 = [(EDSearchableIndexManager *)self index];
    [v8 recordMessagesNeedToBeDonated:v7 indexingType:1];
  }
}

- (void)persistenceDidChangeFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5
{
  v9 = a3;
  v7 = a4;
  if ([v9 deleted])
  {
    [(EDSearchableIndexManager *)self _removeItemsForPersistedMessages:v7];
  }

  else
  {
    v8 = [(EDSearchableIndexManager *)self index];
    [v8 indexMessages:v7 includeBody:0 indexingType:1];
  }
}

- (void)persistenceIsAddingDataDetectionResults:(id)a3 generationWindow:(id)a4
{
  v6 = a3;
  v5 = [(EDSearchableIndexManager *)self index];
  [v5 recordMessagesNeedToBeDonated:v6 indexingType:4];
}

- (void)persistenceDidAddDataDetectionResults:(id)a3 generationWindow:(id)a4
{
  v6 = a3;
  v5 = [(EDSearchableIndexManager *)self index];
  [v5 indexMessages:v6 includeBody:0 indexingType:4];
}

- (void)persistenceIsAddingLabels:(id)a3 removingLabels:(id)a4 messages:(id)a5
{
  v7 = a5;
  v6 = [(EDSearchableIndexManager *)self index];
  [v6 recordMessagesNeedToBeDonated:v7 indexingType:2];
}

- (void)persistenceDidAddLabels:(id)a3 removeLabels:(id)a4 messages:(id)a5 generationWindow:(id)a6
{
  v8 = a5;
  v7 = [(EDSearchableIndexManager *)self index];
  [v7 indexMessages:v8 includeBody:0 indexingType:2];
}

- (void)persistenceIsUpdatingAuthenticationStateForMessages:(id)a3
{
  v5 = a3;
  v4 = [(EDSearchableIndexManager *)self index];
  [v4 recordMessagesNeedToBeDonated:v5 indexingType:8];
}

- (void)persistenceDidUpdateAuthenticationStateForMessages:(id)a3
{
  v5 = a3;
  v4 = [(EDSearchableIndexManager *)self index];
  [v4 indexMessages:v5 includeBody:0 indexingType:8];
}

- (void)_removeItemsForPersistedMessages:(id)a3
{
  v6 = a3;
  v4 = [(EDSearchableIndexManager *)self index];
  v5 = [v6 ef_map:&__block_literal_global_78];
  [v4 removeItemsWithIdentifiers:v5];
}

id __61__EDSearchableIndexManager__removeItemsForPersistedMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 persistentID];

  return v2;
}

- (void)persistenceIsChangingCategorizationForMessages:(id)a3
{
  v5 = a3;
  v4 = [(EDSearchableIndexManager *)self index];
  [v4 recordMessagesNeedToBeDonated:v5 indexingType:7];
}

- (void)persistenceDidChangeCategorizationForMessages:(id)a3 userInitiated:(BOOL)a4 generationWindow:(id)a5
{
  v7 = a3;
  v6 = [(EDSearchableIndexManager *)self index];
  [v6 indexMessages:v7 includeBody:0 indexingType:7];
}

+ (void)searchableItemResultForExpression:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "searchableItemResultForExpression - Timed out waiting for results from spotlight: %{public}@", buf, 0xCu);
}

+ (void)searchableItemResultForExpression:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "searchableItemResultForExpression - search failed: %{public}@", buf, 0xCu);
}

@end