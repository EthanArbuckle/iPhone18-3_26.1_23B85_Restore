@interface EMSearchableIndexTopHitsQuery
+ (OS_os_log)log;
- (EMSearchableIndexTopHitsQuery)initWithSearchString:(id)a3 filterQueries:(id)a4 bundleID:(id)a5 keyboardLanguage:(id)a6 updatedSuggestion:(id)a7 generateSuggestions:(BOOL)a8 logDescription:(id)a9 resultLimit:(unint64_t)a10 suggestionLimit:(unint64_t)a11 customFlags:(id)a12 feedbackQueryID:(int64_t)a13;
- (id)topHitsQueryInstantAnswersResult;
- (id)topHitsQueryResult;
- (id)topHitsQuerySuggestionResult;
- (void)_cancel;
- (void)_configureTopHitsSearchQuery:(id)a3;
- (void)_searchDidCompleteWithError:(id)a3;
- (void)_searchFoundInstantAnswers:(id)a3;
- (void)_searchFoundItems:(id)a3;
- (void)_searchFoundSuggestions:(id)a3;
- (void)_searchHasAttributedQuery:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation EMSearchableIndexTopHitsQuery

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EMSearchableIndexTopHitsQuery_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_80 != -1)
  {
    dispatch_once(&log_onceToken_80, block);
  }

  v2 = log_log_79;

  return v2;
}

void __36__EMSearchableIndexTopHitsQuery_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_79;
  log_log_79 = v1;
}

- (EMSearchableIndexTopHitsQuery)initWithSearchString:(id)a3 filterQueries:(id)a4 bundleID:(id)a5 keyboardLanguage:(id)a6 updatedSuggestion:(id)a7 generateSuggestions:(BOOL)a8 logDescription:(id)a9 resultLimit:(unint64_t)a10 suggestionLimit:(unint64_t)a11 customFlags:(id)a12 feedbackQueryID:(int64_t)a13
{
  v98[10] = *MEMORY[0x1E69E9840];
  v84 = a3;
  v19 = a4;
  v82 = a5;
  v20 = a6;
  v85 = a7;
  v83 = a9;
  v21 = a12;
  v90.receiver = self;
  v90.super_class = EMSearchableIndexTopHitsQuery;
  v22 = [(EMSearchableIndexTopHitsQuery *)&v90 init];
  if (v22)
  {
    v23 = [v84 copy];
    searchString = v22->_searchString;
    v22->_searchString = v23;

    v25 = [v19 copy];
    filterQueries = v22->_filterQueries;
    v22->_filterQueries = v25;

    v27 = [v20 copy];
    keyboardLanguage = v22->_keyboardLanguage;
    v22->_keyboardLanguage = v27;

    v22->_generateSuggestions = a8;
    v22->_resultLimit = a10;
    objc_storeStrong(&v22->_bundleID, a5);
    objc_storeStrong(&v22->_logDescription, a9);
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    foundItems = v22->_foundItems;
    v22->_foundItems = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    foundSuggestions = v22->_foundSuggestions;
    v22->_foundSuggestions = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    foundInstantAnswersSuggestions = v22->_foundInstantAnswersSuggestions;
    v22->_foundInstantAnswersSuggestions = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    foundMatchingHintsByPersistentID = v22->_foundMatchingHintsByPersistentID;
    v22->_foundMatchingHintsByPersistentID = v35;

    v37 = objc_alloc_init(MEMORY[0x1E699B868]);
    spotlightTopHitsQueryResultPromise = v22->_spotlightTopHitsQueryResultPromise;
    v22->_spotlightTopHitsQueryResultPromise = v37;

    v39 = objc_alloc_init(MEMORY[0x1E699B868]);
    spotlightTopHitsQuerySuggestionsResultPromise = v22->_spotlightTopHitsQuerySuggestionsResultPromise;
    v22->_spotlightTopHitsQuerySuggestionsResultPromise = v39;

    v41 = objc_alloc_init(MEMORY[0x1E699B868]);
    spotlightTopHitsQueryInstantAnswersResultPromise = v22->_spotlightTopHitsQueryInstantAnswersResultPromise;
    v22->_spotlightTopHitsQueryInstantAnswersResultPromise = v41;

    v43 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    progress = v22->_progress;
    v22->_progress = v43;

    v45 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:-1];
    internalProgress = v22->_internalProgress;
    v22->_internalProgress = v45;

    [(NSProgress *)v22->_progress addChild:v22->_internalProgress withPendingUnitCount:1];
    v47 = *MEMORY[0x1E6964A30];
    v98[0] = *MEMORY[0x1E6964D00];
    v98[1] = v47;
    v48 = *MEMORY[0x1E6964D58];
    v98[2] = *MEMORY[0x1E6964D10];
    v98[3] = v48;
    v49 = *MEMORY[0x1E6964C58];
    v98[4] = *MEMORY[0x1E6964D20];
    v98[5] = v49;
    v50 = *MEMORY[0x1E6964DB0];
    v98[6] = *MEMORY[0x1E6964C60];
    v98[7] = v50;
    v51 = *MEMORY[0x1E6964D90];
    v98[8] = *MEMORY[0x1E6964D78];
    v98[9] = v51;
    v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:10];
    v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53 = [(EMSearchableIndexTopHitsQuery *)v22 bundleID];

    if (v53)
    {
      v54 = [(EMSearchableIndexTopHitsQuery *)v22 bundleID];
      [v52 addObject:v54];
    }

    v55 = [MEMORY[0x1E6964EB8] topHitQueryContextWithCurrentSuggestion:v85];
    [v55 setMaxSuggestionCount:a11];
    [v55 setMaxItemCount:a10];
    [v55 setKeyboardLanguage:v20];
    [v55 setFetchAttributes:v81];
    [v55 setFilterQueries:v19];
    [v55 setBundleIDs:v52];
    [v55 setFeedbackQueryID:a13];
    v56 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v56, OS_LOG_TYPE_DEFAULT, "[instant answers] Enabling instant answers in csTopHits query context", buf, 2u);
    }

    [v55 setEnableInstantAnswers:1];
    if (v21 && [v21 count])
    {
      v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __203__EMSearchableIndexTopHitsQuery_initWithSearchString_filterQueries_bundleID_keyboardLanguage_updatedSuggestion_generateSuggestions_logDescription_resultLimit_suggestionLimit_customFlags_feedbackQueryID___block_invoke;
      v88[3] = &unk_1E826F9C8;
      v58 = v57;
      v89 = v58;
      [v21 enumerateKeysAndObjectsUsingBlock:v88];
      v59 = [v58 copy];
      [v55 setCustomFieldSpecifications:v59];

      v60 = +[EMSearchableIndexTopHitsQuery log];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = [v58 copy];
        *buf = 138412290;
        v92 = v61;
        _os_log_impl(&dword_1C6655000, v60, OS_LOG_TYPE_DEFAULT, "Setting customFieldSpecifications: %@ on csContext", buf, 0xCu);
      }
    }

    v62 = +[EMSearchableIndex protectionClass];
    v63 = v62;
    if (v62)
    {
      v97 = v62;
      v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
      [v55 setProtectionClasses:v64];
    }

    v65 = [objc_alloc(MEMORY[0x1E6964EB0]) initWithUserQueryString:v22->_searchString queryContext:v55];
    topHitSearchQuery = v22->_topHitSearchQuery;
    v22->_topHitSearchQuery = v65;

    v67 = [(CSTopHitQuery *)v22->_topHitSearchQuery queryContext];
    v68 = [(EMSearchableIndexTopHitsQuery *)v22 bundleID];
    [v67 setClientBundleID:v68];

    v69 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v22->_searchString];
      *buf = 138412802;
      v92 = v70;
      v93 = 2112;
      v94 = v55;
      v95 = 2112;
      v96 = v85;
      _os_log_impl(&dword_1C6655000, v69, OS_LOG_TYPE_DEFAULT, "Setting top hits query with searchString: %@ and csContext: %@ with suggestion: %@", buf, 0x20u);
    }

    [(EMSearchableIndexTopHitsQuery *)v22 _configureTopHitsSearchQuery:v22->_topHitSearchQuery];
    v71 = MEMORY[0x1E696AEC0];
    v72 = [(EMSearchableIndexTopHitsQuery *)v22 logDescription];
    v73 = v72;
    v74 = &stru_1F45FD218;
    if (v72)
    {
      v74 = v72;
    }

    v75 = [v71 stringWithFormat:@"[%p %@]", v22, v74];
    logPrefix = v22->_logPrefix;
    v22->_logPrefix = v75;

    v77 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v22->_lock;
    v22->_lock = v77;

    objc_initWeak(buf, v22);
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __203__EMSearchableIndexTopHitsQuery_initWithSearchString_filterQueries_bundleID_keyboardLanguage_updatedSuggestion_generateSuggestions_logDescription_resultLimit_suggestionLimit_customFlags_feedbackQueryID___block_invoke_102;
    v86[3] = &unk_1E826C070;
    objc_copyWeak(&v87, buf);
    [(NSProgress *)v22->_internalProgress setCancellationHandler:v86];
    objc_destroyWeak(&v87);
    objc_destroyWeak(buf);
  }

  v79 = *MEMORY[0x1E69E9840];
  return v22;
}

void __203__EMSearchableIndexTopHitsQuery_initWithSearchString_filterQueries_bundleID_keyboardLanguage_updatedSuggestion_generateSuggestions_logDescription_resultLimit_suggestionLimit_customFlags_feedbackQueryID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E6964E10]);
  v7 = [v6 initWithDisplayName:v5 attribute:*MEMORY[0x1E6964D18] status:v8 token:@"Flag"];
  [*(a1 + 32) addObject:v7];
}

void __203__EMSearchableIndexTopHitsQuery_initWithSearchString_filterQueries_bundleID_keyboardLanguage_updatedSuggestion_generateSuggestions_logDescription_resultLimit_suggestionLimit_customFlags_feedbackQueryID___block_invoke_102(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

- (void)dealloc
{
  [(EMSearchableIndexTopHitsQuery *)self _cancel];
  v3.receiver = self;
  v3.super_class = EMSearchableIndexTopHitsQuery;
  [(EMSearchableIndexTopHitsQuery *)&v3 dealloc];
}

- (void)_configureTopHitsSearchQuery:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke;
  v13[3] = &unk_1E826F9F0;
  objc_copyWeak(&v14, &location);
  [v4 setAttributedQueryHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_2;
  v11[3] = &unk_1E826F850;
  objc_copyWeak(&v12, &location);
  [v4 setFoundItemsHandler:v11];
  if ([(EMSearchableIndexTopHitsQuery *)self generateSuggestions])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_3;
    v9[3] = &unk_1E826F850;
    objc_copyWeak(&v10, &location);
    [v4 setFoundSuggestionsHandler:v9];
    objc_destroyWeak(&v10);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_4;
  v7[3] = &unk_1E826F850;
  objc_copyWeak(&v8, &location);
  [v4 setFoundInstantAnswersHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_5;
  v5[3] = &unk_1E826F878;
  objc_copyWeak(&v6, &location);
  [v4 setCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchHasAttributedQuery:v3];
}

void __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchFoundItems:v3];
}

void __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchFoundSuggestions:v3];
}

void __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchFoundInstantAnswers:v3];
}

void __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchDidCompleteWithError:v3];
}

- (void)_searchHasAttributedQuery:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EMSearchableIndexTopHitsQuery *)self embeddingHandler];
  if (v5)
  {
    v6 = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
    v7 = [v6 queryContext];
    v8 = [v7 queryEmbedding];

    v9 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
      v12 = 138543874;
      v13 = v10;
      v14 = 1024;
      v15 = v8 != 0;
      v16 = 1024;
      v17 = [v4 isUnsafeQuery];
      _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ hasQueryEmbedding: %{BOOL}d, isUnsafeQuery: %{BOOL}d", &v12, 0x18u);
    }

    (v5)[2](v5, v8 != 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_searchFoundItems:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v5 lock];

  v6 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
  v7 = [v6 future];
  v8 = [v7 isFinished];

  v9 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v16 = 138543874;
    v17 = v10;
    v18 = 2112;
    v19 = v4;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ _searchFoundItems:%@ isFinished:%d", &v16, 0x1Cu);
  }

  if ((v8 & 1) == 0)
  {
    v11 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [v11 becomeCurrentWithPendingUnitCount:1];

    v12 = [(EMSearchableIndexTopHitsQuery *)self foundItems];
    [v12 addObjectsFromArray:v4];

    v13 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [v13 resignCurrent];
  }

  v14 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v14 unlock];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_searchFoundSuggestions:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v5 lock];

  v6 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
  v7 = [v6 future];
  v8 = [v7 isFinished];

  v9 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v11 = [EMCSLoggingAdditions publicDescriptionForSuggestionArray:v4];
    v17 = 138543874;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 1024;
    v22 = v8;
    _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ _searchFoundSuggestions:%@ isFinished:%d", &v17, 0x1Cu);
  }

  if ((v8 & 1) == 0)
  {
    v12 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [v12 becomeCurrentWithPendingUnitCount:1];

    v13 = [(EMSearchableIndexTopHitsQuery *)self foundSuggestions];
    [v13 addObjectsFromArray:v4];

    v14 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [v14 resignCurrent];
  }

  v15 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v15 unlock];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_searchFoundInstantAnswers:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v4 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v4 lock];

  v5 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
  v6 = [v5 future];
  v7 = [v6 isFinished];

  v8 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v10 = [v29 count];
    *buf = 138544130;
    v36 = v9;
    v37 = 2112;
    v38 = v29;
    v39 = 1024;
    v40 = v7;
    v41 = 2048;
    v42 = v10;
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "[instant answers] %{public}@ _searchFoundInstantAnswers:%@ isFinished:%d with instant answers count: %ld", buf, 0x26u);
  }

  if ((v7 & 1) == 0)
  {
    v11 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [v11 becomeCurrentWithPendingUnitCount:1];

    v12 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = 1;
      _os_log_impl(&dword_1C6655000, v12, OS_LOG_TYPE_DEFAULT, "[instant answers] Sending %lu eligible instant answer to the suggester", buf, 0xCu);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v29;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
          if (![v18 count])
          {
            v19 = MEMORY[0x1E696AD98];
            v20 = [v17 instantAnswer];
            v21 = [v19 numberWithInteger:{objc_msgSend(v20, "instantAnswersKind")}];
            LODWORD(v19) = [&unk_1F461CE88 containsObject:v21];

            if (!v19)
            {
              continue;
            }

            v18 = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
            [v18 addObject:v17];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }

    v22 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
      v24 = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
      v25 = [v24 count];
      *buf = 138412546;
      v36 = v23;
      v37 = 2048;
      v38 = v25;
      _os_log_impl(&dword_1C6655000, v22, OS_LOG_TYPE_DEFAULT, "[instant answers] Final found instant answers are:%@ with count:%lu", buf, 0x16u);
    }

    v26 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [v26 resignCurrent];
  }

  v27 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v27 unlock];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_searchDidCompleteWithError:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v7 = [v4 ef_publicDescription];
    *buf = 138543618;
    v37 = v6;
    v38 = 2114;
    v39 = v7;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ _searchDidComplete error:%{public}@", buf, 0x16u);
  }

  v8 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v8 lock];

  v9 = [EMSearchableIndexTopHitsQueryResult alloc];
  v10 = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
  v11 = [(EMSearchableIndexTopHitsQuery *)self foundItems];
  v12 = [(EMSearchableIndexTopHitsQuery *)self foundMatchingHintsByPersistentID];
  v35 = [(EMSearchableIndexTopHitsQueryResult *)v9 initWithTopHitSearchQuery:v10 foundItems:v11 foundMatchingHintsByPersistentID:v12];

  [(EMSearchableIndexTopHitsQuery *)self setTopHitSearchQuery:0];
  v13 = [EMSearchableIndexSuggestionsQueryResult alloc];
  v14 = [(EMSearchableIndexTopHitsQuery *)self foundSuggestions];
  v15 = [(EMSearchableIndexSuggestionsQueryResult *)v13 initWithSuggestions:v14];

  v16 = [EMSearchableIndexInstantAnswersQueryResult alloc];
  v17 = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
  v18 = [(EMSearchableIndexInstantAnswersQueryResult *)v16 initWithInstantAnswersSuggestions:v17];

  v19 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v19 unlock];

  v20 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
  v21 = [v20 completedUnitCount];
  v22 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
  [v22 setTotalUnitCount:v21];

  if (v4)
  {
    v23 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
    [v23 finishWithError:v4];

    v24 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
    [v24 finishWithError:v4];

    v25 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
    [v25 finishWithError:v4];
  }

  else
  {
    v26 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
      v28 = [(EMSearchableIndexTopHitsQuery *)self foundItems];
      v29 = [(EMSearchableIndexTopHitsQuery *)self foundSuggestions];
      v30 = [EMCSLoggingAdditions publicDescriptionForSuggestionArray:v29];
      v31 = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
      *buf = 138544130;
      v37 = v27;
      v38 = 2112;
      v39 = v28;
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = v31;
      _os_log_impl(&dword_1C6655000, v26, OS_LOG_TYPE_DEFAULT, "[instant answers] %{public}@ _searchDidComplete foundLibraryItems:%@ foundSuggestionItems:%@ foundInstantAnswersItems: %@", buf, 0x2Au);
    }

    v32 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
    [v32 finishWithResult:v15];

    v33 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
    [v33 finishWithResult:v35];

    v25 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
    [v25 finishWithResult:v18];
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)topHitsQueryResult
{
  v2 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
  v3 = [v2 future];

  return v3;
}

- (id)topHitsQuerySuggestionResult
{
  v2 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
  v3 = [v2 future];

  return v3;
}

- (id)topHitsQueryInstantAnswersResult
{
  v2 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
  v3 = [v2 future];

  return v3;
}

- (void)start
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v3 lock];

  v4 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v6 = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
    v7 = MEMORY[0x1E699B858];
    v8 = [(EMSearchableIndexTopHitsQuery *)self searchString];
    v9 = [v7 partiallyRedactedStringForString:v8];
    v10 = [(EMSearchableIndexTopHitsQuery *)self filterQueries];
    v14 = 138544130;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ starting query:%@ searchString:%@ filter:%@", &v14, 0x2Au);
  }

  v11 = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
  [v11 start];

  v12 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v12 unlock];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v2 = [(EMSearchableIndexTopHitsQuery *)self progress];
  [v2 cancel];
}

- (void)_cancel
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v3 lock];

  v4 = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
  v5 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v16 = 138543618;
    v17 = v6;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling query:%@", &v16, 0x16u);
  }

  [(CSTopHitQuery *)self->_topHitSearchQuery setCompletionHandler:0];
  [(CSTopHitQuery *)self->_topHitSearchQuery setFoundItemHandler:0];
  [(CSTopHitQuery *)self->_topHitSearchQuery setFoundSuggestionsHandler:0];
  [(CSTopHitQuery *)self->_topHitSearchQuery setFoundInstantAnswersHandler:0];
  [v4 cancel];
  topHitSearchQuery = self->_topHitSearchQuery;
  self->_topHitSearchQuery = 0;

  v8 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [v8 unlock];

  v9 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
  v10 = [v9 future];
  [v10 cancel];

  v11 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
  v12 = [v11 future];
  [v12 cancel];

  v13 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
  v14 = [v13 future];
  [v14 cancel];

  v15 = *MEMORY[0x1E69E9840];
}

@end