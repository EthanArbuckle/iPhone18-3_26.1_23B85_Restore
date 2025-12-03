@interface CKMessagesSceneDelegate
- (BOOL)_shouldShowMadridRegistrationView;
- (CKMessagesSceneDelegate)init;
- (NSSet)alertSuppressionContexts;
- (id)_oldInputContextIdentifiers;
- (id)conversation;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)__showMadridRegistrationViewIfNecessary;
- (void)__updateAppSnapshot;
- (void)_chatItemsDidChange:(id)change;
- (void)_clearOldInputContextIdentifiersIfNeeded;
- (void)_conversationFilteringStateChangedNotification:(id)notification;
- (void)_createMadridRegistrationViewIfNecessary;
- (void)_destroyMadridRegistrationView;
- (void)_handleAccountsChanged:(id)changed;
- (void)_handleDaemonConnected:(id)connected;
- (void)_handleDaemonDisconnected:(id)disconnected;
- (void)_madridRegistrationControllerDidComplete;
- (void)_mainThread_updateMadridRegistrationViewAnimated:(BOOL)animated;
- (void)_prepareForResume:(BOOL)resume;
- (void)_prepareForSuspend;
- (void)_scene:(id)_scene openItemProviders:(id)providers;
- (void)_scheduleDeferredSetup;
- (void)_showMadridRegistrationViewIfNecessary;
- (void)_updateAppSnapshot;
- (void)_updateMadridRegistrationViewAnimated:(BOOL)animated;
- (void)_updateStoredState;
- (void)_updateStoredStateSuspendTime:(id)time;
- (void)dealloc;
- (void)messagesController:(id)controller didUpdateCurrentConversation:(id)conversation;
- (void)presentOnboardingViewControllerIfNeeded;
- (void)processAppleEventDictionary:(id)dictionary;
- (void)processLaunchEventContext:(id)context;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setStoredState:(id)state;
- (void)windowScene:(id)scene didUpdateEffectiveGeometry:(id)geometry;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation CKMessagesSceneDelegate

- (CKMessagesSceneDelegate)init
{
  v15.receiver = self;
  v15.super_class = CKMessagesSceneDelegate;
  v2 = [(CKSceneDelegate *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(CKMessagesController);
    messagesController = v2->_messagesController;
    v2->_messagesController = v3;

    messagesController = [(CKMessagesSceneDelegate *)v2 messagesController];
    [messagesController setMessagesControllerDelegate:v2];

    window = [(CKSceneDelegate *)v2 window];
    messagesController2 = [(CKMessagesSceneDelegate *)v2 messagesController];
    [window setRootViewController:messagesController2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleAccountsChanged_ name:*MEMORY[0x1E69A5680] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__handleDaemonConnected_ name:*MEMORY[0x1E69A5958] object:0];
    [defaultCenter2 addObserver:v2 selector:sel__handleDaemonDisconnected_ name:*MEMORY[0x1E69A5960] object:0];
    [defaultCenter2 addObserver:v2 selector:sel__chatItemsDidChange_ name:*MEMORY[0x1E69A5748] object:0];
    [defaultCenter2 addObserver:v2 selector:sel__conversationFilteringStateChangedNotification_ name:CKMessageFilteringChangedNotification[0] object:0];
    [defaultCenter2 addObserver:v2 selector:sel__conversationFilteringStateChangedNotification_ name:CKMessageSpamFilteringChangedNotification object:0];
    [defaultCenter2 addObserver:v2 selector:sel__updateStoredStateSuspendTime_ name:@"CKAudioControllerStoppedPlaybackNotification" object:0];
    v10 = dispatch_get_global_queue(25, 0);
    dispatch_async(v10, &__block_literal_global_285);

    v11 = +[CKLinkIntentsManager sharedManager];
    messagesController3 = [(CKMessagesSceneDelegate *)v2 messagesController];
    [v11 registerMessagesNavigator:messagesController3];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_shouldShowRegistrationOverride = [standardUserDefaults BOOLForKey:@"AlwaysShowMadridRegistration"];
  }

  return v2;
}

void __31__CKMessagesSceneDelegate_init__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = @"YES";
      if (!v0)
      {
        v2 = @"NO";
      }

      v3 = 138412290;
      v4 = v2;
      _os_log_impl(&dword_19020E000, v1, OS_LOG_TYPE_INFO, "Initialized IDSServerBag: %@", &v3, 0xCu);
    }
  }
}

- (void)_scheduleDeferredSetup
{
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  [messagesController performSelector:sel_performResumeDeferredSetup withObject:0 afterDelay:0.0];
}

- (void)_showMadridRegistrationViewIfNecessary
{
  mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
  isConnected = [mEMORY[0x1E69A5B50] isConnected];

  if (isConnected)
  {
    if (CKRegistrationBypassEnabled() || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isRunningInStoreDemoMode], v5, v6))
    {

      [(CKMessagesSceneDelegate *)self presentOnboardingViewControllerIfNeeded];
    }

    else
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel___showMadridRegistrationViewIfNecessary object:0];

      [(CKMessagesSceneDelegate *)self performSelector:sel___showMadridRegistrationViewIfNecessary withObject:0 afterDelay:0.0];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(33);
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Not showing registration view as we aren't connected to the daemon", v8, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    [(CKMessagesSceneDelegate *)self presentOnboardingViewControllerIfNeeded];
  }
}

- (void)__showMadridRegistrationViewIfNecessary
{
  v40 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69A5CA0] smsEnabled])
  {
    mEMORY[0x1E69A7F60] = [MEMORY[0x1E69A7F60] sharedManager];
    isMessagesTheDefaultTextApp = [mEMORY[0x1E69A7F60] isMessagesTheDefaultTextApp];
  }

  else
  {
    isMessagesTheDefaultTextApp = 0;
  }

  if ((CKiMessageSupported() && !isMessagesTheDefaultTextApp || self->_shouldShowRegistrationOverride) && [(CKMessagesSceneDelegate *)self _shouldShowMadridRegistrationView])
  {
    selfCopy = self;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
    iMessageService = [MEMORY[0x1E69A5C90] iMessageService];
    v7 = [mEMORY[0x1E69A5A80] accountsForService:iMessageService];

    v32 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v32)
    {
      v8 = *v36;
      v31 = *MEMORY[0x1E69A63A8];
      v30 = *MEMORY[0x1E69A6398];
      v29 = *MEMORY[0x1E69A63A0];
      v28 = *MEMORY[0x1E69A5698];
      v27 = *MEMORY[0x1E69A56A0];
      v25 = *v36;
      v26 = *MEMORY[0x1E69A5690];
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          if ([v10 registrationFailureReason] == 20 || objc_msgSend(v10, "registrationFailureReason") == 26)
          {
            registrationFailureAlertInfo = [v10 registrationFailureAlertInfo];
            v12 = [registrationFailureAlertInfo objectForKey:v31];
            v13 = [registrationFailureAlertInfo objectForKey:v30];
            v14 = [registrationFailureAlertInfo objectForKey:v29];
            v15 = [registrationFailureAlertInfo objectForKey:v28];
            v16 = [v15 valueForKey:v27];
            integerValue = [v16 integerValue];

            if (integerValue == 1)
            {
              v18 = [v15 valueForKey:v26];
            }

            else
            {
              v18 = 0;
            }

            if (v12)
            {
              v19 = 0;
            }

            else
            {
              v19 = v14 == 0;
            }

            v20 = v19 && v13 == 0;
            if (!v20 && (sAlreadyShowUserNotificationDialogForCurrentLoginCycle & 1) == 0)
            {
              sAlreadyShowUserNotificationDialogForCurrentLoginCycle = 1;
              v21 = [MEMORY[0x1E69A6188] userNotificationWithIdentifier:@"ServerAlerts" title:v12 message:v14 defaultButton:v13 alternateButton:v18 otherButton:0];
              [MEMORY[0x1E69A6190] sharedInstance];
              v23 = v22 = v7;
              v33[0] = MEMORY[0x1E69E9820];
              v33[1] = 3221225472;
              v33[2] = __66__CKMessagesSceneDelegate___showMadridRegistrationViewIfNecessary__block_invoke;
              v33[3] = &unk_1E72F82A8;
              v34 = v15;
              [v23 addUserNotification:v21 listener:0 completionHandler:v33];

              v7 = v22;
              v8 = v25;
            }
          }
        }

        v32 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v32);
    }

    [(CKMessagesSceneDelegate *)selfCopy _updateMadridRegistrationViewAnimated:1];
  }

  else
  {

    [(CKMessagesSceneDelegate *)self presentOnboardingViewControllerIfNeeded];
  }
}

- (void)presentOnboardingViewControllerIfNeeded
{
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  shouldPresentOnboarding = [messagesController shouldPresentOnboarding];

  if (shouldPresentOnboarding)
  {
    messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
    [messagesController2 presentOnboardingViewControllerIfNeeded];
  }
}

- (void)dealloc
{
  [(CKMessagesSceneDelegate *)self _destroyMadridRegistrationView];
  v3.receiver = self;
  v3.super_class = CKMessagesSceneDelegate;
  [(CKMessagesSceneDelegate *)&v3 dealloc];
}

- (void)processAppleEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
  chatController = [messagesController2 chatController];
  [CKUserActivityHandler processAppleEventDictionary:dictionaryCopy animate:1 navigationProvider:messagesController chatController:chatController];
}

- (void)processLaunchEventContext:(id)context
{
  contextCopy = context;
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
  chatController = [messagesController2 chatController];
  [CKUserActivityHandler processLaunchEventContext:contextCopy animate:1 navigationProvider:messagesController chatController:chatController];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  v31 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = sceneCopy;
      v29 = 2112;
      v30 = sessionCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "scene %@ will connect to session: %@", buf, 0x16u);
    }
  }

  uRLContexts = [optionsCopy URLContexts];
  _itemProviderCollections = [optionsCopy _itemProviderCollections];
  if ([uRLContexts count] || objc_msgSend(_itemProviderCollections, "count"))
  {
    if ([uRLContexts count])
    {
      [(CKMessagesSceneDelegate *)self scene:sceneCopy openURLContexts:uRLContexts];
    }

    if ([_itemProviderCollections count])
    {
      [(CKMessagesSceneDelegate *)self _scene:sceneCopy openItemProviders:_itemProviderCollections];
    }
  }

  else if (![(CKMessagesSceneDelegate *)self handlingLaunchTask])
  {
    shortcutItem = [optionsCopy shortcutItem];

    if (shortcutItem)
    {
      shortcutItem2 = [optionsCopy shortcutItem];
      messagesController = [(CKMessagesSceneDelegate *)self messagesController];
      messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
      chatController = [messagesController2 chatController];
      [CKShortcutHandler performActionForShortcutItem:shortcutItem2 navigationProvider:messagesController chatController:chatController completion:&__block_literal_global_239_2];
    }

    else
    {
      shortcutItem2 = [optionsCopy userActivities];
      stateRestorationActivity = [sessionCopy stateRestorationActivity];
      [CKUserActivityHandler messagesScene:sceneCopy willConnectToSession:sessionCopy userActivities:shortcutItem2 stateRestorationActivity:stateRestorationActivity windowSceneDelegate:self];
    }
  }

  [(CKMessagesSceneDelegate *)self _scheduleDeferredSetup];
  v26.receiver = self;
  v26.super_class = CKMessagesSceneDelegate;
  [(CKSceneDelegate *)&v26 scene:sceneCopy willConnectToSession:sessionCopy options:optionsCopy];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  pendingAppleEventInfoDictionary = [mEMORY[0x1E69DC668] pendingAppleEventInfoDictionary];

  if (pendingAppleEventInfoDictionary)
  {
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668]2 setPendingAppleEventInfoDictionary:0];

    [(CKMessagesSceneDelegate *)self processAppleEventDictionary:pendingAppleEventInfoDictionary];
  }

  mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
  pendingLaunchEventContext = [mEMORY[0x1E69DC668]3 pendingLaunchEventContext];

  if (pendingLaunchEventContext)
  {
    mEMORY[0x1E69DC668]4 = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668]4 setPendingLaunchEventContext:0];

    [(CKMessagesSceneDelegate *)self processLaunchEventContext:pendingLaunchEventContext];
  }
}

void __62__CKMessagesSceneDelegate_scene_willConnectToSession_options___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (a2)
      {
        v4 = @"YES";
      }

      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "performActionForShortcutItem in willConnectToSession completed: %@", &v5, 0xCu);
    }
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v5.receiver = self;
  v5.super_class = CKMessagesSceneDelegate;
  [(CKSceneDelegate *)&v5 sceneWillEnterForeground:foreground];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  -[CKMessagesSceneDelegate _prepareForResume:](self, "_prepareForResume:", [mEMORY[0x1E69DC668] systemIsAnimatingApplicationLifecycleEvent]);
}

- (void)sceneDidBecomeActive:(id)active
{
  v10 = *MEMORY[0x1E69E9840];
  activeCopy = active;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[CKMessagesSceneDelegate sceneDidBecomeActive:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = CKMessagesSceneDelegate;
  [(CKSceneDelegate *)&v7 sceneDidBecomeActive:activeCopy];
  if (![(CKMessagesSceneDelegate *)self isSuspended])
  {
    messagesController = [(CKMessagesSceneDelegate *)self messagesController];
    [messagesController parentControllerDidBecomeActive];
  }

  [(CKMessagesSceneDelegate *)self _showMadridRegistrationViewIfNecessary];
}

- (void)sceneWillResignActive:(id)active
{
  v9 = *MEMORY[0x1E69E9840];
  activeCopy = active;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "[CKMessagesSceneDelegate sceneWillResignActive:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v6.receiver = self;
  v6.super_class = CKMessagesSceneDelegate;
  [(CKSceneDelegate *)&v6 sceneWillResignActive:activeCopy];
  [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:0];
}

- (void)sceneDidEnterBackground:(id)background
{
  v9 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "[CKMessagesSceneDelegate sceneDidEnterBackground:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v6.receiver = self;
  v6.super_class = CKMessagesSceneDelegate;
  [(CKSceneDelegate *)&v6 sceneDidEnterBackground:backgroundCopy];
  [(CKMessagesSceneDelegate *)self _prepareForSuspend];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v12 = *MEMORY[0x1E69E9840];
  disconnectCopy = disconnect;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[CKMessagesSceneDelegate sceneDidDisconnect:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v9.receiver = self;
  v9.super_class = CKMessagesSceneDelegate;
  [(CKSceneDelegate *)&v9 sceneDidDisconnect:disconnectCopy];
  if (CKIsRunningInMacCatalyst())
  {
    messagesController = [(CKMessagesSceneDelegate *)self messagesController];
    v7 = messagesController == 0;

    if (!v7)
    {
      messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
      [messagesController2 persistColumnWidths:self];
    }
  }

  [(CKMessagesSceneDelegate *)self _cancelPendingAppSnapshotUpdate];
  [(CKMessagesSceneDelegate *)self _prepareForSuspend];
}

- (id)stateRestorationActivityForScene:(id)scene
{
  v15 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v12.receiver = self;
  v12.super_class = CKMessagesSceneDelegate;
  v5 = [(CKSceneDelegate *)&v12 stateRestorationActivityForScene:sceneCopy];
  [(CKMessagesSceneDelegate *)self _updateStoredState];
  storedState = [(CKMessagesSceneDelegate *)self storedState];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = storedState;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Archiving messages scene state object: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = IMConversationListFilterModeStringValue([storedState filterMode]);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "[Filter Mode] Archived filter mode: %@", buf, 0xCu);
    }
  }

  v10 = [CKSceneDelegate userInfoDictionaryForState:storedState];
  if (v10)
  {
    [v5 addUserInfoEntriesFromDictionary:v10];
  }

  return v5;
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  sceneCopy = scene;
  [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:1];
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
  chatController = [messagesController2 chatController];
  [CKUserActivityHandler messagesScene:sceneCopy continueUserActivity:activityCopy withNavigationProvider:messagesController chatController:chatController completion:&__block_literal_global_257_1];
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:1];
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
  chatController = [messagesController2 chatController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__CKMessagesSceneDelegate_windowScene_performActionForShortcutItem_completionHandler___block_invoke;
  v13[3] = &unk_1E72ED1F0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [CKShortcutHandler performActionForShortcutItem:itemCopy navigationProvider:messagesController chatController:chatController completion:v13];
}

- (void)_prepareForResume:(BOOL)resume
{
  resumeCopy = resume;
  v22 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (resumeCopy)
      {
        v6 = @"YES";
      }

      v20 = 138412290;
      v21 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "prepareForResume, animating %@", &v20, 0xCu);
    }
  }

  v7 = +[CKPluginExtensionStateObserver _sharedInstanceIfInitialized];
  [v7 prepareForResume];

  if ([(CKMessagesSceneDelegate *)self isSuspended])
  {
    CKResetCachedUserSettings();
    IMResetCachedUserSettings();
    IMResetCachedCarrierSettings();
    mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
    [mEMORY[0x1E69A7F68] resetCacheSubscriptionInfo];

    if (CKiMessageSupported())
    {
      mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
      [mEMORY[0x1E69A5B50] blockUntilConnected];
    }

    messagesController = [(CKMessagesSceneDelegate *)self messagesController];
    [messagesController prepareForResume];

    [(CKMessagesSceneDelegate *)self _scheduleDeferredSetup];
    if ([(CKMessagesSceneDelegate *)self _shouldShowMadridRegistrationView])
    {
      goto LABEL_15;
    }

    if (![(CKMessagesSceneDelegate *)self handlingLaunchTask])
    {
      storedState = [(CKMessagesSceneDelegate *)self storedState];
      messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
      [CKUserActivityHandler restoreState:storedState navigationProvider:messagesController2];
    }

    if (self->_madridRegistrationController)
    {
      mEMORY[0x1E69A7F60] = [MEMORY[0x1E69A7F60] sharedManager];
      isMessagesTheDefaultTextApp = [mEMORY[0x1E69A7F60] isMessagesTheDefaultTextApp];

      if (isMessagesTheDefaultTextApp)
      {
LABEL_15:
        [(CKMessagesSceneDelegate *)self _updateMadridRegistrationViewAnimated:1];
      }
    }

    [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:0];
    messagesController3 = [(CKMessagesSceneDelegate *)self messagesController];
    [messagesController3 parentControllerDidResume:-[CKMessagesSceneDelegate isLocked](self animating:{"isLocked"), resumeCopy}];

    [(CKMessagesSceneDelegate *)self setLocked:0];
    [(CKMessagesSceneDelegate *)self setSuspended:0];
    messagesController4 = [(CKMessagesSceneDelegate *)self messagesController];
    currentConversation = [messagesController4 currentConversation];
    [currentConversation updateUserActivity];

    [(CKSceneDelegate *)self updateSceneActivationConditions];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] _clearFailureBadge];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CKClientDidResumeNotification", 0, 0, 1u);
  }
}

- (void)_prepareForSuspend
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "prepareForSuspend", buf, 2u);
    }
  }

  v4 = +[CKSpringBoardActionManager sharedInstance];
  [v4 updateShortcutItems];

  if (![(CKMessagesSceneDelegate *)self isSuspended])
  {
    messagesController = [(CKMessagesSceneDelegate *)self messagesController];
    [messagesController prepareForSuspend];

    -[CKMessagesSceneDelegate setLocked:](self, "setLocked:", [*MEMORY[0x1E69DDA98] isSuspendedUnderLock]);
    if ([(CKMessagesSceneDelegate *)self isLocked])
    {
      goto LABEL_13;
    }

    messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
    if ([messagesController2 isComposingMessage])
    {
      messagesController3 = [(CKMessagesSceneDelegate *)self messagesController];
      if ([messagesController3 currentCompositionHasContent])
      {
      }

      else
      {
        v8 = +[CKConversationList sharedConversationList];
        hasActiveConversations = [v8 hasActiveConversations];

        if (!hasActiveConversations)
        {
          goto LABEL_13;
        }

        messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
        [messagesController2 cancelNewMessageCompositionAnimated:0];
      }
    }

LABEL_13:
    [(CKMessagesSceneDelegate *)self _updateStoredState];
    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 0;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__CKMessagesSceneDelegate__prepareForSuspend__block_invoke;
    v17[3] = &unk_1E72EB968;
    v17[4] = buf;
    v11 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithExpirationHandler:v17];

    *(v19 + 3) = v11;
    [(CKMessagesSceneDelegate *)self _clearOldInputContextIdentifiersIfNeeded];
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([mEMORY[0x1E69DC668]2 isProtectedDataAvailable])
    {
      if (CKHasAnyWatchPaired())
      {
        v13 = CKActivePairedWatchSupportsEncryptedKeys();

        if ((v13 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      CKMigrateTextInputIdentifiersIfNeeded();
    }

    else
    {
    }

LABEL_20:
    v14 = *MEMORY[0x1E69DDBE8];
    if (*(v19 + 3) != *MEMORY[0x1E69DDBE8])
    {
      mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668]3 endBackgroundTask:*(v19 + 3)];

      *(v19 + 3) = v14;
    }

    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    [mEMORY[0x1E69A5B00] reset];

    [(CKMessagesSceneDelegate *)self setSuspended:1];
    _Block_object_dispose(buf, 8);
  }
}

void __45__CKMessagesSceneDelegate__prepareForSuspend__block_invoke(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __45__CKMessagesSceneDelegate__prepareForSuspend__block_invoke_cold_1(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69DDBE8];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  v18.receiver = self;
  v18.super_class = CKMessagesSceneDelegate;
  contextsCopy = contexts;
  sceneCopy = scene;
  [(CKSceneDelegate *)&v18 scene:sceneCopy openURLContexts:contextsCopy];
  anyObject = [contextsCopy anyObject];

  v9 = [anyObject URL];
  options = [anyObject options];
  sourceApplication = [options sourceApplication];

  options2 = [anyObject options];
  _sourceProcessHandle = [options2 _sourceProcessHandle];

  [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:1];
  activationState = [sceneCopy activationState];

  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
  chatController = [messagesController2 chatController];
  [CKUserActivityHandler openURL:v9 animate:activationState == 0 sourceApplication:sourceApplication originatingProcess:_sourceProcessHandle navigationProvider:messagesController chatController:chatController completion:&__block_literal_global_270_0];
}

- (void)_scene:(id)_scene openItemProviders:(id)providers
{
  v10.receiver = self;
  v10.super_class = CKMessagesSceneDelegate;
  providersCopy = providers;
  [(CKSceneDelegate *)&v10 _scene:_scene openItemProviders:providersCopy];
  v7 = [(CKMessagesSceneDelegate *)self messagesController:v10.receiver];
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  chatController = [messagesController chatController];
  [CKUserActivityHandler openItemProviders:providersCopy navigationProvider:v7 chatController:chatController];
}

- (void)_updateStoredState
{
  v66 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Updating stored CKSceneDelegateState", buf, 2u);
    }
  }

  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  isComposingMessage = [messagesController isComposingMessage];

  if (isComposingMessage)
  {
    messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
    currentCompositionHasContent = [messagesController2 currentCompositionHasContent];
  }

  else
  {
    currentCompositionHasContent = 0;
  }

  messagesController3 = [(CKMessagesSceneDelegate *)self messagesController];
  isShowingSelectionView = [messagesController3 isShowingSelectionView];

  messagesController4 = [(CKMessagesSceneDelegate *)self messagesController];
  isCollapsed = [messagesController4 isCollapsed];

  messagesController5 = [(CKMessagesSceneDelegate *)self messagesController];
  isTopVCChatNavigationController = [messagesController5 isTopVCChatNavigationController];

  if (isComposingMessage && (-[CKMessagesSceneDelegate messagesController](self, "messagesController"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isCollapsed], v10, v11))
  {
    messagesController6 = [(CKMessagesSceneDelegate *)self messagesController];
    composeChatController = [messagesController6 composeChatController];
  }

  else
  {
    messagesController6 = [(CKMessagesSceneDelegate *)self messagesController];
    composeChatController = [messagesController6 chatController];
  }

  v14 = composeChatController;

  conversation = [v14 conversation];
  messagesController7 = [(CKMessagesSceneDelegate *)self messagesController];
  conversationListController = [messagesController7 conversationListController];
  filterMode = [conversationListController filterMode];

  messagesController8 = [(CKMessagesSceneDelegate *)self messagesController];
  isShowingInboxViewController = [messagesController8 isShowingInboxViewController];

  v21 = +[CKConversationList sharedConversationList];
  relevantUnreadLastMessages = [v21 relevantUnreadLastMessages];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {
    messagesController9 = [(CKMessagesSceneDelegate *)self messagesController];
    conversationListController2 = [messagesController9 conversationListController];
    activeFilterModes = [conversationListController2 activeFilterModes];

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = activeFilterModes;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "storing filterModes: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    activeFilterModes = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = IMConversationListFilterModeStringValue(filterMode);
      *buf = 138412290;
      v47 = v30;
      _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "[Filter Mode] determined current filterMode: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = IMConversationListFilterModeStringValue(filterMode);
      v33 = v32;
      v34 = @"NO";
      *buf = 138414594;
      if (isTopVCChatNavigationController)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      if (isCollapsed)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      if (isShowingSelectionView)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      if (currentCompositionHasContent)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      if (isComposingMessage)
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v47 = v39;
      v48 = 2112;
      v49 = v38;
      v50 = 2112;
      v51 = v37;
      v52 = 2112;
      v53 = v36;
      if (isShowingInboxViewController)
      {
        v34 = @"YES";
      }

      v54 = 2112;
      v55 = v35;
      v56 = 2112;
      v57 = conversation;
      v58 = 2112;
      v59 = v32;
      v60 = 2112;
      v61 = v34;
      v62 = 2112;
      v63 = relevantUnreadLastMessages;
      v64 = 2112;
      v65 = activeFilterModes;
      _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "upating stored state. isComposingNewMessage: %@ messageHasContent: %@ isShowingSelectionView: %@ isControllerCollapsed: %@ isTopVCChatNavigationController: %@ conversation: %@ filterMode: %@ isShowingInbox: %@ unreadLastMessages: %@, storedFilterModes: %@", buf, 0x66u);
    }
  }

  LOBYTE(v41) = isShowingInboxViewController;
  v40 = [CKSceneDelegateState stateFromIsComposingNewMessage:isComposingMessage messageHasContent:currentCompositionHasContent isShowingBlankTranscript:isShowingSelectionView isControllerCollapsed:isCollapsed isTopVCChatNavigationController:isTopVCChatNavigationController conversation:conversation filterMode:filterMode isShowingInbox:v41 unreadMessages:relevantUnreadLastMessages storedFilterModes:activeFilterModes];
  [(CKMessagesSceneDelegate *)self setStoredState:v40];
}

- (void)setStoredState:(id)state
{
  v11 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = IMConversationListFilterModeStringValue([(CKSceneDelegateState *)stateCopy filterMode]);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Filter Mode] Updating stored filter mode to: %@", &v9, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = stateCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Updating stored state to: %@", &v9, 0xCu);
    }
  }

  storedState = self->_storedState;
  self->_storedState = stateCopy;
}

- (void)_handleAccountsChanged:(id)changed
{
  _shouldShowMadridRegistrationView = [(CKMessagesSceneDelegate *)self _shouldShowMadridRegistrationView];
  madridRegistrationController = self->_madridRegistrationController;
  if (_shouldShowMadridRegistrationView)
  {
    if (!madridRegistrationController)
    {
      [(CKMessagesSceneDelegate *)self _updateStoredState];

      [(CKMessagesSceneDelegate *)self _showMadridRegistrationViewIfNecessary];
    }
  }

  else if (madridRegistrationController)
  {

    [(CKMessagesSceneDelegate *)self _updateMadridRegistrationViewAnimated:1];
  }
}

- (void)_handleDaemonConnected:(id)connected
{
  v8 = *MEMORY[0x1E69E9840];
  connectedCopy = connected;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = connectedCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_handleDaemonConnected: [%@]", &v6, 0xCu);
    }
  }

  if ([(CKMessagesSceneDelegate *)self _shouldShowMadridRegistrationView])
  {
    [(CKMessagesSceneDelegate *)self _updateMadridRegistrationViewAnimated:1];
  }
}

- (void)_handleDaemonDisconnected:(id)disconnected
{
  mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
  [mEMORY[0x1E69A5B50] connectToDaemon];

  if (!self->_madridRegistrationController)
  {
    [(CKMessagesSceneDelegate *)self _updateStoredState];

    [(CKMessagesSceneDelegate *)self _showMadridRegistrationViewIfNecessary];
  }
}

void __66__CKMessagesSceneDelegate___showMadridRegistrationViewIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) valueForKey:*MEMORY[0x1E69A56A0]];
  if ([v3 integerValue] == 1)
  {
    v4 = [v7 response];

    if (v4 != 1)
    {
      goto LABEL_5;
    }

    v3 = [*(a1 + 32) valueForKey:*MEMORY[0x1E69A56A8]];
    v5 = [MEMORY[0x1E6963608] defaultWorkspace];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    [v5 openSensitiveURL:v6 withOptions:0];
  }

LABEL_5:
}

- (void)_madridRegistrationControllerDidComplete
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "First run controller finished. Dismissing and restoring state", buf, 2u);
    }
  }

  if (([(CKRegistrationViewController *)self->_madridRegistrationController isViewLoaded]& 1) != 0)
  {
    messagesController = [(CKMessagesSceneDelegate *)self messagesController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__CKMessagesSceneDelegate__madridRegistrationControllerDidComplete__block_invoke;
    v7[3] = &unk_1E72EBA18;
    v7[4] = self;
    [messagesController dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    [(CKMessagesSceneDelegate *)self _destroyMadridRegistrationView];
    storedState = [(CKMessagesSceneDelegate *)self storedState];
    messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
    [CKUserActivityHandler restoreState:storedState navigationProvider:messagesController2];

    [(CKMessagesSceneDelegate *)self presentOnboardingViewControllerIfNeeded];
  }
}

uint64_t __67__CKMessagesSceneDelegate__madridRegistrationControllerDidComplete__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _destroyMadridRegistrationView];
  v2 = [*(a1 + 32) storedState];
  v3 = [*(a1 + 32) messagesController];
  [CKUserActivityHandler restoreState:v2 navigationProvider:v3];

  v4 = *(a1 + 32);

  return [v4 presentOnboardingViewControllerIfNeeded];
}

- (void)_createMadridRegistrationViewIfNecessary
{
  if (CKiMessageSupported())
  {
    if (!self->_madridRegistrationController)
    {
      v3 = objc_alloc_init(CKRegistrationViewController);
      madridRegistrationController = self->_madridRegistrationController;
      self->_madridRegistrationController = v3;

      [(CKRegistrationViewController *)self->_madridRegistrationController setModalPresentationStyle:2];
      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __67__CKMessagesSceneDelegate__createMadridRegistrationViewIfNecessary__block_invoke;
      v9 = &unk_1E72EE728;
      objc_copyWeak(&v10, &location);
      v5 = _Block_copy(&v6);
      [(CKRegistrationViewController *)self->_madridRegistrationController setCompletionBlock:v5, v6, v7, v8, v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __67__CKMessagesSceneDelegate__createMadridRegistrationViewIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _madridRegistrationControllerDidComplete];
}

- (void)_destroyMadridRegistrationView
{
  madridRegistrationController = self->_madridRegistrationController;
  if (madridRegistrationController)
  {
    if ([(CKRegistrationViewController *)madridRegistrationController isViewLoaded])
    {
      v4 = self->_madridRegistrationController;
      messagesController = [(CKMessagesSceneDelegate *)self messagesController];
      [(CKRegistrationViewController *)v4 setErrorPresentationViewController:messagesController];

      view = [(CKRegistrationViewController *)self->_madridRegistrationController view];
      [view removeFromSuperview];
    }

    v7 = self->_madridRegistrationController;
    self->_madridRegistrationController = 0;

    sAlreadyShowUserNotificationDialogForCurrentLoginCycle = 0;
  }
}

- (void)_mainThread_updateMadridRegistrationViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CKMessagesSceneDelegate *)self _createMadridRegistrationViewIfNecessary];
  madridRegistrationController = self->_madridRegistrationController;
  if (madridRegistrationController)
  {
    v6 = madridRegistrationController;
    if ([(CKMessagesSceneDelegate *)self _shouldShowMadridRegistrationView])
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(33);
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Showing registration view", buf, 2u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        _CKLogExternal();
      }

      messagesController = [(CKMessagesSceneDelegate *)self messagesController];
      presentedViewController = [messagesController presentedViewController];

      if (presentedViewController != v6)
      {
        messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
        presentedViewController2 = [messagesController2 presentedViewController];

        if (presentedViewController2)
        {
          if (![(CKMessagesSceneDelegate *)self willPresentRegistrationViewController])
          {
            [(CKMessagesSceneDelegate *)self setWillPresentRegistrationViewController:1];
            messagesController3 = [(CKMessagesSceneDelegate *)self messagesController];
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __76__CKMessagesSceneDelegate__mainThread_updateMadridRegistrationViewAnimated___block_invoke;
            v23[3] = &unk_1E72EBBC0;
            v23[4] = self;
            v24 = v6;
            v25 = animatedCopy;
            [messagesController3 dismissViewControllerAnimated:animatedCopy completion:v23];
          }
        }

        else
        {
          messagesController4 = [(CKMessagesSceneDelegate *)self messagesController];
          [messagesController4 presentViewController:v6 animated:animatedCopy completion:0];
        }
      }

      goto LABEL_20;
    }

    messagesController5 = [(CKMessagesSceneDelegate *)self messagesController];
    presentedViewController3 = [messagesController5 presentedViewController];
    v15 = presentedViewController3;
    if (presentedViewController3 == v6)
    {
      view = [(CKRegistrationViewController *)v6 view];
      window = [view window];

      if (window)
      {
        messagesController6 = [(CKMessagesSceneDelegate *)self messagesController];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __76__CKMessagesSceneDelegate__mainThread_updateMadridRegistrationViewAnimated___block_invoke_3;
        v22[3] = &unk_1E72EBA18;
        v22[4] = self;
        [messagesController6 dismissViewControllerAnimated:animatedCopy completion:v22];

        goto LABEL_20;
      }
    }

    else
    {
    }

    [(CKMessagesSceneDelegate *)self _destroyMadridRegistrationView];
    storedState = [(CKMessagesSceneDelegate *)self storedState];
    messagesController7 = [(CKMessagesSceneDelegate *)self messagesController];
    [CKUserActivityHandler restoreState:storedState navigationProvider:messagesController7];

    [(CKMessagesSceneDelegate *)self presentOnboardingViewControllerIfNeeded];
LABEL_20:
  }
}

void __76__CKMessagesSceneDelegate__mainThread_updateMadridRegistrationViewAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__CKMessagesSceneDelegate__mainThread_updateMadridRegistrationViewAnimated___block_invoke_2;
  v5[3] = &unk_1E72EBA18;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [v2 presentViewController:v4 animated:v3 completion:v5];
}

uint64_t __76__CKMessagesSceneDelegate__mainThread_updateMadridRegistrationViewAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _destroyMadridRegistrationView];
  v2 = [*(a1 + 32) storedState];
  v3 = [*(a1 + 32) messagesController];
  [CKUserActivityHandler restoreState:v2 navigationProvider:v3];

  v4 = *(a1 + 32);

  return [v4 presentOnboardingViewControllerIfNeeded];
}

- (void)_updateMadridRegistrationViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(CKMessagesSceneDelegate *)self _mainThread_updateMadridRegistrationViewAnimated:animatedCopy];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__CKMessagesSceneDelegate__updateMadridRegistrationViewAnimated___block_invoke;
    v5[3] = &unk_1E72ED8D8;
    v5[4] = self;
    v6 = animatedCopy;
    dispatch_sync(MEMORY[0x1E69E96A0], v5);
  }
}

- (BOOL)_shouldShowMadridRegistrationView
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = CKiMessageSupported();
  if ([MEMORY[0x1E69A5CA0] smsEnabled])
  {
    mEMORY[0x1E69A7F60] = [MEMORY[0x1E69A7F60] sharedManager];
    isMessagesTheDefaultTextApp = [mEMORY[0x1E69A7F60] isMessagesTheDefaultTextApp];
  }

  else
  {
    isMessagesTheDefaultTextApp = 0;
  }

  v6 = v3 == 0;
  v7 = +[CKUIBehavior sharedBehaviors];
  isRunningInStoreDemoMode = [v7 isRunningInStoreDemoMode];

  v9 = CKRegistrationBypassEnabled();
  if (((v6 | isMessagesTheDefaultTextApp) & 1) != 0 || v9 || (isRunningInStoreDemoMode & 1) != 0 || !+[CKRegistrationViewController shouldShowRegistration])
  {
    return self->_shouldShowRegistrationOverride;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(33);
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v14 = @"YES";
        v15 = 2112;
        v16 = @"NO";
        v17 = 2112;
        v18 = @"NO";
        v19 = 2112;
        v20 = @"NO";
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "_shouldShowMadridRegistrationView: %@, smsEnabled: %@, registrationBypassEnabled: %@, isDemoMode: %@", buf, 0x2Au);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    return 1;
  }
}

- (void)__updateAppSnapshot
{
  v7 = *MEMORY[0x1E69E9840];
  scene = [(CKSceneDelegate *)self scene];
  activationState = [scene activationState];

  if (activationState == 2)
  {
    if (CKIsScreenLocked())
    {
      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v5) = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Not snapshotting, iOS device is locked", &v5, 2u);
      }

      goto LABEL_6;
    }

    im_main_thread();
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = activationState;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Not snapshotting, scene state is %ld", &v5, 0xCu);
    }

LABEL_6:
  }
}

void __46__CKMessagesSceneDelegate___updateAppSnapshot__block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Telling UIKit to update scene snapshot", v6, 2u);
    }
  }

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [*(a1 + 32) scene];
  v5 = [v4 session];
  [v3 requestSceneSessionRefresh:v5];
}

- (void)_updateAppSnapshot
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Scheduling snapshot generation", v4, 2u);
    }
  }

  [(CKMessagesSceneDelegate *)self _cancelPendingAppSnapshotUpdate];
  [(CKMessagesSceneDelegate *)self performSelector:sel___updateAppSnapshot withObject:0 afterDelay:10.0];
}

- (void)_updateStoredStateSuspendTime:(id)time
{
  v12 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  storedState = [(CKMessagesSceneDelegate *)self storedState];
  date = [MEMORY[0x1E695DF00] date];
  [storedState updateStoredDate:date];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      storedState2 = [(CKMessagesSceneDelegate *)self storedState];
      date2 = [storedState2 date];
      v10 = 138412290;
      v11 = date2;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Audio playback has stopped. Updated stored state suspendTime to %@", &v10, 0xCu);
    }
  }
}

- (void)_chatItemsDidChange:(id)change
{
  v52 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([(CKMessagesSceneDelegate *)self isSuspended])
  {
    v5 = +[CKPluginExtensionStateObserver sharedInstance];
    passKitUIPresented = [v5 passKitUIPresented];

    if ((passKitUIPresented & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          scene = [(CKSceneDelegate *)self scene];
          session = [scene session];
          persistentIdentifier = [session persistentIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = persistentIdentifier;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Chat items did change while suspended %@", &buf, 0xCu);
        }
      }

      userInfo = [changeCopy userInfo];
      object = [changeCopy object];
      v13 = [userInfo objectForKey:*MEMORY[0x1E69A5750]];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v50 = 0x2020000000;
      v51 = 0;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __47__CKMessagesSceneDelegate__chatItemsDidChange___block_invoke;
      v44[3] = &unk_1E72EC290;
      v14 = object;
      v45 = v14;
      p_buf = &buf;
      [v13 enumerateIndexesWithOptions:2 usingBlock:v44];
      if ((*(*(&buf + 1) + 24) & 1) == 0)
      {
        messagesController = [(CKMessagesSceneDelegate *)self messagesController];
        isShowingChatController = [messagesController isShowingChatController];

        if (isShowingChatController)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              messagesController2 = [(CKMessagesSceneDelegate *)self messagesController];
              chatController = [messagesController2 chatController];
              conversation = [chatController conversation];
              *v47 = 138412290;
              v48 = conversation;
              _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Messages controller showing chat controller with conversation: %@", v47, 0xCu);
            }
          }

          messagesController3 = [(CKMessagesSceneDelegate *)self messagesController];
          chatController2 = [messagesController3 chatController];
          conversation2 = [chatController2 conversation];
          chat = [conversation2 chat];

          if (chat == v14)
          {
            if (IMOSLoggingEnabled())
            {
              v27 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *v47 = 0;
                _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Updated chat is visible chat, not popping back to conversation list before snapshotting", v47, 2u);
              }
            }

            v26 = 1;
          }

          else
          {
            storedState = [(CKMessagesSceneDelegate *)self storedState];
            groupID = [storedState groupID];

            if ([groupID isEqualToString:@"-1"])
            {
              v25 = 0;
            }

            else
            {
              sharedConversationList = [(CKMessagesSceneDelegate *)self sharedConversationList];
              v29 = [sharedConversationList conversationForExistingChatWithChatIdentifier:groupID];
              v30 = v29;
              if (v29)
              {
                v25 = v29;
              }

              else
              {
                sharedConversationList2 = [(CKMessagesSceneDelegate *)self sharedConversationList];
                v25 = [sharedConversationList2 conversationForExistingChatWithGroupID:groupID];
              }
            }

            if ([v25 isCurrentlyPlayingAudio])
            {
              if (IMOSLoggingEnabled())
              {
                v32 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  *v47 = 0;
                  _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Last active conversation is currently playing audio. Not restoring to conversation list.", v47, 2u);
                }
              }

              v26 = 0;
            }

            else
            {
              messagesController4 = [(CKMessagesSceneDelegate *)self messagesController];
              storedState2 = [(CKMessagesSceneDelegate *)self storedState];
              v26 = [messagesController4 shouldRestoreToConversationListForState:storedState2];

              if (v26)
              {
                if (IMOSLoggingEnabled())
                {
                  v35 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                  {
                    *v47 = 0;
                    _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, " => Showing unread conversations for snapshot", v47, 2u);
                  }
                }

                messagesController5 = [(CKMessagesSceneDelegate *)self messagesController];
                storedState3 = [(CKMessagesSceneDelegate *)self storedState];
                unreadLastMessages = [storedState3 unreadLastMessages];
                v26 = [messagesController5 showUnreadConversationsWithLastConversation:v25 ignoringMessages:unreadLastMessages];
              }
            }
          }
        }

        else
        {
          v26 = 0;
        }

        messagesController6 = [(CKMessagesSceneDelegate *)self messagesController];
        isShowingConversationListController = [messagesController6 isShowingConversationListController];

        if ((isShowingConversationListController | v26))
        {
          [(CKMessagesSceneDelegate *)self _updateAppSnapshot];
        }
      }

      _Block_object_dispose(&buf, 8);
    }
  }
}

void __47__CKMessagesSceneDelegate__chatItemsDidChange___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
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

- (void)_conversationFilteringStateChangedNotification:(id)notification
{
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  isShowingConversationListController = [messagesController isShowingConversationListController];

  if (isShowingConversationListController)
  {

    [(CKMessagesSceneDelegate *)self _updateAppSnapshot];
  }
}

- (NSSet)alertSuppressionContexts
{
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  alertSuppressionContexts = [messagesController alertSuppressionContexts];

  return alertSuppressionContexts;
}

- (void)messagesController:(id)controller didUpdateCurrentConversation:(id)conversation
{
  v11 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = conversationCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Messages controller updated current conversation to: %@, updating scene activation conditions", &v9, 0xCu);
    }
  }

  [(CKSceneDelegate *)self updateSceneActivationConditions];
  [(CKSceneDelegate *)self updateSceneTitleForConversation:conversationCopy];
}

- (void)_clearOldInputContextIdentifiersIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[CKConversationList sharedConversationList];
  loadingConversations = [v3 loadingConversations];

  if (loadingConversations)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "skipping UITextInputContextIdentifiers cleanup since conversations list is loading", &v20, 2u);
      }
    }
  }

  else
  {
    if (CKIsRunningInMessages())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    }

    else
    {
      standardUserDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.MobileSMS"];
    }

    v7 = standardUserDefaults;
    v8 = [standardUserDefaults objectForKey:@"__CK_clearTextInputContextIdentifierKey"];

    if (!v8)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"__CK_clearTextInputContextIdentifierKey"];
      _oldInputContextIdentifiers = [(CKMessagesSceneDelegate *)self _oldInputContextIdentifiers];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v20 = 134217984;
          v21 = [_oldInputContextIdentifiers count];
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "cleaning %lu UITextInputContextIdentifiers", &v20, 0xCu);
        }
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v11 = _oldInputContextIdentifiers;
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v12)
      {
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [MEMORY[0x1E69DCE60] clearTextInputContextIdentifier:{*(*(&v15 + 1) + 8 * i), v15}];
          }

          v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }
  }
}

- (id)_oldInputContextIdentifiers
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"max-number-of-text-input-context-identifiers"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 300;
  }

  v5 = +[CKConversationList sharedConversationList];
  conversations = [v5 conversations];

  if ([conversations count] >= integerValue)
  {
    array = [MEMORY[0x1E695DF70] array];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__CKMessagesSceneDelegate__oldInputContextIdentifiers__block_invoke;
    v10[3] = &unk_1E72F82D0;
    v12 = integerValue;
    v7 = array;
    v11 = v7;
    [conversations enumerateObjectsWithOptions:2 usingBlock:v10];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

void __54__CKMessagesSceneDelegate__oldInputContextIdentifiers__block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (([v8 isPending] & 1) == 0)
  {
    if (*(a1 + 40) <= a3)
    {
      v7 = [v8 deviceIndependentID];
      if (v7)
      {
        [*(a1 + 32) addObject:v7];
      }
    }

    else
    {
      *a4 = 1;
    }
  }
}

- (id)conversation
{
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  chatController = [messagesController chatController];
  conversation = [chatController conversation];

  return conversation;
}

- (void)windowScene:(id)scene didUpdateEffectiveGeometry:(id)geometry
{
  geometryCopy = geometry;
  sceneCopy = scene;
  messagesController = [(CKMessagesSceneDelegate *)self messagesController];
  [messagesController messagesSceneDelegateDidUpdateEffectiveGeometryForScene:sceneCopy previousEffectiveGeometry:geometryCopy];
}

@end