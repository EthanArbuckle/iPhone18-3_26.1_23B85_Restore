@interface CKMessageTypeQueryController
+ (id)timeRankedQueries;
+ (unint64_t)recencyRankedTargetResultCountForMode:(unint64_t)mode;
- (id)createFoundItemsHandler;
- (id)queryResultsForItems:(id)items;
- (id)rankingQueriesWithText:(id)text;
- (id)tokenFilterQueries;
- (id)zkwFilterQueries;
- (unint64_t)maxResultsForMode:(unint64_t)mode;
- (void)_asyncCheckIfResultsExistOnDisk:(id)disk firstBatch:(BOOL)batch;
- (void)checkIfResultsExistOnDiskAndNotify:(id)notify;
- (void)searchEnded;
- (void)searchWithText:(id)text;
@end

@implementation CKMessageTypeQueryController

- (id)zkwFilterQueries
{
  v12[1] = *MEMORY[0x1E69E9840];
  delegate = [(CKQueryController *)self delegate];
  v4 = [delegate searchTokenFiltersForQueryController:self];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = *MEMORY[0x1E69644B8];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v10 = [v7 stringWithFormat:@"%@ == %@", v8, v9];
    v12[0] = v10;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  return v6;
}

- (id)rankingQueriesWithText:(id)text
{
  if ([(CKQueryController *)self mode]== 1 || [(CKQueryController *)self mode]== 3 || [(CKQueryController *)self mode]== 2)
  {
    timeRankedQueries = [objc_opt_class() timeRankedQueries];
  }

  else
  {
    timeRankedQueries = 0;
  }

  return timeRankedQueries;
}

+ (id)timeRankedQueries
{
  v2 = objc_opt_new();
  v3 = 0;
  v4 = *MEMORY[0x1E6963E78];
  do
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"InRange(%@, $time.now(-%ld), $time.now)", v4, 60 * qword_190DD1110[v3]];
    [v2 addObject:v5];

    ++v3;
  }

  while (v3 != 9);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ >= $time.now", v4];
  [v2 addObject:v6];

  return v2;
}

- (unint64_t)maxResultsForMode:(unint64_t)mode
{
  delegate = [(CKQueryController *)self delegate];
  v6 = [delegate layoutWidthForQueryController:self];

  if (mode <= 1)
  {
    if (!mode)
    {
      if (v6)
      {
        return 6;
      }

      else
      {
        return 2;
      }
    }

    if (mode != 1)
    {
      return 0;
    }
  }

  else
  {
    if (mode == 2)
    {
      return 500;
    }

    if (mode != 3)
    {
      if (mode == 4)
      {
        return 0x7FFFFFFFLL;
      }

      return 0;
    }
  }

  if (!v6)
  {
    return 1;
  }

  if (v6 == 2 && !CKIsRunningInMacCatalyst())
  {
    return 6;
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  searchDefaultMaxResults = [v8 searchDefaultMaxResults];

  return searchDefaultMaxResults;
}

+ (unint64_t)recencyRankedTargetResultCountForMode:(unint64_t)mode
{
  if (mode == 2)
  {
    return 500;
  }

  else
  {
    return 10;
  }
}

- (id)tokenFilterQueries
{
  v32 = *MEMORY[0x1E69E9840];
  delegate = [(CKQueryController *)self delegate];
  v4 = [delegate searchTokenFiltersForQueryController:self];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [CKSearchTokenFilter conversationTokensFromTokenFilters:v4];
  if ([v7 count])
  {
    v8 = [CKSearchTokenFilter queryStringForMessageTypeSearch:v7];
    [v5 addObject:v8];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v29 = [v7 count];
        v30 = 2048;
        v31 = [v4 count];
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Found {%ld} conversation tokens from {%ld} total tokens.", buf, 0x16u);
      }
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_11;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "No conversation search tokens found. Skipping query generation for conversations/people for this search evaluation.", buf, 2u);
    }
  }

LABEL_11:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 contentType] == 8)
        {
          queryStringForDateTypeSearch = [v14 queryStringForDateTypeSearch];
          if (([v14 filterOptions] & 0x10) != 0)
          {
            v16 = v6;
          }

          else
          {
            v16 = v5;
          }

          [v16 addObject:queryStringForDateTypeSearch];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    v17 = [CKSpotlightQueryUtilities queryStringFromSubqueries:v6 combineOperator:0];
    [v5 addObject:v17];
  }

  v18 = [CKSpotlightQueryUtilities queryStringFromSubqueries:v5 combineOperator:1, v23];
  v19 = v18;
  if (v18)
  {
    __ck_stringByRedactingQuotedSubstrings = [v18 __ck_stringByRedactingQuotedSubstrings];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = __ck_stringByRedactingQuotedSubstrings;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Generated final query: {%@}", buf, 0xCu);
      }
    }
  }

  return v19;
}

- (void)searchWithText:(id)text
{
  textCopy = text;
  v5 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [(CKMessageTypeQueryController *)self setTimingCollection:v5];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-Search", objc_opt_class()];
  [v5 startTimingForKey:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-Query", objc_opt_class()];
  [v5 startTimingForKey:v7];

  objc_initWeak(&location, self);
  createFoundItemsHandler = [(CKMessageTypeQueryController *)self createFoundItemsHandler];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__CKMessageTypeQueryController_searchWithText___block_invoke;
  aBlock[3] = &unk_1E72F0EF0;
  objc_copyWeak(&v17, &location);
  v9 = v5;
  v16 = v9;
  v10 = _Block_copy(aBlock);
  itemsVerifiedOnDiskCache = [(CKMessageTypeQueryController *)self itemsVerifiedOnDiskCache];

  if (!itemsVerifiedOnDiskCache)
  {
    v12 = objc_opt_new();
    [(CKMessageTypeQueryController *)self setItemsVerifiedOnDiskCache:v12];
  }

  [(CKMessageTypeQueryController *)self setSearchTerminated:0];
  [(CKQueryController *)self setQueryFoundItemHandler:createFoundItemsHandler];
  [(CKQueryController *)self setQueryCompletionHandler:v10];
  v13 = [MEMORY[0x1E695DFD8] set];
  [(CKMessageTypeQueryController *)self setIntermediaryResults:v13];

  [(CKMessageTypeQueryController *)self setResultsToCheck:0];
  [(CKQueryController *)self setResults:0];
  [(CKMessageTypeQueryController *)self setGotResults:0];
  if ([(CKQueryController *)self shouldIncludeResultsIfFiltered])
  {
    v14.receiver = self;
    v14.super_class = CKMessageTypeQueryController;
    [(CKQueryController *)&v14 searchWithText:textCopy];
  }

  else
  {
    [(CKQueryController *)self setResults:0];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __47__CKMessageTypeQueryController_searchWithText___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained searchTerminated];

  if ((v5 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_loadWeakRetained((a1 + 40));
        v8 = objc_opt_class();
        v9 = objc_loadWeakRetained((a1 + 40));
        v10 = [v9 intermediaryResults];
        *buf = 138412802;
        v28 = v8;
        v29 = 2112;
        v30 = v3;
        v31 = 2048;
        v32 = [v10 count];
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%@ Finished searching with error %@. Results count %lu", buf, 0x20u);
      }
    }

    v11 = *(a1 + 32);
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v12 stringWithFormat:@"%@-Query", objc_opt_class()];
    [v11 stopTimingForKey:v14];

    v15 = objc_loadWeakRetained((a1 + 40));
    v16 = [v15 intermediaryResults];
    if (v16)
    {
      v17 = objc_loadWeakRetained((a1 + 40));
      v18 = [v17 intermediaryResults];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFD8] set];
    }

    v19 = [v18 allObjects];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __47__CKMessageTypeQueryController_searchWithText___block_invoke_208;
    v25[3] = &unk_1E72F50E8;
    objc_copyWeak(&v26, (a1 + 40));
    v20 = [v19 sortedArrayUsingComparator:v25];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__CKMessageTypeQueryController_searchWithText___block_invoke_2;
    block[3] = &unk_1E72EBB98;
    objc_copyWeak(&v24, (a1 + 40));
    v23 = v20;
    v21 = v20;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
  }
}

uint64_t __47__CKMessageTypeQueryController_searchWithText___block_invoke_208(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained useSemanticQuery] & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isSemanticSearchRankingEnabled];

  if (!v9)
  {
LABEL_5:
    v11 = [v6 attributeSet];
    v12 = [v11 contentCreationDate];
    v13 = [v5 attributeSet];
    v14 = [v13 contentCreationDate];
    v10 = [v12 compare:v14];

    goto LABEL_6;
  }

  v10 = [v5 compareByRank:v6];
LABEL_6:

  return v10;
}

void __47__CKMessageTypeQueryController_searchWithText___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained queryResultsForItems:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setQueriedResultsCount:{objc_msgSend(*(a1 + 32), "count")}];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      v7 = objc_opt_class();
      v9 = 138412546;
      v10 = v7;
      v11 = 2048;
      v12 = [v3 count];
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%@ got %lu query results", &v9, 0x16u);
    }
  }

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 postProcessAndUpdateResults:v3];
}

- (id)createFoundItemsHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__CKMessageTypeQueryController_createFoundItemsHandler__block_invoke;
  v4[3] = &unk_1E72EEDA0;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __55__CKMessageTypeQueryController_createFoundItemsHandler__block_invoke(uint64_t a1, void *a2)
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

- (void)searchEnded
{
  [(CKMessageTypeQueryController *)self setSearchTerminated:1];
  [(CKMessageTypeQueryController *)self setGotResults:0];
  [(CKQueryController *)self cancelCurrentSearch];
  if ([(CKQueryController *)self shouldResetSearchResultsWhenEnded])
  {
    [(CKQueryController *)self setResults:MEMORY[0x1E695E0F0]];
    delegate = [(CKQueryController *)self delegate];
    [delegate searchQueryResultsDidChange:self];
  }
}

- (id)queryResultsForItems:(id)items
{
  v61 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = CKSearchSignpostLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = CKSearchSignpostLogHandle();
  v8 = v7;
  spid = v6;
  v39 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "queryResultsForItems", "", buf, 2u);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v11)
  {
    v12 = *v48;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        spid = [(CKMessageTypeQueryController *)self chatGUIDForSearchableItem:v14, spid];
        v16 = spid;
        if (spid && [spid length])
        {
          [v9 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v11);
  }

  v40 = [(CKMessageTypeQueryController *)self maxResultsForMode:[(CKQueryController *)self mode]];
  v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = [v9 count];
      *buf = 138412802;
      v52 = v18;
      v53 = 2048;
      v54 = v19;
      v55 = 2048;
      v56 = v40;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%@ got %lu items with valid chat GUIDs, checking chat existence up to max results %lu", buf, 0x20u);
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v9;
  v20 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v20)
  {
    v21 = *v44;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v43 + 1) + 8 * j);
        spid2 = [(CKMessageTypeQueryController *)self chatGUIDForSearchableItem:v23, spid];
        delegate = [(CKQueryController *)self delegate];
        v26 = [delegate queryController:self conversationForChatGUID:spid2];

        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = objc_opt_class();
            isBlockedByCommunicationLimits = [v26 isBlockedByCommunicationLimits];
            *buf = 138413058;
            v30 = @"NO";
            if (isBlockedByCommunicationLimits)
            {
              v30 = @"YES";
            }

            v52 = v28;
            v53 = 2112;
            v54 = spid2;
            v55 = 2048;
            v56 = v26;
            v57 = 2112;
            v58 = v30;
            _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "%@ chat guid %@ got conversation %p commLimit state %@", buf, 0x2Au);
          }
        }

        if (v26)
        {
          if (([v26 isBlockedByCommunicationLimits] & 1) == 0)
          {
            v31 = [CKSpotlightQueryResult alloc];
            queryTypeIdentifier = [(CKQueryController *)self queryTypeIdentifier];
            v33 = [(CKSpotlightQueryResult *)v31 initWithSearchableItem:v23 queryType:queryTypeIdentifier withConversation:v26];

            [v42 addObject:v33];
            LODWORD(queryTypeIdentifier) = [v42 count] < v40;

            if (!queryTypeIdentifier)
            {

              goto LABEL_36;
            }
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_36:

  v34 = CKSearchSignpostLogHandle();
  v35 = v34;
  if (v39 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v35, OS_SIGNPOST_INTERVAL_END, spid, "queryResultsForItems", "", buf, 2u);
  }

  v36 = [v42 copy];

  return v36;
}

- (void)checkIfResultsExistOnDiskAndNotify:(id)notify
{
  notifyCopy = notify;
  [(CKMessageTypeQueryController *)self setResultsToCheck:notifyCopy];
  [(CKMessageTypeQueryController *)self _asyncCheckIfResultsExistOnDisk:notifyCopy firstBatch:1];
}

- (void)_asyncCheckIfResultsExistOnDisk:(id)disk firstBatch:(BOOL)batch
{
  if (batch)
  {
    v5 = 100;
  }

  else
  {
    v5 = 1000;
  }

  diskCopy = disk;
  v7 = [diskCopy count];
  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = [diskCopy subarrayWithRange:{0, v8}];
  v10 = [diskCopy mutableCopy];

  [v10 removeObjectsInArray:v9];
  [(CKMessageTypeQueryController *)self setResultsToCheck:v10];
  objc_initWeak(&location, self);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__49;
  v25[4] = __Block_byref_object_dispose__49;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__49;
  v23[4] = __Block_byref_object_dispose__49;
  v24 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__CKMessageTypeQueryController__asyncCheckIfResultsExistOnDisk_firstBatch___block_invoke;
  block[3] = &unk_1E72F5138;
  v20 = v25;
  v18 = v9;
  v13 = v9;
  objc_copyWeak(&v22, &location);
  v21 = v23;
  v19 = v11;
  v14 = v11;
  dispatch_async(v12, block);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__CKMessageTypeQueryController__asyncCheckIfResultsExistOnDisk_firstBatch___block_invoke_3;
  v15[3] = &unk_1E72F5160;
  v15[4] = self;
  v15[5] = v23;
  objc_copyWeak(&v16, &location);
  v15[6] = v25;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], v15);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v22);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);
  objc_destroyWeak(&location);
}

void __75__CKMessageTypeQueryController__asyncCheckIfResultsExistOnDisk_firstBatch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__CKMessageTypeQueryController__asyncCheckIfResultsExistOnDisk_firstBatch___block_invoke_2;
  v9[3] = &unk_1E72F5110;
  objc_copyWeak(&v10, (a1 + 64));
  v3 = [v2 __imArrayByFilteringWithBlock:v9];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(*(a1 + 48) + 8) + 40) arrayByApplyingSelector:sel_identifier];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_group_leave(*(a1 + 40));
  objc_destroyWeak(&v10);
}

uint64_t __75__CKMessageTypeQueryController__asyncCheckIfResultsExistOnDisk_firstBatch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained itemsVerifiedOnDiskCache];
  v6 = [v3 identifier];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 item];
    v10 = [v9 attributeSet];
    v11 = [v10 contentURL];

    if (v11)
    {
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [v11 path];
      v8 = [v12 fileExistsAtPath:v13];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

void __75__CKMessageTypeQueryController__asyncCheckIfResultsExistOnDisk_firstBatch___block_invoke_3(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v2 = [*(a1 + 32) itemsVerifiedOnDiskCache];
    [v2 addObjectsFromArray:*(*(*(a1 + 40) + 8) + 40)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained priorQueryIdentifier];

  v5 = objc_loadWeakRetained((a1 + 56));
  v66 = [v5 currentQueryIdentifier];

  if (v4 && ![v4 isEqual:v66])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_loadWeakRetained((a1 + 56));
        *buf = 138412290;
        v68 = objc_opt_class();
        v15 = v68;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%@ finished processing results for a stale query, resetting", buf, 0xCu);
      }
    }

    v16 = objc_loadWeakRetained((a1 + 56));
    [v16 setPriorQueryIdentifier:0];
  }

  else
  {
    v6 = objc_loadWeakRetained((a1 + 56));
    [v6 setPriorQueryIdentifier:v66];

    v7 = objc_loadWeakRetained((a1 + 56));
    v8 = [v7 maxResultsForMode:{objc_msgSend(v7, "mode")}];

    v9 = objc_loadWeakRetained((a1 + 56));
    v10 = [v9 results];
    if (v10)
    {
      v11 = objc_loadWeakRetained((a1 + 56));
      v12 = [v11 results];
    }

    else
    {
      v12 = [MEMORY[0x1E695DEC8] array];
    }

    v17 = [v12 arrayByAddingObjectsFromArray:*(*(*(a1 + 48) + 8) + 40)];

    v65 = [v17 count];
    v18 = [v17 count];
    if (v8 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v8;
    }

    v16 = [v17 subarrayWithRange:{0, v19}];

    v20 = objc_loadWeakRetained((a1 + 56));
    [v20 setResults:v16];

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_loadWeakRetained((a1 + 56));
        v23 = objc_opt_class();
        v24 = [v16 count];
        v25 = objc_loadWeakRetained((a1 + 56));
        v26 = [v25 priorQueryIdentifier];
        *buf = 138412802;
        v68 = v23;
        v69 = 2048;
        v70 = v24;
        v71 = 2112;
        v72 = v26;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "%@ now has %lu results against query identifier %@", buf, 0x20u);
      }
    }

    v27 = objc_loadWeakRetained((a1 + 56));
    v28 = [v27 delegate];
    v29 = objc_loadWeakRetained((a1 + 56));
    [v28 searchQueryResultsDidChange:v29];

    v30 = objc_loadWeakRetained((a1 + 56));
    v31 = [v30 timingCollection];

    if (v31)
    {
      v32 = objc_loadWeakRetained((a1 + 56));
      v33 = [v32 timingCollection];
      v34 = MEMORY[0x1E696AEC0];
      v35 = objc_loadWeakRetained((a1 + 56));
      v36 = [v34 stringWithFormat:@"%@-Search", objc_opt_class()];
      [v33 stopTimingForKey:v36];

      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = objc_loadWeakRetained((a1 + 56));
          v39 = [v38 timingCollection];
          *buf = 138412290;
          v68 = v39;
          _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "Timing for first batch %@", buf, 0xCu);
        }
      }

      v40 = objc_loadWeakRetained((a1 + 56));
      [v40 setTimingCollection:0];
    }

    v41 = v65 > v8;
    v42 = objc_loadWeakRetained((a1 + 56));
    if (([v42 searchTerminated] | v41))
    {

      goto LABEL_37;
    }

    v43 = objc_loadWeakRetained((a1 + 56));
    v44 = [v43 resultsToCheck];
    v45 = [v44 count] == 0;

    if (v45)
    {
LABEL_37:
      v56 = objc_loadWeakRetained((a1 + 56));
      [v56 setPriorQueryIdentifier:0];

      if (IMOSLoggingEnabled())
      {
        v57 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = objc_loadWeakRetained((a1 + 56));
          v59 = objc_opt_class();
          v60 = objc_loadWeakRetained((a1 + 56));
          if ([v60 searchTerminated])
          {
            v61 = @"YES";
          }

          else
          {
            v61 = @"NO";
          }

          v62 = objc_loadWeakRetained((a1 + 56));
          v63 = [v62 resultsToCheck];
          v64 = [v63 count];
          *buf = 138412802;
          v68 = v59;
          v69 = 2112;
          v70 = v61;
          v71 = 2048;
          v72 = v64;
          _os_log_impl(&dword_19020E000, v57, OS_LOG_TYPE_INFO, "%@ Terminating next chunk check, searchTerminated %@ resultsToCheck %lu", buf, 0x20u);
        }
      }

      goto LABEL_44;
    }

    if (IMOSLoggingEnabled())
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = objc_loadWeakRetained((a1 + 56));
        v48 = objc_opt_class();
        v49 = objc_loadWeakRetained((a1 + 56));
        if ([v49 searchTerminated])
        {
          v50 = @"YES";
        }

        else
        {
          v50 = @"NO";
        }

        v51 = objc_loadWeakRetained((a1 + 56));
        v52 = [v51 resultsToCheck];
        v53 = [v52 count];
        *buf = 138412802;
        v68 = v48;
        v69 = 2112;
        v70 = v50;
        v71 = 2048;
        v72 = v53;
        _os_log_impl(&dword_19020E000, v46, OS_LOG_TYPE_INFO, "%@ Kicking next chunk check, searchTerminated %@ resultsToCheck %lu", buf, 0x20u);
      }
    }

    v54 = objc_loadWeakRetained((a1 + 56));
    v55 = [v54 resultsToCheck];
    [v54 _asyncCheckIfResultsExistOnDisk:v55 firstBatch:0];
  }

LABEL_44:
}

@end