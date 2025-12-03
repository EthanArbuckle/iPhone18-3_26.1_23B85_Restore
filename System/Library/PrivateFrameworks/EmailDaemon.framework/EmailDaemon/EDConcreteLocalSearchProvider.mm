@interface EDConcreteLocalSearchProvider
+ (id)log;
- (EDConcreteLocalSearchProvider)initWithSearchableIndexManager:(id)manager messagePersistence:(id)persistence messageQueryTransformer:(id)transformer;
- (id)_instantAnswersDebuggingIfNeededForMessage:(id)message;
- (id)_instantAnswersFromSuggestion:(id)suggestion;
- (id)_snippetHintsFromQueryResultMatchingHints:(id)hints;
- (id)liveSearchWithQuery:(id)query delegate:(id)delegate;
- (id)persistenceQueryForSearchableIndexQuery:(id)query;
- (id)topHitsSearchWithQuery:(id)query delegate:(id)delegate completion:(id)completion;
- (unint64_t)maxTopHitsInCommittedSearch;
- (void)_updateParsecBundleIdentifierIfNeeded;
@end

@implementation EDConcreteLocalSearchProvider

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EDConcreteLocalSearchProvider_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_50 != -1)
  {
    dispatch_once(&log_onceToken_50, block);
  }

  v2 = log_log_50;

  return v2;
}

void __36__EDConcreteLocalSearchProvider_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_50;
  log_log_50 = v1;
}

- (EDConcreteLocalSearchProvider)initWithSearchableIndexManager:(id)manager messagePersistence:(id)persistence messageQueryTransformer:(id)transformer
{
  managerCopy = manager;
  persistenceCopy = persistence;
  transformerCopy = transformer;
  v17.receiver = self;
  v17.super_class = EDConcreteLocalSearchProvider;
  v12 = [(EDConcreteLocalSearchProvider *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_searchableIndexManager, manager);
    objc_storeStrong(&v13->_messagePersistence, persistence);
    v14 = [[EDSearchableIndexQueryTransformer alloc] initWithSearchableIndexManager:managerCopy];
    queryTransformer = v13->_queryTransformer;
    v13->_queryTransformer = v14;

    objc_storeStrong(&v13->_messageQueryTransformer, transformer);
  }

  return v13;
}

- (id)persistenceQueryForSearchableIndexQuery:(id)query
{
  queryCopy = query;
  queryTransformer = [(EDConcreteLocalSearchProvider *)self queryTransformer];
  v6 = [queryTransformer persistenceQueryForSearchableIndexQuery:queryCopy];

  return v6;
}

- (id)topHitsSearchWithQuery:(id)query delegate:(id)delegate completion:(id)completion
{
  v61[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  val = delegate;
  completionCopy = completion;
  v44 = queryCopy;
  searchableIndexManager = [(EDConcreteLocalSearchProvider *)self searchableIndexManager];
  index = [searchableIndexManager index];

  v41 = index;
  [(EDConcreteLocalSearchProvider *)self _updateParsecBundleIdentifierIfNeeded];
  messageQueryTransformer = [(EDConcreteLocalSearchProvider *)self messageQueryTransformer];
  predicate = [queryCopy predicate];
  v43 = [messageQueryTransformer transformPredicate:predicate];

  suggestion = [queryCopy suggestion];
  searchableIndexBundleID = [index searchableIndexBundleID];
  v59 = 0;
  v42 = [EDSearchableIndexExpressionGenerator expressionForPredicate:v43 suggestion:suggestion bundleID:searchableIndexBundleID nonSpotlightPredicates:&v59];
  v38 = v59;

  maxTopHitsInCommittedSearch = [(EDConcreteLocalSearchProvider *)self maxTopHitsInCommittedSearch];
  v16 = objc_alloc(MEMORY[0x1E699AE88]);
  searchString = [v42 searchString];
  queryString = [v42 queryString];
  v61[0] = queryString;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  searchableIndexBundleID2 = [index searchableIndexBundleID];
  _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
  suggestion2 = [v44 suggestion];
  v23 = [v16 initWithSearchString:searchString filterQueries:v19 bundleID:searchableIndexBundleID2 keyboardLanguage:_deviceLanguage updatedSuggestion:suggestion2 generateSuggestions:0 logDescription:@"Top Hits" resultLimit:maxTopHitsInCommittedSearch suggestionLimit:0 customFlags:0 feedbackQueryID:-1];

  topHitsQueryResult = [v23 topHitsQueryResult];
  v25 = MEMORY[0x1E699B7C8];
  v60[0] = topHitsQueryResult;
  topHitsQueryInstantAnswersResult = [v23 topHitsQueryInstantAnswersResult];
  v60[1] = topHitsQueryInstantAnswersResult;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v28 = [v25 join:v27];

  objc_initWeak(&location, self);
  objc_initWeak(&from, val);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __76__EDConcreteLocalSearchProvider_topHitsSearchWithQuery_delegate_completion___block_invoke;
  v52[3] = &unk_1E82531A8;
  objc_copyWeak(&v55, &location);
  objc_copyWeak(&v56, &from);
  v29 = v44;
  v53 = v29;
  v30 = completionCopy;
  v54 = v30;
  [v28 addSuccessBlock:v52];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __76__EDConcreteLocalSearchProvider_topHitsSearchWithQuery_delegate_completion___block_invoke_15;
  v48[3] = &unk_1E82531D0;
  objc_copyWeak(&v51, &from);
  v31 = v29;
  v49 = v31;
  v32 = v30;
  v50 = v32;
  [v28 addFailureBlock:v48];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __76__EDConcreteLocalSearchProvider_topHitsSearchWithQuery_delegate_completion___block_invoke_17;
  v45[3] = &unk_1E8251E98;
  objc_copyWeak(&v47, &from);
  v33 = v31;
  v46 = v33;
  [v23 setEmbeddingHandler:v45];
  [v23 start];
  v34 = v46;
  v35 = v23;

  objc_destroyWeak(&v47);
  objc_destroyWeak(&v51);

  objc_destroyWeak(&v56);
  objc_destroyWeak(&v55);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

void __76__EDConcreteLocalSearchProvider_topHitsSearchWithQuery_delegate_completion___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v26 = a1;
  v32 = objc_loadWeakRetained((a1 + 56));
  v29 = v3;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 searchableItemIdentifiers];
  v31 = [v5 ef_compactMap:&__block_literal_global_38];

  v6 = [WeakRetained messagePersistence];
  v30 = [v6 persistedMessagesForDatabaseIDs:v31 requireProtectedData:1 temporarilyUnavailableDatabaseIDs:0];

  v25 = [v29 objectAtIndexedSubscript:1];
  v28 = [v25 instantAnswersSuggestions];
  if ([v28 count])
  {
    v7 = [v28 firstObject];
    [WeakRetained _instantAnswersFromSuggestion:v7];
  }

  else
  {
    v7 = [v30 firstObject];
    [WeakRetained _instantAnswersDebuggingIfNeededForMessage:v7];
  }
  v27 = ;

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v4 searchableItemIdentifiers];
  v8 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v8)
  {
    v9 = *v38;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        v12 = [v4 mailRankingSignalsByPersistentID];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [v4 matchingHintsByPersistentID];
        v15 = [v14 objectForKeyedSubscript:v11];

        v16 = [WeakRetained _snippetHintsFromQueryResultMatchingHints:v15];
        v17 = [objc_alloc(MEMORY[0x1E699AEA0]) initWithSearchableItemIdentifier:v11 snippetHints:v16];
        [v35 addObject:v17];
        [v34 setObject:v13 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v8);
  }

  v18 = +[EDConcreteLocalSearchProvider log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v30 count];
    v20 = [v31 count];
    v21 = *(v26 + 32);
    *buf = 134218754;
    v42 = v19;
    v43 = 2048;
    v44 = v20;
    v45 = 2114;
    v46 = v31;
    v47 = 2114;
    v48 = v21;
    _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Spotlight top hits search found %lu messages matching the %lu searchableItemIdentifiers returned:\n%{public}@ for query %{public}@", buf, 0x2Au);
  }

  if ([v32 isSearchCanceled])
  {
    v22 = +[EDConcreteLocalSearchProvider log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v26 + 32);
      *buf = 138543362;
      v42 = v23;
      _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Spotlight top hits found Canceled for query %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [v32 localSearchDidFindTopHits:v30 itemSnippetData:v35 rankingSignals:v34 instantAnswer:v27];
    (*(*(v26 + 40) + 16))();
    [v32 localSearchDidFinishTopHitsQuery:1];
  }

  v24 = *MEMORY[0x1E69E9840];
}

id __76__EDConcreteLocalSearchProvider_topHitsSearchWithQuery_delegate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];

  return v3;
}

void __76__EDConcreteLocalSearchProvider_topHitsSearchWithQuery_delegate_completion___block_invoke_15(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = +[EDConcreteLocalSearchProvider log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v3 ef_publicDescription];
    __76__EDConcreteLocalSearchProvider_topHitsSearchWithQuery_delegate_completion___block_invoke_15_cold_1(v6, a1);
  }

  (*(*(a1 + 40) + 16))();
  [WeakRetained localSearchDidFinishTopHitsQuery:3];

  v7 = *MEMORY[0x1E69E9840];
}

void __76__EDConcreteLocalSearchProvider_topHitsSearchWithQuery_delegate_completion___block_invoke_17(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[EDConcreteLocalSearchProvider log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Spotlight top hits and instant answers search hasQueryEmbedding: %{BOOL}d for query %{public}@", v8, 0x12u);
  }

  [WeakRetained localSearchDidHaveTopHitsQueryEmbedding:a2];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)liveSearchWithQuery:(id)query delegate:(id)delegate
{
  queryCopy = query;
  delegateCopy = delegate;
  searchableIndexManager = [(EDConcreteLocalSearchProvider *)self searchableIndexManager];
  index = [searchableIndexManager index];

  messageQueryTransformer = [(EDConcreteLocalSearchProvider *)self messageQueryTransformer];
  predicate = [queryCopy predicate];
  v11 = [messageQueryTransformer transformPredicate:predicate];

  suggestion = [queryCopy suggestion];
  searchableIndexBundleID = [index searchableIndexBundleID];
  v30 = 0;
  v14 = [EDSearchableIndexExpressionGenerator expressionForPredicate:v11 suggestion:suggestion bundleID:searchableIndexBundleID nonSpotlightPredicates:&v30];
  v15 = v30;

  objc_initWeak(&location, delegateCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke;
  aBlock[3] = &unk_1E8253270;
  v16 = index;
  v24 = v16;
  objc_copyWeak(&v28, &location);
  v17 = queryCopy;
  v25 = v17;
  selfCopy = self;
  v18 = v15;
  v27 = v18;
  v19 = _Block_copy(aBlock);
  v20 = [MEMORY[0x1E699AE90] queryWithExpression:v14 builder:v19];
  [v20 start];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v20;
}

void __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke(uint64_t a1, void *a2)
{
  v28[11] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setLive:1];
  v4 = [*(a1 + 32) searchableIndexBundleID];
  [v3 setBundleID:v4];

  v5 = *MEMORY[0x1E6964D90];
  v28[0] = *MEMORY[0x1E6964A30];
  v28[1] = v5;
  v6 = *MEMORY[0x1E6964D78];
  v28[2] = *MEMORY[0x1E6964DB0];
  v28[3] = v6;
  v7 = *MEMORY[0x1E6964DC0];
  v28[4] = *MEMORY[0x1E6964DB8];
  v28[5] = v7;
  v8 = *MEMORY[0x1E6964D58];
  v28[6] = *MEMORY[0x1E6964D10];
  v28[7] = v8;
  v9 = *MEMORY[0x1E6964C58];
  v28[8] = *MEMORY[0x1E6964D20];
  v28[9] = v9;
  v28[10] = *MEMORY[0x1E6964C60];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:11];
  [v3 setFetchAttributes:v10];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_2;
  v26[3] = &unk_1E8250808;
  objc_copyWeak(&v27, (a1 + 64));
  [v3 setGatheredBlock:v26];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_3;
  v21[3] = &unk_1E8253220;
  objc_copyWeak(&v25, (a1 + 64));
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v22 = v11;
  v23 = v12;
  v24 = v13;
  [v3 setResultsBlock:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_24;
  v18[3] = &unk_1E8251E98;
  objc_copyWeak(&v20, (a1 + 64));
  v19 = *(a1 + 40);
  [v3 setEmbeddingBlock:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_25;
  v15[3] = &unk_1E8253248;
  objc_copyWeak(&v17, (a1 + 64));
  v16 = *(a1 + 40);
  [v3 setFailureBlock:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);

  v14 = *MEMORY[0x1E69E9840];
}

void __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained localSearchDidFinish];
  }
}

void __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_3(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained isSearchCanceled])
    {
      v6 = +[EDConcreteLocalSearchProvider log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Spotlight live search found Canceled for query %{public}@", &buf, 0xCu);
      }
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v46 = 0x3032000000;
      v47 = __Block_byref_object_copy__17;
      v48 = __Block_byref_object_dispose__17;
      v49 = [MEMORY[0x1E695DF70] array];
      v29 = objc_opt_new();
      v8 = objc_opt_new();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_19;
      v31[3] = &unk_1E82531F8;
      v9 = *(a1 + 40);
      p_buf = &buf;
      v31[4] = v9;
      v10 = v29;
      v32 = v10;
      v30 = v8;
      v33 = v30;
      v11 = v5;
      v34 = v11;
      [v3 enumerateObjectsUsingBlock:v31];
      v12 = [EDMessageListItemPredicates predicateForMessagesWithPersistentIDs:*(*(&buf + 1) + 40)];
      v13 = v12;
      if (*(a1 + 48))
      {
        v14 = MEMORY[0x1E696AE18];
        v44[0] = *(a1 + 48);
        v44[1] = v12;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
        v16 = [v14 ef_andCompoundPredicateWithSubpredicatesForSearchQuery:v15];

        v13 = v16;
      }

      v17 = [*(a1 + 32) queryWithPredicate:v13];
      v18 = [*(a1 + 40) messagePersistence];
      v19 = [v18 persistedMessagesMatchingQuery:v17 limit:0x7FFFFFFFFFFFFFFFLL];

      if ([v11 isSearchCanceled])
      {
        v20 = +[EDConcreteLocalSearchProvider log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          v22 = [v19 count];
          *v36 = 138543618;
          v37 = v21;
          v38 = 2048;
          v39 = v22;
          _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Spotlight live search found Canceled for query %{public}@ message count:%lu", v36, 0x16u);
        }
      }

      else
      {
        v23 = +[EDConcreteLocalSearchProvider log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v19 count];
          v25 = [*(*(&buf + 1) + 40) count];
          v26 = *(*(&buf + 1) + 40);
          v27 = *(a1 + 32);
          *v36 = 134218754;
          v37 = v24;
          v38 = 2048;
          v39 = v25;
          v40 = 2114;
          v41 = v26;
          v42 = 2114;
          v43 = v27;
          _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Spotlight live search found %lu messages matching the %lu searchableItemIdentifiers returned:\n%{public}@ for query %{public}@", v36, 0x2Au);
        }

        [v11 localSearchDidFindMessages:v19 itemSnippetData:v10 rankingSignals:v30];
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_19(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 uniqueIdentifier];
  v7 = [v16 uniqueIdentifier];
  v8 = [EDSearchableIndexAttachmentItem attachmentPersistentIDFromItemIdentifier:v7];

  if (v8)
  {
    v9 = [v16 attributeSet];
    v10 = [v9 relatedUniqueIdentifier];

    v6 = v10;
  }

  if (v6)
  {
    [*(*(*(a1 + 64) + 8) + 40) addObject:v6];
    v11 = [v16 attributeSet];
    v12 = [v11 matchingHints];

    v13 = [*(a1 + 32) _snippetHintsFromQueryResultMatchingHints:v12];
    v14 = [objc_alloc(MEMORY[0x1E699AEA0]) initWithSearchableItemIdentifier:v6 snippetHints:v13];
    [*(a1 + 40) addObject:v14];
    v15 = [v16 em_mailRankingSignals];
    [*(a1 + 48) setObject:v15 forKeyedSubscript:v6];
  }

  if ([*(a1 + 56) isSearchCanceled])
  {
    *a4 = 1;
  }
}

void __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_24(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[EDConcreteLocalSearchProvider log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8[0] = 67109378;
      v8[1] = a2;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Spotlight live search hasQueryEmbedding: %{BOOL}d for query %{public}@", v8, 0x12u);
    }

    [WeakRetained localSearchDidHaveQueryEmbedding:a2];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_25(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[EDConcreteLocalSearchProvider log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 ef_publicDescription];
      __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_25_cold_1(v6, a1);
    }

    if (([WeakRetained isSearchCanceled] & 1) == 0)
    {
      [WeakRetained localSearchDidFail];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_instantAnswersDebuggingIfNeededForMessage:(id)message
{
  v22[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (messageCopy && ([MEMORY[0x1E699ACE8] preferenceEnabled:62] & 1) != 0)
  {
    v5 = objc_alloc(MEMORY[0x1E699ADA8]);
    globalMessageID = [messageCopy globalMessageID];
    allMailboxesScope = [MEMORY[0x1E699AD28] allMailboxesScope];
    v8 = [v5 initWithGlobalMessageID:globalMessageID mailboxScope:allMailboxesScope];

    messagePersistence = [(EDConcreteLocalSearchProvider *)self messagePersistence];
    v22[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v11 = [messagePersistence messagesForMessageObjectIDs:v10 missedMessageObjectIDs:0];

    if ([v11 count])
    {
      v12 = +[EDConcreteLocalSearchProvider log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        firstObject = [v11 firstObject];
        ef_publicDescription = [firstObject ef_publicDescription];
        v20 = 138543362;
        v21 = ef_publicDescription;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "[instant answers] created EMInstantAnswer for %{public}@", &v20, 0xCu);
      }

      v15 = objc_alloc(MEMORY[0x1E699ACE0]);
      firstObject2 = [v11 firstObject];
      v17 = [v15 initFakeWithMessage:firstObject2];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_instantAnswersFromSuggestion:(id)suggestion
{
  v24[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  instantAnswer = [suggestionCopy instantAnswer];
  messageId = [instantAnswer messageId];
  if (![messageId length])
  {
    v10 = +[EDConcreteLocalSearchProvider log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [EDConcreteLocalSearchProvider _instantAnswersFromSuggestion:v10];
    }

    goto LABEL_9;
  }

  integerValue = [messageId integerValue];
  v8 = objc_alloc(MEMORY[0x1E699ADA8]);
  allMailboxesScope = [MEMORY[0x1E699AD28] allMailboxesScope];
  v10 = [v8 initWithGlobalMessageID:integerValue mailboxScope:allMailboxesScope];

  messagePersistence = [(EDConcreteLocalSearchProvider *)self messagePersistence];
  v24[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v13 = [messagePersistence messagesForMessageObjectIDs:v12 missedMessageObjectIDs:0];

  if (![v13 count])
  {

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v14 = +[EDConcreteLocalSearchProvider log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    firstObject = [v13 firstObject];
    ef_publicDescription = [firstObject ef_publicDescription];
    v22 = 138543362;
    v23 = ef_publicDescription;
    _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "[instant answers] created EMInstantAnswer for %{public}@", &v22, 0xCu);
  }

  v17 = objc_alloc(MEMORY[0x1E699ACE0]);
  firstObject2 = [v13 firstObject];
  v19 = [v17 initWithCSInstantAnswers:instantAnswer message:firstObject2];

LABEL_10:
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_snippetHintsFromQueryResultMatchingHints:(id)hints
{
  v21 = *MEMORY[0x1E69E9840];
  hintsCopy = hints;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = hintsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = MEMORY[0x1E699ADD8];
        attribute = [v9 attribute];
        v12 = [v10 snippetHintZoneFromString:attribute];

        tokens = [v9 tokens];
        [v4 setObject:tokens forKeyedSubscript:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (unint64_t)maxTopHitsInCommittedSearch
{
  if (maxTopHitsInCommittedSearch_onceToken != -1)
  {
    [EDConcreteLocalSearchProvider maxTopHitsInCommittedSearch];
  }

  return maxTopHitsInCommittedSearch_maxTopHitsInCommittedSearch;
}

void __60__EDConcreteLocalSearchProvider_maxTopHitsInCommittedSearch__block_invoke()
{
  v0 = *MEMORY[0x1E699ABD0];
  v1 = [MEMORY[0x1E695E000] em_userDefaults];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__EDConcreteLocalSearchProvider_maxTopHitsInCommittedSearch__block_invoke_2;
  v5[3] = &unk_1E8253298;
  v2 = v0;
  v6 = v2;
  v3 = [v1 ef_observeKeyPath:v2 options:5 autoCancelToken:1 usingBlock:v5];
  v4 = maxTopHitsInCommittedSearch__observationToken;
  maxTopHitsInCommittedSearch__observationToken = v3;
}

void __60__EDConcreteLocalSearchProvider_maxTopHitsInCommittedSearch__block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x1E695E000] em_userDefaults];
  v2 = [v4 integerForKey:*(a1 + 32)];
  v3 = *MEMORY[0x1E699AB30];
  if (v2)
  {
    v3 = v2;
  }

  maxTopHitsInCommittedSearch_maxTopHitsInCommittedSearch = v3;
}

- (void)_updateParsecBundleIdentifierIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__EDConcreteLocalSearchProvider__updateParsecBundleIdentifierIfNeeded__block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  if (_updateParsecBundleIdentifierIfNeeded_onceToken != -1)
  {
    dispatch_once(&_updateParsecBundleIdentifierIfNeeded_onceToken, block);
  }
}

void __70__EDConcreteLocalSearchProvider__updateParsecBundleIdentifierIfNeeded__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) searchableIndexManager];
  v1 = [v3 index];
  v2 = [v1 searchableIndexBundleID];
  [MEMORY[0x1E699AE18] setBundleIdentifier:v2];
}

void __76__EDConcreteLocalSearchProvider_topHitsSearchWithQuery_delegate_completion___block_invoke_15_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_5(a1, a2);
  OUTLINED_FUNCTION_0_6(v3, 5.8382e-34, v4, v5);
  _os_log_error_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_ERROR, "Spotlight top hits and instant answers search returned error %{public}@ for query %{public}@", v6, 0x16u);
}

void __62__EDConcreteLocalSearchProvider_liveSearchWithQuery_delegate___block_invoke_25_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_5(a1, a2);
  OUTLINED_FUNCTION_0_6(v3, 5.8382e-34, v4, v5);
  _os_log_error_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_ERROR, "Spotlight live search returned error %{public}@ for query %{public}@", v6, 0x16u);
}

@end