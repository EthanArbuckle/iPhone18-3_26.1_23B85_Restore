@interface CKBlackholeConversationListCommonViewController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (CKBlackholeConversationListCommonViewController)init;
- (UIBarButtonItem)clearAllButton;
- (UILabel)emptyConversationListLabel;
- (id)_alertTitleForClearAll;
- (id)_alertTitleForDelete;
- (id)_conversations;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)_batchDeleteConversationWithCompletionHandler:(id)handler;
- (void)_clearAllTapped;
- (void)_clearAllTappedWithCompletionHandler:(id)handler;
- (void)_confirmDeleteConversation:(id)conversation view:(id)view withCompletionHandler:(id)handler;
- (void)_deleteConversation:(id)conversation;
- (void)_deleteConversation:(id)conversation withCompletionHandler:(id)handler;
- (void)_updateConversationList;
- (void)_updateConversationListEmptyLabel;
- (void)dealloc;
- (void)endHoldingConversationListUpdatesForKey:(id)key;
- (void)popViewControllerIfNecessary;
- (void)setVisibleConversations:(id)conversations;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKBlackholeConversationListCommonViewController

- (CKBlackholeConversationListCommonViewController)init
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CKBlackholeConversationListCommonViewController;
  v2 = [(CKBlackholeConversationListCommonViewController *)&v8 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__updateConversationList name:@"CKConversationListFinishedLoadingNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__updateConversationList name:@"CKConversationListChangedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__updateConversationList name:@"CKConversationListConversationLeftNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A5748] object:0];
    [defaultCenter addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A5870] object:0];
    [defaultCenter addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A58F8] object:0];
    [defaultCenter addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A58C8] object:0];
    [defaultCenter addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A58C0] object:0];
    [defaultCenter addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A5900] object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _popToConversationListOnRestore, *MEMORY[0x1E69A5858], v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = [[CKScheduledUpdater alloc] initWithTarget:v2 action:sel__updateConversationList];
    [(CKBlackholeConversationListCommonViewController *)v2 setUpdater:v5];
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v2;
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "init : %@", buf, 0xCu);
  }

  return v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = @"CKSettingsMessagesController";
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Deallocing. Will remove listener: %@:", buf, 0xCu);
  }

  CKRemoveDaemonListener(@"CKSettingsMessagesController");
  v5.receiver = self;
  v5.super_class = CKBlackholeConversationListCommonViewController;
  [(CKBlackholeConversationListCommonViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CKBlackholeConversationListCommonViewController;
  [(CKBlackholeConversationListCommonViewController *)&v19 viewDidLoad];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"BLACKHOLE_CONVERSATIONLIST_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [(CKBlackholeConversationListCommonViewController *)self setTitle:v4];

  clearAllButton = [(CKBlackholeConversationListCommonViewController *)self clearAllButton];
  navigationItem = [(CKBlackholeConversationListCommonViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:clearAllButton];

  v7 = objc_alloc(MEMORY[0x1E69DD020]);
  view = [(CKBlackholeConversationListCommonViewController *)self view];
  [view bounds];
  v9 = [v7 initWithFrame:2 style:?];
  [(CKBlackholeConversationListCommonViewController *)self setTableView:v9];

  tableView = [(CKBlackholeConversationListCommonViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"identifiers"];

  v11 = objc_alloc(MEMORY[0x1E69DD7B8]);
  tableView2 = [(CKBlackholeConversationListCommonViewController *)self tableView];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__CKBlackholeConversationListCommonViewController_viewDidLoad__block_invoke;
  v18[3] = &unk_1E72F50C0;
  v18[4] = self;
  v13 = [v11 initWithTableView:tableView2 cellProvider:v18];
  [(CKBlackholeConversationListCommonViewController *)self setTableViewDataSource:v13];

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
    isConnected = [mEMORY[0x1E69A5B50] isConnected];
    v17 = @"NO";
    if (isConnected)
    {
      v17 = @"YES";
    }

    *buf = 138412290;
    v21 = v17;
    _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "viewDidLoad. Daemon connected? : %@", buf, 0xCu);
  }
}

id __62__CKBlackholeConversationListCommonViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([v6 section])
  {
    [v6 section];
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) tableView];
    v8 = [v9 dequeueReusableCellWithIdentifier:@"identifiers"];

    [v8 configureForConversation:v7];
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CKBlackholeConversationListCommonViewController;
  [(CKBlackholeConversationListCommonViewController *)&v9 viewWillAppear:appear];
  [(CKBlackholeConversationListCommonViewController *)self endHoldingConversationListUpdatesForKey:@"kCKBlackholeConversationListHoldUpdatesForDeletion"];
  mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
  [mEMORY[0x1E69A5B50] addListenerID:@"CKSettingsMessagesController" capabilities:(*MEMORY[0x1E69A6268] | *MEMORY[0x1E69A6258]) | *MEMORY[0x1E69A6280]];

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    mEMORY[0x1E69A5B50]2 = [MEMORY[0x1E69A5B50] sharedController];
    v7 = [mEMORY[0x1E69A5B50]2 hasListenerForID:@"CKSettingsMessagesController"];
    v8 = @"NO";
    if (v7)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v11 = @"CKSettingsMessagesController";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "viewWillAppear. Daemon has %@ : %@ ", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CKBlackholeConversationListCommonViewController;
  [(CKBlackholeConversationListCommonViewController *)&v6 viewWillDisappear:disappear];
  if ([(CKBlackholeConversationListCommonViewController *)self isMovingFromParentViewController])
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      isMovingFromParentViewController = [(CKBlackholeConversationListCommonViewController *)self isMovingFromParentViewController];
      *buf = 138412546;
      v8 = @"CKSettingsMessagesController";
      v9 = 1024;
      v10 = isMovingFromParentViewController;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "viewWillDisappear. Will remove listener: %@: movingFromParentViewController: %d", buf, 0x12u);
    }

    CKRemoveDaemonListener(@"CKSettingsMessagesController");
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      [(CKBlackholeConversationListCommonViewController *)self _clearAllTapped];
    }
  }

  else
  {
    visibleConversations = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
    v6 = [visibleConversations objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    v7 = [[CKBlackholeTranscriptViewController alloc] initWithConversation:v6];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.backward"];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v8 style:0 target:self action:sel_dismissTranscript];
    navigationItem = [(CKBlackholeTranscriptViewController *)v7 navigationItem];
    [navigationItem setLeftBarButtonItem:v9];

    v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [currentDevice userInterfaceIdiom] == 1;

    [v11 setModalPresentationStyle:v13];
    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168] trackSpamEvent:17];

    [(CKBlackholeConversationListCommonViewController *)self presentViewController:v11 animated:0 completion:0];
  }
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v24[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  visibleConversations = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
  v7 = [pathCopy row];

  v8 = [visibleConversations objectAtIndex:v7];

  v9 = MEMORY[0x1E69DC8E8];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"DELETE" value:&stru_1F04268F8 table:@"ChatKit"];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __112__CKBlackholeConversationListCommonViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
  v21 = &unk_1E72F3A70;
  selfCopy = self;
  v23 = v8;
  v12 = v8;
  v13 = [v9 contextualActionWithStyle:1 title:v11 handler:&v18];

  v14 = MEMORY[0x1E69DCFC0];
  v24[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:{1, v18, v19, v20, v21, selfCopy}];
  v16 = [v14 configurationWithActions:v15];

  [v16 setPerformsFirstActionWithFullSwipe:0];

  return v16;
}

- (void)_deleteConversation:(id)conversation
{
  conversationCopy = conversation;
  view = [(CKBlackholeConversationListCommonViewController *)self view];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__CKBlackholeConversationListCommonViewController__deleteConversation___block_invoke;
  v6[3] = &unk_1E72EB9C8;
  v6[4] = self;
  [(CKBlackholeConversationListCommonViewController *)self _confirmDeleteConversation:conversationCopy view:view withCompletionHandler:v6];
}

uint64_t __71__CKBlackholeConversationListCommonViewController__deleteConversation___block_invoke(uint64_t a1, int a2)
{
  result = [*(a1 + 32) endHoldingConversationListUpdatesForKey:@"kCKBlackholeConversationListHoldUpdatesForDeletion"];
  if (a2)
  {
    v5 = *(a1 + 32);

    return [v5 _updateConversationList];
  }

  return result;
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  [(CKBlackholeConversationListCommonViewController *)self setEditing:0, path];
  updater = [(CKBlackholeConversationListCommonViewController *)self updater];
  [updater beginHoldingUpdatesForKey:@"kCKBlackholeConversationListHoldUpdatesForDeletion"];
}

- (void)_confirmDeleteConversation:(id)conversation view:(id)view withCompletionHandler:(id)handler
{
  conversationCopy = conversation;
  viewCopy = view;
  handlerCopy = handler;
  if (conversationCopy)
  {
    _alertTitleForDelete = [(CKBlackholeConversationListCommonViewController *)self _alertTitleForDelete];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __105__CKBlackholeConversationListCommonViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke;
    v16[3] = &unk_1E72EDA68;
    v17 = conversationCopy;
    selfCopy = self;
    v19 = handlerCopy;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __105__CKBlackholeConversationListCommonViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E72EDA68;
    v13[4] = self;
    v14 = v17;
    v15 = v19;
    [(UITableViewController *)self _confirmDeleteConversationFromView:viewCopy alertTitle:_alertTitleForDelete forMultipleConversations:0 withReportSpamHander:v16 withNotReportSpamHandler:v13 withCancelHandler:0];

    v12 = v17;
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "no conversation set. delete action aborted", buf, 2u);
    }
  }
}

uint64_t __105__CKBlackholeConversationListCommonViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chat];
  [v2 markAsSpam:31];

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v3 _deleteConversation:v4 withCompletionHandler:v5];
}

- (void)setVisibleConversations:(id)conversations
{
  v11[1] = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  if ([(NSArray *)conversationsCopy count])
  {
    v5 = [(NSArray *)conversationsCopy count];
    if (v5 != [(NSArray *)self->_visibleConversations count])
    {
      mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
      v10 = @"ReceivedJunkConversationCount";
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](conversationsCopy, "count")}];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [mEMORY[0x1E69A8168] trackSpamEvent:26 withDictionary:v8];
    }
  }

  visibleConversations = self->_visibleConversations;
  self->_visibleConversations = conversationsCopy;
}

- (void)_deleteConversation:(id)conversation withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  conversationCopy = conversation;
  _conversationList = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  [_conversationList removeConversation:conversationCopy];

  _conversationList2 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  [_conversationList2 deleteConversation:conversationCopy];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  _conversationList3 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  conversations = [_conversationList3 conversations];
  v11 = [conversations count];

  if (!v11)
  {
    [(CKBlackholeConversationListCommonViewController *)self popViewControllerIfNecessary];
  }
}

- (void)_clearAllTapped
{
  updater = [(CKBlackholeConversationListCommonViewController *)self updater];
  [updater beginHoldingUpdatesForKey:@"kCKBlackholeConversationListHoldUpdatesForDeletion"];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__CKBlackholeConversationListCommonViewController__clearAllTapped__block_invoke;
  v4[3] = &unk_1E72EB9C8;
  v4[4] = self;
  [(CKBlackholeConversationListCommonViewController *)self _clearAllTappedWithCompletionHandler:v4];
}

uint64_t __66__CKBlackholeConversationListCommonViewController__clearAllTapped__block_invoke(uint64_t a1, int a2)
{
  result = [*(a1 + 32) endHoldingConversationListUpdatesForKey:@"kCKBlackholeConversationListHoldUpdatesForDeletion"];
  if (a2)
  {
    v5 = *(a1 + 32);

    return [v5 popViewControllerIfNecessary];
  }

  return result;
}

- (void)popViewControllerIfNecessary
{
  if (!CKMessageUnknownFilteringEnabled())
  {
    navigationController = [(CKBlackholeConversationListCommonViewController *)self navigationController];
    v3 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)_clearAllTappedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  visibleConversations = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
  v6 = visibleConversations;
  if (visibleConversations && [visibleConversations count])
  {
    view = [(CKBlackholeConversationListCommonViewController *)self view];
    _alertTitleForClearAll = [(CKBlackholeConversationListCommonViewController *)self _alertTitleForClearAll];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__CKBlackholeConversationListCommonViewController__clearAllTappedWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E72EDA68;
    v14 = v6;
    selfCopy = self;
    v16 = handlerCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__CKBlackholeConversationListCommonViewController__clearAllTappedWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E72ED1C8;
    v11[4] = self;
    v12 = v16;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__CKBlackholeConversationListCommonViewController__clearAllTappedWithCompletionHandler___block_invoke_3;
    v10[3] = &unk_1E72EBA18;
    v10[4] = self;
    [(UITableViewController *)self _confirmDeleteConversationFromView:view alertTitle:_alertTitleForClearAll forMultipleConversations:1 withReportSpamHander:v13 withNotReportSpamHandler:v11 withCancelHandler:v10];

    v9 = v14;
  }

  else
  {
    [(CKBlackholeConversationListCommonViewController *)self endHoldingConversationListUpdatesForKey:@"kCKBlackholeConversationListHoldUpdatesForDeletion"];
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "no visible coversations in junk. batch delete action aborted", buf, 2u);
    }
  }
}

uint64_t __88__CKBlackholeConversationListCommonViewController__clearAllTappedWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) chat];
        [v7 markAsSpam:31];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _batchDeleteConversationWithCompletionHandler:*(a1 + 48)];
}

- (void)_batchDeleteConversationWithCompletionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  visibleConversations = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  v11 = @"ClearedJunkConversationCount";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(visibleConversations, "count")}];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [mEMORY[0x1E69A8168] trackSpamEvent:27 withDictionary:v8];

  v9 = +[CKCurrentConversationsManager sharedInstance];
  [v9 purgeConversations:visibleConversations];

  _conversationList = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  [_conversationList deleteConversations:visibleConversations];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)endHoldingConversationListUpdatesForKey:(id)key
{
  keyCopy = key;
  updater = [(CKBlackholeConversationListCommonViewController *)self updater];
  [updater endHoldingAllUpdatesForKey:keyCopy];

  updater2 = [(CKBlackholeConversationListCommonViewController *)self updater];
  [updater2 setNeedsUpdate];

  updater3 = [(CKBlackholeConversationListCommonViewController *)self updater];
  [updater3 updateIfNeeded];
}

- (void)_updateConversationList
{
  updater = [(CKBlackholeConversationListCommonViewController *)self updater];
  isHoldingUpdates = [updater isHoldingUpdates];

  if ((isHoldingUpdates & 1) == 0)
  {
    _conversationList = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
    [_conversationList resort];

    _conversationList2 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
    [_conversationList2 updateConversationListsAndSortIfEnabled];

    _conversations = [(CKBlackholeConversationListCommonViewController *)self _conversations];
    v8 = [_conversations copy];
    [(CKBlackholeConversationListCommonViewController *)self setVisibleConversations:v8];

    visibleConversations = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];

    if (visibleConversations)
    {
      tableViewDataSource = [(CKBlackholeConversationListCommonViewController *)self tableViewDataSource];
      emptySnapshot = [tableViewDataSource emptySnapshot];

      [emptySnapshot appendSectionsWithIdentifiers:&unk_1F04E6D38];
      visibleConversations2 = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
      [emptySnapshot appendItemsWithIdentifiers:visibleConversations2 intoSectionWithIdentifier:&unk_1F04E7FE0];

      tableViewDataSource2 = [(CKBlackholeConversationListCommonViewController *)self tableViewDataSource];
      [tableViewDataSource2 applyDifferencesFromSnapshot:emptySnapshot];

      tableView = [(CKBlackholeConversationListCommonViewController *)self tableView];
      [tableView reloadData];
    }

    [(CKBlackholeConversationListCommonViewController *)self _updateConversationListEmptyLabel];
  }
}

- (void)_updateConversationListEmptyLabel
{
  v51[3] = *MEMORY[0x1E69E9840];
  visibleConversations = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
  v4 = [visibleConversations count];

  clearAllButton = [(CKBlackholeConversationListCommonViewController *)self clearAllButton];
  v6 = clearAllButton;
  if (v4 >= 1)
  {
    [clearAllButton setEnabled:1];

    emptyConversationListLabel = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    [emptyConversationListLabel removeFromSuperview];

    goto LABEL_7;
  }

  [clearAllButton setEnabled:0];

  view = [(CKBlackholeConversationListCommonViewController *)self view];
  [view frame];
  if (!CGRectIsEmpty(v52))
  {
    emptyConversationListLabel2 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    superview = [emptyConversationListLabel2 superview];

    if (superview)
    {
      goto LABEL_7;
    }

    view2 = [(CKBlackholeConversationListCommonViewController *)self view];
    emptyConversationListLabel3 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    [view2 addSubview:emptyConversationListLabel3];

    emptyConversationListLabel4 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    [emptyConversationListLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v41 = MEMORY[0x1E696ACD8];
    emptyConversationListLabel5 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    centerXAnchor = [emptyConversationListLabel5 centerXAnchor];
    view3 = [(CKBlackholeConversationListCommonViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v51[0] = v43;
    emptyConversationListLabel6 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    leadingAnchor = [emptyConversationListLabel6 leadingAnchor];
    view4 = [(CKBlackholeConversationListCommonViewController *)self view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v14 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v51[1] = v14;
    emptyConversationListLabel7 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    trailingAnchor = [emptyConversationListLabel7 trailingAnchor];
    view5 = [(CKBlackholeConversationListCommonViewController *)self view];
    safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
    v20 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v51[2] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    [v41 activateConstraints:v21];

    navigationController = [(CKBlackholeConversationListCommonViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v25 = v24;
    view6 = [(CKBlackholeConversationListCommonViewController *)self view];
    [view6 safeAreaInsets];
    v28 = v25 + v27;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] statusBarFrame];
    v31 = (v28 + v30) * -0.5;

    view = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    centerYAnchor = [view centerYAnchor];
    view7 = [(CKBlackholeConversationListCommonViewController *)self view];
    centerYAnchor2 = [view7 centerYAnchor];
    v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:v31];
    [v35 setActive:1];
  }

LABEL_7:
  v36 = IMLogHandleForCategory();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v50 = v4;
    _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "Updated converastions with count %ld", buf, 0xCu);
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = CKBlackholeConversationListCommonViewController;
  [(CKBlackholeConversationListCommonViewController *)&v4 viewSafeAreaInsetsDidChange];
  emptyConversationListLabel = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
  [emptyConversationListLabel removeFromSuperview];

  [(CKBlackholeConversationListCommonViewController *)self _updateConversationListEmptyLabel];
}

- (UIBarButtonItem)clearAllButton
{
  clearAllButton = self->_clearAllButton;
  if (!clearAllButton)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC708]);
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"BLACKHOLE_CONVERSATIONLIST_CLEAR_ALL" value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = [v4 initWithTitle:v6 style:0 target:self action:sel__clearAllTapped];
    v8 = self->_clearAllButton;
    self->_clearAllButton = v7;

    clearAllButton = self->_clearAllButton;
  }

  return clearAllButton;
}

- (UILabel)emptyConversationListLabel
{
  emptyConversationListLabel = self->_emptyConversationListLabel;
  if (!emptyConversationListLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(UILabel *)v5 setAdjustsFontForContentSizeCategory:1];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"BLACKHOLE_EMPTY_CONVERSATION_LIST_LABEL" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UILabel *)v5 setText:v7];

    [(UILabel *)v5 setTextAlignment:1];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v5 setFont:v8];

    [(UILabel *)v5 setNumberOfLines:0];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UILabel *)v5 setTextColor:tertiaryLabelColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v5 setBackgroundColor:clearColor];

    [(UILabel *)v5 sizeToFit];
    v11 = self->_emptyConversationListLabel;
    self->_emptyConversationListLabel = v5;

    emptyConversationListLabel = self->_emptyConversationListLabel;
  }

  return emptyConversationListLabel;
}

- (id)_conversations
{
  _conversationList = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  conversations = [_conversationList conversations];

  return conversations;
}

- (id)_alertTitleForDelete
{
  mEMORY[0x1E69A5B20] = [MEMORY[0x1E69A5B20] sharedInstance];
  isEnabled = [mEMORY[0x1E69A5B20] isEnabled];
  v4 = CKFrameworkBundle();
  v5 = v4;
  if (isEnabled)
  {
    v6 = @"DELETE_ALERT_MESSAGE_ON_ICLOUD";
  }

  else
  {
    v6 = @"DELETE_ALERT_MESSAGE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

  return v7;
}

- (id)_alertTitleForClearAll
{
  mEMORY[0x1E69A5B20] = [MEMORY[0x1E69A5B20] sharedInstance];
  isEnabled = [mEMORY[0x1E69A5B20] isEnabled];
  v4 = CKFrameworkBundle();
  v5 = v4;
  if (isEnabled)
  {
    v6 = @"BLACKHOLE_BATCH_DELETE_PROMPT";
  }

  else
  {
    v6 = @"BLACKHOLE_BATCH_DELETE_PROMPT_ICLOUD";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

  return v7;
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

@end