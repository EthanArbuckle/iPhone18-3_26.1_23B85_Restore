@interface CKNotificationContentViewController
+ (void)connectIfNeeded;
+ (void)initialize;
- (BOOL)canBecomeFirstResponder;
- (CKNotificationContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller;
- (void)_adjustTraitOverridesAndUserInterfaceStyleForTranscriptBackground:(id)background;
- (void)_displayNameUpdatedNotification:(id)notification;
- (void)_keyboardDidShow:(id)show;
- (void)chatController:(id)controller didSendCompositionInConversation:(id)conversation;
- (void)chatControllerDidChangeBackground:(id)background;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didReceiveNotification:(id)notification;
- (void)grabFocus;
- (void)notificationChatControllerRequestDismissNotificationContentExtension:(id)extension;
- (void)setupChatControllerForConversation:(id)conversation;
- (void)transcriptBackgroundTapped:(id)tapped;
- (void)updateContentExtensionSize;
- (void)updateNotificationTitleFromConversation:(id)conversation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (CKNotificationContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = CKNotificationContentViewController;
  v4 = [(CKNotificationContentViewController *)&v12 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(CKNotificationContentViewController *)v4 setCanUpdateContentExtensionSize:1];
    [objc_opt_class() connectIfNeeded];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__displayNameUpdatedNotification_ name:*MEMORY[0x1E69A5700] object:0];
    v7 = dispatch_time(0, 0);
    dispatch_after(v7, MEMORY[0x1E69E96A0], &__block_literal_global_220_1);
    mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
    isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

    if (isInternalInstall)
    {
      [defaultCenter addObserver:v5 selector:sel__keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v4 dealloc];
}

- (void)_displayNameUpdatedNotification:(id)notification
{
  object = [notification object];
  v4 = [[CKConversation alloc] initWithChat:object];
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
  chatController = [(CKNotificationContentViewController *)self chatController];
  shouldDisplayTextEntry = [chatController shouldDisplayTextEntry];

  return shouldDisplayTextEntry;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v2 viewDidLoad];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v8.receiver = self;
  v8.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v8 viewIsAppearing:appearing];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    chatController = [(CKNotificationContentViewController *)self chatController];
    transcriptBackground = [chatController transcriptBackground];

    [(CKNotificationContentViewController *)self _adjustTraitOverridesAndUserInterfaceStyleForTranscriptBackground:transcriptBackground];
  }
}

- (void)updateContentExtensionSize
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CKNotificationContentViewController *)self canUpdateContentExtensionSize])
  {
    chatController = [(CKNotificationContentViewController *)self chatController];
    collectionView = [chatController collectionView];
    [collectionView __ck_contentSize];
    v6 = v5;
    v8 = v7;

    view = [(CKNotificationContentViewController *)self view];
    [view frame];
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

- (void)updateNotificationTitleFromConversation:(id)conversation
{
  conversationCopy = conversation;
  displayName = [conversationCopy displayName];

  if (displayName)
  {
    displayName2 = [conversationCopy displayName];
  }

  else
  {
    name = [conversationCopy name];

    if (!name)
    {
      goto LABEL_6;
    }

    displayName2 = [conversationCopy name];
  }

  v7 = displayName2;
  [(CKNotificationContentViewController *)self setTitle:displayName2];

LABEL_6:
}

- (void)_keyboardDidShow:(id)show
{
  v12 = *MEMORY[0x1E69E9840];
  showCopy = show;
  launchTokeyboardBringUpTC = [(CKNotificationContentViewController *)self launchTokeyboardBringUpTC];

  if (launchTokeyboardBringUpTC)
  {
    launchTokeyboardBringUpTC2 = [(CKNotificationContentViewController *)self launchTokeyboardBringUpTC];
    [launchTokeyboardBringUpTC2 stopTimingForKey:@"longlook-launch-to-keyboard"];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        launchTokeyboardBringUpTC3 = [(CKNotificationContentViewController *)self launchTokeyboardBringUpTC];
        v10 = 138412290;
        v11 = launchTokeyboardBringUpTC3;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "From launch to keyboard bring up %@", &v10, 0xCu);
      }
    }

    [(CKNotificationContentViewController *)self setLaunchTokeyboardBringUpTC:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];
  }
}

- (void)didReceiveNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  [(CKNotificationContentViewController *)self setNotification:notificationCopy];
  if ([MEMORY[0x1E6983308] supportsContentExtensions])
  {
    chatController = [(CKNotificationContentViewController *)self chatController];

    if (!chatController)
    {
      request = [notificationCopy request];
      content = [request content];
      userInfo = [content userInfo];
      v9 = [userInfo objectForKeyedSubscript:@"CKBBUserInfoKeyChatIdentifier"];

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

      mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v12 = [mEMORY[0x1E69A5AF8] existingChatWithChatIdentifier:v9];

      v13 = [[CKConversation alloc] initWithChat:v12];
      [(CKNotificationContentViewController *)self updateNotificationTitleFromConversation:v13];
      [v12 setNumberOfMessagesToKeepLoaded:0];
      [v12 clear];
      if (CKIsScreenLocked())
      {
        [(CKConversation *)v13 setLoadedMessageCount:5 loadImmediately:0];
        request2 = [notificationCopy request];
        identifier = [request2 identifier];
        [(CKConversation *)v13 loadAllUnreadMessagesUpToMessageGUID:identifier];
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

- (void)setupChatControllerForConversation:(id)conversation
{
  conversationCopy = conversation;
  [(CKNotificationContentViewController *)self chatController];
  if (objc_claimAutoreleasedReturnValue())
  {
    [CKNotificationContentViewController setupChatControllerForConversation:];
  }

  v4 = [CKNotificationChatController alloc];
  traitCollection = [(CKNotificationContentViewController *)self traitCollection];
  v6 = [(CKNotificationChatController *)v4 initWithConversation:conversationCopy entryViewTraitCollection:traitCollection];

  [(CKCoreChatController *)v6 setDelegate:self];
  keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
  windowScene = [keyWindow windowScene];
  _enhancedWindowingEnabled = [windowScene _enhancedWindowingEnabled];

  if ((_enhancedWindowingEnabled & 1) == 0)
  {
    [(CKScrollViewController *)v6 beginHoldingScrollGeometryUpdatesForReason:@"NotificationChatControllerFixedLayout"];
  }

  view = [(CKNotificationChatController *)v6 view];
  view2 = [(CKNotificationContentViewController *)self view];
  [view2 frame];
  [view setFrame:?];

  extensionContext = [(CKNotificationContentViewController *)self extensionContext];
  [(CKNotificationChatController *)v6 setUrlOpenContext:extensionContext];

  [(CKNotificationContentViewController *)self addChildViewController:v6];
  view3 = [(CKNotificationContentViewController *)self view];
  view4 = [(CKNotificationChatController *)v6 view];
  [view3 addSubview:view4];

  [(CKNotificationChatController *)v6 didMoveToParentViewController:self];
  [(CKNotificationContentViewController *)self setChatController:v6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v5 viewWillAppear:appear];
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

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v8 viewDidAppear:appear];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "CKNotificationContentViewController didAppear", v7, 2u);
    }
  }

  chatController = [(CKNotificationContentViewController *)self chatController];

  if (chatController)
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
  chatController = [(CKNotificationContentViewController *)self chatController];

  if (chatController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v4 startTimingForKey:@"longlook-becomeFirstResponder"];
    chatController2 = [(CKNotificationContentViewController *)self chatController];
    entryView = [chatController2 entryView];
    [entryView setHidden:0];

    chatController3 = [(CKNotificationContentViewController *)self chatController];
    [chatController3 becomeFirstResponder];

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

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v8 viewWillDisappear:disappear];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CKNotificationContentViewController;
  [(CKNotificationContentViewController *)&v3 viewDidDisappear:disappear];
  [CKApplicationState setMainWindowForegroundActive:0];
}

- (void)chatController:(id)controller didSendCompositionInConversation:(id)conversation
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

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller
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

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller
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

- (void)chatControllerDidChangeBackground:(id)background
{
  v11 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = backgroundCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v9, 0xCu);
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    transcriptBackground = [backgroundCopy transcriptBackground];
    [(CKNotificationContentViewController *)self _adjustTraitOverridesAndUserInterfaceStyleForTranscriptBackground:transcriptBackground];
  }
}

- (void)_adjustTraitOverridesAndUserInterfaceStyleForTranscriptBackground:(id)background
{
  backgroundCopy = background;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  v6 = backgroundCopy;
  if (isTranscriptBackgroundsEnabled)
  {
    v7 = backgroundCopy;
    -[CKNotificationContentViewController setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v7 contentDerivedUserInterfaceStyle]);
    traitOverrides = [(CKNotificationContentViewController *)self traitOverrides];
    if (v7)
    {
      [traitOverrides setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

      traitOverrides2 = [(CKNotificationContentViewController *)self traitOverrides];
      [v7 luminance];
      [traitOverrides2 setCGFloatValue:objc_opt_class() forTrait:v10];
    }

    else
    {
      [traitOverrides removeTrait:objc_opt_class()];

      traitOverrides2 = [(CKNotificationContentViewController *)self traitOverrides];
      [traitOverrides2 removeTrait:objc_opt_class()];
    }

    v6 = backgroundCopy;
  }
}

- (void)transcriptBackgroundTapped:(id)tapped
{
  extensionContext = [(CKNotificationContentViewController *)self extensionContext];
  [extensionContext performNotificationDefaultAction];
}

- (void)notificationChatControllerRequestDismissNotificationContentExtension:(id)extension
{
  extensionContext = [(CKNotificationContentViewController *)self extensionContext];
  [extensionContext dismissNotificationContentExtension];
}

@end