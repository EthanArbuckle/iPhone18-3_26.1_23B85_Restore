@interface CKConversationQueryController
- (_PSSuggester)zkwSuggester;
- (id)_appendRecencyToRankingQuery:(id)a3 hours:(unint64_t)a4;
- (id)_sortedAndRankedItemsWithItems:(id)a3;
- (id)chatGUIDForSearchableItem:(id)a3;
- (id)fetchAttributes;
- (id)filterQueries;
- (id)queryAttributesForText:(id)a3;
- (id)queryResultsForItems:(id)a3;
- (id)rankingQueriesWithText:(id)a3;
- (unint64_t)maxResultsForMode:(unint64_t)a3;
- (void)_searchZKWWithText:(id)a3;
- (void)searchEnded;
- (void)searchSpotlightWithText:(id)a3;
- (void)searchWithText:(id)a3;
@end

@implementation CKConversationQueryController

- (id)fetchAttributes
{
  v7[8] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6964B58];
  v7[0] = *MEMORY[0x1E69649F8];
  v7[1] = v2;
  v3 = *MEMORY[0x1E6964548];
  v7[2] = *MEMORY[0x1E69649E0];
  v7[3] = v3;
  v7[4] = *MEMORY[0x1E6963BA8];
  v7[5] = @"com_apple_mobilesms_chatStyle";
  v4 = *MEMORY[0x1E6964DA8];
  v7[6] = *MEMORY[0x1E69644C8];
  v7[7] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:8];

  return v5;
}

- (id)queryAttributesForText:(id)a3
{
  v6[3] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6964B58];
  v6[0] = *MEMORY[0x1E69649F8];
  v6[1] = v3;
  v6[2] = *MEMORY[0x1E69649E0];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];

  return v4;
}

- (unint64_t)maxResultsForMode:(unint64_t)a3
{
  if (a3 - 2 < 3)
  {
    return 0x7FFFFFFFLL;
  }

  if (a3 > 1)
  {
    return 0;
  }

  v5 = [(CKQueryController *)self delegate];
  v6 = [v5 layoutWidthForQueryController:self];

  if (v6)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (id)filterQueries
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6963F88], @"chatDomain"];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)rankingQueriesWithText:(id)a3
{
  v18[6] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *MEMORY[0x1E69644C8];
  v6 = *MEMORY[0x1E69649F8];
  v7 = a3;
  v8 = [v4 stringWithFormat:@"(%@ == \"%@\"", v5, MEMORY[0x1E695E110], v6, v7];
  v9 = *MEMORY[0x1E6964B58];
  v10 = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ == \"%@\"", v5, MEMORY[0x1E695E118], *MEMORY[0x1E6964B58], v7];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ == \"%@\"", v5, v10, v6, v7, v9];

  v13 = [(CKConversationQueryController *)self _appendRecencyToRankingQuery:v8 hours:24];
  v14 = [(CKConversationQueryController *)self _appendRecencyToRankingQuery:v11 hours:24];
  v15 = [(CKConversationQueryController *)self _appendRecencyToRankingQuery:v12 hours:24];
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v8;
  v18[3] = v15;
  v18[4] = v14;
  v18[5] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:6];

  return v16;
}

- (id)_appendRecencyToRankingQuery:(id)a3 hours:(unint64_t)a4
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ && (InRange(%@, $time.now(-%ld), $time.now))", a3, *MEMORY[0x1E6964548], 3600 * a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)searchWithText:(id)a3
{
  v4 = a3;
  if ([(CKQueryController *)self shouldIncludeResultsIfFiltered])
  {
    if ([(CKQueryController *)self mode]== 1)
    {
      [(CKConversationQueryController *)self _searchZKWWithText:v4];
    }

    else
    {
      [(CKConversationQueryController *)self searchSpotlightWithText:v4];
    }
  }

  else
  {
    [(CKQueryController *)self setResults:0];
  }
}

- (void)_searchZKWWithText:(id)a3
{
  v4 = a3;
  [(CKQueryController *)self setCurrentSearchText:v4];
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Performing ZKW search!", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v6 startTimingForKey:@"zkwConvoSearch"];
  objc_initWeak(buf, self);
  v7 = dispatch_get_global_queue(2, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__CKConversationQueryController__searchZKWWithText___block_invoke;
  v10[3] = &unk_1E72F4948;
  v10[4] = self;
  objc_copyWeak(&v13, buf);
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __52__CKConversationQueryController__searchZKWWithText___block_invoke(id *a1)
{
  v2 = MEMORY[0x193AF5EC0](@"_PSPredictionContext", @"PeopleSuggester");
  if (v2)
  {
    v3 = objc_alloc_init(v2);
    [v3 setBundleID:@"com.apple.MobileSMS"];
    v4 = [a1[4] zkwSuggester];
    if (objc_opt_respondsToSelector())
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Using CD for ZKW!", buf, 2u);
      }

      v6 = [v4 rankedZKWSuggestionsFromContext:v3];
      [a1[4] setCurrentZKWSuggestions:v6];
      v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__CKConversationQueryController__searchZKWWithText___block_invoke_230;
      block[3] = &unk_1E72F4920;
      block[4] = a1[4];
      v14 = v6;
      v8 = v6;
      objc_copyWeak(&v17, a1 + 7);
      v15 = v7;
      v16 = a1[5];
      v9 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v17);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__CKConversationQueryController__searchZKWWithText___block_invoke_233;
      v10[3] = &unk_1E72EBB98;
      objc_copyWeak(&v12, a1 + 7);
      v11 = a1[6];
      dispatch_async(MEMORY[0x1E69E96A0], v10);

      objc_destroyWeak(&v12);
    }
  }
}

void __52__CKConversationQueryController__searchZKWWithText___block_invoke_230(id *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] maxResultsForMode:{objc_msgSend(a1[4], "mode")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a1[5];
  v3 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v25 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = [*(*(&v24 + 1) + 8 * v6) conversationIdentifier];
      WeakRetained = objc_loadWeakRetained(a1 + 8);
      v9 = [WeakRetained delegate];
      v10 = objc_loadWeakRetained(a1 + 8);
      v11 = [v9 queryController:v10 conversationForChatGUID:v7];

      if (v11)
      {
        v12 = [CKZKWQueryResult alloc];
        v13 = [a1[4] queryTypeIdentifier];
        v14 = [(CKSpotlightQueryResult *)v12 initWithSearchableItem:0 queryType:v13 withConversation:v11];

        [a1[6] addObject:v14];
      }

      v15 = [a1[6] count];

      if (v15 >= v2)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [a1[7] stopTimingForKey:@"zkwConvoSearch"];
  v16 = IMLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = a1[7];
    *buf = 138412290;
    v29 = v17;
    _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "ZKW convo timing %@", buf, 0xCu);
  }

  v18 = objc_loadWeakRetained(a1 + 8);
  v19 = [a1[6] array];
  [v18 setResults:v19];

  v20 = objc_loadWeakRetained(a1 + 8);
  v21 = [v20 delegate];
  v22 = objc_loadWeakRetained(a1 + 8);
  [v21 searchQueryResultsDidChange:v22];
}

void __52__CKConversationQueryController__searchZKWWithText___block_invoke_233(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Using Spotlight for ZKW!", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained searchSpotlightWithText:*(a1 + 32)];
}

- (_PSSuggester)zkwSuggester
{
  zkwSuggester = self->_zkwSuggester;
  if (!zkwSuggester)
  {
    v4 = objc_alloc_init(MEMORY[0x193AF5EC0](@"_PSSuggester", @"PeopleSuggester"));
    v5 = self->_zkwSuggester;
    self->_zkwSuggester = v4;

    zkwSuggester = self->_zkwSuggester;
  }

  return zkwSuggester;
}

- (void)searchSpotlightWithText:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__CKConversationQueryController_searchSpotlightWithText___block_invoke;
  aBlock[3] = &unk_1E72EEDA0;
  objc_copyWeak(&v11, &location);
  v5 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CKConversationQueryController_searchSpotlightWithText___block_invoke_2;
  v8[3] = &unk_1E72F0EF0;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v6 = _Block_copy(v8);
  [(CKConversationQueryController *)self setSearchTerminated:0];
  [(CKConversationQueryController *)self setIntermediaryResults:0];
  [(CKQueryController *)self setQueryFoundItemHandler:v5];
  [(CKQueryController *)self setQueryCompletionHandler:v6];
  [(CKConversationQueryController *)self setGotResults:0];
  v7.receiver = self;
  v7.super_class = CKConversationQueryController;
  [(CKQueryController *)&v7 searchWithText:v4];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__CKConversationQueryController_searchSpotlightWithText___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained searchTerminated];

  if ((v4 & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 setGotResults:1];

    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 intermediaryResults];
    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      v9 = [v8 intermediaryResults];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFD8] set];
    }

    v10 = [v9 setByAddingObjectsFromArray:v12];

    v11 = objc_loadWeakRetained((a1 + 32));
    [v11 setIntermediaryResults:v10];
  }
}

void __57__CKConversationQueryController_searchSpotlightWithText___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Finished searching with error %@", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__CKConversationQueryController_searchSpotlightWithText___block_invoke_239;
  v5[3] = &unk_1E72EBB98;
  objc_copyWeak(&v6, (a1 + 40));
  v5[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v5);
  objc_destroyWeak(&v6);
}

void __57__CKConversationQueryController_searchSpotlightWithText___block_invoke_239(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained gotResults];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 intermediaryResults];
    if (v5)
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      v7 = [v6 intermediaryResults];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFD8] set];
    }

    v15 = *(a1 + 32);
    v16 = [v7 allObjects];
    v17 = [v15 _sortedAndRankedItemsWithItems:v16];

    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v26 = [v17 count];
      v27 = 2048;
      v28 = [v7 count];
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Got %ld results from top conversation query, truncated from initial %ld results", buf, 0x16u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__CKConversationQueryController_searchSpotlightWithText___block_invoke_241;
    v20[3] = &unk_1E72EBB98;
    objc_copyWeak(&v22, (a1 + 40));
    v21 = v17;
    v19 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v20);

    objc_destroyWeak(&v22);
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Didn't get any results, cleaning up old results", buf, 2u);
    }

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 isTokenizationQueryController];

    if (v10)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__CKConversationQueryController_searchSpotlightWithText___block_invoke_240;
      block[3] = &unk_1E72EC460;
      objc_copyWeak(&v24, (a1 + 40));
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v24);
      return;
    }

    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [MEMORY[0x1E695DEC8] array];
    [v11 setResults:v12];

    v7 = objc_loadWeakRetained((a1 + 40));
    v13 = [v7 delegate];
    v14 = objc_loadWeakRetained((a1 + 40));
    [v13 searchQueryResultsDidChange:v14];
  }
}

void __57__CKConversationQueryController_searchSpotlightWithText___block_invoke_240(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained tokenizedQueryResultsForItems:MEMORY[0x1E695E0F0]];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setResults:v7];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v5 searchQueryResultsDidChange:v6];
}

void __57__CKConversationQueryController_searchSpotlightWithText___block_invoke_241(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isTokenizationQueryController];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  v6 = *(a1 + 32);
  if (v3)
  {
    [v4 tokenizedQueryResultsForItems:v6];
  }

  else
  {
    [v4 queryResultsForItems:v6];
  }
  v11 = ;

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setResults:v11];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 delegate];
  v10 = objc_loadWeakRetained((a1 + 40));
  [v9 searchQueryResultsDidChange:v10];
}

- (void)searchEnded
{
  [(CKConversationQueryController *)self setSearchTerminated:1];
  [(CKQueryController *)self cancelCurrentSearch];
  if ([(CKQueryController *)self shouldResetSearchResultsWhenEnded])
  {
    [(CKQueryController *)self setResults:MEMORY[0x1E695E0F0]];
    v3 = [(CKQueryController *)self delegate];
    [v3 searchQueryResultsDidChange:self];
  }
}

- (id)_sortedAndRankedItemsWithItems:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversationQueryController *)self rankingQueriesWithText:&stru_1F04268F8];
  v6 = [v5 count];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v32 = 0;
        v13 = [CKSpotlightQueryUtilities matchedRankingQueriesForResult:v12 withRankingQueryCount:v6 maxRankingQuery:&v32];
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32];
        v15 = [v7 objectForKey:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v15 addObject:v12];
        [v7 setObject:v15 forKey:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [v7 allKeys];
  v18 = [v17 mutableCopy];

  [v18 sortUsingComparator:&__block_literal_global_163];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v7 objectForKey:*(*(&v28 + 1) + 8 * j)];
        v25 = v24;
        if (v24)
        {
          [v24 sortUsingComparator:&__block_literal_global_255_0];
          [v16 addObjectsFromArray:v25];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v21);
  }

  return v16;
}

uint64_t __64__CKConversationQueryController__sortedAndRankedItemsWithItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 attributeSet];
  v6 = [v5 lastUsedDate];
  v7 = [v4 attributeSet];

  v8 = [v7 lastUsedDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)queryResultsForItems:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = [(CKConversationQueryController *)self maxResultsForMode:[(CKQueryController *)self mode]];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v4;
  v26 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v26)
  {
    v27 = 0;
    v24 = v7;
    v25 = *v29;
    v23 = v5;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [(CKConversationQueryController *)self chatGUIDForSearchableItem:v10];
        v12 = [(CKQueryController *)self delegate];
        v13 = [v12 queryController:self conversationForChatGUID:v11];

        if (v13 && ([v13 isBlockedByCommunicationLimits] & 1) == 0)
        {
          v14 = v8;
          v15 = v6;
          v16 = [v13 chat];
          v17 = [v16 personCentricID];

          if (!v17)
          {
            goto LABEL_11;
          }

          v6 = v15;
          if (([v15 containsObject:v17] & 1) == 0)
          {
            v18 = [CKSpotlightQueryResult alloc];
            v19 = [(CKConversationQueryController *)self queryTypeIdentifier];
            v20 = [(CKSpotlightQueryResult *)v18 initWithSearchableItem:v10 queryType:v19 withConversation:v13];

            v5 = v23;
            [v23 addObject:v20];
            [v15 addObject:v17];
            ++v27;

LABEL_11:
            v6 = v15;
          }

          v8 = v14;

          v7 = v24;
        }

        if (v27 >= v7)
        {
          goto LABEL_16;
        }
      }

      v26 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v26);
  }

LABEL_16:

  v21 = [v5 copy];

  return v21;
}

- (id)chatGUIDForSearchableItem:(id)a3
{
  v3 = [a3 attributeSet];
  v4 = [v3 accountIdentifier];

  return v4;
}

@end