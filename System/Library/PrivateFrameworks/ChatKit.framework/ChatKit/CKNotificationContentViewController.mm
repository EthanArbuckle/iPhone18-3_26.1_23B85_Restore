@interface CKNotificationContentViewController
+ (void)connectIfNeeded;
+ (void)initialize;
- (BOOL)canBecomeFirstResponder;
- (CKNotificationContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3;
- (void)_adjustTraitOverridesAndUserInterfaceStyleForTranscriptBackground:(id)a3;
- (void)_displayNameUpdatedNotification:(id)a3;
- (void)_keyboardDidShow:(id)a3;
- (void)chatController:(id)a3 didSendCompositionInConversation:(id)a4;
- (void)chatControllerDidChangeBackground:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didReceiveNotification:(id)a3;
- (void)grabFocus;
- (void)notificationChatControllerRequestDismissNotificationContentExtension:(id)a3;
- (void)setupChatControllerForConversation:(id)a3;
- (void)transcriptBackgroundTapped:(id)a3;
- (void)updateContentExtensionSize;
- (void)updateNotificationTitleFromConversation:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKNotificationContentViewController

+ (void)initialize
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Intializing notification view controller", v4, 2u);
    }
  }

  v3 = dispatch_get_global_queue(2, 0);
  dispatch_async(v3, &__block_literal_global_288);

  dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_202_1);
}

uint64_t __49__CKNotificationContentViewController_initialize__block_invoke()
{
  result = IMSharedHelperIsOlderDevice();
  if ((result & 1) == 0)
  {
    return [MEMORY[0x1E69A5AD0] sharedInstance];
  }

  return result;
}

uint64_t __49__CKNotificationContentViewController_initialize__block_invoke_2()
{
  +[CKNotificationChatController initialize];

  return +[CKMessageEntryView initialize];
}

+ (void)connectIfNeeded
{
  if (connectIfNeeded_token != -1)
  {
    +[CKNotificationContentViewController connectIfNeeded];
  }
}

void __54__CKNotificationContentViewController_connectIfNeeded__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v0 startTimingForKey:@"longlook-imagent-connection"];
  v1 = [MEMORY[0x1E69A5B50] sharedController];
  [v1 addListenerID:@"MessagesNotificationExtension" capabilities:CKListenerPaginatedChatRegistryCapabilities()];

  v2 = [MEMORY[0x1E69A5B50] sharedController];
  [v2 blockUntilConnected];

  v3 = [MEMORY[0x1E69A5B50] sharedController];
  [v3 _setBlocksConnectionAtResume:1];

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 setHUDStyle:2];

  [v0 stopTimingForKey:@"longlook-imagent-connection"];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Initialized IMAgent connection from long look notification: %@", &v6, 0xCu);
    }
  }
}

- (CKNotificationContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = CKNotificationContentViewController;
  v4 = [(CKNotificationContentViewController *)&v12 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(CKNotificationContentViewController *)v4 setCanUpdateContentExtensionSize:1];
    [objc_opt_class() connectIfNeeded];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel__displayNameUpdatedNotification_ name:*MEMORY[0x1E69A5700] object:0];
    v7 = dispatch_time(0, 0);
    dispatch_after(v7, MEMORY[0x1E69E96A0], &__block_literal_global_220_1);
    v8 = [MEMORY[0x1E69A60F0] sharedInstance];
    v9 = [v8 isInternalInstall];

    if (v9)
    {
      [v6 addObserver:v5 selector:sel__keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
      v10 = objc_alloc_init(MEMORY[0x1E69A6170]);
      [v10 startTimingForKey:@"longlook-launch-to-keyboard"];
      [(CKNotificationContentViewController *)v5 setLaunchTokeyboardBringUpTC:v10];
    }
  }

  return v5;
}

void __62__CKNotificationContentViewController_initWithNibName_bundle___block_invoke()
{
  v0 = [MEMORY[0x1E69A6160] sharedInstance];
  [v0 _forceSuspended];

  v1 = [MEMORY[0x1E69A6160] sharedInstance];
  [v1 _forceResumed];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v4 dealloc];
}

- (void)_displayNameUpdatedNotification:(id)a3
{
  v5 = [a3 object];
  v4 = [[CKConversation alloc] initWithChat:v5];
  if (v4)
  {
    [(CKNotificationContentViewController *)self updateNotificationTitleFromConversation:v4];
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v2 didReceiveMemoryWarning];
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(CKNotificationContentViewController *)self chatController];
  v3 = [v2 shouldDisplayTextEntry];

  return v3;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v2 viewDidLoad];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v8 viewIsAppearing:a3];
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isTranscriptBackgroundsEnabled];

  if (v5)
  {
    v6 = [(CKNotificationContentViewController *)self chatController];
    v7 = [v6 transcriptBackground];

    [(CKNotificationContentViewController *)self _adjustTraitOverridesAndUserInterfaceStyleForTranscriptBackground:v7];
  }
}

- (void)updateContentExtensionSize
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CKNotificationContentViewController *)self canUpdateContentExtensionSize])
  {
    v3 = [(CKNotificationContentViewController *)self chatController];
    v4 = [v3 collectionView];
    [v4 __ck_contentSize];
    v6 = v5;
    v8 = v7;

    v9 = [(CKNotificationContentViewController *)self view];
    [v9 frame];
    v11 = v10;

    if (v8 > v11)
    {
      [(CKNotificationContentViewController *)self setPreferredContentSize:v6, v8];
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        [(CKNotificationContentViewController *)self preferredContentSize];
        v13 = NSStringFromSize(v17);
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "updated content extension size: %@", &v14, 0xCu);
      }
    }
  }
}

- (void)updateNotificationTitleFromConversation:(id)a3
{
  v8 = a3;
  v4 = [v8 displayName];

  if (v4)
  {
    v5 = [v8 displayName];
  }

  else
  {
    v6 = [v8 name];

    if (!v6)
    {
      goto LABEL_6;
    }

    v5 = [v8 name];
  }

  v7 = v5;
  [(CKNotificationContentViewController *)self setTitle:v5];

LABEL_6:
}

- (void)_keyboardDidShow:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKNotificationContentViewController *)self launchTokeyboardBringUpTC];

  if (v5)
  {
    v6 = [(CKNotificationContentViewController *)self launchTokeyboardBringUpTC];
    [v6 stopTimingForKey:@"longlook-launch-to-keyboard"];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [(CKNotificationContentViewController *)self launchTokeyboardBringUpTC];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "From launch to keyboard bring up %@", &v10, 0xCu);
      }
    }

    [(CKNotificationContentViewController *)self setLaunchTokeyboardBringUpTC:0];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];
  }
}

- (void)didReceiveNotification:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CKNotificationContentViewController *)self setNotification:v4];
  if ([MEMORY[0x1E6983308] supportsContentExtensions])
  {
    v5 = [(CKNotificationContentViewController *)self chatController];

    if (!v5)
    {
      v6 = [v4 request];
      v7 = [v6 content];
      v8 = [v7 userInfo];
      v9 = [v8 objectForKeyedSubscript:@"CKBBUserInfoKeyChatIdentifier"];

      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = v9;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Creating chat controller for identifier: %@", &v16, 0xCu);
        }
      }

      v11 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v12 = [v11 existingChatWithChatIdentifier:v9];

      v13 = [[CKConversation alloc] initWithChat:v12];
      [(CKNotificationContentViewController *)self updateNotificationTitleFromConversation:v13];
      [v12 setNumberOfMessagesToKeepLoaded:0];
      [v12 clear];
      if (CKIsScreenLocked())
      {
        [(CKConversation *)v13 setLoadedMessageCount:5 loadImmediately:0];
        v14 = [v4 request];
        v15 = [v14 identifier];
        [(CKConversation *)v13 loadAllUnreadMessagesUpToMessageGUID:v15];
      }

      else
      {
        [(CKConversation *)v13 setLoadedMessageCount:5];
      }

      [(CKNotificationContentViewController *)self setupChatControllerForConversation:v13];
    }

    [(CKNotificationContentViewController *)self grabFocus];
  }
}

- (void)setupChatControllerForConversation:(id)a3
{
  v15 = a3;
  [(CKNotificationContentViewController *)self chatController];
  if (objc_claimAutoreleasedReturnValue())
  {
    [CKNotificationContentViewController setupChatControllerForConversation:];
  }

  v4 = [CKNotificationChatController alloc];
  v5 = [(CKNotificationContentViewController *)self traitCollection];
  v6 = [(CKNotificationChatController *)v4 initWithConversation:v15 entryViewTraitCollection:v5];

  [(CKCoreChatController *)v6 setDelegate:self];
  v7 = [MEMORY[0x1E69DD2E8] keyWindow];
  v8 = [v7 windowScene];
  v9 = [v8 _enhancedWindowingEnabled];

  if ((v9 & 1) == 0)
  {
    [(CKScrollViewController *)v6 beginHoldingScrollGeometryUpdatesForReason:@"NotificationChatControllerFixedLayout"];
  }

  v10 = [(CKNotificationChatController *)v6 view];
  v11 = [(CKNotificationContentViewController *)self view];
  [v11 frame];
  [v10 setFrame:?];

  v12 = [(CKNotificationContentViewController *)self extensionContext];
  [(CKNotificationChatController *)v6 setUrlOpenContext:v12];

  [(CKNotificationContentViewController *)self addChildViewController:v6];
  v13 = [(CKNotificationContentViewController *)self view];
  v14 = [(CKNotificationChatController *)v6 view];
  [v13 addSubview:v14];

  [(CKNotificationChatController *)v6 didMoveToParentViewController:self];
  [(CKNotificationContentViewController *)self setChatController:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v5 viewWillAppear:a3];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "CKNotificationContentViewController viewWillAppear", v4, 2u);
    }
  }

  [CKApplicationState setMainWindowForegroundActive:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v8 viewDidAppear:a3];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "CKNotificationContentViewController didAppear", v7, 2u);
    }
  }

  v5 = [(CKNotificationContentViewController *)self chatController];

  if (v5)
  {
    [(CKNotificationContentViewController *)self updateContentExtensionSize];
  }

  v6 = +[CKImageAnimationTimer sharedTimer];
  [v6 setShouldStopWhenBackgrounded:0];

  [(CKNotificationContentViewController *)self grabFocus];
}

- (void)grabFocus
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(CKNotificationContentViewController *)self chatController];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v4 startTimingForKey:@"longlook-becomeFirstResponder"];
    v5 = [(CKNotificationContentViewController *)self chatController];
    v6 = [v5 entryView];
    [v6 setHidden:0];

    v7 = [(CKNotificationContentViewController *)self chatController];
    [v7 becomeFirstResponder];

    [v4 stopTimingForKey:@"longlook-becomeFirstResponder"];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Called becomeFirstResponder in long look notification %@", &v9, 0xCu);
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v8 viewWillDisappear:a3];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "CKNotificationContentViewController willDisappear", buf, 2u);
    }
  }

  v5 = +[CKImageAnimationTimer sharedTimer];
  [v5 setShouldStopWhenBackgrounded:1];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CKNotificationContentViewController_viewWillDisappear___block_invoke;
  v6[3] = &unk_1E72EBA18;
  v6[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.25];
}

void __57__CKNotificationContentViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chatController];
  v1 = [v2 entryView];
  [v1 setHidden:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v3 viewDidDisappear:a3];
  [CKApplicationState setMainWindowForegroundActive:0];
}

- (void)chatController:(id)a3 didSendCompositionInConversation:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__CKNotificationContentViewController_chatController_didSendCompositionInConversation___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __87__CKNotificationContentViewController_chatController_didSendCompositionInConversation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCanUpdateContentExtensionSize:1];
  v2 = *(a1 + 32);

  return [v2 updateContentExtensionSize];
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)chatControllerDidChangeBackground:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v9, 0xCu);
  }

  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isTranscriptBackgroundsEnabled];

  if (v7)
  {
    v8 = [v4 transcriptBackground];
    [(CKNotificationContentViewController *)self _adjustTraitOverridesAndUserInterfaceStyleForTranscriptBackground:v8];
  }
}

- (void)_adjustTraitOverridesAndUserInterfaceStyleForTranscriptBackground:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isTranscriptBackgroundsEnabled];

  v6 = v11;
  if (v5)
  {
    v7 = v11;
    -[CKNotificationContentViewController setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v7 contentDerivedUserInterfaceStyle]);
    v8 = [(CKNotificationContentViewController *)self traitOverrides];
    if (v7)
    {
      [v8 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

      v9 = [(CKNotificationContentViewController *)self traitOverrides];
      [v7 luminance];
      [v9 setCGFloatValue:objc_opt_class() forTrait:v10];
    }

    else
    {
      [v8 removeTrait:objc_opt_class()];

      v9 = [(CKNotificationContentViewController *)self traitOverrides];
      [v9 removeTrait:objc_opt_class()];
    }

    v6 = v11;
  }
}

- (void)transcriptBackgroundTapped:(id)a3
{
  v3 = [(CKNotificationContentViewController *)self extensionContext];
  [v3 performNotificationDefaultAction];
}

- (void)notificationChatControllerRequestDismissNotificationContentExtension:(id)a3
{
  v3 = [(CKNotificationContentViewController *)self extensionContext];
  [v3 dismissNotificationContentExtension];
}

@end