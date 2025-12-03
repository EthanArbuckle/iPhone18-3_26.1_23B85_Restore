@interface CKRecipientSearchListController
- (BOOL)hasSearchResults;
- (BOOL)isSearchResultsHidden;
- (BOOL)suppressGroupSuggestions;
- (CKContactsSearchManager)searchManager;
- (CKRecipientSearchListController)initWithStyle:(int64_t)style;
- (NSArray)conversationCache;
- (char)_serviceColorForRecipients:(id)recipients;
- (id)_statusQueryController;
- (int64_t)idsStatusForAddress:(id)address;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
- (void)cancelSearch;
- (void)contactsSearchManager:(id)manager finishedSearchingWithResults:(id)results;
- (void)dealloc;
- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)invalidateOutstandingIDStatusRequests;
- (void)invalidateSearchManager;
- (void)loadView;
- (void)removeRecipient:(id)recipient;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchWithText:(id)text;
- (void)setSuppressGroupSuggestions:(BOOL)suggestions;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidAppearDeferredSetup;
- (void)viewWillAppear:(BOOL)appear;
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
  tableView = [(CKRecipientSearchListController *)self tableView];
  [tableView setAutoresizingMask:18];
  [tableView setOpaque:0];
  [tableView setScrollsToTop:0];
  [tableView setLayoutMarginsFollowReadableWidth:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = CKRecipientSearchListController;
  changeCopy = change;
  [(CNAutocompleteResultsTableViewController *)&v11 traitCollectionDidChange:changeCopy];
  [changeCopy displayScale];
  v6 = v5;

  traitCollection = [(CKRecipientSearchListController *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  if (v6 != v9)
  {
    tableView = [(CKRecipientSearchListController *)self tableView];
    [tableView reloadData];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = CKRecipientSearchListController;
  [(CKRecipientSearchListController *)&v16 viewWillAppear:appear];
  tableView = [(CKRecipientSearchListController *)self tableView];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  searchResultsBackgroundColor = [theme searchResultsBackgroundColor];

  if (searchResultsBackgroundColor)
  {
    [tableView setBackgroundColor:searchResultsBackgroundColor];
    [tableView setTableHeaderBackgroundColor:searchResultsBackgroundColor];
    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    [tableView bounds];
    v9 = [v8 initWithFrame:?];
    [tableView setBackgroundView:v9];
  }

  v10 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v10 theme];
  searchResultsSeperatorColor = [theme2 searchResultsSeperatorColor];

  if (searchResultsSeperatorColor)
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v13 theme];
    searchResultsSeperatorColor2 = [theme3 searchResultsSeperatorColor];
    [tableView setSeparatorColor:searchResultsSeperatorColor2];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKRecipientSearchListController;
  [(CKRecipientSearchListController *)&v4 viewDidAppear:appear];
  [(CKRecipientSearchListController *)self performSelector:sel_viewDidAppearDeferredSetup withObject:0 afterDelay:0.0];
}

- (void)viewDidAppearDeferredSetup
{
  conversationCache = [(CKRecipientSearchListController *)self conversationCache];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_chatStateChanged_ name:@"CKConversationJoinStateDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_chatStateChanged_ name:*MEMORY[0x1E69A5700] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_chatStateChanged_ name:@"CKConversationListFinishedLoadingNotification" object:0];
}

- (CKRecipientSearchListController)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = CKRecipientSearchListController;
  v3 = [(CNAutocompleteResultsTableViewController *)&v7 initWithStyle:style];
  if (v3)
  {
    mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
    v5 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddresses:0];

    [(CKRecipientSearchListController *)v3 setDefaultiMessageAccount:v5];
  }

  return v3;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  [delegate searchListControllerDidScroll:self];
}

- (void)contactsSearchManager:(id)manager finishedSearchingWithResults:(id)results
{
  v39 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  resultsCopy = results;
  v5 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v5 startTimingForKey:@"MessageUI"];

  [(CKRecipientSearchListController *)self setSearchResults:resultsCopy];
  _statusQueryController = [(CKRecipientSearchListController *)self _statusQueryController];
  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  searchResults = [(CKRecipientSearchListController *)self searchResults];
  v8 = [v6 initWithCapacity:{objc_msgSend(searchResults, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  searchResults2 = [(CKRecipientSearchListController *)self searchResults];
  v10 = [searchResults2 countByEnumeratingWithState:&v31 objects:v38 count:16];
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
          objc_enumerationMutation(searchResults2);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        if (([v13 isGroup] & 1) == 0 && (objc_msgSend(v13, "children"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count") == 0, v14, v15))
        {
          v37 = v13;
          children = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        }

        else
        {
          children = [v13 children];
        }

        v17 = children;
        v18 = [children __imArrayByApplyingBlock:&__block_literal_global_7];
        [v8 addObjectsFromArray:v18];

        ++v12;
      }

      while (v10 != v12);
      v19 = [searchResults2 countByEnumeratingWithState:&v31 objects:v38 count:16];
      v10 = v19;
    }

    while (v19);
  }

  searchResults3 = [(CKRecipientSearchListController *)self searchResults];
  [(CNAutocompleteResultsTableViewController *)self setRecipients:searchResults3];

  date = [MEMORY[0x1E695DF00] date];
  [(CKRecipientSearchListController *)self setIdsQueryStartTime:date];

  [_statusQueryController setDestinations:v8];
  v22 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v22 stopTimingForKey:@"MessageUI"];

  v23 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v23 stopTimingForKey:@"Total"];

  [MEMORY[0x1E69A6170] logTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [MEMORY[0x1E69A6170] invalidateGlobalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  [delegate searchListControllerDidFinishSearch:self];

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

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  statusCopy = status;
  serviceCopy = service;
  errorCopy = error;
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  [delegate searchListController:self destinationsUpdated:statusCopy];

  LOBYTE(delegate) = [(CKRecipientSearchListController *)self isSearchResultsHidden];
  v15 = IMOSLoggingEnabled();
  if (delegate)
  {
    if (v15)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = statusCopy;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Received IDS results while search is hidden. IDS destinatios to update: %@", buf, 0xCu);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKIDSResultsFinishedWhenSearchTableIsHiddenNotification" object:0];
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
        v21 = statusCopy;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Received batch IDS Query results in recipient list: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v19 = statusCopy;
      _CKLogExternal();
    }

    [(CNAutocompleteResultsTableViewController *)self invalidateAddressTintColors];
    [(CNAutocompleteResultsTableViewController *)self invalidatePreferredRecipients];
  }
}

- (void)searchWithText:(id)text
{
  textCopy = text;
  if (!CKIsScreenLocked())
  {
    searchManager = [(CKRecipientSearchListController *)self searchManager];
    enteredRecipients = [(CKRecipientSearchListController *)self enteredRecipients];
    prefilteredRecipients = [(CKRecipientSearchListController *)self prefilteredRecipients];
    v9 = [enteredRecipients arrayByAddingObjectsFromArray:prefilteredRecipients];
    [searchManager setEnteredRecipients:v9];

    searchManager2 = [(CKRecipientSearchListController *)self searchManager];
    [searchManager2 searchWithText:textCopy];
LABEL_6:

    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    searchManager2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(searchManager2, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, searchManager2, OS_LOG_TYPE_INFO, "Asked to search while device is locked, bailing", v10, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (BOOL)hasSearchResults
{
  searchResults = [(CKRecipientSearchListController *)self searchResults];
  v3 = [searchResults count] != 0;

  return v3;
}

- (BOOL)isSearchResultsHidden
{
  isViewLoaded = [(CKRecipientSearchListController *)self isViewLoaded];
  if (isViewLoaded)
  {
    tableView = [(CKRecipientSearchListController *)self tableView];
    isHidden = [tableView isHidden];

    LOBYTE(isViewLoaded) = isHidden;
  }

  return isViewLoaded;
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
  searchManager = [(CKRecipientSearchListController *)self searchManager];
  [searchManager cancelSearch];
}

- (void)invalidateSearchManager
{
  [(CKContactsSearchManager *)self->_searchManager setDelegate:0];

  [(CKRecipientSearchListController *)self setSearchManager:0];
}

- (BOOL)suppressGroupSuggestions
{
  searchManager = [(CKRecipientSearchListController *)self searchManager];
  suppressGroupSuggestions = [searchManager suppressGroupSuggestions];

  return suppressGroupSuggestions;
}

- (void)setSuppressGroupSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  searchManager = [(CKRecipientSearchListController *)self searchManager];
  [searchManager setSuppressGroupSuggestions:suggestionsCopy];
}

- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  recipientCopy = recipient;
  searchManager = [(CKRecipientSearchListController *)self searchManager];
  [searchManager didSelectRecipient:recipientCopy atIndex:index];
}

- (void)removeRecipient:(id)recipient
{
  recipientCopy = recipient;
  [(CNAutocompleteResultsTableViewController *)self invalidateSearchResultRecipient:recipientCopy];
  searchManager = [(CKRecipientSearchListController *)self searchManager];
  [searchManager removeRecipient:recipientCopy];
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
    selfCopy = self;
    _conversationList = [(CKRecipientSearchListController *)self _conversationList];
    conversations = [_conversationList conversations];

    obj = conversations;
    v6 = [conversations countByEnumeratingWithState:&v39 objects:v44 count:16];
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
            chat = [v10 chat];
            guid = [chat guid];
            v14 = [guid copy];

            v34 = v14;
            [v11 setObject:v14 forKey:@"CKConversationGUIDKey"];
            displayName = [v10 displayName];
            v16 = [displayName copy];

            if ([v16 length])
            {
              [v11 setObject:v16 forKey:@"CKConversationDisplayNameKey"];
            }

            array = [MEMORY[0x1E695DF70] array];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            chat2 = [v10 chat];
            participants = [chat2 participants];

            v20 = [participants countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                    objc_enumerationMutation(participants);
                  }

                  name = [*(*(&v35 + 1) + 8 * i) name];
                  v25 = [name copy];

                  [array addObject:v25];
                }

                v21 = [participants countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v21);
            }

            [v11 setObject:array forKey:@"CKConversationEntityNamesKey"];
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

    v26 = *(&selfCopy->super.super.super.super.super.isa + v28);
    *(&selfCopy->super.super.super.super.super.isa + v28) = v31;

    conversationCache = *(&selfCopy->super.super.super.super.super.isa + v28);
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

- (char)_serviceColorForRecipients:(id)recipients
{
  v36[1] = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = -1;
  if ([recipientsCopy isGroup])
  {
    [recipientsCopy children];
  }

  else
  {
    v36[0] = recipientsCopy;
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
    selfCopy = self;
    v9 = v8;
    v26 = v9;
    [v5 enumerateObjectsUsingBlock:&v21];
    v10 = [v7 conversationForHandles:v9 displayName:0 joinedChatsOnly:1 create:0];
    v11 = v10;
    if (v10)
    {
      sendingService = [v10 sendingService];
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(19);
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v33 = v9;
          v34 = 2112;
          v35 = sendingService;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Updating service color in recipient search list for handles: %@, with service: %@", buf, 0x16u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        v19 = v9;
        v20 = sendingService;
        _CKLogExternal();
      }

      __ck_displayColor = [sendingService __ck_displayColor];
      *(v29 + 24) = __ck_displayColor;
      firstObject = [v9 firstObject];
      isBusiness = [firstObject isBusiness];

      if (isBusiness)
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

- (int64_t)idsStatusForAddress:(id)address
{
  addressCopy = address;
  delegate = [(CNAutocompleteResultsTableViewController *)self delegate];
  v6 = [delegate searchListController:self idStatusForIDSID:addressCopy];

  return v6;
}

@end