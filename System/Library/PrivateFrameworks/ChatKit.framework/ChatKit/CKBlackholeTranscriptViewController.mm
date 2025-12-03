@interface CKBlackholeTranscriptViewController
- (CKBlackholeTranscriptViewController)initWithConversation:(id)conversation;
- (id)_alertTitleForDelete;
- (id)_handleIDsForCurrentConversation;
- (id)generateHeader;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_confirmDeleteConversation:(id)conversation view:(id)view withCompletionHandler:(id)handler;
- (void)_deleteConversation:(id)conversation withCompletionHandler:(id)handler;
- (void)_openRestoredChatInMessages;
- (void)_restoreConversation;
- (void)_updateTranscriptHistory;
- (void)chatAllowedByScreenTimeChanged:(id)changed;
- (void)dealloc;
- (void)layoutLockoutView;
- (void)removeLockoutControllerIfNeeded;
- (void)showScreenTimeShieldIfNeeded;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateScreenTimeShieldIfNeededForChat:(id)chat;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKBlackholeTranscriptViewController

- (CKBlackholeTranscriptViewController)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v16.receiver = self;
  v16.super_class = CKBlackholeTranscriptViewController;
  v6 = [(CKBlackholeTranscriptViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, conversation);
    if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
    {
      [(CKBlackholeTranscriptViewController *)v7 removeLockoutControllerIfNeeded];
      chat = [(CKConversation *)v7->_conversation chat];
      if (chat)
      {
        v9 = chat;
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v11 = *MEMORY[0x1E69A56E8];
        [defaultCenter removeObserver:v7 name:*MEMORY[0x1E69A56E8] object:v9];

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 addObserver:v7 selector:sel_chatAllowedByScreenTimeChanged_ name:v11 object:v9];

        [(CKBlackholeTranscriptViewController *)v7 updateScreenTimeShieldIfNeededForChat:v9];
      }
    }

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel__updateTranscriptHistory name:*MEMORY[0x1E69A5748] object:0];
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
  view = [(CKBlackholeTranscriptViewController *)self view];
  [view bounds];
  v7 = [v5 initWithFrame:2 style:?];
  [(CKBlackholeTranscriptViewController *)self setTableView:v7];

  tableView = [(CKBlackholeTranscriptViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"action"];

  tableView2 = [(CKBlackholeTranscriptViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"history"];

  generateHeader = [(CKBlackholeTranscriptViewController *)self generateHeader];
  [(CKBlackholeTranscriptViewController *)self setHeaderTextView:generateHeader];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKBlackholeTranscriptViewController;
  [(CKBlackholeTranscriptViewController *)&v14 viewDidLayoutSubviews];
  [(UITextView *)self->_headerTextView frame];
  v4 = v3;
  headerTextView = self->_headerTextView;
  view = [(CKBlackholeTranscriptViewController *)self view];
  [view bounds];
  [(UITextView *)headerTextView sizeThatFits:v7, 1.79769313e308];
  v9 = v8;
  v11 = v10;

  if (v4 != v11)
  {
    [(UITextView *)self->_headerTextView setFrame:0.0, 0.0, v9, v11];
    tableView = [(CKBlackholeTranscriptViewController *)self tableView];
    [tableView setTableHeaderView:self->_headerTextView];

    tableView2 = [(CKBlackholeTranscriptViewController *)self tableView];
    [tableView2 layoutIfNeeded];
  }

  [(CKBlackholeTranscriptViewController *)self layoutLockoutView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CKBlackholeTranscriptViewController;
  [(CKBlackholeTranscriptViewController *)&v7 viewWillAppear:appear];
  navigationController = [(CKBlackholeTranscriptViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:0];

  [(CKBlackholeTranscriptViewController *)self _updateTranscriptHistory];
  mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
  [mEMORY[0x1E69A5B50] addListenerID:@"CKSettingsMessagesController" capabilities:(*MEMORY[0x1E69A6268] | *MEMORY[0x1E69A6258]) | *MEMORY[0x1E69A6280]];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v12 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CKBlackholeTranscriptViewController;
  [(CKBlackholeTranscriptViewController *)&v7 viewWillDisappear:disappear];
  if ([(CKBlackholeTranscriptViewController *)self isMovingFromParentViewController])
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      isMovingFromParentViewController = [(CKBlackholeTranscriptViewController *)self isMovingFromParentViewController];
      *buf = 138412546;
      v9 = @"CKSettingsMessagesController";
      v10 = 1024;
      v11 = isMovingFromParentViewController;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "viewWillDisappear. Will remove listener: %@:, movingFromParentViewController: %d", buf, 0x12u);
    }

    CKRemoveDaemonListener(@"CKSettingsMessagesController");
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69A5858], 0);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKBlackholeTranscriptViewController;
  [(CKBlackholeTranscriptViewController *)&v4 dealloc];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] < 1)
    {
      v7 = objc_opt_new();
      goto LABEL_14;
    }

    tableView = [(CKBlackholeTranscriptViewController *)self tableView];
    v7 = [tableView dequeueReusableCellWithIdentifier:@"action"];

    textLabel = [v7 textLabel];
    [textLabel setTextAlignment:1];

    if ([pathCopy section] == 1)
    {
      textLabel2 = [v7 textLabel];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [textLabel2 setColor:systemBlueColor];
      v11 = @"BLACKHOLE_TRANSCRIPT_RESTORE";
    }

    else
    {
      if ([pathCopy section] != 2)
      {
        goto LABEL_14;
      }

      textLabel2 = [v7 textLabel];
      systemBlueColor = [MEMORY[0x1E69DC888] systemRedColor];
      [textLabel2 setColor:systemBlueColor];
      v11 = @"BLACKHOLE_TRANSCRIPT_DELETE";
    }

    textLabel3 = [v7 textLabel];
    v19 = CKFrameworkBundle();
    v20 = [v19 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit"];
    [textLabel3 setText:v20];
  }

  else
  {
    tableView2 = [(CKBlackholeTranscriptViewController *)self tableView];
    v7 = [tableView2 dequeueReusableCellWithIdentifier:@"history"];

    textLabel3 = -[NSMutableArray objectAtIndex:](self->_messages, "objectAtIndex:", [pathCopy row]);
    if ([pathCopy row] < 1)
    {
      v18 = 1;
    }

    else
    {
      v14 = -[NSMutableArray objectAtIndex:](self->_messages, "objectAtIndex:", [pathCopy row] - 1);
      handle = [v14 handle];
      handle2 = [textLabel3 handle];
      v17 = [handle isEqualToString:handle2];

      v18 = v17 ^ 1u;
    }

    [v7 configureForMessageItem:textLabel3 showSender:v18];
  }

LABEL_14:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  tableView = [(CKBlackholeTranscriptViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  if ([pathCopy section] == 1)
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

  else if ([pathCopy section] == 2)
  {
    objc_initWeak(&location, self);
    conversation = self->_conversation;
    view = [(CKBlackholeTranscriptViewController *)self view];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__CKBlackholeTranscriptViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v20[3] = &unk_1E72EE728;
    objc_copyWeak(&v21, &location);
    [(CKBlackholeTranscriptViewController *)self _confirmDeleteConversation:conversation view:view withCompletionHandler:v20];

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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return section > 0;
  }

  else
  {
    return [(NSMutableArray *)self->_messages count];
  }
}

- (void)_confirmDeleteConversation:(id)conversation view:(id)view withCompletionHandler:(id)handler
{
  conversationCopy = conversation;
  viewCopy = view;
  handlerCopy = handler;
  if (conversationCopy)
  {
    objc_initWeak(location, self);
    _alertTitleForDelete = [(CKBlackholeTranscriptViewController *)self _alertTitleForDelete];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93__CKBlackholeTranscriptViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke;
    v19[3] = &unk_1E72EE750;
    v12 = conversationCopy;
    v20 = v12;
    objc_copyWeak(&v22, location);
    v13 = handlerCopy;
    v21 = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __93__CKBlackholeTranscriptViewController__confirmDeleteConversation_view_withCompletionHandler___block_invoke_2;
    v15[3] = &unk_1E72EE778;
    objc_copyWeak(&v18, location);
    v16 = v12;
    v17 = v13;
    [(UITableViewController *)self _confirmDeleteConversationFromView:viewCopy alertTitle:_alertTitleForDelete forMultipleConversations:0 withReportSpamHander:v19 withNotReportSpamHandler:v15 withCancelHandler:0];

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
    chat = [(CKConversation *)self->_conversation chat];
    guid = [chat guid];
    v11 = 138412290;
    v12 = guid;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "User chose to restore chat (%@)", &v11, 0xCu);
  }

  chat2 = [(CKConversation *)self->_conversation chat];
  [chat2 updateIsBlackholed:0];

  chat3 = [(CKConversation *)self->_conversation chat];
  LODWORD(chat2) = [chat3 isGroupChat];

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  v9 = mEMORY[0x1E69A8168];
  if (chat2)
  {
    v10 = 19;
  }

  else
  {
    v10 = 18;
  }

  [mEMORY[0x1E69A8168] trackSpamEvent:v10];
}

- (void)_openRestoredChatInMessages
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    chat = [(CKConversation *)self->_conversation chat];
    guid = [chat guid];
    v11 = 138412290;
    v12 = guid;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Opening chat (%@) after restoration", &v11, 0xCu);
  }

  v6 = MEMORY[0x1E695DFF8];
  chat2 = [(CKConversation *)self->_conversation chat];
  chatIdentifier = [chat2 chatIdentifier];
  v9 = [v6 __im_URLForChatIdentifier:chatIdentifier entryBody:0];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] openURL:v9 withCompletionHandler:0];
}

- (void)_deleteConversation:(id)conversation withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  conversationCopy = conversation;
  _conversationList = [(CKBlackholeTranscriptViewController *)self _conversationList];
  [_conversationList removeConversation:conversationCopy];

  _conversationList2 = [(CKBlackholeTranscriptViewController *)self _conversationList];
  [_conversationList2 deleteConversation:conversationCopy];

  v9 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
    v9 = handlerCopy;
  }
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

- (void)_updateTranscriptHistory
{
  [(CKConversation *)self->_conversation setLoadedMessageCount:50 loadImmediately:1];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:50];
  messages = self->_messages;
  self->_messages = v3;

  chat = [(CKConversation *)self->_conversation chat];
  _items = [chat _items];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CKBlackholeTranscriptViewController__updateTranscriptHistory__block_invoke;
  v8[3] = &unk_1E72EE7A0;
  v8[4] = self;
  [_items enumerateObjectsUsingBlock:v8];

  tableView = [(CKBlackholeTranscriptViewController *)self tableView];
  [tableView reloadData];
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
    lockoutView = [(CKBlackholeTranscriptViewController *)self lockoutView];

    if (lockoutView)
    {
      view = [(CKBlackholeTranscriptViewController *)self view];
      [view bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      view2 = [(CKBlackholeTranscriptViewController *)self view];
      [view2 safeAreaInsets];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      headerTextView = [(CKBlackholeTranscriptViewController *)self headerTextView];
      [headerTextView setBounds:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

      lockoutView2 = [(CKBlackholeTranscriptViewController *)self lockoutView];
      [lockoutView2 setFrame:{v6 + v17, v8 + v15, v10 - (v17 + v21), v12 - (v15 + v19)}];
    }
  }
}

- (void)chatAllowedByScreenTimeChanged:(id)changed
{
  changedCopy = changed;
  isContactLimitsFeatureEnabled = [MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled];
  v5 = changedCopy;
  if (isContactLimitsFeatureEnabled)
  {
    object = [changedCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CKBlackholeTranscriptViewController *)self updateScreenTimeShieldIfNeededForChat:object];
    }

    v5 = changedCopy;
  }
}

- (void)updateScreenTimeShieldIfNeededForChat:(id)chat
{
  chatCopy = chat;
  if (chatCopy)
  {
    v5 = chatCopy;
    if ([(CKBlackholeTranscriptViewController *)self isChatAllowedByScreenTime:chatCopy])
    {
      [(CKBlackholeTranscriptViewController *)self removeLockoutControllerIfNeeded];
    }

    else
    {
      [(CKBlackholeTranscriptViewController *)self showScreenTimeShieldIfNeeded];
    }

    chatCopy = v5;
  }
}

- (void)removeLockoutControllerIfNeeded
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] && -[CKBlackholeTranscriptViewController isShowingLockoutView](self, "isShowingLockoutView"))
  {
    lockoutViewController = [(CKBlackholeTranscriptViewController *)self lockoutViewController];
    view = [lockoutViewController view];
    [view removeFromSuperview];

    [lockoutViewController removeFromParentViewController];
    [(CKBlackholeTranscriptViewController *)self setLockoutViewController:0];
    [(CKBlackholeTranscriptViewController *)self setLockoutView:0];
    generateHeader = [(CKBlackholeTranscriptViewController *)self generateHeader];
    [(CKBlackholeTranscriptViewController *)self setHeaderTextView:generateHeader];

    [(CKBlackholeTranscriptViewController *)self setIsShowingLockoutView:0];
    conversation = [(CKBlackholeTranscriptViewController *)self conversation];
    [(CKBlackholeTranscriptViewController *)self setConversation:conversation];

    tableView = [(CKBlackholeTranscriptViewController *)self tableView];
    [tableView setScrollEnabled:1];

    [(CKBlackholeTranscriptViewController *)self reloadInputViews];
  }
}

- (void)showScreenTimeShieldIfNeeded
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] && -[CKBlackholeTranscriptViewController shouldPresentBlockingDowntimeViewController](self, "shouldPresentBlockingDowntimeViewController") && !-[CKBlackholeTranscriptViewController isShowingLockoutView](self, "isShowingLockoutView"))
  {
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    getContactStore = [mEMORY[0x1E69A7FD0] getContactStore];

    if (!showScreenTimeShieldIfNeeded_CKSTLockoutViewController_0)
    {
      showScreenTimeShieldIfNeeded_CKSTLockoutViewController_0 = MEMORY[0x193AF5EC0](@"STLockoutViewController", @"ScreenTimeUI");
    }

    conversation = [(CKBlackholeTranscriptViewController *)self conversation];
    chat = [conversation chat];

    if (chat)
    {
      v7 = IMSharedDowntimeController();
      conversation2 = [(CKBlackholeTranscriptViewController *)self conversation];
      chat2 = [conversation2 chat];
      v10 = [v7 conversationContextForChat:chat2];
      [(CKBlackholeTranscriptViewController *)self setConversationContext:v10];
    }

    conversationContext = [(CKBlackholeTranscriptViewController *)self conversationContext];

    v12 = showScreenTimeShieldIfNeeded_CKSTLockoutViewController_0;
    if (conversationContext && getContactStore)
    {
      conversationContext2 = [(CKBlackholeTranscriptViewController *)self conversationContext];
      conversation3 = [(CKBlackholeTranscriptViewController *)self conversation];
      contactNameByHandle = [conversation3 contactNameByHandle];
      v16 = [v12 lockoutViewControllerWithConversationContext:conversationContext2 bundleIdentifier:@"com.apple.MobileSMS" contactStore:getContactStore applicationName:0 contactNameByHandle:contactNameByHandle];
    }

    else
    {
      conversationContext2 = [(CKBlackholeTranscriptViewController *)self _handleIDsForCurrentConversation];
      conversation3 = [(CKBlackholeTranscriptViewController *)self conversation];
      contactNameByHandle = [conversation3 contactNameByHandle];
      v16 = [v12 lockoutViewControllerWithBundleIdentifier:@"com.apple.MobileSMS" contactsHandles:conversationContext2 contactNameByHandle:contactNameByHandle];
    }

    v24 = v16;

    [v24 setMainButtonAlwaysHidden:1];
    view = [v24 view];
    [(CKBlackholeTranscriptViewController *)self setLockoutView:view];

    v18 = objc_alloc_init(MEMORY[0x1E69DD168]);
    [(CKBlackholeTranscriptViewController *)self setHeaderTextView:v18];

    [(CKBlackholeTranscriptViewController *)self setLockoutViewController:v24];
    view2 = [(CKBlackholeTranscriptViewController *)self view];
    lockoutView = [(CKBlackholeTranscriptViewController *)self lockoutView];
    [view2 addSubview:lockoutView];

    [(CKBlackholeTranscriptViewController *)self addChildViewController:v24];
    [(CKBlackholeTranscriptViewController *)self setIsShowingLockoutView:1];
    tableView = [(CKBlackholeTranscriptViewController *)self tableView];
    [tableView setScrollEnabled:0];

    view3 = [(CKBlackholeTranscriptViewController *)self view];
    [view3 setNeedsLayout];

    view4 = [(CKBlackholeTranscriptViewController *)self view];
    [view4 layoutIfNeeded];

    [(CKBlackholeTranscriptViewController *)self reloadInputViews];
  }
}

- (id)_handleIDsForCurrentConversation
{
  conversation = [(CKBlackholeTranscriptViewController *)self conversation];
  recipients = [conversation recipients];
  v4 = [recipients __imArrayByApplyingBlock:&__block_literal_global_34];

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

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v3 setTextColor:secondaryLabelColor];

  [v3 setBackgroundColor:0];
  [v3 setTextContainerInset:{12.0, 24.0, 12.0, 24.0}];

  return v3;
}

@end