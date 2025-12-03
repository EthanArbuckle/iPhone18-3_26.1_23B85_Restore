@interface CKChatSceneDelegate
- (BOOL)hasDetailsNavigationController;
- (BOOL)isDetailsNavigationControllerDetached;
- (BOOL)sendMenuPresentationShouldUseKeyboardSnapshot:(id)snapshot;
- (CKChatSceneDelegate)init;
- (CKDetailsNavigationController)detailsNavigationController;
- (CKMessagesSplitViewCoordinator)splitViewCoordinator;
- (NSSet)alertSuppressionContexts;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller;
- (id)conversation;
- (id)newInputSnapshotView;
- (id)prefersToActivatePredicate;
- (id)stateRestorationActivityForScene:(id)scene;
- (id)viewToSizeEffectPreviewOverlay;
- (void)__updateAppSnapshot;
- (void)_chatItemsDidChange:(id)change;
- (void)_handleChatDisplayNameChangedNotification:(id)notification;
- (void)_handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification:(id)notification;
- (void)_handleRegistryWillUnregisterChatNotification:(id)notification;
- (void)_scene:(id)_scene openItemProviders:(id)providers;
- (void)_updateAppSnapshot;
- (void)chatController:(id)controller didDetachDetailsNavigationController:(id)navigationController;
- (void)chatController:(id)controller didFinishDismissAnimationForSendMenuViewController:(id)viewController;
- (void)chatController:(id)controller didStartTextSelectionInView:(id)view;
- (void)chatController:(id)controller presentViewControllerInInspector:(id)inspector;
- (void)chatController:(id)controller requestDeleteJunkConversation:(id)conversation;
- (void)chatController:(id)controller requestPresentSendMenu:(id)menu currentlyPresentedViewController:(id)viewController;
- (void)chatController:(id)controller requestRecoverJunkConversation:(id)conversation;
- (void)chatControllerDidChangeBackground:(id)background;
- (void)cleanUpInteractionViews;
- (void)dismissAndReopenDetailsNavigationController;
- (void)dismissDetailsNavigationController;
- (void)dismissDetailsNavigationControllerWithCompletion:(id)completion;
- (void)dismissDetailsViewAndShowConversationList;
- (void)doneButtonPressedForChatController:(id)controller;
- (void)loadAndShowConversationWithMessageGUID:(id)d withInlineReplyOverlay:(BOOL)overlay;
- (void)presentDetailsNavigationController:(id)controller;
- (void)requestDismissKeyboardSnapshotForSendMenu;
- (void)requestShowKeyboardSnapshotForSendMenu;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setChatController:(id)controller;
- (void)setupCKDismissOnInteractionView;
- (void)showConversation:(id)conversation scrollToMessage:(id)message withInlineReplyOverlay:(BOOL)overlay;
- (void)showConversationAndMessageForChatGUID:(id)d messageGUID:(id)iD withInlineReplyOverlay:(BOOL)overlay animate:(BOOL)animate;
- (void)windowSceneDidBecomeVisible:(id)visible;
@end

@implementation CKChatSceneDelegate

- (CKChatSceneDelegate)init
{
  v20.receiver = self;
  v20.super_class = CKChatSceneDelegate;
  v2 = [(CKSceneDelegate *)&v20 init];
  if (v2)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

    if (isModernSplitViewControllerEnabled)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DCF78]) initWithStyle:1];
      splitViewController = v2->_splitViewController;
      v2->_splitViewController = v5;

      [(UISplitViewController *)v2->_splitViewController setDisplayModeButtonVisibility:1];
    }

    v7 = [[CKNavigationController alloc] initWithRootViewController:v2->_chatController];
    p_navigationController = &v2->_navigationController;
    navigationController = v2->_navigationController;
    v2->_navigationController = v7;

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernSplitViewControllerEnabled2 = [mEMORY[0x1E69A8070]2 isModernSplitViewControllerEnabled];

    if (isModernSplitViewControllerEnabled2)
    {
      splitViewController = [(CKChatSceneDelegate *)v2 splitViewController];
      navigationController = [(CKChatSceneDelegate *)v2 navigationController];
      [splitViewController setViewController:navigationController forColumn:2];

      window = [(CKSceneDelegate *)v2 window];
      p_navigationController = &v2->_splitViewController;
    }

    else
    {
      window = [(CKSceneDelegate *)v2 window];
    }

    [window setRootViewController:*p_navigationController];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__chatItemsDidChange_ name:*MEMORY[0x1E69A5748] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__handleRegistryWillUnregisterChatNotification_ name:*MEMORY[0x1E69A5900] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__handleChatDisplayNameChangedNotification_ name:*MEMORY[0x1E69A5700] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel__handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification_ name:*MEMORY[0x1E69A58A8] object:0];
  }

  return v2;
}

- (CKMessagesSplitViewCoordinator)splitViewCoordinator
{
  splitViewCoordinator = self->_splitViewCoordinator;
  if (!splitViewCoordinator)
  {
    splitViewController = [(CKChatSceneDelegate *)self splitViewController];
    v5 = [CKMessagesSplitViewCoordinator newWithSplitViewController:splitViewController];
    v6 = self->_splitViewCoordinator;
    self->_splitViewCoordinator = v5;

    [(CKMessagesSplitViewCoordinator *)self->_splitViewCoordinator setInspectorColumnSizes];
    splitViewCoordinator = self->_splitViewCoordinator;
  }

  v7 = splitViewCoordinator;

  return v7;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __58__CKChatSceneDelegate_scene_willConnectToSession_options___block_invoke;
  v29 = &unk_1E72EBEF8;
  v11 = sceneCopy;
  v30 = v11;
  v12 = sessionCopy;
  v31 = v12;
  v13 = optionsCopy;
  v32 = v13;
  selfCopy = self;
  v14 = _Block_copy(&v26);
  v14[2](v14, v15, v16, v17);
  [(CKChatSceneDelegate *)self showConversation:0, v26, v27, v28, v29];
  v18 = +[CKUIBehavior sharedBehaviors];
  useMacToolbar = [v18 useMacToolbar];

  if (useMacToolbar)
  {
    v20 = [[CKMacToolbarController alloc] initWithScene:v11 connectingToSession:v12 inStandaloneWindow:1];
    [(CKSceneDelegate *)self setToolbarController:v20];

    chatController = [(CKChatSceneDelegate *)self chatController];
    toolbarController = [(CKSceneDelegate *)self toolbarController];
    [chatController configureWithToolbarController:toolbarController];

    chatController2 = [(CKChatSceneDelegate *)self chatController];
    [chatController2 presentMacToolbarController];
  }

  userActivities = [v13 userActivities];
  uRLContexts = [v13 URLContexts];
  [CKUserActivityHandler chatScene:v11 willConnectToSession:v12 userActivities:userActivities urlContexts:uRLContexts windowSceneDelegate:self];
}

id __58__CKChatSceneDelegate_scene_willConnectToSession_options___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5.receiver = *(a1 + 56);
  v5.super_class = CKChatSceneDelegate;
  return objc_msgSendSuper2(&v5, sel_scene_willConnectToSession_options_, v1, v2, v3);
}

- (void)windowSceneDidBecomeVisible:(id)visible
{
  v3.receiver = self;
  v3.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v3 windowSceneDidBecomeVisible:visible];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v5.receiver = self;
  v5.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v5 sceneWillEnterForeground:foreground];
  chatController = [(CKChatSceneDelegate *)self chatController];
  [chatController prepareForResume];

  [(CKSceneDelegate *)self updateSceneActivationConditions];
}

- (void)sceneDidEnterBackground:(id)background
{
  v5.receiver = self;
  v5.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v5 sceneDidEnterBackground:background];
  chatController = [(CKChatSceneDelegate *)self chatController];
  [chatController prepareForSuspend];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  window = [(CKSceneDelegate *)self window];
  [window setRootViewController:0];

  v9.receiver = self;
  v9.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v9 sceneDidDisconnect:disconnectCopy];

  conversation = [(CKChatSceneDelegate *)self conversation];

  if (conversation)
  {
    v7 = +[CKCurrentConversationsManager sharedInstance];
    conversation2 = [(CKChatSceneDelegate *)self conversation];
    [v7 removeConversation:conversation2];
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  v12 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  contextsCopy = contexts;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[CKChatSceneDelegate scene:openURLContexts:]";
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v9.receiver = self;
  v9.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v9 scene:sceneCopy openURLContexts:contextsCopy];
  [CKUserActivityHandler chatScene:sceneCopy openURLContexts:contextsCopy];
}

- (void)_scene:(id)_scene openItemProviders:(id)providers
{
  v12 = *MEMORY[0x1E69E9840];
  _sceneCopy = _scene;
  providersCopy = providers;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[CKChatSceneDelegate _scene:openItemProviders:]";
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v9.receiver = self;
  v9.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v9 _scene:_sceneCopy openItemProviders:providersCopy];
}

- (void)setChatController:(id)controller
{
  controllerCopy = controller;
  if (self->_chatController != controllerCopy)
  {
    v9 = controllerCopy;
    objc_storeStrong(&self->_chatController, controller);
    v6 = +[CKUIBehavior sharedBehaviors];
    if ([v6 useMacToolbar])
    {
      toolbarController = [(CKSceneDelegate *)self toolbarController];

      controllerCopy = v9;
      if (!toolbarController)
      {
        goto LABEL_7;
      }

      toolbarController2 = [(CKSceneDelegate *)self toolbarController];
      [(CKCoreChatController *)v9 configureWithToolbarController:toolbarController2];

      [(CKCoreChatController *)v9 presentMacToolbarController];
    }

    else
    {
    }

    controllerCopy = v9;
  }

LABEL_7:
}

- (id)conversation
{
  chatController = [(CKChatSceneDelegate *)self chatController];
  conversation = [chatController conversation];

  return conversation;
}

- (void)loadAndShowConversationWithMessageGUID:(id)d withInlineReplyOverlay:(BOOL)overlay
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[CKChatSceneDelegate loadAndShowConversationWithMessageGUID:withInlineReplyOverlay:]";
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  mEMORY[0x1E69A5AE8] = [MEMORY[0x1E69A5AE8] sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CKChatSceneDelegate_loadAndShowConversationWithMessageGUID_withInlineReplyOverlay___block_invoke;
  v10[3] = &unk_1E72EC268;
  v10[4] = self;
  v11 = dCopy;
  overlayCopy = overlay;
  v9 = dCopy;
  [mEMORY[0x1E69A5AE8] loadMessageWithGUID:v9 completionBlock:v10];
}

void __85__CKChatSceneDelegate_loadAndShowConversationWithMessageGUID_withInlineReplyOverlay___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 lastObject];
  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = v4;
    v6 = [v4 guid];
    [v5 showConversationAndMessageForChatGUID:v6 messageGUID:*(a1 + 40) withInlineReplyOverlay:*(a1 + 48) animate:1];

    v4 = v7;
  }
}

- (void)showConversationAndMessageForChatGUID:(id)d messageGUID:(id)iD withInlineReplyOverlay:(BOOL)overlay animate:(BOOL)animate
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[CKChatSceneDelegate showConversationAndMessageForChatGUID:messageGUID:withInlineReplyOverlay:animate:]";
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
    }
  }

  v11 = +[CKConversationList sharedConversationList];
  v12 = [v11 conversationForExistingChatWithGUID:dCopy];

  if (v12)
  {
    if (iDCopy && ([v12 ensureMessageWithGUIDIsLoaded:iDCopy], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(CKChatSceneDelegate *)self showConversation:v12 scrollToMessage:v13 withInlineReplyOverlay:1];
    }

    else
    {
      [(CKChatSceneDelegate *)self showConversation:v12];
    }
  }
}

- (void)showConversation:(id)conversation scrollToMessage:(id)message withInlineReplyOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  v33 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v32 = "[CKChatSceneDelegate showConversation:scrollToMessage:withInlineReplyOverlay:]";
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  conversation = [(CKChatSceneDelegate *)self conversation];

  if (conversation)
  {
    v12 = +[CKCurrentConversationsManager sharedInstance];
    conversation2 = [(CKChatSceneDelegate *)self conversation];
    [v12 removeConversation:conversation2];
  }

  if (conversationCopy)
  {
    v14 = +[CKCurrentConversationsManager sharedInstance];
    [v14 addConversation:conversationCopy];

    v15 = +[CKCurrentConversationsManager sharedInstance];
    [v15 loadHistoryForConversation:conversationCopy keepAllCurrentlyLoadedMessages:0];

    [conversationCopy isBusinessConversation];
    v16 = [objc_alloc(objc_opt_class()) initWithConversation:conversationCopy];
    [v16 setDelegate:self];
    [v16 setSendMenuDelegate:self];
    [v16 setShouldShowDoneButton:CKIsRunningInMacCatalyst() == 0];
    [v16 setShowingInStandAloneWindow:1];
    [(CKChatSceneDelegate *)self setChatController:v16];
    v17 = v16;
    v18 = v17;
  }

  else
  {
    v18 = objc_alloc_init(CKBlankTranscriptController);
    [(CKChatSceneDelegate *)self setChatController:0];
    v17 = 0;
  }

  navigationController = [(CKChatSceneDelegate *)self navigationController];
  v30 = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [navigationController setViewControllers:v20];

  v21 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v20) = [v21 useMacToolbar];

  if (v20)
  {
    navigationController2 = [(CKChatSceneDelegate *)self navigationController];
    [navigationController2 setNavigationBarHidden:1];
  }

  navigationController3 = [(CKChatSceneDelegate *)self navigationController];
  view = [navigationController3 view];
  [view setNeedsLayout];

  navigationController4 = [(CKChatSceneDelegate *)self navigationController];
  view2 = [navigationController4 view];
  [view2 layoutIfNeeded];

  [(CKSceneDelegate *)self updateSceneActivationConditions];
  [(CKSceneDelegate *)self updateSceneTitleForConversation:conversationCopy];
  if (messageCopy && overlayCopy)
  {
    conversation3 = [(CKBlankTranscriptController *)v17 conversation];
    guid = [messageCopy guid];
    v29 = [conversation3 ensureMessageWithGUIDIsLoaded:guid];

    [(CKBlankTranscriptController *)v17 scrollToMessage:messageCopy highlight:1 withInlineReplyOverlay:1];
  }
}

- (id)stateRestorationActivityForScene:(id)scene
{
  v16 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[CKChatSceneDelegate stateRestorationActivityForScene:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v13.receiver = self;
  v13.super_class = CKChatSceneDelegate;
  v6 = [(CKSceneDelegate *)&v13 stateRestorationActivityForScene:sceneCopy];
  v7 = [CKSceneDelegateState alloc];
  conversation = [(CKChatSceneDelegate *)self conversation];
  groupID = [conversation groupID];
  v10 = [(CKSceneDelegateState *)v7 initWithGroupID:groupID];

  v11 = [CKSceneDelegate userInfoDictionaryForState:v10];
  if (v11)
  {
    [v6 addUserInfoEntriesFromDictionary:v11];
  }

  return v6;
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  v21 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  activityCopy = activity;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[CKChatSceneDelegate scene:continueUserActivity:]";
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v18.receiver = self;
  v18.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v18 scene:sceneCopy continueUserActivity:activityCopy];
  userInfo = [activityCopy userInfo];
  v10 = [CKSceneDelegate stateFromUserInfoDictionary:userInfo];

  if (v10)
  {
    v11 = +[CKConversationList sharedConversationList];
    groupID = [v10 groupID];
    v13 = [v11 conversationForExistingChatWithChatIdentifier:groupID];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = +[CKConversationList sharedConversationList];
      groupID2 = [v10 groupID];
      v15 = [v16 conversationForExistingChatWithGroupID:groupID2];
    }

    [(CKChatSceneDelegate *)self showConversation:v15];
  }
}

- (void)_chatItemsDidChange:(id)change
{
  v27 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[CKChatSceneDelegate _chatItemsDidChange:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  scene = [(CKSceneDelegate *)self scene];
  v7 = [scene activationState] == 2;

  if (v7)
  {
    userInfo = [changeCopy userInfo];
    object = [changeCopy object];
    conversation = [(CKChatSceneDelegate *)self conversation];
    chat = [conversation chat];
    v12 = object == chat;

    if (v12)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v26 = 0;
      v19 = [userInfo objectForKey:*MEMORY[0x1E69A5750]];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __43__CKChatSceneDelegate__chatItemsDidChange___block_invoke;
      v22[3] = &unk_1E72EC290;
      v23 = object;
      v24 = buf;
      [v19 enumerateIndexesWithOptions:2 usingBlock:v22];
      if (*(*&buf[8] + 24) == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Not snapshotting, update includes typing item", v21, 2u);
          }
        }
      }

      else
      {
        [(CKChatSceneDelegate *)self _updateAppSnapshot];
      }

      _Block_object_dispose(buf, 8);
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        conversation2 = [(CKChatSceneDelegate *)self conversation];
        chat2 = [conversation2 chat];
        *buf = 138412546;
        *&buf[4] = object;
        *&buf[12] = 2112;
        *&buf[14] = chat2;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Not snapshotting, updated chat items for chat: %@ is not current chat: %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      scene2 = [(CKSceneDelegate *)self scene];
      activationState = [scene2 activationState];
      *buf = 134217984;
      *&buf[4] = activationState;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Not snapshotting, updated chat items but scene state isn't background: %lu", buf, 0xCu);
    }
  }
}

void __43__CKChatSceneDelegate__chatItemsDidChange___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) chatItems];
  v7 = [v6 objectAtIndex:a2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)_handleRegistryWillUnregisterChatNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(43);
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "++++ ChatKit Internal Consistency Error ++++", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(43);
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_opt_class();
        object2 = [notificationCopy object];
        v11 = objc_opt_class();
        *buf = 136315650;
        v27 = "[CKChatSceneDelegate _handleRegistryWillUnregisterChatNotification:]";
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v11;
        v12 = v11;
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v13 = objc_opt_class();
      object3 = [notificationCopy object];
      v24 = v13;
      v25 = objc_opt_class();
      v23 = "[CKChatSceneDelegate _handleRegistryWillUnregisterChatNotification:]";
      _CKLog();
    }

    if (_CKShouldLog())
    {
      _CKLogBacktrace();
    }
  }

  object4 = [notificationCopy object];
  conversation = [(CKChatSceneDelegate *)self conversation];
  chat = [conversation chat];
  v18 = object4 == chat;

  if (v18)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "The chat for this scene has been unregistered. Requesting scene destruction.", buf, 2u);
      }
    }

    [(CKChatSceneDelegate *)self showConversation:0];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    scene = [(CKSceneDelegate *)self scene];
    session = [scene session];
    [mEMORY[0x1E69DC668] requestSceneSessionDestruction:session options:0 errorHandler:&__block_literal_global_6];
  }
}

void __69__CKChatSceneDelegate__handleRegistryWillUnregisterChatNotification___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Error closing scene: %@", &v4, 0xCu);
    }
  }
}

- (void)_handleChatDisplayNameChangedNotification:(id)notification
{
  v30 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(43);
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "++++ ChatKit Internal Consistency Error ++++", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(43);
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_opt_class();
        object2 = [notificationCopy object];
        v11 = objc_opt_class();
        *buf = 136315650;
        v25 = "[CKChatSceneDelegate _handleChatDisplayNameChangedNotification:]";
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v11;
        v12 = v11;
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v13 = objc_opt_class();
      object3 = [notificationCopy object];
      v22 = v13;
      v23 = objc_opt_class();
      v21 = "[CKChatSceneDelegate _handleChatDisplayNameChangedNotification:]";
      _CKLog();
    }

    if (_CKShouldLog())
    {
      _CKLogBacktrace();
    }
  }

  object4 = [notificationCopy object];
  conversation = [(CKChatSceneDelegate *)self conversation];
  chat = [conversation chat];
  v18 = object4 == chat;

  if (v18)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "The display name for the chat has been changed. Updating scene title", buf, 2u);
      }
    }

    conversation2 = [(CKChatSceneDelegate *)self conversation];
    [(CKSceneDelegate *)self updateSceneTitleForConversation:conversation2];
  }
}

- (void)_handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification:(id)notification
{
  v34 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = notificationCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification with notification: %@", buf, 0xCu);
    }
  }

  if (notificationCopy)
  {
    object = [notificationCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(43);
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "++++ ChatKit Internal Consistency Error ++++", buf, 2u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog();
      }

      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(43);
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = objc_opt_class();
          object2 = [notificationCopy object];
          v12 = objc_opt_class();
          *buf = 136315650;
          v29 = "[CKChatSceneDelegate _handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification:]";
          v30 = 2112;
          v31 = v10;
          v32 = 2112;
          v33 = v12;
          v13 = v12;
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v14 = objc_opt_class();
        object3 = [notificationCopy object];
        v26 = v14;
        v27 = objc_opt_class();
        v25 = "[CKChatSceneDelegate _handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification:]";
        _CKLog();
      }

      if (_CKShouldLog())
      {
        _CKLogBacktrace();
      }
    }

    v16 = [(CKChatSceneDelegate *)self conversation:v25];
    chat = [v16 chat];
    guid = [chat guid];

    object4 = [notificationCopy object];
    if ([object4 containsObject:guid])
    {
      [(CKChatSceneDelegate *)self showConversation:0];
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      scene = [(CKSceneDelegate *)self scene];
      session = [scene session];
      [mEMORY[0x1E69DC668] requestSceneSessionDestruction:session options:0 errorHandler:&__block_literal_global_266];
    }

    else if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = notificationCopy;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Currently shown conversation is not deleted as apart of notification: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "CKChatSceneDelegate: Warning - nil notification for _handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification", buf, 2u);
    }
  }
}

void __89__CKChatSceneDelegate__handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Error closing scene: %@", &v4, 0xCu);
    }
  }
}

- (void)_updateAppSnapshot
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[CKChatSceneDelegate _updateAppSnapshot]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Scheduling snapshot generation", &v5, 2u);
    }
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel___updateAppSnapshot object:0];
  [(CKChatSceneDelegate *)self performSelector:sel___updateAppSnapshot withObject:0 afterDelay:2.0];
}

- (void)__updateAppSnapshot
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[CKChatSceneDelegate __updateAppSnapshot]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  scene = [(CKSceneDelegate *)self scene];
  activationState = [scene activationState];

  if (activationState == 2)
  {
    if (CKIsScreenLocked())
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Not snapshotting, iOS device is locked", buf, 2u);
        }
      }
    }

    else
    {
      im_main_thread();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      scene2 = [(CKSceneDelegate *)self scene];
      activationState2 = [scene2 activationState];
      *buf = 134217984;
      v11 = activationState2;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Not snapshotting, scene state isn't background: %lu", buf, 0xCu);
    }
  }
}

void __42__CKChatSceneDelegate___updateAppSnapshot__block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Telling UIKit to update our scene snapshot", v6, 2u);
    }
  }

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [*(a1 + 32) scene];
  v5 = [v4 session];
  [v3 requestSceneSessionRefresh:v5];
}

- (NSSet)alertSuppressionContexts
{
  v3 = [MEMORY[0x1E695DFA8] set];
  conversation = [(CKChatSceneDelegate *)self conversation];

  if (conversation)
  {
    conversation2 = [(CKChatSceneDelegate *)self conversation];
    v6 = [CKAlertSuppressionContextHelper alertSuppressionContextsForVisibleChatControllerWithConversation:conversation2];

    [v3 addObjectsFromArray:v6];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Not adding alert suppression contexts for conversation: no conversation found", v10, 2u);
    }
  }

  v8 = [v3 copy];

  return v8;
}

- (void)chatController:(id)controller requestPresentSendMenu:(id)menu currentlyPresentedViewController:(id)viewController
{
  controllerCopy = controller;
  menuCopy = menu;
  viewControllerCopy = viewController;
  sendMenuPresentation = self->_sendMenuPresentation;
  if (sendMenuPresentation)
  {
    [(CKSendMenuPresentation *)sendMenuPresentation dismissAnimated:0 completion:0];
    v12 = self->_sendMenuPresentation;
    self->_sendMenuPresentation = 0;
  }

  window = [(CKSceneDelegate *)self window];
  rootViewController = [window rootViewController];

  if (viewControllerCopy)
  {
    v15 = viewControllerCopy;

    rootViewController = v15;
  }

  v16 = [menuCopy newSendMenuPresentationWithPresentingViewController:rootViewController delegate:self];
  [(CKChatSceneDelegate *)self setSendMenuPresentation:v16];

  sendMenuPresentation = [(CKChatSceneDelegate *)self sendMenuPresentation];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__CKChatSceneDelegate_chatController_requestPresentSendMenu_currentlyPresentedViewController___block_invoke;
  v19[3] = &unk_1E72EBA18;
  v20 = menuCopy;
  v18 = menuCopy;
  [sendMenuPresentation beginPresentationWithCompletion:v19];
}

- (void)chatController:(id)controller didFinishDismissAnimationForSendMenuViewController:(id)viewController
{
  [(CKSendMenuPresentation *)self->_sendMenuPresentation removeSendMenuFromViewHierarchy:controller];
  sendMenuPresentation = self->_sendMenuPresentation;
  self->_sendMenuPresentation = 0;
}

- (void)chatControllerDidChangeBackground:(id)background
{
  v13 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = backgroundCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v11, 0xCu);
  }

  transcriptBackground = [backgroundCopy transcriptBackground];
  window = [(CKSceneDelegate *)self window];
  [window setOverrideUserInterfaceStyle:{objc_msgSend(transcriptBackground, "contentDerivedUserInterfaceStyle")}];
  traitOverrides = [window traitOverrides];
  if (transcriptBackground)
  {
    [traitOverrides setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

    traitOverrides2 = [window traitOverrides];
    [transcriptBackground luminance];
    [traitOverrides2 setCGFloatValue:objc_opt_class() forTrait:v10];
  }

  else
  {
    [traitOverrides removeTrait:objc_opt_class()];

    traitOverrides2 = [window traitOverrides];
    [traitOverrides2 removeTrait:objc_opt_class()];
  }
}

- (void)chatController:(id)controller requestDeleteJunkConversation:(id)conversation
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  conversationCopy = conversation;
  v8 = +[CKConversationList sharedConversationList];
  [v8 deleteConversation:conversationCopy];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      scene = [(CKSceneDelegate *)self scene];
      session = [scene session];
      persistentIdentifier = [session persistentIdentifier];
      v16 = 138412290;
      v17 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Junk conversation deleted, closing scene: %@", &v16, 0xCu);
    }
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  scene2 = [(CKSceneDelegate *)self scene];
  session2 = [scene2 session];
  [mEMORY[0x1E69DC668] requestSceneSessionDestruction:session2 options:0 errorHandler:&__block_literal_global_277_0];
}

void __68__CKChatSceneDelegate_chatController_requestDeleteJunkConversation___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Error closing scene: %@", &v4, 0xCu);
    }
  }
}

- (void)chatController:(id)controller requestRecoverJunkConversation:(id)conversation
{
  v7[1] = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v5 = +[CKConversationList sharedConversationList];
  v7[0] = conversationCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  [v5 recoverJunkMessagesInConversations:v6];
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller
{
  navigationController = [(CKChatSceneDelegate *)self navigationController];
  [navigationController systemMinimumLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view = [navigationController view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (!effectiveUserInterfaceLayoutDirection)
  {
    v7 = v11;
  }

  v15 = v5;
  v16 = v14;
  v17 = v9;
  v18 = v7;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller
{
  navigationController = [(CKChatSceneDelegate *)self navigationController];
  view = [navigationController view];
  [view safeAreaInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)doneButtonPressedForChatController:(id)controller
{
  v14 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      scene = [(CKSceneDelegate *)self scene];
      session = [scene session];
      persistentIdentifier = [session persistentIdentifier];
      v12 = 138412290;
      v13 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Closing scene for doneButtonPressedForChatController: %@", &v12, 0xCu);
    }
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  scene2 = [(CKSceneDelegate *)self scene];
  session2 = [scene2 session];
  [mEMORY[0x1E69DC668] requestSceneSessionDestruction:session2 options:0 errorHandler:&__block_literal_global_279_0];
}

void __58__CKChatSceneDelegate_doneButtonPressedForChatController___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Error closing scene for doneButtonPressedForChatController: %@", &v4, 0xCu);
    }
  }
}

- (void)dismissDetailsViewAndShowConversationList
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      scene = [(CKSceneDelegate *)self scene];
      session = [scene session];
      persistentIdentifier = [session persistentIdentifier];
      v10 = 138412290;
      v11 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Closing scene for dismissDetailsViewAndShowConversationList: %@", &v10, 0xCu);
    }
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  scene2 = [(CKSceneDelegate *)self scene];
  session2 = [scene2 session];
  [mEMORY[0x1E69DC668] requestSceneSessionDestruction:session2 options:0 errorHandler:&__block_literal_global_281];
}

void __64__CKChatSceneDelegate_dismissDetailsViewAndShowConversationList__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Error closing scene for dismissDetailsViewAndShowConversationList: %@", &v4, 0xCu);
    }
  }
}

- (void)chatController:(id)controller presentViewControllerInInspector:(id)inspector
{
  inspectorCopy = inspector;
  splitViewCoordinator = [(CKChatSceneDelegate *)self splitViewCoordinator];
  v6 = splitViewCoordinator;
  if (splitViewCoordinator)
  {
    [splitViewCoordinator presentViewControllerInInspector:inspectorCopy];
  }
}

- (void)chatController:(id)controller didStartTextSelectionInView:(id)view
{
  viewCopy = view;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextSelectionEnabled = [mEMORY[0x1E69A8070] isTextSelectionEnabled];

  if (isTextSelectionEnabled)
  {
    [(CKChatSceneDelegate *)self setupCKDismissOnInteractionView];
    dismissOnInteractionView = [(CKChatSceneDelegate *)self dismissOnInteractionView];
    [dismissOnInteractionView isolatePassthroughView:viewCopy];
  }
}

- (void)chatController:(id)controller didDetachDetailsNavigationController:(id)navigationController
{
  [(CKChatSceneDelegate *)self setDetailsNavigationController:navigationController];
  detailsNavigationController = [(CKChatSceneDelegate *)self detailsNavigationController];
  [detailsNavigationController setIsDetached:1];
}

- (BOOL)hasDetailsNavigationController
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

  detailsNavigationController = [(CKChatSceneDelegate *)self detailsNavigationController];
  v6 = detailsNavigationController;
  if (isRedesignedDetailsViewEnabled)
  {
    if (detailsNavigationController)
    {
      isInspectorVisible = 1;
    }

    else
    {
      splitViewCoordinator = [(CKChatSceneDelegate *)self splitViewCoordinator];
      isInspectorVisible = [splitViewCoordinator isInspectorVisible];
    }
  }

  else
  {
    isInspectorVisible = detailsNavigationController != 0;
  }

  return isInspectorVisible;
}

- (BOOL)isDetailsNavigationControllerDetached
{
  detailsNavigationController = [(CKChatSceneDelegate *)self detailsNavigationController];
  isDetached = [detailsNavigationController isDetached];

  return isDetached;
}

- (void)presentDetailsNavigationController:(id)controller
{
  controllerCopy = controller;
  detailsNavigationController = [(CKChatSceneDelegate *)self detailsNavigationController];

  v5 = controllerCopy;
  if (detailsNavigationController != controllerCopy)
  {
    [(CKChatSceneDelegate *)self setDetailsNavigationController:controllerCopy];
    v5 = controllerCopy;
  }
}

- (void)dismissDetailsNavigationController
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  if (isModernSplitViewControllerEnabled)
  {
    splitViewCoordinator = [(CKChatSceneDelegate *)self splitViewCoordinator];
    [splitViewCoordinator presentViewControllerInInspector:0];

    toolbarController = [(CKSceneDelegate *)self toolbarController];
    [toolbarController setIsShowingInspector:0];
  }

  else
  {

    [(CKChatSceneDelegate *)self dismissDetailsNavigationControllerWithCompletion:0];
  }
}

- (void)dismissDetailsNavigationControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  detailsNavigationController = [(CKChatSceneDelegate *)self detailsNavigationController];
  [detailsNavigationController dismissViewControllerAnimated:1 completion:completionCopy];

  [(CKChatSceneDelegate *)self setDetailsNavigationController:0];
}

- (void)dismissAndReopenDetailsNavigationController
{
  detailsNavigationController = [(CKChatSceneDelegate *)self detailsNavigationController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__CKChatSceneDelegate_dismissAndReopenDetailsNavigationController__block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [detailsNavigationController dismissViewControllerAnimated:1 completion:v4];
}

void __66__CKChatSceneDelegate_dismissAndReopenDetailsNavigationController__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) chatController];
  [v1 presentDetailsViewController];
}

- (void)setupCKDismissOnInteractionView
{
  v3 = [_TtC7ChatKit29CKInteractionNotificationView alloc];
  window = [(CKSceneDelegate *)self window];
  [window bounds];
  v5 = [(CKInteractionNotificationView *)v3 initWithFrame:?];
  [(CKChatSceneDelegate *)self setDismissOnInteractionView:v5];

  dismissOnInteractionView = [(CKChatSceneDelegate *)self dismissOnInteractionView];
  [dismissOnInteractionView setDelegate:self];

  dismissOnInteractionView2 = [(CKChatSceneDelegate *)self dismissOnInteractionView];
  [dismissOnInteractionView2 setAutoresizingMask:18];

  window2 = [(CKSceneDelegate *)self window];
  dismissOnInteractionView3 = [(CKChatSceneDelegate *)self dismissOnInteractionView];
  [window2 addSubview:dismissOnInteractionView3];
}

- (void)cleanUpInteractionViews
{
  dismissOnInteractionView = [(CKChatSceneDelegate *)self dismissOnInteractionView];
  [dismissOnInteractionView cleanUpTextSelectionInteractionListeners];
}

- (id)prefersToActivatePredicate
{
  conversation = [(CKChatSceneDelegate *)self conversation];
  v4 = [(CKSceneDelegate *)self predicateMatchingConversation:conversation];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v6 = v5;

  return v6;
}

- (id)newInputSnapshotView
{
  if (!self->_chatController)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  chatController = self->_chatController;

  return [(CKCoreChatController *)chatController newInputSnapshotView];
}

- (void)requestShowKeyboardSnapshotForSendMenu
{
  chatController = [(CKChatSceneDelegate *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chatController = self->_chatController;

    [(CKCoreChatController *)chatController requestShowKeyboardSnapshotForSendMenu];
  }
}

- (void)requestDismissKeyboardSnapshotForSendMenu
{
  chatController = [(CKChatSceneDelegate *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chatController = self->_chatController;

    [(CKCoreChatController *)chatController requestDismissKeyboardSnapshotForSendMenu];
  }
}

- (BOOL)sendMenuPresentationShouldUseKeyboardSnapshot:(id)snapshot
{
  chatController = [(CKChatSceneDelegate *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  chatController = self->_chatController;

  return [(CKScrollViewController *)chatController isKeyboardVisible];
}

- (id)viewToSizeEffectPreviewOverlay
{
  window = [(CKSceneDelegate *)self window];
  rootViewController = [window rootViewController];
  view = [rootViewController view];

  return view;
}

- (CKDetailsNavigationController)detailsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsNavigationController);

  return WeakRetained;
}

@end