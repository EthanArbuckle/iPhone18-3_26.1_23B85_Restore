@interface CKRecipientSearchListController
- (BOOL)hasSearchResults;
- (BOOL)isSearchResultsHidden;
- (BOOL)suppressGroupSuggestions;
- (CKContactsSearchManager)searchManager;
- (CKRecipientSearchListController)initWithStyle:(int64_t)a3;
- (NSArray)conversationCache;
- (char)_serviceColorForRecipients:(id)a3;
- (id)_statusQueryController;
- (int64_t)idsStatusForAddress:(id)a3;
- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6;
- (void)cancelSearch;
- (void)contactsSearchManager:(id)a3 finishedSearchingWithResults:(id)a4;
- (void)dealloc;
- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4;
- (void)invalidateOutstandingIDStatusRequests;
- (void)invalidateSearchManager;
- (void)loadView;
- (void)removeRecipient:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchWithText:(id)a3;
- (void)setSuppressGroupSuggestions:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidAppearDeferredSetup;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKRecipientSearchListController

- (void)dealloc
{
  [(CKContactsSearchManager *)self->_searchManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = CKRecipientSearchListController;
  [(CKRecipientSearchListController *)&v3 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = CKRecipientSearchListController;
  [(CKRecipientSearchListController *)&v4 loadView];
  v3 = [(CKRecipientSearchListController *)self tableView];
  [v3 setAutoresizingMask:18];
  [v3 setOpaque:0];
  [v3 setScrollsToTop:0];
  [v3 setLayoutMarginsFollowReadableWidth:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = CKRecipientSearchListController;
  v4 = a3;
  [(CNAutocompleteResultsTableViewController *)&v11 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;

  v7 = [(CKRecipientSearchListController *)self traitCollection];
  [v7 displayScale];
  v9 = v8;

  if (v6 != v9)
  {
    v10 = [(CKRecipientSearchListController *)self tableView];
    [v10 reloadData];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = CKRecipientSearchListController;
  [(CKRecipientSearchListController *)&v16 viewWillAppear:a3];
  v4 = [(CKRecipientSearchListController *)self tableView];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 searchResultsBackgroundColor];

  if (v7)
  {
    [v4 setBackgroundColor:v7];
    [v4 setTableHeaderBackgroundColor:v7];
    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    [v4 bounds];
    v9 = [v8 initWithFrame:?];
    [v4 setBackgroundView:v9];
  }

  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v10 theme];
  v12 = [v11 searchResultsSeperatorColor];

  if (v12)
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v13 theme];
    v15 = [v14 searchResultsSeperatorColor];
    [v4 setSeparatorColor:v15];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKRecipientSearchListController;
  [(CKRecipientSearchListController *)&v4 viewDidAppear:a3];
  [(CKRecipientSearchListController *)self performSelector:sel_viewDidAppearDeferredSetup withObject:0 afterDelay:0.0];
}

- (void)viewDidAppearDeferredSetup
{
  v3 = [(CKRecipientSearchListController *)self conversationCache];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_chatStateChanged_ name:@"CKConversationJoinStateDidChangeNotification" object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_chatStateChanged_ name:*MEMORY[0x1E69A5700] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel_chatStateChanged_ name:@"CKConversationListFinishedLoadingNotification" object:0];
}

- (CKRecipientSearchListController)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CKRecipientSearchListController;
  v3 = [(CNAutocompleteResultsTableViewController *)&v7 initWithStyle:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69A5A80] sharedInstance];
    v5 = [v4 __ck_bestAccountForAddresses:0];

    [(CKRecipientSearchListController *)v3 setDefaultiMessageAccount:v5];
  }

  return v3;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(CNAutocompleteResultsTableViewController *)self delegate];
  [v4 searchListControllerDidScroll:self];
}

- (void)contactsSearchManager:(id)a3 finishedSearchingWithResults:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v29 = a4;
  v5 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v5 startTimingForKey:@"MessageUI"];

  [(CKRecipientSearchListController *)self setSearchResults:v29];
  v28 = [(CKRecipientSearchListController *)self _statusQueryController];
  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = [(CKRecipientSearchListController *)self searchResults];
  v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [(CKRecipientSearchListController *)self searchResults];
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v10)
  {
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        if (([v13 isGroup] & 1) == 0 && (objc_msgSend(v13, "children"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count") == 0, v14, v15))
        {
          v37 = v13;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        }

        else
        {
          v16 = [v13 children];
        }

        v17 = v16;
        v18 = [v16 __imArrayByApplyingBlock:&__block_literal_global_7];
        [v8 addObjectsFromArray:v18];

        ++v12;
      }

      while (v10 != v12);
      v19 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
      v10 = v19;
    }

    while (v19);
  }

  v20 = [(CKRecipientSearchListController *)self searchResults];
  [(CNAutocompleteResultsTableViewController *)self setRecipients:v20];

  v21 = [MEMORY[0x1E695DF00] date];
  [(CKRecipientSearchListController *)self setIdsQueryStartTime:v21];

  [v28 setDestinations:v8];
  v22 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v22 stopTimingForKey:@"MessageUI"];

  v23 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v23 stopTimingForKey:@"Total"];

  [MEMORY[0x1E69A6170] logTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [MEMORY[0x1E69A6170] invalidateGlobalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  v24 = [(CNAutocompleteResultsTableViewController *)self delegate];
  [v24 searchListControllerDidFinishSearch:self];

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
      *buf = 138412290;
      v36 = v26;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Search finished. Duration: %@", buf, 0xCu);
    }
  }
}

- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CNAutocompleteResultsTableViewController *)self delegate];
  [v14 searchListController:self destinationsUpdated:v11];

  LOBYTE(v14) = [(CKRecipientSearchListController *)self isSearchResultsHidden];
  v15 = IMOSLoggingEnabled();
  if (v14)
  {
    if (v15)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Received IDS results while search is hidden. IDS destinatios to update: %@", buf, 0xCu);
      }
    }

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 postNotificationName:@"CKIDSResultsFinishedWhenSearchTableIsHiddenNotification" object:0];
  }

  else
  {
    if (v15)
    {
      CKLogCStringForType(19);
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Received batch IDS Query results in recipient list: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v19 = v11;
      _CKLogExternal();
    }

    [(CNAutocompleteResultsTableViewController *)self invalidateAddressTintColors];
    [(CNAutocompleteResultsTableViewController *)self invalidatePreferredRecipients];
  }
}

- (void)searchWithText:(id)a3
{
  v4 = a3;
  if (!CKIsScreenLocked())
  {
    v6 = [(CKRecipientSearchListController *)self searchManager];
    v7 = [(CKRecipientSearchListController *)self enteredRecipients];
    v8 = [(CKRecipientSearchListController *)self prefilteredRecipients];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];
    [v6 setEnteredRecipients:v9];

    v5 = [(CKRecipientSearchListController *)self searchManager];
    [v5 searchWithText:v4];
LABEL_6:

    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Asked to search while device is locked, bailing", v10, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (BOOL)hasSearchResults
{
  v2 = [(CKRecipientSearchListController *)self searchResults];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isSearchResultsHidden
{
  v3 = [(CKRecipientSearchListController *)self isViewLoaded];
  if (v3)
  {
    v4 = [(CKRecipientSearchListController *)self tableView];
    v5 = [v4 isHidden];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)invalidateOutstandingIDStatusRequests
{
  statusQueryController = self->_statusQueryController;
  if (statusQueryController)
  {
    [(IDSBatchIDQueryController *)statusQueryController invalidate];
    v4 = self->_statusQueryController;
    self->_statusQueryController = 0;
  }
}

- (void)cancelSearch
{
  v2 = [(CKRecipientSearchListController *)self searchManager];
  [v2 cancelSearch];
}

- (void)invalidateSearchManager
{
  [(CKContactsSearchManager *)self->_searchManager setDelegate:0];

  [(CKRecipientSearchListController *)self setSearchManager:0];
}

- (BOOL)suppressGroupSuggestions
{
  v2 = [(CKRecipientSearchListController *)self searchManager];
  v3 = [v2 suppressGroupSuggestions];

  return v3;
}

- (void)setSuppressGroupSuggestions:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKRecipientSearchListController *)self searchManager];
  [v4 setSuppressGroupSuggestions:v3];
}

- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CKRecipientSearchListController *)self searchManager];
  [v7 didSelectRecipient:v6 atIndex:a4];
}

- (void)removeRecipient:(id)a3
{
  v4 = a3;
  [(CNAutocompleteResultsTableViewController *)self invalidateSearchResultRecipient:v4];
  v5 = [(CKRecipientSearchListController *)self searchManager];
  [v5 removeRecipient:v4];
}

- (CKContactsSearchManager)searchManager
{
  searchManager = self->_searchManager;
  if (!searchManager)
  {
    v4 = objc_alloc_init(CKContactsSearchManager);
    v5 = self->_searchManager;
    self->_searchManager = v4;

    [(CKContactsSearchManager *)self->_searchManager setDelegate:self];
    [(CKRecipientSearchListController *)self setShouldHideGroupsDonations:0];
    searchManager = self->_searchManager;
  }

  return searchManager;
}

- (NSArray)conversationCache
{
  v45 = *MEMORY[0x1E69E9840];
  conversationCache = self->_conversationCache;
  if (!conversationCache)
  {
    v28 = 1192;
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = self;
    v4 = [(CKRecipientSearchListController *)self _conversationList];
    v5 = [v4 conversations];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v40;
      v30 = *v40;
      do
      {
        v9 = 0;
        v32 = v7;
        do
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v39 + 1) + 8 * v9);
          if ((([v10 isGroupConversation] & 1) != 0 || objc_msgSend(v10, "isBusinessConversation")) && (objc_msgSend(v10, "hasLeft") & 1) == 0)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v12 = [v10 chat];
            v13 = [v12 guid];
            v14 = [v13 copy];

            v34 = v14;
            [v11 setObject:v14 forKey:@"CKConversationGUIDKey"];
            v15 = [v10 displayName];
            v16 = [v15 copy];

            if ([v16 length])
            {
              [v11 setObject:v16 forKey:@"CKConversationDisplayNameKey"];
            }

            v17 = [MEMORY[0x1E695DF70] array];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v18 = [v10 chat];
            v19 = [v18 participants];

            v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v36;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v36 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = [*(*(&v35 + 1) + 8 * i) name];
                  v25 = [v24 copy];

                  [v17 addObject:v25];
                }

                v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v21);
            }

            [v11 setObject:v17 forKey:@"CKConversationEntityNamesKey"];
            [v31 addObject:v11];

            v8 = v30;
            v7 = v32;
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v7);
    }

    v26 = *(&v29->super.super.super.super.super.isa + v28);
    *(&v29->super.super.super.super.super.isa + v28) = v31;

    conversationCache = *(&v29->super.super.super.super.super.isa + v28);
  }

  return conversationCache;
}

- (id)_statusQueryController
{
  statusQueryController = self->_statusQueryController;
  if (!statusQueryController)
  {
    v4 = objc_alloc(MEMORY[0x1E69A4840]);
    v5 = [v4 initWithService:*MEMORY[0x1E69A4818] delegate:self queue:MEMORY[0x1E69E96A0]];
    v6 = self->_statusQueryController;
    self->_statusQueryController = v5;

    statusQueryController = self->_statusQueryController;
  }

  return statusQueryController;
}

- (char)_serviceColorForRecipients:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = -1;
  if ([v4 isGroup])
  {
    [v4 children];
  }

  else
  {
    v36[0] = v4;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  }
  v5 = ;
  v6 = [v5 __imArrayByApplyingBlock:&__block_literal_global_269_0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__CKRecipientSearchListController__serviceColorForRecipients___block_invoke_2;
  v27[3] = &unk_1E72EBA68;
  v27[4] = self;
  v27[5] = &v28;
  [v6 enumerateObjectsUsingBlock:v27];
  if (*(v29 + 24) == 255 && [(CKRecipientSearchListController *)self smsEnabled])
  {
    v7 = +[CKConversationList sharedConversationList];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __62__CKRecipientSearchListController__serviceColorForRecipients___block_invoke_3;
    v24 = &unk_1E72EC398;
    v25 = self;
    v9 = v8;
    v26 = v9;
    [v5 enumerateObjectsUsingBlock:&v21];
    v10 = [v7 conversationForHandles:v9 displayName:0 joinedChatsOnly:1 create:0];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 sendingService];
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(19);
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v33 = v9;
          v34 = 2112;
          v35 = v12;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Updating service color in recipient search list for handles: %@, with service: %@", buf, 0x16u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        v19 = v9;
        v20 = v12;
        _CKLogExternal();
      }

      v14 = [v12 __ck_displayColor];
      *(v29 + 24) = v14;
      v15 = [v9 firstObject];
      v16 = [v15 isBusiness];

      if (v16)
      {
        *(v29 + 24) = 6;
      }
    }
  }

  v17 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  return v17;
}

void __62__CKRecipientSearchListController__serviceColorForRecipients___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(a1 + 32) delegate];
  v7 = [v6 searchListController:*(a1 + 32) idStatusForIDSID:v9];

  if (v7 == 1)
  {
    v8 = [MEMORY[0x1E69A5C90] iMessageService];
    *(*(*(a1 + 40) + 8) + 24) = [v8 __ck_displayColor];

    if (MEMORY[0x193AF5D00](v9))
    {
      *(*(*(a1 + 40) + 8) + 24) = 6;
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = -1;
    *a4 = 1;
  }
}

void __62__CKRecipientSearchListController__serviceColorForRecipients___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 defaultiMessageAccount];
  v6 = [v4 rawAddress];

  v7 = IMStripFormattingFromAddress();
  v9 = [v5 imHandleWithID:v7 alreadyCanonical:0];

  v8 = v9;
  if (v9)
  {
    [*(a1 + 40) addObject:v9];
    v8 = v9;
  }
}

- (int64_t)idsStatusForAddress:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteResultsTableViewController *)self delegate];
  v6 = [v5 searchListController:self idStatusForIDSID:v4];

  return v6;
}

@end