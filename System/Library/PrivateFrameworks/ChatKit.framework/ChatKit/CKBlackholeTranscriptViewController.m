@interface CKBlackholeTranscriptViewController
- (CKBlackholeTranscriptViewController)initWithConversation:(id)a3;
- (id)_alertTitleForDelete;
- (id)_handleIDsForCurrentConversation;
- (id)generateHeader;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_confirmDeleteConversation:(id)a3 view:(id)a4 withCompletionHandler:(id)a5;
- (void)_deleteConversation:(id)a3 withCompletionHandler:(id)a4;
- (void)_openRestoredChatInMessages;
- (void)_restoreConversation;
- (void)_updateTranscriptHistory;
- (void)chatAllowedByScreenTimeChanged:(id)a3;
- (void)dealloc;
- (void)layoutLockoutView;
- (void)removeLockoutControllerIfNeeded;
- (void)showScreenTimeShieldIfNeeded;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateScreenTimeShieldIfNeededForChat:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKBlackholeTranscriptViewController

- (CKBlackholeTranscriptViewController)initWithConversation:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CKBlackholeTranscriptViewController;
  v6 = [(CKBlackholeTranscriptViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, a3);
    if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
    {
      [(CKBlackholeTranscriptViewController *)v7 removeLockoutControllerIfNeeded];
      v8 = [(CKConversation *)v7->_conversation chat];
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        v11 = *MEMORY[0x1E69A56E8];
        [v10 removeObserver:v7 name:*MEMORY[0x1E69A56E8] object:v9];

        v12 = [MEMORY[0x1E696AD88] defaultCenter];
        [v12 addObserver:v7 selector:sel_chatAllowedByScreenTimeChanged_ name:v11 object:v9];

        [(CKBlackholeTranscriptViewController *)v7 updateScreenTimeShieldIfNeededForChat:v9];
      }
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v7 selector:sel__updateTranscriptHistory name:*MEMORY[0x1E69A5748] object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _openRestoredChatInMessagesEventReceived, *MEMORY[0x1E69A5858], v7, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CKBlackholeTranscriptViewController;
  [(CKBlackholeTranscriptViewController *)&v11 viewDidLoad];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"BLACKHOLE_TRANSCRIPT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [(CKBlackholeTranscriptViewController *)self setTitle:v4];

  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  v6 = [(CKBlackholeTranscriptViewController *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:2 style:?];
  [(CKBlackholeTranscriptViewController *)self setTableView:v7];

  v8 = [(CKBlackholeTranscriptViewController *)self tableView];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"action"];

  v9 = [(CKBlackholeTranscriptViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"history"];

  v10 = [(CKBlackholeTranscriptViewController *)self generateHeader];
  [(CKBlackholeTranscriptViewController *)self setHeaderTextView:v10];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKBlackholeTranscriptViewController;
  [(CKBlackholeTranscriptViewController *)&v14 viewDidLayoutSubviews];
  [(UITextView *)self->_headerTextView frame];
  v4 = v3;
  headerTextView = self->_headerTextView;
  v6 = [(CKBlackholeTranscriptViewController *)self view];
  [v6 bounds];
  [(UITextView *)headerTextView sizeThatFits:v7, 1.79769313e308];
  v9 = v8;
  v11 = v10;

  if (v4 != v11)
  {
    [(UITextView *)self->_headerTextView setFrame:0.0, 0.0, v9, v11];
    v12 = [(CKBlackholeTranscriptViewController *)self tableView];
    [v12 setTableHeaderView:self->_headerTextView];

    v13 = [(CKBlackholeTranscriptViewController *)self tableView];
    [v13 layoutIfNeeded];
  }

  [(CKBlackholeTranscriptViewController *)self layoutLockoutView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CKBlackholeTranscriptViewController;
  [(CKBlackholeTranscriptViewController *)&v7 viewWillAppear:a3];
  v4 = [(CKBlackholeTranscriptViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 setPrefersLargeTitles:0];

  [(CKBlackholeTranscriptViewController *)self _updateTranscriptHistory];
  v6 = [MEMORY[0x1E69A5B50] sharedController];
  [v6 addListenerID:@"CKSettingsMessagesController" capabilities:(*MEMORY[0x1E69A6268] | *MEMORY[0x1E69A6258]) | *MEMORY[0x1E69A6280]];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CKBlackholeTranscriptViewController;
  [(CKBlackholeTranscriptViewController *)&v7 viewWillDisappear:a3];
  if ([(CKBlackholeTranscriptViewController *)self isMovingFromParentViewController])
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(CKBlackholeTranscriptViewController *)self isMovingFromParentViewController];
      *buf = 138412546;
      v9 = @"CKSettingsMessagesController";
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "viewWillDisappear. Will remove listener: %@:, movingFromParentViewController: %d", buf, 0x12u);
    }

    CKRemoveDaemonListener(@"CKSettingsMessagesController");
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69A5858], 0);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKBlackholeTranscriptViewController;
  [(CKBlackholeTranscriptViewController *)&v4 dealloc];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    if ([v5 section] < 1)
    {
      v7 = objc_opt_new();
      goto LABEL_14;
    }

    v6 = [(CKBlackholeTranscriptViewController *)self tableView];
    v7 = [v6 dequeueReusableCellWithIdentifier:@"action"];

    v8 = [v7 textLabel];
    [v8 setTextAlignment:1];

    if ([v5 section] == 1)
    {
      v9 = [v7 textLabel];
      v10 = [MEMORY[0x1E69DC888] systemBlueColor];
      [v9 setColor:v10];
      v11 = @"BLACKHOLE_TRANSCRIPT_RESTORE";
    }

    else
    {
      if ([v5 section] != 2)
      {
        goto LABEL_14;
      }

      v9 = [v7 textLabel];
      v10 = [MEMORY[0x1E69DC888] systemRedColor];
      [v9 setColor:v10];
      v11 = @"BLACKHOLE_TRANSCRIPT_DELETE";
    }

    v13 = [v7 textLabel];
    v19 = CKFrameworkBundle();
    v20 = [v19 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit"];
    [v13 setText:v20];
  }

  else
  {
    v12 = [(CKBlackholeTranscriptViewController *)self tableView];
    v7 = [v12 dequeueReusableCellWithIdentifier:@"history"];

    v13 = -[NSMutableArray objectAtIndex:](self->_messages, "objectAtIndex:", [v5 row]);
    if ([v5 row] < 1)
    {
      v18 = 1;
    }

    else
    {
      v14 = -[NSMutableArray objectAtIndex:](self->_messages, "objectAtIndex:", [v5 row] - 1);
      v15 = [v14 handle];
      v16 = [v13 handle];
      v17 = [v15 isEqualToString:v16];

      v18 = v17 ^ 1u;
    }

    [v7 configureForMessageItem:v13 showSender:v18];
  }

LABEL_14:

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKBlackholeTranscriptViewController *)self tableView];
  [v8 deselectRowAtIndexPath:v7 animated:1];

  if ([v7 section] == 1)
  {
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"BLACKHOLE_RESTORE_PROMPT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
    v11 = [CKAlertController alertControllerWithTitle:v10 message:0 preferredStyle:0];

    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"BLACKHOLE_RESTORE_PROMPT_CONFIRM" value:&stru_1F04268F8 table:@"ChatKit"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73__CKBlackholeTranscriptViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v23[3] = &unk_1E72EBFE8;
    v23[4] = self;
    v14 = [CKAlertAction actionWithTitle:v13 style:0 handler:v23];

    [v11 addAction:v14];
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"BLACKHOLE_RESTORE_PROMPT_CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v17 = [CKAlertAction actionWithTitle:v16 style:1 handler:0];

    [v11 addAction:v17];
    [v11 presentFromViewController:self animated:1 completion:0];
  }

  else if ([v7 section] == 2)
  {
    objc_initWeak(&location, self);
    conversation = self->_conversation;
    v19 = [(CKBlackholeTranscriptViewController *)self view];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__CKBlackholeTranscriptViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v20[3] = &unk_1E72EE728;
    objc_copyWeak(&v21, &location);
    [(CKBlackholeTranscriptViewController *)self _confirmDeleteConversation:conversation view:v19 withCompletionHandler:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __73__CKBlackholeTranscriptViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained navigationController];
    v3 = [v2 popViewControllerAnimated:1];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return a4 > 0;
  }

  else
  {
    return [(NSMutableArray *)self->_messages count];
  }
}

- (void)_confirmDeleteConversation:(id)a3 view:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    objc_initWeak(location, self);
    v11 = [(CKBlackholeTranscriptViewController *)self _alertTitleForDelete];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93__CKBlackholeTranscriptViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke;
    v19[3] = &unk_1E72EE750;
    v12 = v8;
    v20 = v12;
    objc_copyWeak(&v22, location);
    v13 = v10;
    v21 = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __93__CKBlackholeTranscriptViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke_2;
    v15[3] = &unk_1E72EE778;
    objc_copyWeak(&v18, location);
    v16 = v12;
    v17 = v13;
    [(UITableViewController *)self _confirmDeleteConversationFromView:v9 alertTitle:v11 forMultipleConversations:0 withReportSpamHander:v19 withNotReportSpamHandler:v15 withCancelHandler:0];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v22);

    objc_destroyWeak(location);
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "no conversation set. delete action aborted", location, 2u);
    }
  }
}

void __93__CKBlackholeTranscriptViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chat];
  [v2 markAsSpam:31];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteConversation:*(a1 + 32) withCompletionHandler:*(a1 + 40)];
}

void __93__CKBlackholeTranscriptViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteConversation:*(a1 + 32) withCompletionHandler:*(a1 + 40)];
}

- (void)_restoreConversation
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(CKConversation *)self->_conversation chat];
    v5 = [v4 guid];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "User chose to restore chat (%@)", &v11, 0xCu);
  }

  v6 = [(CKConversation *)self->_conversation chat];
  [v6 updateIsBlackholed:0];

  v7 = [(CKConversation *)self->_conversation chat];
  LODWORD(v6) = [v7 isGroupChat];

  v8 = [MEMORY[0x1E69A8168] sharedInstance];
  v9 = v8;
  if (v6)
  {
    v10 = 19;
  }

  else
  {
    v10 = 18;
  }

  [v8 trackSpamEvent:v10];
}

- (void)_openRestoredChatInMessages
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(CKConversation *)self->_conversation chat];
    v5 = [v4 guid];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Opening chat (%@) after restoration", &v11, 0xCu);
  }

  v6 = MEMORY[0x1E695DFF8];
  v7 = [(CKConversation *)self->_conversation chat];
  v8 = [v7 chatIdentifier];
  v9 = [v6 __im_URLForChatIdentifier:v8 entryBody:0];

  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  [v10 openURL:v9 withCompletionHandler:0];
}

- (void)_deleteConversation:(id)a3 withCompletionHandler:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(CKBlackholeTranscriptViewController *)self _conversationList];
  [v7 removeConversation:v6];

  v8 = [(CKBlackholeTranscriptViewController *)self _conversationList];
  [v8 deleteConversation:v6];

  v9 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 1);
    v9 = v10;
  }
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

- (void)_updateTranscriptHistory
{
  [(CKConversation *)self->_conversation setLoadedMessageCount:50 loadImmediately:1];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:50];
  messages = self->_messages;
  self->_messages = v3;

  v5 = [(CKConversation *)self->_conversation chat];
  v6 = [v5 _items];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CKBlackholeTranscriptViewController__updateTranscriptHistory__block_invoke;
  v8[3] = &unk_1E72EE7A0;
  v8[4] = self;
  [v6 enumerateObjectsUsingBlock:v8];

  v7 = [(CKBlackholeTranscriptViewController *)self tableView];
  [v7 reloadData];
}

void __63__CKBlackholeTranscriptViewController__updateTranscriptHistory__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    if ([v5 isFinished])
    {
      [*(*(a1 + 32) + 1056) addObject:v5];
    }

    v4 = v6;
  }
}

- (void)layoutLockoutView
{
  if ([(CKBlackholeTranscriptViewController *)self isShowingLockoutView])
  {
    v3 = [(CKBlackholeTranscriptViewController *)self lockoutView];

    if (v3)
    {
      v4 = [(CKBlackholeTranscriptViewController *)self view];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = [(CKBlackholeTranscriptViewController *)self view];
      [v13 safeAreaInsets];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = [(CKBlackholeTranscriptViewController *)self headerTextView];
      [v22 setBounds:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

      v23 = [(CKBlackholeTranscriptViewController *)self lockoutView];
      [v23 setFrame:{v6 + v17, v8 + v15, v10 - (v17 + v21), v12 - (v15 + v19)}];
    }
  }
}

- (void)chatAllowedByScreenTimeChanged:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled];
  v5 = v7;
  if (v4)
  {
    v6 = [v7 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CKBlackholeTranscriptViewController *)self updateScreenTimeShieldIfNeededForChat:v6];
    }

    v5 = v7;
  }
}

- (void)updateScreenTimeShieldIfNeededForChat:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([(CKBlackholeTranscriptViewController *)self isChatAllowedByScreenTime:v4])
    {
      [(CKBlackholeTranscriptViewController *)self removeLockoutControllerIfNeeded];
    }

    else
    {
      [(CKBlackholeTranscriptViewController *)self showScreenTimeShieldIfNeeded];
    }

    v4 = v5;
  }
}

- (void)removeLockoutControllerIfNeeded
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] && -[CKBlackholeTranscriptViewController isShowingLockoutView](self, "isShowingLockoutView"))
  {
    v7 = [(CKBlackholeTranscriptViewController *)self lockoutViewController];
    v3 = [v7 view];
    [v3 removeFromSuperview];

    [v7 removeFromParentViewController];
    [(CKBlackholeTranscriptViewController *)self setLockoutViewController:0];
    [(CKBlackholeTranscriptViewController *)self setLockoutView:0];
    v4 = [(CKBlackholeTranscriptViewController *)self generateHeader];
    [(CKBlackholeTranscriptViewController *)self setHeaderTextView:v4];

    [(CKBlackholeTranscriptViewController *)self setIsShowingLockoutView:0];
    v5 = [(CKBlackholeTranscriptViewController *)self conversation];
    [(CKBlackholeTranscriptViewController *)self setConversation:v5];

    v6 = [(CKBlackholeTranscriptViewController *)self tableView];
    [v6 setScrollEnabled:1];

    [(CKBlackholeTranscriptViewController *)self reloadInputViews];
  }
}

- (void)showScreenTimeShieldIfNeeded
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] && -[CKBlackholeTranscriptViewController shouldPresentBlockingDowntimeViewController](self, "shouldPresentBlockingDowntimeViewController") && !-[CKBlackholeTranscriptViewController isShowingLockoutView](self, "isShowingLockoutView"))
  {
    v3 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v4 = [v3 getContactStore];

    if (!showScreenTimeShieldIfNeeded_CKSTLockoutViewController_0)
    {
      showScreenTimeShieldIfNeeded_CKSTLockoutViewController_0 = MEMORY[0x193AF5EC0](@"STLockoutViewController", @"ScreenTimeUI");
    }

    v5 = [(CKBlackholeTranscriptViewController *)self conversation];
    v6 = [v5 chat];

    if (v6)
    {
      v7 = IMSharedDowntimeController();
      v8 = [(CKBlackholeTranscriptViewController *)self conversation];
      v9 = [v8 chat];
      v10 = [v7 conversationContextForChat:v9];
      [(CKBlackholeTranscriptViewController *)self setConversationContext:v10];
    }

    v11 = [(CKBlackholeTranscriptViewController *)self conversationContext];

    v12 = showScreenTimeShieldIfNeeded_CKSTLockoutViewController_0;
    if (v11 && v4)
    {
      v13 = [(CKBlackholeTranscriptViewController *)self conversationContext];
      v14 = [(CKBlackholeTranscriptViewController *)self conversation];
      v15 = [v14 contactNameByHandle];
      v16 = [v12 lockoutViewControllerWithConversationContext:v13 bundleIdentifier:@"com.apple.MobileSMS" contactStore:v4 applicationName:0 contactNameByHandle:v15];
    }

    else
    {
      v13 = [(CKBlackholeTranscriptViewController *)self _handleIDsForCurrentConversation];
      v14 = [(CKBlackholeTranscriptViewController *)self conversation];
      v15 = [v14 contactNameByHandle];
      v16 = [v12 lockoutViewControllerWithBundleIdentifier:@"com.apple.MobileSMS" contactsHandles:v13 contactNameByHandle:v15];
    }

    v24 = v16;

    [v24 setMainButtonAlwaysHidden:1];
    v17 = [v24 view];
    [(CKBlackholeTranscriptViewController *)self setLockoutView:v17];

    v18 = objc_alloc_init(MEMORY[0x1E69DD168]);
    [(CKBlackholeTranscriptViewController *)self setHeaderTextView:v18];

    [(CKBlackholeTranscriptViewController *)self setLockoutViewController:v24];
    v19 = [(CKBlackholeTranscriptViewController *)self view];
    v20 = [(CKBlackholeTranscriptViewController *)self lockoutView];
    [v19 addSubview:v20];

    [(CKBlackholeTranscriptViewController *)self addChildViewController:v24];
    [(CKBlackholeTranscriptViewController *)self setIsShowingLockoutView:1];
    v21 = [(CKBlackholeTranscriptViewController *)self tableView];
    [v21 setScrollEnabled:0];

    v22 = [(CKBlackholeTranscriptViewController *)self view];
    [v22 setNeedsLayout];

    v23 = [(CKBlackholeTranscriptViewController *)self view];
    [v23 layoutIfNeeded];

    [(CKBlackholeTranscriptViewController *)self reloadInputViews];
  }
}

- (id)_handleIDsForCurrentConversation
{
  v2 = [(CKBlackholeTranscriptViewController *)self conversation];
  v3 = [v2 recipients];
  v4 = [v3 __imArrayByApplyingBlock:&__block_literal_global_34];

  return v4;
}

id __71__CKBlackholeTranscriptViewController__handleIDsForCurrentConversation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 defaultIMHandle];
  v3 = [v2 ID];

  return v3;
}

- (id)generateHeader
{
  v2 = objc_alloc(MEMORY[0x1E69DD168]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setSelectable:0];
  [v3 setEditable:0];
  [v3 setAdjustsFontForContentSizeCategory:1];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"BLACKHOLE_TRANSCRIPT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  [v3 setText:v5];

  [v3 setTextAlignment:1];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v3 setFont:v6];

  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v3 setTextColor:v7];

  [v3 setBackgroundColor:0];
  [v3 setTextContainerInset:{12.0, 24.0, 12.0, 24.0}];

  return v3;
}

@end