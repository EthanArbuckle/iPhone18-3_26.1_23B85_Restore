@interface CKMessagesSceneDelegate
- (BOOL)_shouldShowMadridRegistrationView;
- (CKMessagesSceneDelegate)init;
- (NSSet)alertSuppressionContexts;
- (id)_oldInputContextIdentifiers;
- (id)conversation;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)__showMadridRegistrationViewIfNecessary;
- (void)__updateAppSnapshot;
- (void)_chatItemsDidChange:(id)a3;
- (void)_clearOldInputContextIdentifiersIfNeeded;
- (void)_conversationFilteringStateChangedNotification:(id)a3;
- (void)_createMadridRegistrationViewIfNecessary;
- (void)_destroyMadridRegistrationView;
- (void)_handleAccountsChanged:(id)a3;
- (void)_handleDaemonConnected:(id)a3;
- (void)_handleDaemonDisconnected:(id)a3;
- (void)_madridRegistrationControllerDidComplete;
- (void)_mainThread_updateMadridRegistrationViewAnimated:(BOOL)a3;
- (void)_prepareForResume:(BOOL)a3;
- (void)_prepareForSuspend;
- (void)_scene:(id)a3 openItemProviders:(id)a4;
- (void)_scheduleDeferredSetup;
- (void)_showMadridRegistrationViewIfNecessary;
- (void)_updateAppSnapshot;
- (void)_updateMadridRegistrationViewAnimated:(BOOL)a3;
- (void)_updateStoredState;
- (void)_updateStoredStateSuspendTime:(id)a3;
- (void)dealloc;
- (void)messagesController:(id)a3 didUpdateCurrentConversation:(id)a4;
- (void)presentOnboardingViewControllerIfNeeded;
- (void)processAppleEventDictionary:(id)a3;
- (void)processLaunchEventContext:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setStoredState:(id)a3;
- (void)windowScene:(id)a3 didUpdateEffectiveGeometry:(id)a4;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
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

    v5 = [(CKMessagesSceneDelegate *)v2 messagesController];
    [v5 setMessagesControllerDelegate:v2];

    v6 = [(CKSceneDelegate *)v2 window];
    v7 = [(CKMessagesSceneDelegate *)v2 messagesController];
    [v6 setRootViewController:v7];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel__handleAccountsChanged_ name:*MEMORY[0x1E69A5680] object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__handleDaemonConnected_ name:*MEMORY[0x1E69A5958] object:0];
    [v9 addObserver:v2 selector:sel__handleDaemonDisconnected_ name:*MEMORY[0x1E69A5960] object:0];
    [v9 addObserver:v2 selector:sel__chatItemsDidChange_ name:*MEMORY[0x1E69A5748] object:0];
    [v9 addObserver:v2 selector:sel__conversationFilteringStateChangedNotification_ name:CKMessageFilteringChangedNotification[0] object:0];
    [v9 addObserver:v2 selector:sel__conversationFilteringStateChangedNotification_ name:CKMessageSpamFilteringChangedNotification object:0];
    [v9 addObserver:v2 selector:sel__updateStoredStateSuspendTime_ name:@"CKAudioControllerStoppedPlaybackNotification" object:0];
    v10 = dispatch_get_global_queue(25, 0);
    dispatch_async(v10, &__block_literal_global_285);

    v11 = +[CKLinkIntentsManager sharedManager];
    v12 = [(CKMessagesSceneDelegate *)v2 messagesController];
    [v11 registerMessagesNavigator:v12];

    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_shouldShowRegistrationOverride = [v13 BOOLForKey:@"AlwaysShowMadridRegistration"];
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
  v2 = [(CKMessagesSceneDelegate *)self messagesController];
  [v2 performSelector:sel_performResumeDeferredSetup withObject:0 afterDelay:0.0];
}

- (void)_showMadridRegistrationViewIfNecessary
{
  v3 = [MEMORY[0x1E69A5B50] sharedController];
  v4 = [v3 isConnected];

  if (v4)
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
    v3 = [MEMORY[0x1E69A7F60] sharedManager];
    v4 = [v3 isMessagesTheDefaultTextApp];
  }

  else
  {
    v4 = 0;
  }

  if ((CKiMessageSupported() && !v4 || self->_shouldShowRegistrationOverride) && [(CKMessagesSceneDelegate *)self _shouldShowMadridRegistrationView])
  {
    v24 = self;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = [MEMORY[0x1E69A5A80] sharedInstance];
    v6 = [MEMORY[0x1E69A5C90] iMessageService];
    v7 = [v5 accountsForService:v6];

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
            v11 = [v10 registrationFailureAlertInfo];
            v12 = [v11 objectForKey:v31];
            v13 = [v11 objectForKey:v30];
            v14 = [v11 objectForKey:v29];
            v15 = [v11 objectForKey:v28];
            v16 = [v15 valueForKey:v27];
            v17 = [v16 integerValue];

            if (v17 == 1)
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

    [(CKMessagesSceneDelegate *)v24 _updateMadridRegistrationViewAnimated:1];
  }

  else
  {

    [(CKMessagesSceneDelegate *)self presentOnboardingViewControllerIfNeeded];
  }
}

- (void)presentOnboardingViewControllerIfNeeded
{
  v3 = [(CKMessagesSceneDelegate *)self messagesController];
  v4 = [v3 shouldPresentOnboarding];

  if (v4)
  {
    v5 = [(CKMessagesSceneDelegate *)self messagesController];
    [v5 presentOnboardingViewControllerIfNeeded];
  }
}

- (void)dealloc
{
  [(CKMessagesSceneDelegate *)self _destroyMadridRegistrationView];
  v3.receiver = self;
  v3.super_class = CKMessagesSceneDelegate;
  [(CKMessagesSceneDelegate *)&v3 dealloc];
}

- (void)processAppleEventDictionary:(id)a3
{
  v4 = a3;
  v7 = [(CKMessagesSceneDelegate *)self messagesController];
  v5 = [(CKMessagesSceneDelegate *)self messagesController];
  v6 = [v5 chatController];
  [CKUserActivityHandler processAppleEventDictionary:v4 animate:1 navigationProvider:v7 chatController:v6];
}

- (void)processLaunchEventContext:(id)a3
{
  v4 = a3;
  v7 = [(CKMessagesSceneDelegate *)self messagesController];
  v5 = [(CKMessagesSceneDelegate *)self messagesController];
  v6 = [v5 chatController];
  [CKUserActivityHandler processLaunchEventContext:v4 animate:1 navigationProvider:v7 chatController:v6];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "scene %@ will connect to session: %@", buf, 0x16u);
    }
  }

  v12 = [v10 URLContexts];
  v13 = [v10 _itemProviderCollections];
  if ([v12 count] || objc_msgSend(v13, "count"))
  {
    if ([v12 count])
    {
      [(CKMessagesSceneDelegate *)self scene:v8 openURLContexts:v12];
    }

    if ([v13 count])
    {
      [(CKMessagesSceneDelegate *)self _scene:v8 openItemProviders:v13];
    }
  }

  else if (![(CKMessagesSceneDelegate *)self handlingLaunchTask])
  {
    v20 = [v10 shortcutItem];

    if (v20)
    {
      v21 = [v10 shortcutItem];
      v22 = [(CKMessagesSceneDelegate *)self messagesController];
      v23 = [(CKMessagesSceneDelegate *)self messagesController];
      v24 = [v23 chatController];
      [CKShortcutHandler performActionForShortcutItem:v21 navigationProvider:v22 chatController:v24 completion:&__block_literal_global_239_2];
    }

    else
    {
      v21 = [v10 userActivities];
      v25 = [v9 stateRestorationActivity];
      [CKUserActivityHandler messagesScene:v8 willConnectToSession:v9 userActivities:v21 stateRestorationActivity:v25 windowSceneDelegate:self];
    }
  }

  [(CKMessagesSceneDelegate *)self _scheduleDeferredSetup];
  v26.receiver = self;
  v26.super_class = CKMessagesSceneDelegate;
  [(CKSceneDelegate *)&v26 scene:v8 willConnectToSession:v9 options:v10];
  v14 = [MEMORY[0x1E69DC668] sharedApplication];
  v15 = [v14 pendingAppleEventInfoDictionary];

  if (v15)
  {
    v16 = [MEMORY[0x1E69DC668] sharedApplication];
    [v16 setPendingAppleEventInfoDictionary:0];

    [(CKMessagesSceneDelegate *)self processAppleEventDictionary:v15];
  }

  v17 = [MEMORY[0x1E69DC668] sharedApplication];
  v18 = [v17 pendingLaunchEventContext];

  if (v18)
  {
    v19 = [MEMORY[0x1E69DC668] sharedApplication];
    [v19 setPendingLaunchEventContext:0];

    [(CKMessagesSceneDelegate *)self processLaunchEventContext:v18];
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

- (void)sceneWillEnterForeground:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKMessagesSceneDelegate;
  [(CKSceneDelegate *)&v5 sceneWillEnterForeground:a3];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  -[CKMessagesSceneDelegate _prepareForResume:](self, "_prepareForResume:", [v4 systemIsAnimatingApplicationLifecycleEvent]);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  [(CKSceneDelegate *)&v7 sceneDidBecomeActive:v4];
  if (![(CKMessagesSceneDelegate *)self isSuspended])
  {
    v6 = [(CKMessagesSceneDelegate *)self messagesController];
    [v6 parentControllerDidBecomeActive];
  }

  [(CKMessagesSceneDelegate *)self _showMadridRegistrationViewIfNecessary];
}

- (void)sceneWillResignActive:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  [(CKSceneDelegate *)&v6 sceneWillResignActive:v4];
  [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:0];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  [(CKSceneDelegate *)&v6 sceneDidEnterBackground:v4];
  [(CKMessagesSceneDelegate *)self _prepareForSuspend];
}

- (void)sceneDidDisconnect:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  [(CKSceneDelegate *)&v9 sceneDidDisconnect:v4];
  if (CKIsRunningInMacCatalyst())
  {
    v6 = [(CKMessagesSceneDelegate *)self messagesController];
    v7 = v6 == 0;

    if (!v7)
    {
      v8 = [(CKMessagesSceneDelegate *)self messagesController];
      [v8 persistColumnWidths:self];
    }
  }

  [(CKMessagesSceneDelegate *)self _cancelPendingAppSnapshotUpdate];
  [(CKMessagesSceneDelegate *)self _prepareForSuspend];
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKMessagesSceneDelegate;
  v5 = [(CKSceneDelegate *)&v12 stateRestorationActivityForScene:v4];
  [(CKMessagesSceneDelegate *)self _updateStoredState];
  v6 = [(CKMessagesSceneDelegate *)self storedState];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Archiving messages scene state object: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = IMConversationListFilterModeStringValue([v6 filterMode]);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "[Filter Mode] Archived filter mode: %@", buf, 0xCu);
    }
  }

  v10 = [CKSceneDelegate userInfoDictionaryForState:v6];
  if (v10)
  {
    [v5 addUserInfoEntriesFromDictionary:v10];
  }

  return v5;
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:1];
  v10 = [(CKMessagesSceneDelegate *)self messagesController];
  v8 = [(CKMessagesSceneDelegate *)self messagesController];
  v9 = [v8 chatController];
  [CKUserActivityHandler messagesScene:v7 continueUserActivity:v6 withNavigationProvider:v10 chatController:v9 completion:&__block_literal_global_257_1];
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:1];
  v9 = [(CKMessagesSceneDelegate *)self messagesController];
  v10 = [(CKMessagesSceneDelegate *)self messagesController];
  v11 = [v10 chatController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__CKMessagesSceneDelegate_windowScene_performActionForShortcutItem_completionHandler___block_invoke;
  v13[3] = &unk_1E72ED1F0;
  v14 = v7;
  v12 = v7;
  [CKShortcutHandler performActionForShortcutItem:v8 navigationProvider:v9 chatController:v11 completion:v13];
}

- (void)_prepareForResume:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
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
    v8 = [MEMORY[0x1E69A7F68] sharedInstance];
    [v8 resetCacheSubscriptionInfo];

    if (CKiMessageSupported())
    {
      v9 = [MEMORY[0x1E69A5B50] sharedController];
      [v9 blockUntilConnected];
    }

    v10 = [(CKMessagesSceneDelegate *)self messagesController];
    [v10 prepareForResume];

    [(CKMessagesSceneDelegate *)self _scheduleDeferredSetup];
    if ([(CKMessagesSceneDelegate *)self _shouldShowMadridRegistrationView])
    {
      goto LABEL_15;
    }

    if (![(CKMessagesSceneDelegate *)self handlingLaunchTask])
    {
      v11 = [(CKMessagesSceneDelegate *)self storedState];
      v12 = [(CKMessagesSceneDelegate *)self messagesController];
      [CKUserActivityHandler restoreState:v11 navigationProvider:v12];
    }

    if (self->_madridRegistrationController)
    {
      v13 = [MEMORY[0x1E69A7F60] sharedManager];
      v14 = [v13 isMessagesTheDefaultTextApp];

      if (v14)
      {
LABEL_15:
        [(CKMessagesSceneDelegate *)self _updateMadridRegistrationViewAnimated:1];
      }
    }

    [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:0];
    v15 = [(CKMessagesSceneDelegate *)self messagesController];
    [v15 parentControllerDidResume:-[CKMessagesSceneDelegate isLocked](self animating:{"isLocked"), v3}];

    [(CKMessagesSceneDelegate *)self setLocked:0];
    [(CKMessagesSceneDelegate *)self setSuspended:0];
    v16 = [(CKMessagesSceneDelegate *)self messagesController];
    v17 = [v16 currentConversation];
    [v17 updateUserActivity];

    [(CKSceneDelegate *)self updateSceneActivationConditions];
    v18 = [MEMORY[0x1E69DC668] sharedApplication];
    [v18 _clearFailureBadge];

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
    v5 = [(CKMessagesSceneDelegate *)self messagesController];
    [v5 prepareForSuspend];

    -[CKMessagesSceneDelegate setLocked:](self, "setLocked:", [*MEMORY[0x1E69DDA98] isSuspendedUnderLock]);
    if ([(CKMessagesSceneDelegate *)self isLocked])
    {
      goto LABEL_13;
    }

    v6 = [(CKMessagesSceneDelegate *)self messagesController];
    if ([v6 isComposingMessage])
    {
      v7 = [(CKMessagesSceneDelegate *)self messagesController];
      if ([v7 currentCompositionHasContent])
      {
      }

      else
      {
        v8 = +[CKConversationList sharedConversationList];
        v9 = [v8 hasActiveConversations];

        if (!v9)
        {
          goto LABEL_13;
        }

        v6 = [(CKMessagesSceneDelegate *)self messagesController];
        [v6 cancelNewMessageCompositionAnimated:0];
      }
    }

LABEL_13:
    [(CKMessagesSceneDelegate *)self _updateStoredState];
    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 0;
    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__CKMessagesSceneDelegate__prepareForSuspend__block_invoke;
    v17[3] = &unk_1E72EB968;
    v17[4] = buf;
    v11 = [v10 beginBackgroundTaskWithExpirationHandler:v17];

    *(v19 + 3) = v11;
    [(CKMessagesSceneDelegate *)self _clearOldInputContextIdentifiersIfNeeded];
    v12 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v12 isProtectedDataAvailable])
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
      v15 = [MEMORY[0x1E69DC668] sharedApplication];
      [v15 endBackgroundTask:*(v19 + 3)];

      *(v19 + 3) = v14;
    }

    v16 = [MEMORY[0x1E69A5B00] sharedInstance];
    [v16 reset];

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

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v18.receiver = self;
  v18.super_class = CKMessagesSceneDelegate;
  v6 = a4;
  v7 = a3;
  [(CKSceneDelegate *)&v18 scene:v7 openURLContexts:v6];
  v8 = [v6 anyObject];

  v9 = [v8 URL];
  v10 = [v8 options];
  v11 = [v10 sourceApplication];

  v12 = [v8 options];
  v13 = [v12 _sourceProcessHandle];

  [(CKMessagesSceneDelegate *)self setHandlingLaunchTask:1];
  v14 = [v7 activationState];

  v15 = [(CKMessagesSceneDelegate *)self messagesController];
  v16 = [(CKMessagesSceneDelegate *)self messagesController];
  v17 = [v16 chatController];
  [CKUserActivityHandler openURL:v9 animate:v14 == 0 sourceApplication:v11 originatingProcess:v13 navigationProvider:v15 chatController:v17 completion:&__block_literal_global_270_0];
}

- (void)_scene:(id)a3 openItemProviders:(id)a4
{
  v10.receiver = self;
  v10.super_class = CKMessagesSceneDelegate;
  v6 = a4;
  [(CKSceneDelegate *)&v10 _scene:a3 openItemProviders:v6];
  v7 = [(CKMessagesSceneDelegate *)self messagesController:v10.receiver];
  v8 = [(CKMessagesSceneDelegate *)self messagesController];
  v9 = [v8 chatController];
  [CKUserActivityHandler openItemProviders:v6 navigationProvider:v7 chatController:v9];
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

  v4 = [(CKMessagesSceneDelegate *)self messagesController];
  v5 = [v4 isComposingMessage];

  if (v5)
  {
    v6 = [(CKMessagesSceneDelegate *)self messagesController];
    v45 = [v6 currentCompositionHasContent];
  }

  else
  {
    v45 = 0;
  }

  v7 = [(CKMessagesSceneDelegate *)self messagesController];
  v44 = [v7 isShowingSelectionView];

  v8 = [(CKMessagesSceneDelegate *)self messagesController];
  v43 = [v8 isCollapsed];

  v9 = [(CKMessagesSceneDelegate *)self messagesController];
  v42 = [v9 isTopVCChatNavigationController];

  if (v5 && (-[CKMessagesSceneDelegate messagesController](self, "messagesController"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isCollapsed], v10, v11))
  {
    v12 = [(CKMessagesSceneDelegate *)self messagesController];
    v13 = [v12 composeChatController];
  }

  else
  {
    v12 = [(CKMessagesSceneDelegate *)self messagesController];
    v13 = [v12 chatController];
  }

  v14 = v13;

  v15 = [v14 conversation];
  v16 = [(CKMessagesSceneDelegate *)self messagesController];
  v17 = [v16 conversationListController];
  v18 = [v17 filterMode];

  v19 = [(CKMessagesSceneDelegate *)self messagesController];
  v20 = [v19 isShowingInboxViewController];

  v21 = +[CKConversationList sharedConversationList];
  v22 = [v21 relevantUnreadLastMessages];

  v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v24 = [v23 isModernFilteringEnabled];

  if (v24)
  {
    v25 = [(CKMessagesSceneDelegate *)self messagesController];
    v26 = [v25 conversationListController];
    v27 = [v26 activeFilterModes];

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v27;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "storing filterModes: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v27 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = IMConversationListFilterModeStringValue(v18);
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
      v32 = IMConversationListFilterModeStringValue(v18);
      v33 = v32;
      v34 = @"NO";
      *buf = 138414594;
      if (v42)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      if (v43)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      if (v44)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      if (v45)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      if (v5)
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
      if (v20)
      {
        v34 = @"YES";
      }

      v54 = 2112;
      v55 = v35;
      v56 = 2112;
      v57 = v15;
      v58 = 2112;
      v59 = v32;
      v60 = 2112;
      v61 = v34;
      v62 = 2112;
      v63 = v22;
      v64 = 2112;
      v65 = v27;
      _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "upating stored state. isComposingNewMessage: %@ messageHasContent: %@ isShowingSelectionView: %@ isControllerCollapsed: %@ isTopVCChatNavigationController: %@ conversation: %@ filterMode: %@ isShowingInbox: %@ unreadLastMessages: %@, storedFilterModes: %@", buf, 0x66u);
    }
  }

  LOBYTE(v41) = v20;
  v40 = [CKSceneDelegateState stateFromIsComposingNewMessage:v5 messageHasContent:v45 isShowingBlankTranscript:v44 isControllerCollapsed:v43 isTopVCChatNavigationController:v42 conversation:v15 filterMode:v18 isShowingInbox:v41 unreadMessages:v22 storedFilterModes:v27];
  [(CKMessagesSceneDelegate *)self setStoredState:v40];
}

- (void)setStoredState:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = IMConversationListFilterModeStringValue([(CKSceneDelegateState *)v4 filterMode]);
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
      v10 = v4;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Updating stored state to: %@", &v9, 0xCu);
    }
  }

  storedState = self->_storedState;
  self->_storedState = v4;
}

- (void)_handleAccountsChanged:(id)a3
{
  v4 = [(CKMessagesSceneDelegate *)self _shouldShowMadridRegistrationView];
  madridRegistrationController = self->_madridRegistrationController;
  if (v4)
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

- (void)_handleDaemonConnected:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_handleDaemonConnected: [%@]", &v6, 0xCu);
    }
  }

  if ([(CKMessagesSceneDelegate *)self _shouldShowMadridRegistrationView])
  {
    [(CKMessagesSceneDelegate *)self _updateMadridRegistrationViewAnimated:1];
  }
}

- (void)_handleDaemonDisconnected:(id)a3
{
  v4 = [MEMORY[0x1E69A5B50] sharedController];
  [v4 connectToDaemon];

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
    v4 = [(CKMessagesSceneDelegate *)self messagesController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__CKMessagesSceneDelegate__madridRegistrationControllerDidComplete__block_invoke;
    v7[3] = &unk_1E72EBA18;
    v7[4] = self;
    [v4 dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    [(CKMessagesSceneDelegate *)self _destroyMadridRegistrationView];
    v5 = [(CKMessagesSceneDelegate *)self storedState];
    v6 = [(CKMessagesSceneDelegate *)self messagesController];
    [CKUserActivityHandler restoreState:v5 navigationProvider:v6];

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
      v5 = [(CKMessagesSceneDelegate *)self messagesController];
      [(CKRegistrationViewController *)v4 setErrorPresentationViewController:v5];

      v6 = [(CKRegistrationViewController *)self->_madridRegistrationController view];
      [v6 removeFromSuperview];
    }

    v7 = self->_madridRegistrationController;
    self->_madridRegistrationController = 0;

    sAlreadyShowUserNotificationDialogForCurrentLoginCycle = 0;
  }
}

- (void)_mainThread_updateMadridRegistrationViewAnimated:(BOOL)a3
{
  v3 = a3;
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

      v8 = [(CKMessagesSceneDelegate *)self messagesController];
      v9 = [v8 presentedViewController];

      if (v9 != v6)
      {
        v10 = [(CKMessagesSceneDelegate *)self messagesController];
        v11 = [v10 presentedViewController];

        if (v11)
        {
          if (![(CKMessagesSceneDelegate *)self willPresentRegistrationViewController])
          {
            [(CKMessagesSceneDelegate *)self setWillPresentRegistrationViewController:1];
            v12 = [(CKMessagesSceneDelegate *)self messagesController];
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __76__CKMessagesSceneDelegate__mainThread_updateMadridRegistrationViewAnimated___block_invoke;
            v23[3] = &unk_1E72EBBC0;
            v23[4] = self;
            v24 = v6;
            v25 = v3;
            [v12 dismissViewControllerAnimated:v3 completion:v23];
          }
        }

        else
        {
          v21 = [(CKMessagesSceneDelegate *)self messagesController];
          [v21 presentViewController:v6 animated:v3 completion:0];
        }
      }

      goto LABEL_20;
    }

    v13 = [(CKMessagesSceneDelegate *)self messagesController];
    v14 = [v13 presentedViewController];
    v15 = v14;
    if (v14 == v6)
    {
      v18 = [(CKRegistrationViewController *)v6 view];
      v19 = [v18 window];

      if (v19)
      {
        v20 = [(CKMessagesSceneDelegate *)self messagesController];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __76__CKMessagesSceneDelegate__mainThread_updateMadridRegistrationViewAnimated___block_invoke_3;
        v22[3] = &unk_1E72EBA18;
        v22[4] = self;
        [v20 dismissViewControllerAnimated:v3 completion:v22];

        goto LABEL_20;
      }
    }

    else
    {
    }

    [(CKMessagesSceneDelegate *)self _destroyMadridRegistrationView];
    v16 = [(CKMessagesSceneDelegate *)self storedState];
    v17 = [(CKMessagesSceneDelegate *)self messagesController];
    [CKUserActivityHandler restoreState:v16 navigationProvider:v17];

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

- (void)_updateMadridRegistrationViewAnimated:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(CKMessagesSceneDelegate *)self _mainThread_updateMadridRegistrationViewAnimated:v3];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__CKMessagesSceneDelegate__updateMadridRegistrationViewAnimated___block_invoke;
    v5[3] = &unk_1E72ED8D8;
    v5[4] = self;
    v6 = v3;
    dispatch_sync(MEMORY[0x1E69E96A0], v5);
  }
}

- (BOOL)_shouldShowMadridRegistrationView
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = CKiMessageSupported();
  if ([MEMORY[0x1E69A5CA0] smsEnabled])
  {
    v4 = [MEMORY[0x1E69A7F60] sharedManager];
    v5 = [v4 isMessagesTheDefaultTextApp];
  }

  else
  {
    v5 = 0;
  }

  v6 = v3 == 0;
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 isRunningInStoreDemoMode];

  v9 = CKRegistrationBypassEnabled();
  if (((v6 | v5) & 1) != 0 || v9 || (v8 & 1) != 0 || !+[CKRegistrationViewController shouldShowRegistration])
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
  v2 = [(CKSceneDelegate *)self scene];
  v3 = [v2 activationState];

  if (v3 == 2)
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
      v6 = v3;
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

- (void)_updateStoredStateSuspendTime:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKMessagesSceneDelegate *)self storedState];
  v6 = [MEMORY[0x1E695DF00] date];
  [v5 updateStoredDate:v6];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(CKMessagesSceneDelegate *)self storedState];
      v9 = [v8 date];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Audio playback has stopped. Updated stored state suspendTime to %@", &v10, 0xCu);
    }
  }
}

- (void)_chatItemsDidChange:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKMessagesSceneDelegate *)self isSuspended])
  {
    v5 = +[CKPluginExtensionStateObserver sharedInstance];
    v6 = [v5 passKitUIPresented];

    if ((v6 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [(CKSceneDelegate *)self scene];
          v9 = [v8 session];
          v10 = [v9 persistentIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v10;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Chat items did change while suspended %@", &buf, 0xCu);
        }
      }

      v11 = [v4 userInfo];
      v12 = [v4 object];
      v13 = [v11 objectForKey:*MEMORY[0x1E69A5750]];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v50 = 0x2020000000;
      v51 = 0;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __47__CKMessagesSceneDelegate__chatItemsDidChange___block_invoke;
      v44[3] = &unk_1E72EC290;
      v14 = v12;
      v45 = v14;
      p_buf = &buf;
      [v13 enumerateIndexesWithOptions:2 usingBlock:v44];
      if ((*(*(&buf + 1) + 24) & 1) == 0)
      {
        v15 = [(CKMessagesSceneDelegate *)self messagesController];
        v16 = [v15 isShowingChatController];

        if (v16)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [(CKMessagesSceneDelegate *)self messagesController];
              v19 = [v18 chatController];
              v20 = [v19 conversation];
              *v47 = 138412290;
              v48 = v20;
              _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Messages controller showing chat controller with conversation: %@", v47, 0xCu);
            }
          }

          v21 = [(CKMessagesSceneDelegate *)self messagesController];
          v22 = [v21 chatController];
          v23 = [v22 conversation];
          v43 = [v23 chat];

          if (v43 == v14)
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
            v24 = [(CKMessagesSceneDelegate *)self storedState];
            v41 = [v24 groupID];

            if ([v41 isEqualToString:@"-1"])
            {
              v25 = 0;
            }

            else
            {
              v28 = [(CKMessagesSceneDelegate *)self sharedConversationList];
              v29 = [v28 conversationForExistingChatWithChatIdentifier:v41];
              v30 = v29;
              if (v29)
              {
                v25 = v29;
              }

              else
              {
                v31 = [(CKMessagesSceneDelegate *)self sharedConversationList];
                v25 = [v31 conversationForExistingChatWithGroupID:v41];
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
              v33 = [(CKMessagesSceneDelegate *)self messagesController];
              v34 = [(CKMessagesSceneDelegate *)self storedState];
              v26 = [v33 shouldRestoreToConversationListForState:v34];

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

                v36 = [(CKMessagesSceneDelegate *)self messagesController];
                v37 = [(CKMessagesSceneDelegate *)self storedState];
                v38 = [v37 unreadLastMessages];
                v26 = [v36 showUnreadConversationsWithLastConversation:v25 ignoringMessages:v38];
              }
            }
          }
        }

        else
        {
          v26 = 0;
        }

        v39 = [(CKMessagesSceneDelegate *)self messagesController];
        v40 = [v39 isShowingConversationListController];

        if ((v40 | v26))
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

- (void)_conversationFilteringStateChangedNotification:(id)a3
{
  v4 = [(CKMessagesSceneDelegate *)self messagesController];
  v5 = [v4 isShowingConversationListController];

  if (v5)
  {

    [(CKMessagesSceneDelegate *)self _updateAppSnapshot];
  }
}

- (NSSet)alertSuppressionContexts
{
  v2 = [(CKMessagesSceneDelegate *)self messagesController];
  v3 = [v2 alertSuppressionContexts];

  return v3;
}

- (void)messagesController:(id)a3 didUpdateCurrentConversation:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Messages controller updated current conversation to: %@, updating scene activation conditions", &v9, 0xCu);
    }
  }

  [(CKSceneDelegate *)self updateSceneActivationConditions];
  [(CKSceneDelegate *)self updateSceneTitleForConversation:v7];
}

- (void)_clearOldInputContextIdentifiersIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[CKConversationList sharedConversationList];
  v4 = [v3 loadingConversations];

  if (v4)
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
      v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.MobileSMS"];
    }

    v7 = v6;
    v8 = [v6 objectForKey:@"__CK_clearTextInputContextIdentifierKey"];

    if (!v8)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"__CK_clearTextInputContextIdentifierKey"];
      v9 = [(CKMessagesSceneDelegate *)self _oldInputContextIdentifiers];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v20 = 134217984;
          v21 = [v9 count];
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "cleaning %lu UITextInputContextIdentifiers", &v20, 0xCu);
        }
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v11 = v9;
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
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 300;
  }

  v5 = +[CKConversationList sharedConversationList];
  v6 = [v5 conversations];

  if ([v6 count] >= v4)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__CKMessagesSceneDelegate__oldInputContextIdentifiers__block_invoke;
    v10[3] = &unk_1E72F82D0;
    v12 = v4;
    v7 = v8;
    v11 = v7;
    [v6 enumerateObjectsWithOptions:2 usingBlock:v10];
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
  v2 = [(CKMessagesSceneDelegate *)self messagesController];
  v3 = [v2 chatController];
  v4 = [v3 conversation];

  return v4;
}

- (void)windowScene:(id)a3 didUpdateEffectiveGeometry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKMessagesSceneDelegate *)self messagesController];
  [v8 messagesSceneDelegateDidUpdateEffectiveGeometryForScene:v7 previousEffectiveGeometry:v6];
}

@end