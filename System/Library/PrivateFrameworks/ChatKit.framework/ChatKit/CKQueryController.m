@interface CKQueryController
- (BOOL)hasMoreResults;
- (BOOL)shouldIncludeResultsIfFiltered;
- (BOOL)shouldResetSearchResultsWhenEnded;
- (BOOL)useSemanticQuery;
- (CKQueryControllerDelegate)delegate;
- (id)_queryContextWithText:(id)a3;
- (id)_queryStringWithText:(id)a3;
- (id)tokenFilterQueries;
- (void)cancelCurrentSearch;
- (void)hasDetailsResultsForChatGUIDs:(id)a3 completion:(id)a4;
- (void)searchEnded;
- (void)searchWithText:(id)a3;
- (void)setQuery:(id)a3;
@end

@implementation CKQueryController

- (void)searchWithText:(id)a3
{
  v4 = a3;
  [(CKQueryController *)self cancelCurrentSearch];
  if ([(CKQueryController *)self useSemanticQuery])
  {
    v5 = objc_alloc(MEMORY[0x1E6964EC8]);
    v6 = [(CKQueryController *)self _queryContextWithText:v4];
    v7 = [v5 initWithUserQueryString:v4 userQueryContext:v6];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E6964E68]);
    v6 = [(CKQueryController *)self _queryStringWithText:v4];
    v9 = [(CKQueryController *)self _queryContextWithText:v4];
    v7 = [v8 initWithQueryString:v6 context:v9];
  }

  v10 = [(CKQueryController *)self queryFoundItemHandler];
  [v7 setFoundItemsHandler:v10];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__CKQueryController_searchWithText___block_invoke;
  v11[3] = &unk_1E72F0EF0;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  [v7 setCompletionHandler:v11];
  [(CKQueryController *)self setQuery:v7];
  [(CKQueryController *)self setCurrentSearchText:v4];
  [(CKQueryController *)self setQueryRunning:1];
  [v7 start];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __36__CKQueryController_searchWithText___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CKQueryController_searchWithText___block_invoke_2;
  block[3] = &unk_1E72EC460;
  objc_copyWeak(&v14, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [*(a1 + 32) queryCompletionHandler];
      v8 = _Block_copy(v7);
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Query returned for %@. Calling handler {%@}.", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained queryCompletionHandler];

  if (v10)
  {
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 queryCompletionHandler];
    (v12)[2](v12, v3);
  }

  objc_destroyWeak(&v14);
}

void __36__CKQueryController_searchWithText___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setQueryRunning:0];
}

- (BOOL)useSemanticQuery
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isSemanticSearchEnabled];

  return v4 && ![(CKQueryController *)self _currentModeIsDetails]&& [(CKQueryController *)self mode]!= 1;
}

- (BOOL)hasMoreResults
{
  v2 = [(CKQueryController *)self results];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)shouldIncludeResultsIfFiltered
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isSearchTokensEnabled];

  if (v4)
  {
    v5 = [(CKQueryController *)self delegate];
    v6 = [v5 searchTokenFiltersForQueryController:self];

    if ([v6 count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v19;
        v12 = 1;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            v15 = [v14 contentType];
            v16 = v15 == [(CKQueryController *)self searchTokenContentType];
            if ([v14 contentType])
            {
              v12 &= [v14 contentType] == 8;
            }

            v10 |= v16;
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      else
      {
        v10 = 0;
        v12 = 1;
      }

      if ([(CKQueryController *)self searchTokenContentType])
      {
        v12 |= v10;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)cancelCurrentSearch
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v9 = 138412546;
      v10 = v5;
      v11 = 2080;
      v12 = "[CKQueryController cancelCurrentSearch]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%@ - %s", &v9, 0x16u);
    }
  }

  v6 = [(CKQueryController *)self query];
  [v6 cancel];

  v7 = [(CKQueryController *)self query];
  [v7 setFoundItemHandler:0];

  v8 = [(CKQueryController *)self query];
  [v8 setCompletionHandler:0];

  [(CKQueryController *)self setQuery:0];
  [(CKQueryController *)self setQueryRunning:0];
}

- (void)searchEnded
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412546;
      v5 = objc_opt_class();
      v6 = 2080;
      v7 = "[CKQueryController searchEnded]";
      v3 = v5;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%@ %s - Implement in subclass", &v4, 0x16u);
    }
  }
}

- (BOOL)shouldResetSearchResultsWhenEnded
{
  if (CKIsRunningInMacCatalyst())
  {
    return 1;
  }

  v4 = [(CKQueryController *)self mode];
  v5 = [(CKQueryController *)self mode];
  return v4 == 1 || v5 == 0;
}

- (void)setQuery:(id)a3
{
  v8 = a3;
  v5 = [(CKQueryController *)self query];

  if (v5 != v8)
  {
    objc_storeStrong(&self->_query, a3);
    if (self->_query)
    {
      v6 = [MEMORY[0x1E696AEC0] stringGUID];
    }

    else
    {
      v6 = 0;
    }

    currentQueryIdentifier = self->_currentQueryIdentifier;
    self->_currentQueryIdentifier = v6;
  }
}

- (id)_queryStringWithText:(id)a3
{
  v4 = a3;
  v5 = [(CKQueryController *)self queryAttributesForText:v4];
  v6 = [CKSpotlightQueryUtilities queryStringForSearchString:v4 attributes:v5 matchType:0];

  return v6;
}

- (id)_queryContextWithText:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKQueryController *)self useSemanticQuery])
  {
    v5 = [MEMORY[0x1E6964ED0] userQueryContext];
    v20[0] = *MEMORY[0x1E696A388];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v5 setProtectionClasses:v6];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v7 = [(CKQueryController *)self fetchAttributes];
  [v5 setFetchAttributes:v7];

  v8 = [(CKQueryController *)self filterQueries];
  if ([(CKQueryController *)self mode]== 1)
  {
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DEC8] array];
    }

    v9 = [(CKQueryController *)self zkwFilterQueries];
    v10 = [v8 arrayByAddingObjectsFromArray:v9];
  }

  else
  {
    if (![(CKQueryController *)self _currentModeIsDetails])
    {
      goto LABEL_13;
    }

    if (!v8)
    {
      v8 = [MEMORY[0x1E695DEC8] array];
    }

    v11 = [(CKQueryController *)self delegate];
    v9 = [v11 queryControllerChatGUIDsForDetailsSearch:self];

    v12 = [(CKQueryController *)self detailsFilterQueriesForChatGUIDs:v9];
    v10 = [v8 arrayByAddingObjectsFromArray:v12];

    v8 = v12;
  }

  v8 = v10;
LABEL_13:
  if (![(CKQueryController *)self isTokenizationQueryController])
  {
    v13 = [(CKQueryController *)self tokenFilterQueries];
    v14 = [v13 length];
    if (v8)
    {
      if (v14)
      {
        v15 = [v8 arrayByAddingObject:v13];

        v8 = v15;
      }
    }

    else if (v14)
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v13];
    }

    else
    {
      v8 = 0;
    }
  }

  if (-[CKQueryController useSemanticQuery](self, "useSemanticQuery") && ([MEMORY[0x1E69A8070] sharedFeatureFlags], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isSemanticSearchRankingEnabled"), v16, v17))
  {
    [v5 setEnableRankedResults:1];
  }

  else
  {
    v18 = [(CKQueryController *)self rankingQueriesWithText:v4];
    [v5 setRankingQueries:v18];
  }

  [v5 setFilterQueries:v8];
  if ([objc_opt_class() useRecencyRankedSearchForMode:{-[CKQueryController mode](self, "mode")}])
  {
    [v5 setMaxCount:{objc_msgSend(objc_opt_class(), "recencyRankedTargetResultCountForMode:", -[CKQueryController mode](self, "mode"))}];
    if ([(CKQueryController *)self useSemanticQuery])
    {
      [v5 setMaxRankedResultCount:{objc_msgSend(objc_opt_class(), "recencyRankedTargetResultCountForMode:", -[CKQueryController mode](self, "mode"))}];
    }
  }

  [v5 setDisableBlockingOnIndex:1];
  [v5 setBundleIDs:&unk_1F04E6918];

  return v5;
}

- (id)tokenFilterQueries
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(CKQueryController *)self delegate];
  v4 = [v3 searchTokenFiltersForQueryController:self];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = *v17;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 contentType])
        {
          if ([v11 contentType] != 8)
          {
            continue;
          }

          v12 = [v11 queryStringForDateTypeSearch];
        }

        else
        {
          v12 = [v11 queryStringForConversationSearch];
        }

        v13 = v12;
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v8)
      {
LABEL_14:

        break;
      }
    }
  }

  v14 = [CKSpotlightQueryUtilities queryStringFromSubqueries:v5 combineOperator:1, v16];

  return v14;
}

- (void)hasDetailsResultsForChatGUIDs:(id)a3 completion:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = a4;
  v7 = CACurrentMediaTime();
  v8 = dispatch_group_create();
  v19 = v6;
  v9 = [(CKQueryController *)self detailsResultsValidationQueriesForChatGUIDs:v6];
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v51 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__26;
  v48[4] = __Block_byref_object_dispose__26;
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v10 = dispatch_queue_create("com.apple.MobileSMS.detailsQueryQueue", 0);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v11)
  {
    v12 = *v43;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke;
        block[3] = &unk_1E72F0F18;
        block[4] = &v38;
        block[5] = v46;
        dispatch_sync(v10, block);
        if (*(v39 + 24) == 1)
        {
          _Block_object_dispose(&v38, 8);
          goto LABEL_11;
        }

        dispatch_group_enter(v8);
        v31[6] = MEMORY[0x1E69E9820];
        v31[7] = 3221225472;
        v31[8] = __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_2;
        v31[9] = &unk_1E72F0F68;
        v14 = v10;
        v32 = v14;
        v34 = v50;
        v35 = v46;
        v36 = v48;
        v33 = v8;
        HasResultsForQuery = CSSimpleQueryHasResultsForQuery();
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_4;
        v31[3] = &unk_1E72F0F90;
        v31[4] = v48;
        v31[5] = HasResultsForQuery;
        dispatch_async(v14, v31);
        v16 = dispatch_time(0, 1000000000);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_5;
        v27[3] = &unk_1E72F0FB8;
        v29 = v52;
        v27[4] = self;
        v28 = v14;
        v30 = v48;
        dispatch_after(v16, MEMORY[0x1E69E96A0], v27);

        _Block_object_dispose(&v38, 8);
      }

      v11 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = dispatch_get_global_queue(0, 0);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_2_54;
  v22[3] = &unk_1E72F0FE0;
  v24 = v52;
  v25 = v50;
  v26 = v7;
  v22[4] = self;
  v23 = v20;
  v18 = v20;
  dispatch_group_notify(v8, v17, v22);

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v48, 8);

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v52, 8);
}

void __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2 && a3)
  {
    v4 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_3;
    block[3] = &unk_1E72F0F40;
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    dispatch_async(v4, block);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_3(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(*(a1[4] + 8) + 24) = 1;
  *(*(a1[5] + 8) + 24) = 1;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = *(*(a1[6] + 8) + 40);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) longLongValue];
        CSSimpleQueryCancel();
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  [v1 addObject:v2];
}

void __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_5(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = objc_opt_class();
        v4 = NSStringFromClass(v3);
        *buf = 138412290;
        v8 = v4;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Query result validation timed out for query controller %@. Cancelling.", buf, 0xCu);
      }
    }

    v5 = a1[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_53;
    block[3] = &unk_1E72EB968;
    block[4] = a1[7];
    dispatch_async(v5, block);
  }
}

void __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_53(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) longLongValue];
        CSSimpleQueryCancel();
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

uint64_t __62__CKQueryController_hasDetailsResultsForChatGUIDs_completion___block_invoke_2_54(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(*(result + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v3 = CACurrentMediaTime();
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        if (*(*(*(v2 + 56) + 8) + 24))
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = v3 - *(v2 + 64);
        v9 = 138412802;
        v10 = v5;
        v11 = 2112;
        v12 = v7;
        v13 = 2048;
        v14 = v8;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Query result validation returned hasResults: %@ for query controller %@. Time elapsed: %lf", &v9, 0x20u);
      }
    }

    result = *(v2 + 40);
    if (result)
    {
      return (*(result + 16))(result, *(*(*(v2 + 56) + 8) + 24));
    }
  }

  return result;
}

- (CKQueryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end