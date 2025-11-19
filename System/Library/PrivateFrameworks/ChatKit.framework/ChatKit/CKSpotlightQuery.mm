@interface CKSpotlightQuery
- (CKSpotlightQuery)initWithSearchText:(id)a3 chatRegistryOverride:(id)a4 startQuery:(BOOL)a5 completionBlock:(id)a6;
- (CKSpotlightQuery)initWithSearchText:(id)a3 completionBlock:(id)a4 startQuery:(BOOL)a5;
- (id)chatRegistry;
- (void)_callCompletion;
- (void)_cleanup;
- (void)_processSearchResults;
- (void)dealloc;
- (void)searchQuery:(id)a3 didFailWithError:(id)a4;
- (void)searchQuery:(id)a3 didReturnItems:(id)a4;
- (void)searchQuery:(id)a3 statusChanged:(unint64_t)a4;
@end

@implementation CKSpotlightQuery

- (void)_processSearchResults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CKSpotlightQuery__processSearchResults__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41__CKSpotlightQuery__processSearchResults__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(*(a1 + 32) + 56);
        *buf = 67109120;
        LODWORD(v38) = v3;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Leaving group %d", buf, 8u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Leaving A - cancel", buf, 2u);
      }
    }
  }

  else
  {
    if (!*(v1 + 48))
    {
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_processSearchResults...", buf, 2u);
      }
    }

    v6 = [*(*(a1 + 32) + 40) count];
    v8 = *(a1 + 32);
    if (*(v8 + 32) < v6)
    {
      *&v7 = 138412290;
      v29 = v7;
      do
      {
        v9 = [*(v8 + 40) objectAtIndex:v29];
        v10 = [v9 uniqueIdentifier];
        v11 = [v9 domainIdentifier];
        v12 = [v9 attributeSet];
        v13 = [v12 __ck_itemContentCreationDate];

        v14 = [v9 attributeSet];
        v15 = [v14 __ck_spotlightItemSnippet];

        if (([v10 containsString:@"message_guid"] & 1) != 0 || objc_msgSend(v10, "containsString:", @"chat_guid"))
        {
          ++*(*(a1 + 32) + 32);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v38 = v10;
              v39 = 2112;
              v40 = v11;
              _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Looking for a message matching message guid: %@ or chat guid: %@", buf, 0x16u);
            }
          }

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __41__CKSpotlightQuery__processSearchResults__block_invoke_87;
          aBlock[3] = &unk_1E72F5070;
          aBlock[4] = *(a1 + 32);
          v34 = v13;
          v17 = v10;
          v35 = v17;
          v36 = v15;
          v18 = _Block_copy(aBlock);
          if (v11)
          {
            if (IMOSLoggingEnabled())
            {
              v19 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = v29;
                v38 = v11;
                _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "ChatGUID: %@", buf, 0xCu);
              }
            }

            v20 = [*(a1 + 32) chatRegistry];
            v21 = [v20 existingChatWithGUID:v11];

            v18[2](v18, v21);
          }

          else if (v17)
          {
            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = v29;
                v38 = v17;
                _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "MessageGUID: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Entering B", buf, 2u);
              }
            }

            dispatch_group_enter(*(*(a1 + 32) + 56));
            v24 = [MEMORY[0x1E69A5AE8] sharedInstance];
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __41__CKSpotlightQuery__processSearchResults__block_invoke_90;
            v31[3] = &unk_1E72F5098;
            v31[4] = *(a1 + 32);
            v32 = v18;
            [v24 loadMessageWithGUID:v17 completionBlock:v31];
          }

          ++*(*(a1 + 32) + 32);
        }

        v8 = *(a1 + 32);
      }

      while (*(v8 + 32) < v6);
    }

    v25 = *(v8 + 40);
    *(v8 + 40) = 0;

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = *(*(a1 + 32) + 56);
        *buf = 134218240;
        v38 = v6;
        v39 = 1024;
        LODWORD(v40) = v27;
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Count: %lu group: %d", buf, 0x12u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Leaving A", buf, 2u);
      }
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 56));
}

void __41__CKSpotlightQuery__processSearchResults__block_invoke_87(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Chat: %@", &v17, 0xCu);
    }
  }

  v5 = [v3 guid];

  if (v5)
  {
    v6 = *(a1[4] + 48);
    v7 = [v3 guid];
    v8 = [v6 objectForKey:v7];

    if (!v8 || a1[5] && ([v8 messageDate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "compare:", a1[5]) == -1, v9, v10))
    {
      v11 = [CKSpotlightSearchResult alloc];
      v12 = a1[6];
      v13 = [v3 guid];
      v14 = [(CKSpotlightSearchResult *)v11 initWithMessageGUID:v12 chatGUID:v13 messageTime:a1[5] summery:a1[7]];

      v15 = *(a1[4] + 48);
      v16 = [v3 guid];
      [v15 setObject:v14 forKey:v16];
    }
  }
}

void __41__CKSpotlightQuery__processSearchResults__block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Completion called with message; %@", &v11, 0xCu);
    }
  }

  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = [v6 lastObject];
    (*(v8 + 16))(v8, v9);
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Leaving B", &v11, 2u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 56));
}

- (void)_cleanup
{
  searchResults = self->_searchResults;
  self->_searchResults = 0;

  self->_resultIndex = 0;
  chatGUIDToLatestSearchResult = self->_chatGUIDToLatestSearchResult;
  self->_chatGUIDToLatestSearchResult = 0;

  currentQuery = self->_currentQuery;
  if (currentQuery)
  {
    if ([(MDSearchQuery *)currentQuery status]<= 2)
    {
      [(MDSearchQuery *)self->_currentQuery cancel];
    }

    [(MDSearchQuery *)self->_currentQuery setDelegate:0];
    v6 = self->_currentQuery;
    self->_currentQuery = 0;
  }

  [(CKSpotlightQuery *)self setCompletion:0];
  searchResultLoadingGroup = self->_searchResultLoadingGroup;
  if (searchResultLoadingGroup)
  {
    self->_searchResultLoadingGroup = 0;
  }
}

- (void)_callCompletion
{
  if (self->_completion)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_chatGUIDToLatestSearchResult, "count")}];
    v3 = [(NSMutableDictionary *)self->_chatGUIDToLatestSearchResult allValues];
    [v4 addObjectsFromArray:v3];

    [v4 sortUsingComparator:&__block_literal_global_95];
    (*(self->_completion + 2))();
  }
}

- (CKSpotlightQuery)initWithSearchText:(id)a3 completionBlock:(id)a4 startQuery:(BOOL)a5
{
  v21 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "initWithSearchText:completionBlock: [searchText: %@]", buf, 0xCu);
    }
  }

  v22.receiver = self;
  v22.super_class = CKSpotlightQuery;
  v10 = [(CKSpotlightQuery *)&v22 init];
  v11 = v10;
  if (v10)
  {
    [(CKSpotlightQuery *)v10 setCompletion:v8];
    if ([v7 length])
    {
      if (setupCoreSpotlight_onceToken != -1)
      {
        [CKSpotlightQuery initWithSearchText:completionBlock:startQuery:];
      }

      if (_CKMDSearchQueryClass && _CKMDSearchQueryOptionFetchAttributes && _CKMDItemAuthors && _CKMDItemAuthorAddresses && _CKMDItemRecipients && _CKMDItemRecipientAddresses && _CKMDItemSubject && _CKMDItemTextContent && _CKMDItemInstantMessageAddresses)
      {
        if (CKEnhancedLegacySearchDisabled())
        {
          [MEMORY[0x1E696AE18] predicateWithFormat:@"(kMDItemAuthors contains[cd] %@) || (kMDItemAuthorAddresses contains[cd] %@) || (kMDItemRecipients contains[cd] %@) || (kMDItemRecipientAddresses contains[cd] %@) || (kMDItemInstantMessageAddresses contains[cd] %@) || (kMDItemSubject contains[cd] %@) || (kMDItemTextContent contains[cd] %@)", v7, v7, v7, v7, v7, v7, v7];
        }

        else
        {
          [MEMORY[0x1E696AE18] predicateWithFormat:@"(kMDItemSubject contains[cd] %@) || (kMDItemTextContent contains[cd] %@)", v7, v7];
        }
        v20 = ;
        v13 = [_CKMDSearchQueryClass alloc];
        v24 = _CKMDSearchQueryOptionFetchAttributes;
        v23[0] = _CKMDItemAuthors;
        v23[1] = _CKMDItemAuthorAddresses;
        v23[2] = _CKMDItemRecipients;
        v23[3] = _CKMDItemRecipientAddresses;
        v23[4] = _CKMDItemInstantMessageAddresses;
        v23[5] = _CKMDItemSubject;
        v23[6] = _CKMDItemTextContent;
        v23[7] = @"kMDItemContentCreationDate";
        v14 = _CKMDItemSnippet;
        if (!_CKMDItemSnippet)
        {
          v14 = kMDSpotlightItemSnippet;
        }

        v23[8] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:9];
        v25 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v17 = [v13 initWithPredicate:v20 options:v16];
        currentQuery = v11->_currentQuery;
        v11->_currentQuery = v17;

        [(MDSearchQuery *)v11->_currentQuery setClientBundleID:@"com.apple.MobileSMS"];
        [(MDSearchQuery *)v11->_currentQuery setDelegate:v11];
        if (v21)
        {
          [(MDSearchQuery *)v11->_currentQuery start];
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Couldn't find CoreSpotlight symbols", buf, 2u);
        }
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  [(CKSpotlightQuery *)self _cleanup];
  v3.receiver = self;
  v3.super_class = CKSpotlightQuery;
  [(CKSpotlightQuery *)&v3 dealloc];
}

- (void)searchQuery:(id)a3 didReturnItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_currentQuery == v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "did return items", buf, 2u);
      }
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__CKSpotlightQuery_searchQuery_didReturnItems___block_invoke;
    v9[3] = &unk_1E72EB8D0;
    v9[4] = self;
    v10 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void __47__CKSpotlightQuery_searchQuery_didReturnItems___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);
  if (v3)
  {
    v4 = [v3 arrayByAddingObjectsFromArray:v2];
  }

  else
  {
    v4 = [v2 copy];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(*(a1 + 32) + 40) count];
      v9 = 134217984;
      v10 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Added results with count %lu", &v9, 0xCu);
    }
  }
}

- (void)searchQuery:(id)a3 statusChanged:(unint64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v10 = a4;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "statusChanged: %lu", buf, 0xCu);
    }
  }

  if (a4 == 3 && self->_currentQuery == v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__CKSpotlightQuery_searchQuery_statusChanged___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __46__CKSpotlightQuery_searchQuery_statusChanged___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = *(a1 + 32);
  if (!v5[7])
  {
    v6 = dispatch_group_create();
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Entering A", buf, 2u);
      }
    }

    dispatch_group_enter(*(*(a1 + 32) + 56));
    v10 = *(a1 + 32);
    v11 = *(v10 + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__CKSpotlightQuery_searchQuery_statusChanged___block_invoke_115;
    block[3] = &unk_1E72EBA18;
    block[4] = v10;
    dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);
    v5 = *(a1 + 32);
  }

  return [v5 _processSearchResults];
}

uint64_t __46__CKSpotlightQuery_searchQuery_statusChanged___block_invoke_115(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Notify triggered!", v5, 2u);
    }
  }

  v3 = *(a1 + 32);
  if ((v3[8] & 1) == 0)
  {
    [v3 _callCompletion];
    v3 = *(a1 + 32);
  }

  return [v3 _cleanup];
}

- (void)searchQuery:(id)a3 didFailWithError:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_currentQuery == v6 && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Spotlight query failed with error: %@", &v9, 0xCu);
    }
  }
}

- (CKSpotlightQuery)initWithSearchText:(id)a3 chatRegistryOverride:(id)a4 startQuery:(BOOL)a5 completionBlock:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = [(CKSpotlightQuery *)self initWithSearchText:a3 completionBlock:a6 startQuery:v7];
  v12 = v11;
  if (v11)
  {
    [(CKSpotlightQuery *)v11 setChatRegisteryOverride:v10];
  }

  return v12;
}

- (id)chatRegistry
{
  chatRegisteryOverride = self->_chatRegisteryOverride;
  if (chatRegisteryOverride)
  {
    v3 = chatRegisteryOverride;
  }

  else
  {
    v3 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  }

  return v3;
}

@end