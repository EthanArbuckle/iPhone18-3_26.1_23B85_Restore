@interface CKConversationListScrollingController
- (CKConversationListScrollingController)initWithConversationList:(id)a3 chatRegistry:(id)a4;
- (id)_convertFilterActionDictionaryToConversationListFilterModeDictionary:(id)a3;
- (id)_filterModeNumForFilterModes:(id)a3;
- (void)_handleRegistryDidLoadNotification:(id)a3;
- (void)_loadOlderConversationsWithFilterModes:(id)a3;
- (void)_loadOlderConversationsWithFilterModes:(id)a3 limit:(unint64_t)a4 iteration:(unint64_t)a5;
- (void)_resetDateTrackingWithChatRegistry:(id)a3;
- (void)beginLoadingConversationsForFilterModesChanged:(id)a3;
- (void)reachedConversationWithLastMessageDate:(id)a3 filterModes:(id)a4 remainingRows:(int64_t)a5;
@end

@implementation CKConversationListScrollingController

- (CKConversationListScrollingController)initWithConversationList:(id)a3 chatRegistry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CKConversationListScrollingController;
  v9 = [(CKConversationListScrollingController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conversationList, a3);
    objc_storeStrong(&v10->_chatRegistry, a4);
    v11 = [(CKConversationListScrollingController *)v10 chatRegistry];
    [(CKConversationListScrollingController *)v10 _resetDateTrackingWithChatRegistry:v11];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v10 selector:sel__handleRegistryDidLoadNotification_ name:*MEMORY[0x1E69A58A0] object:0];
  }

  return v10;
}

- (void)_resetDateTrackingWithChatRegistry:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 filterCategoryToEarliestInitiallyFetchedLastMessageDate];
  v6 = [(CKConversationListScrollingController *)self _convertFilterActionDictionaryToConversationListFilterModeDictionary:v5];
  filterModeToEarliestFetchedDate = self->_filterModeToEarliestFetchedDate;
  self->_filterModeToEarliestFetchedDate = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  filterModeToEarliestReachedDate = self->_filterModeToEarliestReachedDate;
  self->_filterModeToEarliestReachedDate = v8;

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = self->_filterModeToEarliestFetchedDate;
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Reset filter mode to fetch dates to %@", &v12, 0xCu);
    }
  }
}

- (void)_handleRegistryDidLoadNotification:(id)a3
{
  v4 = [(CKConversationListScrollingController *)self chatRegistry];
  [(CKConversationListScrollingController *)self _resetDateTrackingWithChatRegistry:v4];
}

- (void)beginLoadingConversationsForFilterModesChanged:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 now];
  [(CKConversationListScrollingController *)self reachedConversationWithLastMessageDate:v6 filterModes:v5 remainingRows:0];
}

- (void)reachedConversationWithLastMessageDate:(id)a3 filterModes:(id)a4 remainingRows:(int64_t)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF00] now];
  }

  v10 = [(CKConversationListScrollingController *)self _filterModeNumForFilterModes:v9];
  v11 = [(CKConversationListScrollingController *)self filterModeToEarliestFetchedDate];
  v12 = [v11 objectForKeyedSubscript:v10];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E695DF00] now];
  }

  v15 = v14;

  v16 = [(CKConversationListScrollingController *)self filterModeToEarliestReachedDate];
  v17 = [v16 objectForKeyedSubscript:v10];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [MEMORY[0x1E695DF00] now];
  }

  v20 = v19;

  v21 = [v20 earlierDate:v8];
  v22 = [(CKConversationListScrollingController *)self filterModeToEarliestReachedDate];
  [v22 setObject:v21 forKeyedSubscript:v10];

  if (![(CKConversationListScrollingController *)self isFetchingOlderConversations])
  {
    v23 = [v8 earlierDate:v15];
    v24 = [v23 isEqualToDate:v8];

    v25 = +[CKUIBehavior sharedBehaviors];
    v26 = [v25 conversationListScrollingPaddingRowCount];

    v27 = v26 > a5 ? 1 : v24;
    if (v27 == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
          v30 = @"NO";
          if (v26 <= a5)
          {
            v31 = @"NO";
          }

          else
          {
            v31 = @"YES";
          }

          *v33 = 138412802;
          if (v24)
          {
            v30 = @"YES";
          }

          *&v33[4] = v30;
          v34 = 2112;
          v35 = v31;
          v36 = 2112;
          v37 = v29;
          v32 = v29;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Initiating infinite scroll fetch for date: %@ for end of list: %@ remaining rows: %@", v33, 0x20u);
        }
      }

      [(CKConversationListScrollingController *)self _loadOlderConversationsWithFilterModes:v9, *v33];
    }
  }
}

- (void)_loadOlderConversationsWithFilterModes:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  -[CKConversationListScrollingController _loadOlderConversationsWithFilterModes:limit:iteration:](self, "_loadOlderConversationsWithFilterModes:limit:iteration:", v4, [v5 conversationListScrollingBatchSize], 0);
}

- (id)_filterModeNumForFilterModes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 __im_primaryFilterModes];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += 1 << [*(*(&v13 + 1) + 8 * i) integerValue];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([v3 containsObject:&unk_1F04E7740])
  {
    v10 = v7 + 256;
  }

  else
  {
    v10 = v7;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];

  return v11;
}

- (void)_loadOlderConversationsWithFilterModes:(id)a3 limit:(unint64_t)a4 iteration:(unint64_t)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(CKConversationListScrollingController *)self isFetchingOlderConversations];
  if (a5 > 0xC || v9)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [(CKConversationListScrollingController *)self isFetchingOlderConversations];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
        v20 = v19;
        v21 = @"NO";
        if (v18)
        {
          v21 = @"YES";
        }

        *buf = 138412546;
        v47 = v21;
        v48 = 2112;
        v49 = v19;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Ignoring load older conversations request, is fetching is %@ and iteration is %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = [v8 __im_primaryFilterModes];
    v11 = [v10 anyObject];
    v38 = [v11 integerValue];

    v37 = [v8 containsObject:&unk_1F04E7740];
    v12 = [(CKConversationListScrollingController *)self _filterModeNumForFilterModes:v8];
    v13 = [(CKConversationListScrollingController *)self filterModeToEarliestFetchedDate];
    v14 = [v13 objectForKeyedSubscript:v12];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x1E695DF00] now];
    }

    v22 = v16;

    v23 = [(CKConversationListScrollingController *)self conversationList];
    v24 = [v23 conversations];
    v25 = [v24 lastObject];
    v26 = [v25 chat];
    v39 = [v26 lastFinishedMessageDate];

    v27 = [v22 laterDate:v39];

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 134219010;
        v47 = a5;
        v48 = 2048;
        v49 = a4;
        v50 = 1024;
        v51 = v38;
        v52 = 2112;
        v53 = v27;
        v54 = 2112;
        v55 = v39;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Kicking off request (%llu) for %llu older conversations with filter mode %d older than date %@ (oldest conversation date: %@)", buf, 0x30u);
      }
    }

    [(CKConversationListScrollingController *)self setFetchingOlderConversations:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__CKConversationListScrollingController__loadOlderConversationsWithFilterModes_limit_iteration___block_invoke;
    aBlock[3] = &unk_1E72ECCF8;
    aBlock[4] = self;
    v29 = v12;
    v41 = v29;
    v44 = a4;
    v30 = v27;
    v42 = v30;
    v45 = a5;
    v43 = v8;
    v31 = _Block_copy(aBlock);
    v32 = [CKConversationListFilterModeUtilities filterModeChatPredicate:v38];
    v33 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v34 = [v33 isUnreadCountRefactorEnabled];

    v35 = [(CKConversationListScrollingController *)self chatRegistry];
    v36 = v35;
    if ((v34 & v37) != 0)
    {
      [v35 _loadUnreadChatsWithLastMessageOlderThan:v30 waitForReply:0 predicate:v32 limit:a4 completionHandler:v31];
    }

    else
    {
      [v35 _loadChatsFilteredUsingPredicate:v32 lastMessageOlderThan:v30 limit:a4 waitForReply:0 completionHandler:v31];
    }
  }
}

void __96__CKConversationListScrollingController__loadOlderConversationsWithFilterModes_limit_iteration___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [*(a1 + 32) filterModeToEarliestFetchedDate];
    v10 = [v11 objectForKeyedSubscript:*(a1 + 40)];
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 count];
      v14 = [*(a1 + 32) conversationList];
      v15 = [v14 conversations];
      *buf = 134218754;
      v32 = v13;
      v33 = 2048;
      v34 = [v15 count];
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Request for older conversations found %llu results (conversation list total now %llu) with error: %@ earliest last message date: %@", buf, 0x2Au);
    }
  }

  [*(a1 + 32) setFetchingOlderConversations:0];
  if ([v7 count])
  {
    v16 = *(a1 + 64);
    v17 = [*(a1 + 32) filterModeToEarliestReachedDate];
    v18 = [v17 objectForKeyedSubscript:*(a1 + 40)];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [MEMORY[0x1E695DF00] now];
    }

    v21 = v20;

    if ([v10 isEqualToDate:*(a1 + 48)] && (v22 = *(a1 + 64), v22 <= 0xC7))
    {
      v16 = 2 * v22;
    }

    else
    {
      v23 = [v21 earlierDate:v10];
      v24 = v23 == v21;

      if (!v24)
      {
        v25 = *(a1 + 72) == 0;
LABEL_18:
        v26 = [*(a1 + 32) filterModeToEarliestFetchedDate];
        [v26 setObject:v10 forKeyedSubscript:*(a1 + 40)];

        if (v25)
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __96__CKConversationListScrollingController__loadOlderConversationsWithFilterModes_limit_iteration___block_invoke_213;
          v27[3] = &unk_1E72ECCD0;
          v27[4] = *(a1 + 32);
          v28 = *(a1 + 56);
          v29 = v16;
          v30 = *(a1 + 72);
          dispatch_async(MEMORY[0x1E69E96A0], v27);
        }

        goto LABEL_21;
      }
    }

    v25 = 1;
    goto LABEL_18;
  }

LABEL_21:
}

- (id)_convertFilterActionDictionaryToConversationListFilterModeDictionary:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __110__CKConversationListScrollingController__convertFilterActionDictionaryToConversationListFilterModeDictionary___block_invoke;
  v8[3] = &unk_1E72ECD20;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __110__CKConversationListScrollingController__convertFilterActionDictionaryToConversationListFilterModeDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 integerValue];
  v8 = v7;
  if (v7 <= 1)
  {
    if (!v7)
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:&unk_1F04E7758];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:&unk_1F04E7770];
      v9 = *(a1 + 32);
      v10 = &unk_1F04E7788;
      goto LABEL_12;
    }

    if (v7 == 1)
    {
      v9 = *(a1 + 32);
      v10 = &unk_1F04E77B8;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v9 = *(a1 + 32);
        v10 = &unk_1F04E77A0;
        goto LABEL_12;
      case 3:
        v9 = *(a1 + 32);
        v10 = &unk_1F04E77D0;
        goto LABEL_12;
      case 4:
        v9 = *(a1 + 32);
        v10 = &unk_1F04E77E8;
LABEL_12:
        [v9 setObject:v6 forKeyedSubscript:v10];
        goto LABEL_13;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Unknown filter action: %ld", &v12, 0xCu);
    }
  }

LABEL_13:
}

@end