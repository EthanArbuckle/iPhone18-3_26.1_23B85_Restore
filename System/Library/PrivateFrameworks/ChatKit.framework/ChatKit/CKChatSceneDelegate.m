@interface CKChatSceneDelegate
- (BOOL)hasDetailsNavigationController;
- (BOOL)isDetailsNavigationControllerDetached;
- (BOOL)sendMenuPresentationShouldUseKeyboardSnapshot:(id)a3;
- (CKChatSceneDelegate)init;
- (CKDetailsNavigationController)detailsNavigationController;
- (CKMessagesSplitViewCoordinator)splitViewCoordinator;
- (NSSet)alertSuppressionContexts;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3;
- (id)conversation;
- (id)newInputSnapshotView;
- (id)prefersToActivatePredicate;
- (id)stateRestorationActivityForScene:(id)a3;
- (id)viewToSizeEffectPreviewOverlay;
- (void)__updateAppSnapshot;
- (void)_chatItemsDidChange:(id)a3;
- (void)_handleChatDisplayNameChangedNotification:(id)a3;
- (void)_handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification:(id)a3;
- (void)_handleRegistryWillUnregisterChatNotification:(id)a3;
- (void)_scene:(id)a3 openItemProviders:(id)a4;
- (void)_updateAppSnapshot;
- (void)chatController:(id)a3 didDetachDetailsNavigationController:(id)a4;
- (void)chatController:(id)a3 didFinishDismissAnimationForSendMenuViewController:(id)a4;
- (void)chatController:(id)a3 didStartTextSelectionInView:(id)a4;
- (void)chatController:(id)a3 presentViewControllerInInspector:(id)a4;
- (void)chatController:(id)a3 requestDeleteJunkConversation:(id)a4;
- (void)chatController:(id)a3 requestPresentSendMenu:(id)a4 currentlyPresentedViewController:(id)a5;
- (void)chatController:(id)a3 requestRecoverJunkConversation:(id)a4;
- (void)chatControllerDidChangeBackground:(id)a3;
- (void)cleanUpInteractionViews;
- (void)dismissAndReopenDetailsNavigationController;
- (void)dismissDetailsNavigationController;
- (void)dismissDetailsNavigationControllerWithCompletion:(id)a3;
- (void)dismissDetailsViewAndShowConversationList;
- (void)doneButtonPressedForChatController:(id)a3;
- (void)loadAndShowConversationWithMessageGUID:(id)a3 withInlineReplyOverlay:(BOOL)a4;
- (void)presentDetailsNavigationController:(id)a3;
- (void)requestDismissKeyboardSnapshotForSendMenu;
- (void)requestShowKeyboardSnapshotForSendMenu;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setChatController:(id)a3;
- (void)setupCKDismissOnInteractionView;
- (void)showConversation:(id)a3 scrollToMessage:(id)a4 withInlineReplyOverlay:(BOOL)a5;
- (void)showConversationAndMessageForChatGUID:(id)a3 messageGUID:(id)a4 withInlineReplyOverlay:(BOOL)a5 animate:(BOOL)a6;
- (void)windowSceneDidBecomeVisible:(id)a3;
@end

@implementation CKChatSceneDelegate

- (CKChatSceneDelegate)init
{
  v20.receiver = self;
  v20.super_class = CKChatSceneDelegate;
  v2 = [(CKSceneDelegate *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v4 = [v3 isModernSplitViewControllerEnabled];

    if (v4)
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

    v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v11 = [v10 isModernSplitViewControllerEnabled];

    if (v11)
    {
      v12 = [(CKChatSceneDelegate *)v2 splitViewController];
      v13 = [(CKChatSceneDelegate *)v2 navigationController];
      [v12 setViewController:v13 forColumn:2];

      v14 = [(CKSceneDelegate *)v2 window];
      p_navigationController = &v2->_splitViewController;
    }

    else
    {
      v14 = [(CKSceneDelegate *)v2 window];
    }

    [v14 setRootViewController:*p_navigationController];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v2 selector:sel__chatItemsDidChange_ name:*MEMORY[0x1E69A5748] object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v2 selector:sel__handleRegistryWillUnregisterChatNotification_ name:*MEMORY[0x1E69A5900] object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v2 selector:sel__handleChatDisplayNameChangedNotification_ name:*MEMORY[0x1E69A5700] object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v2 selector:sel__handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification_ name:*MEMORY[0x1E69A58A8] object:0];
  }

  return v2;
}

- (CKMessagesSplitViewCoordinator)splitViewCoordinator
{
  splitViewCoordinator = self->_splitViewCoordinator;
  if (!splitViewCoordinator)
  {
    v4 = [(CKChatSceneDelegate *)self splitViewController];
    v5 = [CKMessagesSplitViewCoordinator newWithSplitViewController:v4];
    v6 = self->_splitViewCoordinator;
    self->_splitViewCoordinator = v5;

    [(CKMessagesSplitViewCoordinator *)self->_splitViewCoordinator setInspectorColumnSizes];
    splitViewCoordinator = self->_splitViewCoordinator;
  }

  v7 = splitViewCoordinator;

  return v7;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __58__CKChatSceneDelegate_scene_willConnectToSession_options___block_invoke;
  v29 = &unk_1E72EBEF8;
  v11 = v8;
  v30 = v11;
  v12 = v9;
  v31 = v12;
  v13 = v10;
  v32 = v13;
  v33 = self;
  v14 = _Block_copy(&v26);
  v14[2](v14, v15, v16, v17);
  [(CKChatSceneDelegate *)self showConversation:0, v26, v27, v28, v29];
  v18 = +[CKUIBehavior sharedBehaviors];
  v19 = [v18 useMacToolbar];

  if (v19)
  {
    v20 = [[CKMacToolbarController alloc] initWithScene:v11 connectingToSession:v12 inStandaloneWindow:1];
    [(CKSceneDelegate *)self setToolbarController:v20];

    v21 = [(CKChatSceneDelegate *)self chatController];
    v22 = [(CKSceneDelegate *)self toolbarController];
    [v21 configureWithToolbarController:v22];

    v23 = [(CKChatSceneDelegate *)self chatController];
    [v23 presentMacToolbarController];
  }

  v24 = [v13 userActivities];
  v25 = [v13 URLContexts];
  [CKUserActivityHandler chatScene:v11 willConnectToSession:v12 userActivities:v24 urlContexts:v25 windowSceneDelegate:self];
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

- (void)windowSceneDidBecomeVisible:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v3 windowSceneDidBecomeVisible:a3];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v5 sceneWillEnterForeground:a3];
  v4 = [(CKChatSceneDelegate *)self chatController];
  [v4 prepareForResume];

  [(CKSceneDelegate *)self updateSceneActivationConditions];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v5 sceneDidEnterBackground:a3];
  v4 = [(CKChatSceneDelegate *)self chatController];
  [v4 prepareForSuspend];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(CKSceneDelegate *)self window];
  [v5 setRootViewController:0];

  v9.receiver = self;
  v9.super_class = CKChatSceneDelegate;
  [(CKSceneDelegate *)&v9 sceneDidDisconnect:v4];

  v6 = [(CKChatSceneDelegate *)self conversation];

  if (v6)
  {
    v7 = +[CKCurrentConversationsManager sharedInstance];
    v8 = [(CKChatSceneDelegate *)self conversation];
    [v7 removeConversation:v8];
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
  [(CKSceneDelegate *)&v9 scene:v6 openURLContexts:v7];
  [CKUserActivityHandler chatScene:v6 openURLContexts:v7];
}

- (void)_scene:(id)a3 openItemProviders:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
  [(CKSceneDelegate *)&v9 _scene:v6 openItemProviders:v7];
}

- (void)setChatController:(id)a3
{
  v5 = a3;
  if (self->_chatController != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_chatController, a3);
    v6 = +[CKUIBehavior sharedBehaviors];
    if ([v6 useMacToolbar])
    {
      v7 = [(CKSceneDelegate *)self toolbarController];

      v5 = v9;
      if (!v7)
      {
        goto LABEL_7;
      }

      v8 = [(CKSceneDelegate *)self toolbarController];
      [(CKCoreChatController *)v9 configureWithToolbarController:v8];

      [(CKCoreChatController *)v9 presentMacToolbarController];
    }

    else
    {
    }

    v5 = v9;
  }

LABEL_7:
}

- (id)conversation
{
  v2 = [(CKChatSceneDelegate *)self chatController];
  v3 = [v2 conversation];

  return v3;
}

- (void)loadAndShowConversationWithMessageGUID:(id)a3 withInlineReplyOverlay:(BOOL)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
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

  v8 = [MEMORY[0x1E69A5AE8] sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CKChatSceneDelegate_loadAndShowConversationWithMessageGUID_withInlineReplyOverlay___block_invoke;
  v10[3] = &unk_1E72EC268;
  v10[4] = self;
  v11 = v6;
  v12 = a4;
  v9 = v6;
  [v8 loadMessageWithGUID:v9 completionBlock:v10];
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

- (void)showConversationAndMessageForChatGUID:(id)a3 messageGUID:(id)a4 withInlineReplyOverlay:(BOOL)a5 animate:(BOOL)a6
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
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
  v12 = [v11 conversationForExistingChatWithGUID:v8];

  if (v12)
  {
    if (v9 && ([v12 ensureMessageWithGUIDIsLoaded:v9], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(CKChatSceneDelegate *)self showConversation:v12 scrollToMessage:v13 withInlineReplyOverlay:1];
    }

    else
    {
      [(CKChatSceneDelegate *)self showConversation:v12];
    }
  }
}

- (void)showConversation:(id)a3 scrollToMessage:(id)a4 withInlineReplyOverlay:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
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

  v11 = [(CKChatSceneDelegate *)self conversation];

  if (v11)
  {
    v12 = +[CKCurrentConversationsManager sharedInstance];
    v13 = [(CKChatSceneDelegate *)self conversation];
    [v12 removeConversation:v13];
  }

  if (v8)
  {
    v14 = +[CKCurrentConversationsManager sharedInstance];
    [v14 addConversation:v8];

    v15 = +[CKCurrentConversationsManager sharedInstance];
    [v15 loadHistoryForConversation:v8 keepAllCurrentlyLoadedMessages:0];

    [v8 isBusinessConversation];
    v16 = [objc_alloc(objc_opt_class()) initWithConversation:v8];
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

  v19 = [(CKChatSceneDelegate *)self navigationController];
  v30 = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [v19 setViewControllers:v20];

  v21 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v20) = [v21 useMacToolbar];

  if (v20)
  {
    v22 = [(CKChatSceneDelegate *)self navigationController];
    [v22 setNavigationBarHidden:1];
  }

  v23 = [(CKChatSceneDelegate *)self navigationController];
  v24 = [v23 view];
  [v24 setNeedsLayout];

  v25 = [(CKChatSceneDelegate *)self navigationController];
  v26 = [v25 view];
  [v26 layoutIfNeeded];

  [(CKSceneDelegate *)self updateSceneActivationConditions];
  [(CKSceneDelegate *)self updateSceneTitleForConversation:v8];
  if (v9 && v5)
  {
    v27 = [(CKBlankTranscriptController *)v17 conversation];
    v28 = [v9 guid];
    v29 = [v27 ensureMessageWithGUIDIsLoaded:v28];

    [(CKBlankTranscriptController *)v17 scrollToMessage:v9 highlight:1 withInlineReplyOverlay:1];
  }
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v6 = [(CKSceneDelegate *)&v13 stateRestorationActivityForScene:v4];
  v7 = [CKSceneDelegateState alloc];
  v8 = [(CKChatSceneDelegate *)self conversation];
  v9 = [v8 groupID];
  v10 = [(CKSceneDelegateState *)v7 initWithGroupID:v9];

  v11 = [CKSceneDelegate userInfoDictionaryForState:v10];
  if (v11)
  {
    [v6 addUserInfoEntriesFromDictionary:v11];
  }

  return v6;
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
  [(CKSceneDelegate *)&v18 scene:v6 continueUserActivity:v7];
  v9 = [v7 userInfo];
  v10 = [CKSceneDelegate stateFromUserInfoDictionary:v9];

  if (v10)
  {
    v11 = +[CKConversationList sharedConversationList];
    v12 = [v10 groupID];
    v13 = [v11 conversationForExistingChatWithChatIdentifier:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = +[CKConversationList sharedConversationList];
      v17 = [v10 groupID];
      v15 = [v16 conversationForExistingChatWithGroupID:v17];
    }

    [(CKChatSceneDelegate *)self showConversation:v15];
  }
}

- (void)_chatItemsDidChange:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v6 = [(CKSceneDelegate *)self scene];
  v7 = [v6 activationState] == 2;

  if (v7)
  {
    v8 = [v4 userInfo];
    v9 = [v4 object];
    v10 = [(CKChatSceneDelegate *)self conversation];
    v11 = [v10 chat];
    v12 = v9 == v11;

    if (v12)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v26 = 0;
      v19 = [v8 objectForKey:*MEMORY[0x1E69A5750]];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __43__CKChatSceneDelegate__chatItemsDidChange___block_invoke;
      v22[3] = &unk_1E72EC290;
      v23 = v9;
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
        v14 = [(CKChatSceneDelegate *)self conversation];
        v15 = [v14 chat];
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Not snapshotting, updated chat items for chat: %@ is not current chat: %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(CKSceneDelegate *)self scene];
      v18 = [v17 activationState];
      *buf = 134217984;
      *&buf[4] = v18;
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

- (void)_handleRegistryWillUnregisterChatNotification:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
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
        v10 = [v4 object];
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
      v14 = [v4 object];
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

  v15 = [v4 object];
  v16 = [(CKChatSceneDelegate *)self conversation];
  v17 = [v16 chat];
  v18 = v15 == v17;

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
    v20 = [MEMORY[0x1E69DC668] sharedApplication];
    v21 = [(CKSceneDelegate *)self scene];
    v22 = [v21 session];
    [v20 requestSceneSessionDestruction:v22 options:0 errorHandler:&__block_literal_global_6];
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

- (void)_handleChatDisplayNameChangedNotification:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
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
        v10 = [v4 object];
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
      v14 = [v4 object];
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

  v15 = [v4 object];
  v16 = [(CKChatSceneDelegate *)self conversation];
  v17 = [v16 chat];
  v18 = v15 == v17;

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

    v20 = [(CKChatSceneDelegate *)self conversation];
    [(CKSceneDelegate *)self updateSceneTitleForConversation:v20];
  }
}

- (void)_handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_handleMovedMessagesInChatsWithGUIDsToRecentlyDeletedNotification with notification: %@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v6 = [v4 object];
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
          v11 = [v4 object];
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
        v15 = [v4 object];
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
    v17 = [v16 chat];
    v18 = [v17 guid];

    v19 = [v4 object];
    if ([v19 containsObject:v18])
    {
      [(CKChatSceneDelegate *)self showConversation:0];
      v20 = [MEMORY[0x1E69DC668] sharedApplication];
      v21 = [(CKSceneDelegate *)self scene];
      v22 = [v21 session];
      [v20 requestSceneSessionDestruction:v22 options:0 errorHandler:&__block_literal_global_266];
    }

    else if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v4;
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

  v4 = [(CKSceneDelegate *)self scene];
  v5 = [v4 activationState];

  if (v5 == 2)
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
      v8 = [(CKSceneDelegate *)self scene];
      v9 = [v8 activationState];
      *buf = 134217984;
      v11 = v9;
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
  v4 = [(CKChatSceneDelegate *)self conversation];

  if (v4)
  {
    v5 = [(CKChatSceneDelegate *)self conversation];
    v6 = [CKAlertSuppressionContextHelper alertSuppressionContextsForVisibleChatControllerWithConversation:v5];

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

- (void)chatController:(id)a3 requestPresentSendMenu:(id)a4 currentlyPresentedViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sendMenuPresentation = self->_sendMenuPresentation;
  if (sendMenuPresentation)
  {
    [(CKSendMenuPresentation *)sendMenuPresentation dismissAnimated:0 completion:0];
    v12 = self->_sendMenuPresentation;
    self->_sendMenuPresentation = 0;
  }

  v13 = [(CKSceneDelegate *)self window];
  v14 = [v13 rootViewController];

  if (v10)
  {
    v15 = v10;

    v14 = v15;
  }

  v16 = [v9 newSendMenuPresentationWithPresentingViewController:v14 delegate:self];
  [(CKChatSceneDelegate *)self setSendMenuPresentation:v16];

  v17 = [(CKChatSceneDelegate *)self sendMenuPresentation];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__CKChatSceneDelegate_chatController_requestPresentSendMenu_currentlyPresentedViewController___block_invoke;
  v19[3] = &unk_1E72EBA18;
  v20 = v9;
  v18 = v9;
  [v17 beginPresentationWithCompletion:v19];
}

- (void)chatController:(id)a3 didFinishDismissAnimationForSendMenuViewController:(id)a4
{
  [(CKSendMenuPresentation *)self->_sendMenuPresentation removeSendMenuFromViewHierarchy:a3];
  sendMenuPresentation = self->_sendMenuPresentation;
  self->_sendMenuPresentation = 0;
}

- (void)chatControllerDidChangeBackground:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v11, 0xCu);
  }

  v6 = [v4 transcriptBackground];
  v7 = [(CKSceneDelegate *)self window];
  [v7 setOverrideUserInterfaceStyle:{objc_msgSend(v6, "contentDerivedUserInterfaceStyle")}];
  v8 = [v7 traitOverrides];
  if (v6)
  {
    [v8 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

    v9 = [v7 traitOverrides];
    [v6 luminance];
    [v9 setCGFloatValue:objc_opt_class() forTrait:v10];
  }

  else
  {
    [v8 removeTrait:objc_opt_class()];

    v9 = [v7 traitOverrides];
    [v9 removeTrait:objc_opt_class()];
  }
}

- (void)chatController:(id)a3 requestDeleteJunkConversation:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[CKConversationList sharedConversationList];
  [v8 deleteConversation:v7];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(CKSceneDelegate *)self scene];
      v11 = [v10 session];
      v12 = [v11 persistentIdentifier];
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Junk conversation deleted, closing scene: %@", &v16, 0xCu);
    }
  }

  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  v14 = [(CKSceneDelegate *)self scene];
  v15 = [v14 session];
  [v13 requestSceneSessionDestruction:v15 options:0 errorHandler:&__block_literal_global_277_0];
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

- (void)chatController:(id)a3 requestRecoverJunkConversation:(id)a4
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = +[CKConversationList sharedConversationList];
  v7[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  [v5 recoverJunkMessagesInConversations:v6];
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3
{
  v3 = [(CKChatSceneDelegate *)self navigationController];
  [v3 systemMinimumLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 view];
  v13 = [v12 effectiveUserInterfaceLayoutDirection];

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (!v13)
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

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3
{
  v3 = [(CKChatSceneDelegate *)self navigationController];
  v4 = [v3 view];
  [v4 safeAreaInsets];
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

- (void)doneButtonPressedForChatController:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CKSceneDelegate *)self scene];
      v7 = [v6 session];
      v8 = [v7 persistentIdentifier];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Closing scene for doneButtonPressedForChatController: %@", &v12, 0xCu);
    }
  }

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [(CKSceneDelegate *)self scene];
  v11 = [v10 session];
  [v9 requestSceneSessionDestruction:v11 options:0 errorHandler:&__block_literal_global_279_0];
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
      v4 = [(CKSceneDelegate *)self scene];
      v5 = [v4 session];
      v6 = [v5 persistentIdentifier];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Closing scene for dismissDetailsViewAndShowConversationList: %@", &v10, 0xCu);
    }
  }

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v8 = [(CKSceneDelegate *)self scene];
  v9 = [v8 session];
  [v7 requestSceneSessionDestruction:v9 options:0 errorHandler:&__block_literal_global_281];
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

- (void)chatController:(id)a3 presentViewControllerInInspector:(id)a4
{
  v7 = a4;
  v5 = [(CKChatSceneDelegate *)self splitViewCoordinator];
  v6 = v5;
  if (v5)
  {
    [v5 presentViewControllerInInspector:v7];
  }
}

- (void)chatController:(id)a3 didStartTextSelectionInView:(id)a4
{
  v8 = a4;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isTextSelectionEnabled];

  if (v6)
  {
    [(CKChatSceneDelegate *)self setupCKDismissOnInteractionView];
    v7 = [(CKChatSceneDelegate *)self dismissOnInteractionView];
    [v7 isolatePassthroughView:v8];
  }
}

- (void)chatController:(id)a3 didDetachDetailsNavigationController:(id)a4
{
  [(CKChatSceneDelegate *)self setDetailsNavigationController:a4];
  v5 = [(CKChatSceneDelegate *)self detailsNavigationController];
  [v5 setIsDetached:1];
}

- (BOOL)hasDetailsNavigationController
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isRedesignedDetailsViewEnabled];

  v5 = [(CKChatSceneDelegate *)self detailsNavigationController];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(CKChatSceneDelegate *)self splitViewCoordinator];
      v7 = [v8 isInspectorVisible];
    }
  }

  else
  {
    v7 = v5 != 0;
  }

  return v7;
}

- (BOOL)isDetailsNavigationControllerDetached
{
  v2 = [(CKChatSceneDelegate *)self detailsNavigationController];
  v3 = [v2 isDetached];

  return v3;
}

- (void)presentDetailsNavigationController:(id)a3
{
  v6 = a3;
  v4 = [(CKChatSceneDelegate *)self detailsNavigationController];

  v5 = v6;
  if (v4 != v6)
  {
    [(CKChatSceneDelegate *)self setDetailsNavigationController:v6];
    v5 = v6;
  }
}

- (void)dismissDetailsNavigationController
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernSplitViewControllerEnabled];

  if (v4)
  {
    v5 = [(CKChatSceneDelegate *)self splitViewCoordinator];
    [v5 presentViewControllerInInspector:0];

    v6 = [(CKSceneDelegate *)self toolbarController];
    [v6 setIsShowingInspector:0];
  }

  else
  {

    [(CKChatSceneDelegate *)self dismissDetailsNavigationControllerWithCompletion:0];
  }
}

- (void)dismissDetailsNavigationControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKChatSceneDelegate *)self detailsNavigationController];
  [v5 dismissViewControllerAnimated:1 completion:v4];

  [(CKChatSceneDelegate *)self setDetailsNavigationController:0];
}

- (void)dismissAndReopenDetailsNavigationController
{
  v3 = [(CKChatSceneDelegate *)self detailsNavigationController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__CKChatSceneDelegate_dismissAndReopenDetailsNavigationController__block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __66__CKChatSceneDelegate_dismissAndReopenDetailsNavigationController__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) chatController];
  [v1 presentDetailsViewController];
}

- (void)setupCKDismissOnInteractionView
{
  v3 = [_TtC7ChatKit29CKInteractionNotificationView alloc];
  v4 = [(CKSceneDelegate *)self window];
  [v4 bounds];
  v5 = [(CKInteractionNotificationView *)v3 initWithFrame:?];
  [(CKChatSceneDelegate *)self setDismissOnInteractionView:v5];

  v6 = [(CKChatSceneDelegate *)self dismissOnInteractionView];
  [v6 setDelegate:self];

  v7 = [(CKChatSceneDelegate *)self dismissOnInteractionView];
  [v7 setAutoresizingMask:18];

  v9 = [(CKSceneDelegate *)self window];
  v8 = [(CKChatSceneDelegate *)self dismissOnInteractionView];
  [v9 addSubview:v8];
}

- (void)cleanUpInteractionViews
{
  v2 = [(CKChatSceneDelegate *)self dismissOnInteractionView];
  [v2 cleanUpTextSelectionInteractionListeners];
}

- (id)prefersToActivatePredicate
{
  v3 = [(CKChatSceneDelegate *)self conversation];
  v4 = [(CKSceneDelegate *)self predicateMatchingConversation:v3];

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
  v3 = [(CKChatSceneDelegate *)self chatController];
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
  v3 = [(CKChatSceneDelegate *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chatController = self->_chatController;

    [(CKCoreChatController *)chatController requestDismissKeyboardSnapshotForSendMenu];
  }
}

- (BOOL)sendMenuPresentationShouldUseKeyboardSnapshot:(id)a3
{
  v4 = [(CKChatSceneDelegate *)self chatController];
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
  v2 = [(CKSceneDelegate *)self window];
  v3 = [v2 rootViewController];
  v4 = [v3 view];

  return v4;
}

- (CKDetailsNavigationController)detailsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsNavigationController);

  return WeakRetained;
}

@end