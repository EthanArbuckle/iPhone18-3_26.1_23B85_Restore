@interface EMSearchableIndexTopHitsQuery
+ (OS_os_log)log;
- (EMSearchableIndexTopHitsQuery)initWithSearchString:(id)string filterQueries:(id)queries bundleID:(id)d keyboardLanguage:(id)language updatedSuggestion:(id)suggestion generateSuggestions:(BOOL)suggestions logDescription:(id)description resultLimit:(unint64_t)self0 suggestionLimit:(unint64_t)self1 customFlags:(id)self2 feedbackQueryID:(int64_t)self3;
- (id)topHitsQueryInstantAnswersResult;
- (id)topHitsQueryResult;
- (id)topHitsQuerySuggestionResult;
- (void)_cancel;
- (void)_configureTopHitsSearchQuery:(id)query;
- (void)_searchDidCompleteWithError:(id)error;
- (void)_searchFoundInstantAnswers:(id)answers;
- (void)_searchFoundItems:(id)items;
- (void)_searchFoundSuggestions:(id)suggestions;
- (void)_searchHasAttributedQuery:(id)query;
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
  block[4] = self;
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

- (EMSearchableIndexTopHitsQuery)initWithSearchString:(id)string filterQueries:(id)queries bundleID:(id)d keyboardLanguage:(id)language updatedSuggestion:(id)suggestion generateSuggestions:(BOOL)suggestions logDescription:(id)description resultLimit:(unint64_t)self0 suggestionLimit:(unint64_t)self1 customFlags:(id)self2 feedbackQueryID:(int64_t)self3
{
  v98[10] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  queriesCopy = queries;
  dCopy = d;
  languageCopy = language;
  suggestionCopy = suggestion;
  descriptionCopy = description;
  flagsCopy = flags;
  v90.receiver = self;
  v90.super_class = EMSearchableIndexTopHitsQuery;
  v22 = [(EMSearchableIndexTopHitsQuery *)&v90 init];
  if (v22)
  {
    v23 = [stringCopy copy];
    searchString = v22->_searchString;
    v22->_searchString = v23;

    v25 = [queriesCopy copy];
    filterQueries = v22->_filterQueries;
    v22->_filterQueries = v25;

    v27 = [languageCopy copy];
    keyboardLanguage = v22->_keyboardLanguage;
    v22->_keyboardLanguage = v27;

    v22->_generateSuggestions = suggestions;
    v22->_resultLimit = limit;
    objc_storeStrong(&v22->_bundleID, d);
    objc_storeStrong(&v22->_logDescription, description);
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
    bundleID = [(EMSearchableIndexTopHitsQuery *)v22 bundleID];

    if (bundleID)
    {
      bundleID2 = [(EMSearchableIndexTopHitsQuery *)v22 bundleID];
      [v52 addObject:bundleID2];
    }

    v55 = [MEMORY[0x1E6964EB8] topHitQueryContextWithCurrentSuggestion:suggestionCopy];
    [v55 setMaxSuggestionCount:suggestionLimit];
    [v55 setMaxItemCount:limit];
    [v55 setKeyboardLanguage:languageCopy];
    [v55 setFetchAttributes:v81];
    [v55 setFilterQueries:queriesCopy];
    [v55 setBundleIDs:v52];
    [v55 setFeedbackQueryID:iD];
    v56 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v56, OS_LOG_TYPE_DEFAULT, "[instant answers] Enabling instant answers in csTopHits query context", buf, 2u);
    }

    [v55 setEnableInstantAnswers:1];
    if (flagsCopy && [flagsCopy count])
    {
      v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __203__EMSearchableIndexTopHitsQuery_initWithSearchString_filterQueries_bundleID_keyboardLanguage_updatedSuggestion_generateSuggestions_logDescription_resultLimit_suggestionLimit_customFlags_feedbackQueryID___block_invoke;
      v88[3] = &unk_1E826F9C8;
      v58 = v57;
      v89 = v58;
      [flagsCopy enumerateKeysAndObjectsUsingBlock:v88];
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

    queryContext = [(CSTopHitQuery *)v22->_topHitSearchQuery queryContext];
    bundleID3 = [(EMSearchableIndexTopHitsQuery *)v22 bundleID];
    [queryContext setClientBundleID:bundleID3];

    v69 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v22->_searchString];
      *buf = 138412802;
      v92 = v70;
      v93 = 2112;
      v94 = v55;
      v95 = 2112;
      v96 = suggestionCopy;
      _os_log_impl(&dword_1C6655000, v69, OS_LOG_TYPE_DEFAULT, "Setting top hits query with searchString: %@ and csContext: %@ with suggestion: %@", buf, 0x20u);
    }

    [(EMSearchableIndexTopHitsQuery *)v22 _configureTopHitsSearchQuery:v22->_topHitSearchQuery];
    v71 = MEMORY[0x1E696AEC0];
    logDescription = [(EMSearchableIndexTopHitsQuery *)v22 logDescription];
    v73 = logDescription;
    v74 = &stru_1F45FD218;
    if (logDescription)
    {
      v74 = logDescription;
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

- (void)_configureTopHitsSearchQuery:(id)query
{
  queryCopy = query;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke;
  v13[3] = &unk_1E826F9F0;
  objc_copyWeak(&v14, &location);
  [queryCopy setAttributedQueryHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_2;
  v11[3] = &unk_1E826F850;
  objc_copyWeak(&v12, &location);
  [queryCopy setFoundItemsHandler:v11];
  if ([(EMSearchableIndexTopHitsQuery *)self generateSuggestions])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_3;
    v9[3] = &unk_1E826F850;
    objc_copyWeak(&v10, &location);
    [queryCopy setFoundSuggestionsHandler:v9];
    objc_destroyWeak(&v10);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_4;
  v7[3] = &unk_1E826F850;
  objc_copyWeak(&v8, &location);
  [queryCopy setFoundInstantAnswersHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__EMSearchableIndexTopHitsQuery__configureTopHitsSearchQuery___block_invoke_5;
  v5[3] = &unk_1E826F878;
  objc_copyWeak(&v6, &location);
  [queryCopy setCompletionHandler:v5];
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

- (void)_searchHasAttributedQuery:(id)query
{
  v18 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  embeddingHandler = [(EMSearchableIndexTopHitsQuery *)self embeddingHandler];
  if (embeddingHandler)
  {
    topHitSearchQuery = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
    queryContext = [topHitSearchQuery queryContext];
    queryEmbedding = [queryContext queryEmbedding];

    v9 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
      v12 = 138543874;
      v13 = logPrefix;
      v14 = 1024;
      v15 = queryEmbedding != 0;
      v16 = 1024;
      isUnsafeQuery = [queryCopy isUnsafeQuery];
      _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ hasQueryEmbedding: %{BOOL}d, isUnsafeQuery: %{BOOL}d", &v12, 0x18u);
    }

    (embeddingHandler)[2](embeddingHandler, queryEmbedding != 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_searchFoundItems:(id)items
{
  v22 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  lock = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock lock];

  spotlightTopHitsQueryResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
  future = [spotlightTopHitsQueryResultPromise future];
  isFinished = [future isFinished];

  v9 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v16 = 138543874;
    v17 = logPrefix;
    v18 = 2112;
    v19 = itemsCopy;
    v20 = 1024;
    v21 = isFinished;
    _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ _searchFoundItems:%@ isFinished:%d", &v16, 0x1Cu);
  }

  if ((isFinished & 1) == 0)
  {
    internalProgress = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [internalProgress becomeCurrentWithPendingUnitCount:1];

    foundItems = [(EMSearchableIndexTopHitsQuery *)self foundItems];
    [foundItems addObjectsFromArray:itemsCopy];

    internalProgress2 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [internalProgress2 resignCurrent];
  }

  lock2 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock2 unlock];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_searchFoundSuggestions:(id)suggestions
{
  v23 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  lock = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock lock];

  spotlightTopHitsQuerySuggestionsResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
  future = [spotlightTopHitsQuerySuggestionsResultPromise future];
  isFinished = [future isFinished];

  v9 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v11 = [EMCSLoggingAdditions publicDescriptionForSuggestionArray:suggestionsCopy];
    v17 = 138543874;
    v18 = logPrefix;
    v19 = 2112;
    v20 = v11;
    v21 = 1024;
    v22 = isFinished;
    _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ _searchFoundSuggestions:%@ isFinished:%d", &v17, 0x1Cu);
  }

  if ((isFinished & 1) == 0)
  {
    internalProgress = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [internalProgress becomeCurrentWithPendingUnitCount:1];

    foundSuggestions = [(EMSearchableIndexTopHitsQuery *)self foundSuggestions];
    [foundSuggestions addObjectsFromArray:suggestionsCopy];

    internalProgress2 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [internalProgress2 resignCurrent];
  }

  lock2 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock2 unlock];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_searchFoundInstantAnswers:(id)answers
{
  v43 = *MEMORY[0x1E69E9840];
  answersCopy = answers;
  lock = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock lock];

  spotlightTopHitsQueryInstantAnswersResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
  future = [spotlightTopHitsQueryInstantAnswersResultPromise future];
  isFinished = [future isFinished];

  v8 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v10 = [answersCopy count];
    *buf = 138544130;
    v36 = logPrefix;
    v37 = 2112;
    v38 = answersCopy;
    v39 = 1024;
    v40 = isFinished;
    v41 = 2048;
    v42 = v10;
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "[instant answers] %{public}@ _searchFoundInstantAnswers:%@ isFinished:%d with instant answers count: %ld", buf, 0x26u);
  }

  if ((isFinished & 1) == 0)
  {
    internalProgress = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [internalProgress becomeCurrentWithPendingUnitCount:1];

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
    v13 = answersCopy;
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
          foundInstantAnswersSuggestions = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
          if (![foundInstantAnswersSuggestions count])
          {
            v19 = MEMORY[0x1E696AD98];
            instantAnswer = [v17 instantAnswer];
            v21 = [v19 numberWithInteger:{objc_msgSend(instantAnswer, "instantAnswersKind")}];
            LODWORD(v19) = [&unk_1F461CE88 containsObject:v21];

            if (!v19)
            {
              continue;
            }

            foundInstantAnswersSuggestions = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
            [foundInstantAnswersSuggestions addObject:v17];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }

    v22 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      foundInstantAnswersSuggestions2 = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
      foundInstantAnswersSuggestions3 = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
      v25 = [foundInstantAnswersSuggestions3 count];
      *buf = 138412546;
      v36 = foundInstantAnswersSuggestions2;
      v37 = 2048;
      v38 = v25;
      _os_log_impl(&dword_1C6655000, v22, OS_LOG_TYPE_DEFAULT, "[instant answers] Final found instant answers are:%@ with count:%lu", buf, 0x16u);
    }

    internalProgress2 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
    [internalProgress2 resignCurrent];
  }

  lock2 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock2 unlock];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_searchDidCompleteWithError:(id)error
{
  v44 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    ef_publicDescription = [errorCopy ef_publicDescription];
    *buf = 138543618;
    v37 = logPrefix;
    v38 = 2114;
    v39 = ef_publicDescription;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ _searchDidComplete error:%{public}@", buf, 0x16u);
  }

  lock = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock lock];

  v9 = [EMSearchableIndexTopHitsQueryResult alloc];
  topHitSearchQuery = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
  foundItems = [(EMSearchableIndexTopHitsQuery *)self foundItems];
  foundMatchingHintsByPersistentID = [(EMSearchableIndexTopHitsQuery *)self foundMatchingHintsByPersistentID];
  v35 = [(EMSearchableIndexTopHitsQueryResult *)v9 initWithTopHitSearchQuery:topHitSearchQuery foundItems:foundItems foundMatchingHintsByPersistentID:foundMatchingHintsByPersistentID];

  [(EMSearchableIndexTopHitsQuery *)self setTopHitSearchQuery:0];
  v13 = [EMSearchableIndexSuggestionsQueryResult alloc];
  foundSuggestions = [(EMSearchableIndexTopHitsQuery *)self foundSuggestions];
  v15 = [(EMSearchableIndexSuggestionsQueryResult *)v13 initWithSuggestions:foundSuggestions];

  v16 = [EMSearchableIndexInstantAnswersQueryResult alloc];
  foundInstantAnswersSuggestions = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
  v18 = [(EMSearchableIndexInstantAnswersQueryResult *)v16 initWithInstantAnswersSuggestions:foundInstantAnswersSuggestions];

  lock2 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock2 unlock];

  internalProgress = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
  completedUnitCount = [internalProgress completedUnitCount];
  internalProgress2 = [(EMSearchableIndexTopHitsQuery *)self internalProgress];
  [internalProgress2 setTotalUnitCount:completedUnitCount];

  if (errorCopy)
  {
    spotlightTopHitsQuerySuggestionsResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
    [spotlightTopHitsQuerySuggestionsResultPromise finishWithError:errorCopy];

    spotlightTopHitsQueryResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
    [spotlightTopHitsQueryResultPromise finishWithError:errorCopy];

    spotlightTopHitsQueryInstantAnswersResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
    [spotlightTopHitsQueryInstantAnswersResultPromise finishWithError:errorCopy];
  }

  else
  {
    v26 = +[EMSearchableIndexTopHitsQuery log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix2 = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
      foundItems2 = [(EMSearchableIndexTopHitsQuery *)self foundItems];
      foundSuggestions2 = [(EMSearchableIndexTopHitsQuery *)self foundSuggestions];
      v30 = [EMCSLoggingAdditions publicDescriptionForSuggestionArray:foundSuggestions2];
      foundInstantAnswersSuggestions2 = [(EMSearchableIndexTopHitsQuery *)self foundInstantAnswersSuggestions];
      *buf = 138544130;
      v37 = logPrefix2;
      v38 = 2112;
      v39 = foundItems2;
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = foundInstantAnswersSuggestions2;
      _os_log_impl(&dword_1C6655000, v26, OS_LOG_TYPE_DEFAULT, "[instant answers] %{public}@ _searchDidComplete foundLibraryItems:%@ foundSuggestionItems:%@ foundInstantAnswersItems: %@", buf, 0x2Au);
    }

    spotlightTopHitsQuerySuggestionsResultPromise2 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
    [spotlightTopHitsQuerySuggestionsResultPromise2 finishWithResult:v15];

    spotlightTopHitsQueryResultPromise2 = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
    [spotlightTopHitsQueryResultPromise2 finishWithResult:v35];

    spotlightTopHitsQueryInstantAnswersResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
    [spotlightTopHitsQueryInstantAnswersResultPromise finishWithResult:v18];
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)topHitsQueryResult
{
  spotlightTopHitsQueryResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
  future = [spotlightTopHitsQueryResultPromise future];

  return future;
}

- (id)topHitsQuerySuggestionResult
{
  spotlightTopHitsQuerySuggestionsResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
  future = [spotlightTopHitsQuerySuggestionsResultPromise future];

  return future;
}

- (id)topHitsQueryInstantAnswersResult
{
  spotlightTopHitsQueryInstantAnswersResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
  future = [spotlightTopHitsQueryInstantAnswersResultPromise future];

  return future;
}

- (void)start
{
  v22 = *MEMORY[0x1E69E9840];
  lock = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock lock];

  v4 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    topHitSearchQuery = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
    v7 = MEMORY[0x1E699B858];
    searchString = [(EMSearchableIndexTopHitsQuery *)self searchString];
    v9 = [v7 partiallyRedactedStringForString:searchString];
    filterQueries = [(EMSearchableIndexTopHitsQuery *)self filterQueries];
    v14 = 138544130;
    v15 = logPrefix;
    v16 = 2112;
    v17 = topHitSearchQuery;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = filterQueries;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ starting query:%@ searchString:%@ filter:%@", &v14, 0x2Au);
  }

  topHitSearchQuery2 = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
  [topHitSearchQuery2 start];

  lock2 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock2 unlock];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  progress = [(EMSearchableIndexTopHitsQuery *)self progress];
  [progress cancel];
}

- (void)_cancel
{
  v20 = *MEMORY[0x1E69E9840];
  lock = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock lock];

  topHitSearchQuery = [(EMSearchableIndexTopHitsQuery *)self topHitSearchQuery];
  v5 = +[EMSearchableIndexTopHitsQuery log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(EMSearchableIndexTopHitsQuery *)self logPrefix];
    v16 = 138543618;
    v17 = logPrefix;
    v18 = 2112;
    v19 = topHitSearchQuery;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling query:%@", &v16, 0x16u);
  }

  [(CSTopHitQuery *)self->_topHitSearchQuery setCompletionHandler:0];
  [(CSTopHitQuery *)self->_topHitSearchQuery setFoundItemHandler:0];
  [(CSTopHitQuery *)self->_topHitSearchQuery setFoundSuggestionsHandler:0];
  [(CSTopHitQuery *)self->_topHitSearchQuery setFoundInstantAnswersHandler:0];
  [topHitSearchQuery cancel];
  topHitSearchQuery = self->_topHitSearchQuery;
  self->_topHitSearchQuery = 0;

  lock2 = [(EMSearchableIndexTopHitsQuery *)self lock];
  [lock2 unlock];

  spotlightTopHitsQueryResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryResultPromise];
  future = [spotlightTopHitsQueryResultPromise future];
  [future cancel];

  spotlightTopHitsQuerySuggestionsResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQuerySuggestionsResultPromise];
  future2 = [spotlightTopHitsQuerySuggestionsResultPromise future];
  [future2 cancel];

  spotlightTopHitsQueryInstantAnswersResultPromise = [(EMSearchableIndexTopHitsQuery *)self spotlightTopHitsQueryInstantAnswersResultPromise];
  future3 = [spotlightTopHitsQueryInstantAnswersResultPromise future];
  [future3 cancel];

  v15 = *MEMORY[0x1E69E9840];
}

@end