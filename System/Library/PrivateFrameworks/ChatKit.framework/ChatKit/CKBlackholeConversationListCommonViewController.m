@interface CKBlackholeConversationListCommonViewController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (CKBlackholeConversationListCommonViewController)init;
- (UIBarButtonItem)clearAllButton;
- (UILabel)emptyConversationListLabel;
- (id)_alertTitleForClearAll;
- (id)_alertTitleForDelete;
- (id)_conversations;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (void)_batchDeleteConversationWithCompletionHandler:(id)a3;
- (void)_clearAllTapped;
- (void)_clearAllTappedWithCompletionHandler:(id)a3;
- (void)_confirmDeleteConversation:(id)a3 view:(id)a4 withCompletionHandler:(id)a5;
- (void)_deleteConversation:(id)a3;
- (void)_deleteConversation:(id)a3 withCompletionHandler:(id)a4;
- (void)_updateConversationList;
- (void)_updateConversationListEmptyLabel;
- (void)dealloc;
- (void)endHoldingConversationListUpdatesForKey:(id)a3;
- (void)popViewControllerIfNecessary;
- (void)setVisibleConversations:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__updateConversationList name:@"CKConversationListFinishedLoadingNotification" object:0];
    [v3 addObserver:v2 selector:sel__updateConversationList name:@"CKConversationListChangedNotification" object:0];
    [v3 addObserver:v2 selector:sel__updateConversationList name:@"CKConversationListConversationLeftNotification" object:0];
    [v3 addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A5748] object:0];
    [v3 addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A5870] object:0];
    [v3 addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A58F8] object:0];
    [v3 addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A58C8] object:0];
    [v3 addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A58C0] object:0];
    [v3 addObserver:v2 selector:sel__updateConversationList name:*MEMORY[0x1E69A5900] object:0];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

  v5 = [(CKBlackholeConversationListCommonViewController *)self clearAllButton];
  v6 = [(CKBlackholeConversationListCommonViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = objc_alloc(MEMORY[0x1E69DD020]);
  v8 = [(CKBlackholeConversationListCommonViewController *)self view];
  [v8 bounds];
  v9 = [v7 initWithFrame:2 style:?];
  [(CKBlackholeConversationListCommonViewController *)self setTableView:v9];

  v10 = [(CKBlackholeConversationListCommonViewController *)self tableView];
  [v10 registerClass:objc_opt_class() forCellReuseIdentifier:@"identifiers"];

  v11 = objc_alloc(MEMORY[0x1E69DD7B8]);
  v12 = [(CKBlackholeConversationListCommonViewController *)self tableView];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__CKBlackholeConversationListCommonViewController_viewDidLoad__block_invoke;
  v18[3] = &unk_1E72F50C0;
  v18[4] = self;
  v13 = [v11 initWithTableView:v12 cellProvider:v18];
  [(CKBlackholeConversationListCommonViewController *)self setTableViewDataSource:v13];

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x1E69A5B50] sharedController];
    v16 = [v15 isConnected];
    v17 = @"NO";
    if (v16)
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

- (void)viewWillAppear:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CKBlackholeConversationListCommonViewController;
  [(CKBlackholeConversationListCommonViewController *)&v9 viewWillAppear:a3];
  [(CKBlackholeConversationListCommonViewController *)self endHoldingConversationListUpdatesForKey:@"kCKBlackholeConversationListHoldUpdatesForDeletion"];
  v4 = [MEMORY[0x1E69A5B50] sharedController];
  [v4 addListenerID:@"CKSettingsMessagesController" capabilities:(*MEMORY[0x1E69A6268] | *MEMORY[0x1E69A6258]) | *MEMORY[0x1E69A6280]];

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E69A5B50] sharedController];
    v7 = [v6 hasListenerForID:@"CKSettingsMessagesController"];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CKBlackholeConversationListCommonViewController;
  [(CKBlackholeConversationListCommonViewController *)&v6 viewWillDisappear:a3];
  if ([(CKBlackholeConversationListCommonViewController *)self isMovingFromParentViewController])
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(CKBlackholeConversationListCommonViewController *)self isMovingFromParentViewController];
      *buf = 138412546;
      v8 = @"CKSettingsMessagesController";
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "viewWillDisappear. Will remove listener: %@: movingFromParentViewController: %d", buf, 0x12u);
    }

    CKRemoveDaemonListener(@"CKSettingsMessagesController");
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a4;
  if ([v15 section])
  {
    if ([v15 section] == 1)
    {
      [(CKBlackholeConversationListCommonViewController *)self _clearAllTapped];
    }
  }

  else
  {
    v5 = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
    v6 = [v5 objectAtIndex:{objc_msgSend(v15, "row")}];

    v7 = [[CKBlackholeTranscriptViewController alloc] initWithConversation:v6];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.backward"];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v8 style:0 target:self action:sel_dismissTranscript];
    v10 = [(CKBlackholeTranscriptViewController *)v7 navigationItem];
    [v10 setLeftBarButtonItem:v9];

    v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 userInterfaceIdiom] == 1;

    [v11 setModalPresentationStyle:v13];
    v14 = [MEMORY[0x1E69A8168] sharedInstance];
    [v14 trackSpamEvent:17];

    [(CKBlackholeConversationListCommonViewController *)self presentViewController:v11 animated:0 completion:0];
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = MEMORY[0x1E69DC8E8];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"DELETE" value:&stru_1F04268F8 table:@"ChatKit"];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __112__CKBlackholeConversationListCommonViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
  v21 = &unk_1E72F3A70;
  v22 = self;
  v23 = v8;
  v12 = v8;
  v13 = [v9 contextualActionWithStyle:1 title:v11 handler:&v18];

  v14 = MEMORY[0x1E69DCFC0];
  v24[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:{1, v18, v19, v20, v21, v22}];
  v16 = [v14 configurationWithActions:v15];

  [v16 setPerformsFirstActionWithFullSwipe:0];

  return v16;
}

- (void)_deleteConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKBlackholeConversationListCommonViewController *)self view];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__CKBlackholeConversationListCommonViewController__deleteConversation___block_invoke;
  v6[3] = &unk_1E72EB9C8;
  v6[4] = self;
  [(CKBlackholeConversationListCommonViewController *)self _confirmDeleteConversation:v4 view:v5 withCompletionHandler:v6];
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

- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4
{
  [(CKBlackholeConversationListCommonViewController *)self setEditing:0, a4];
  v5 = [(CKBlackholeConversationListCommonViewController *)self updater];
  [v5 beginHoldingUpdatesForKey:@"kCKBlackholeConversationListHoldUpdatesForDeletion"];
}

- (void)_confirmDeleteConversation:(id)a3 view:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(CKBlackholeConversationListCommonViewController *)self _alertTitleForDelete];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __105__CKBlackholeConversationListCommonViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke;
    v16[3] = &unk_1E72EDA68;
    v17 = v8;
    v18 = self;
    v19 = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __105__CKBlackholeConversationListCommonViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E72EDA68;
    v13[4] = self;
    v14 = v17;
    v15 = v19;
    [(UITableViewController *)self _confirmDeleteConversationFromView:v9 alertTitle:v11 forMultipleConversations:0 withReportSpamHander:v16 withNotReportSpamHandler:v13 withCancelHandler:0];

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

- (void)setVisibleConversations:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSArray *)v4 count])
  {
    v5 = [(NSArray *)v4 count];
    if (v5 != [(NSArray *)self->_visibleConversations count])
    {
      v6 = [MEMORY[0x1E69A8168] sharedInstance];
      v10 = @"ReceivedJunkConversationCount";
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](v4, "count")}];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [v6 trackSpamEvent:26 withDictionary:v8];
    }
  }

  visibleConversations = self->_visibleConversations;
  self->_visibleConversations = v4;
}

- (void)_deleteConversation:(id)a3 withCompletionHandler:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  [v7 removeConversation:v6];

  v8 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  [v8 deleteConversation:v6];

  if (v12)
  {
    v12[2](v12, 1);
  }

  v9 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  v10 = [v9 conversations];
  v11 = [v10 count];

  if (!v11)
  {
    [(CKBlackholeConversationListCommonViewController *)self popViewControllerIfNecessary];
  }
}

- (void)_clearAllTapped
{
  v3 = [(CKBlackholeConversationListCommonViewController *)self updater];
  [v3 beginHoldingUpdatesForKey:@"kCKBlackholeConversationListHoldUpdatesForDeletion"];

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
    v4 = [(CKBlackholeConversationListCommonViewController *)self navigationController];
    v3 = [v4 popViewControllerAnimated:1];
  }
}

- (void)_clearAllTappedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [(CKBlackholeConversationListCommonViewController *)self view];
    v8 = [(CKBlackholeConversationListCommonViewController *)self _alertTitleForClearAll];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__CKBlackholeConversationListCommonViewController__clearAllTappedWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E72EDA68;
    v14 = v6;
    v15 = self;
    v16 = v4;
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
    [(UITableViewController *)self _confirmDeleteConversationFromView:v7 alertTitle:v8 forMultipleConversations:1 withReportSpamHander:v13 withNotReportSpamHandler:v11 withCancelHandler:v10];

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

- (void)_batchDeleteConversationWithCompletionHandler:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
  v6 = [MEMORY[0x1E69A8168] sharedInstance];
  v11 = @"ClearedJunkConversationCount";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 trackSpamEvent:27 withDictionary:v8];

  v9 = +[CKCurrentConversationsManager sharedInstance];
  [v9 purgeConversations:v5];

  v10 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  [v10 deleteConversations:v5];

  if (v4)
  {
    v4[2](v4, 1);
  }
}

- (void)endHoldingConversationListUpdatesForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKBlackholeConversationListCommonViewController *)self updater];
  [v5 endHoldingAllUpdatesForKey:v4];

  v6 = [(CKBlackholeConversationListCommonViewController *)self updater];
  [v6 setNeedsUpdate];

  v7 = [(CKBlackholeConversationListCommonViewController *)self updater];
  [v7 updateIfNeeded];
}

- (void)_updateConversationList
{
  v3 = [(CKBlackholeConversationListCommonViewController *)self updater];
  v4 = [v3 isHoldingUpdates];

  if ((v4 & 1) == 0)
  {
    v5 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
    [v5 resort];

    v6 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
    [v6 updateConversationListsAndSortIfEnabled];

    v7 = [(CKBlackholeConversationListCommonViewController *)self _conversations];
    v8 = [v7 copy];
    [(CKBlackholeConversationListCommonViewController *)self setVisibleConversations:v8];

    v9 = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];

    if (v9)
    {
      v10 = [(CKBlackholeConversationListCommonViewController *)self tableViewDataSource];
      v11 = [v10 emptySnapshot];

      [v11 appendSectionsWithIdentifiers:&unk_1F04E6D38];
      v12 = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
      [v11 appendItemsWithIdentifiers:v12 intoSectionWithIdentifier:&unk_1F04E7FE0];

      v13 = [(CKBlackholeConversationListCommonViewController *)self tableViewDataSource];
      [v13 applyDifferencesFromSnapshot:v11];

      v14 = [(CKBlackholeConversationListCommonViewController *)self tableView];
      [v14 reloadData];
    }

    [(CKBlackholeConversationListCommonViewController *)self _updateConversationListEmptyLabel];
  }
}

- (void)_updateConversationListEmptyLabel
{
  v51[3] = *MEMORY[0x1E69E9840];
  v3 = [(CKBlackholeConversationListCommonViewController *)self visibleConversations];
  v4 = [v3 count];

  v5 = [(CKBlackholeConversationListCommonViewController *)self clearAllButton];
  v6 = v5;
  if (v4 >= 1)
  {
    [v5 setEnabled:1];

    v7 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    [v7 removeFromSuperview];

    goto LABEL_7;
  }

  [v5 setEnabled:0];

  v8 = [(CKBlackholeConversationListCommonViewController *)self view];
  [v8 frame];
  if (!CGRectIsEmpty(v52))
  {
    v9 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    v10 = [v9 superview];

    if (v10)
    {
      goto LABEL_7;
    }

    v11 = [(CKBlackholeConversationListCommonViewController *)self view];
    v12 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    [v11 addSubview:v12];

    v13 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v41 = MEMORY[0x1E696ACD8];
    v48 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    v46 = [v48 centerXAnchor];
    v47 = [(CKBlackholeConversationListCommonViewController *)self view];
    v45 = [v47 safeAreaLayoutGuide];
    v44 = [v45 centerXAnchor];
    v43 = [v46 constraintEqualToAnchor:v44];
    v51[0] = v43;
    v42 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    v39 = [v42 leadingAnchor];
    v40 = [(CKBlackholeConversationListCommonViewController *)self view];
    v38 = [v40 safeAreaLayoutGuide];
    v37 = [v38 leadingAnchor];
    v14 = [v39 constraintGreaterThanOrEqualToAnchor:v37];
    v51[1] = v14;
    v15 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    v16 = [v15 trailingAnchor];
    v17 = [(CKBlackholeConversationListCommonViewController *)self view];
    v18 = [v17 safeAreaLayoutGuide];
    v19 = [v18 trailingAnchor];
    v20 = [v16 constraintLessThanOrEqualToAnchor:v19];
    v51[2] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    [v41 activateConstraints:v21];

    v22 = [(CKBlackholeConversationListCommonViewController *)self navigationController];
    v23 = [v22 navigationBar];
    [v23 frame];
    v25 = v24;
    v26 = [(CKBlackholeConversationListCommonViewController *)self view];
    [v26 safeAreaInsets];
    v28 = v25 + v27;
    v29 = [MEMORY[0x1E69DC668] sharedApplication];
    [v29 statusBarFrame];
    v31 = (v28 + v30) * -0.5;

    v8 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
    v32 = [v8 centerYAnchor];
    v33 = [(CKBlackholeConversationListCommonViewController *)self view];
    v34 = [v33 centerYAnchor];
    v35 = [v32 constraintEqualToAnchor:v34 constant:v31];
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
  v3 = [(CKBlackholeConversationListCommonViewController *)self emptyConversationListLabel];
  [v3 removeFromSuperview];

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
    v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UILabel *)v5 setTextColor:v9];

    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v5 setBackgroundColor:v10];

    [(UILabel *)v5 sizeToFit];
    v11 = self->_emptyConversationListLabel;
    self->_emptyConversationListLabel = v5;

    emptyConversationListLabel = self->_emptyConversationListLabel;
  }

  return emptyConversationListLabel;
}

- (id)_conversations
{
  v2 = [(CKBlackholeConversationListCommonViewController *)self _conversationList];
  v3 = [v2 conversations];

  return v3;
}

- (id)_alertTitleForDelete
{
  v2 = [MEMORY[0x1E69A5B20] sharedInstance];
  v3 = [v2 isEnabled];
  v4 = CKFrameworkBundle();
  v5 = v4;
  if (v3)
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
  v2 = [MEMORY[0x1E69A5B20] sharedInstance];
  v3 = [v2 isEnabled];
  v4 = CKFrameworkBundle();
  v5 = v4;
  if (v3)
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

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

@end