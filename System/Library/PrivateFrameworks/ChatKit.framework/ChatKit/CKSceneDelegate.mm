@interface CKSceneDelegate
+ (Class)containerClassForType:(int64_t)a3;
+ (id)stateFromUserInfoDictionary:(id)a3;
+ (id)userInfoDictionaryForState:(id)a3;
- (CKSceneDelegate)init;
- (UIWindowScene)scene;
- (id)predicateMatchingConversation:(id)a3;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)_scene:(id)a3 openItemProviders:(id)a4;
- (void)installDebugHandlerForScene:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)showDebugMenu;
- (void)showInspectorViewForChatItems:(id)a3 parallelIndexes:(id)a4;
- (void)showInspectorViewForConversations:(id)a3;
- (void)showInspectorViewForMessage:(id)a3;
- (void)updateSceneActivationConditions;
- (void)updateSceneTitleForConversation:(id)a3;
@end

@implementation CKSceneDelegate

- (CKSceneDelegate)init
{
  v7.receiver = self;
  v7.super_class = CKSceneDelegate;
  v2 = [(CKSceneDelegate *)&v7 init];
  if (v2)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = objc_alloc_init([v3 windowClass]);
    window = v2->_window;
    v2->_window = v4;
  }

  return v2;
}

+ (Class)containerClassForType:(int64_t)a3
{
  if (a3 && a3 != 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"CKSceneDelegate.m" lineNumber:68 description:{@"+containerClassForType: should not be called for scene delegate type: %zd", a3}];
  }

  v7 = objc_opt_class();

  return v7;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v9 session];
      v16 = [v15 persistentIdentifier];
      v27 = 138412802;
      v28 = v14;
      v29 = 2080;
      v30 = "[CKSceneDelegate scene:willConnectToSession:options:]";
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "%@: %s %@", &v27, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v10;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Session: %@", &v27, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v10 stateRestorationActivity];
      v20 = [v19 activityType];
      v21 = [v10 stateRestorationActivity];
      v27 = 138412546;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Session state restoration activity: %@ %@", &v27, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v11;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Connection options: %@", &v27, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CKSceneDelegate scene:a2 willConnectToSession:self options:?];
  }

  v23 = objc_storeWeak(&self->_scene, v9);
  [(CKSceneDelegate *)self installDebugHandlerForScene:v9];

  v24 = [(CKSceneDelegate *)self window];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [v24 setWindowScene:WeakRetained];

  v26 = [(CKSceneDelegate *)self window];
  [v26 makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v4 session];
      v9 = [v8 persistentIdentifier];
      v13 = 138412802;
      v14 = v7;
      v15 = 2080;
      v16 = "[CKSceneDelegate sceneDidDisconnect:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%@: %s %@", &v13, 0x20u);
    }
  }

  toolbarController = self->_toolbarController;
  if (toolbarController)
  {
    [(CKMacToolbarController *)toolbarController removeItemProviders];
    v11 = self->_toolbarController;
    self->_toolbarController = 0;
  }

  v12 = [(CKSceneDelegate *)self window];
  [v12 setWindowScene:0];

  objc_storeWeak(&self->_scene, 0);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v3 session];
      v8 = [v7 persistentIdentifier];
      v9 = 138412802;
      v10 = v6;
      v11 = 2080;
      v12 = "[CKSceneDelegate sceneDidBecomeActive:]";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@: %s %@", &v9, 0x20u);
    }
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v3 session];
      v8 = [v7 persistentIdentifier];
      v9 = 138412802;
      v10 = v6;
      v11 = 2080;
      v12 = "[CKSceneDelegate sceneWillResignActive:]";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@: %s %@", &v9, 0x20u);
    }
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v3 session];
      v8 = [v7 persistentIdentifier];
      v9 = 138412802;
      v10 = v6;
      v11 = 2080;
      v12 = "[CKSceneDelegate sceneWillEnterForeground:]";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@: %s %@", &v9, 0x20u);
    }
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v3 session];
      v8 = [v7 persistentIdentifier];
      v9 = 138412802;
      v10 = v6;
      v11 = 2080;
      v12 = "[CKSceneDelegate sceneDidEnterBackground:]";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@: %s %@", &v9, 0x20u);
    }
  }
}

- (void)installDebugHandlerForScene:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v10, &location);
      v8 = [v7 statusBarManager];
      [v8 setDebugMenuHandler:&v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __47__CKSceneDelegate_installDebugHandlerForScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showDebugMenu];
}

- (void)showDebugMenu
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    v7 = +[_TtC7ChatKit44DebugInspectorContainerViewControllerFactory debugMenuViewController];
    v5 = [(CKSceneDelegate *)self window];
    v6 = [v5 rootViewController];
    [v6 presentViewController:v7 animated:1 completion:0];
  }
}

- (void)showInspectorViewForMessage:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [_TtC7ChatKit44DebugInspectorContainerViewControllerFactory inspectorViewControllerForMessage:v9];
    v7 = [(CKSceneDelegate *)self window];
    v8 = [v7 rootViewController];
    [v8 presentViewController:v6 animated:1 completion:0];
  }
}

- (void)showInspectorViewForConversations:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [_TtC7ChatKit44DebugInspectorContainerViewControllerFactory inspectorViewControllerForConversations:v9];
    v7 = [(CKSceneDelegate *)self window];
    v8 = [v7 rootViewController];
    [v8 presentViewController:v6 animated:1 completion:0];
  }
}

- (void)showInspectorViewForChatItems:(id)a3 parallelIndexes:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A60F0] sharedInstance];
  v8 = [v7 isInternalInstall];

  if (v8)
  {
    v9 = [_TtC7ChatKit44DebugInspectorContainerViewControllerFactory inspectorViewControllerForChatItems:v12 parallelIndexes:v6];
    v10 = [(CKSceneDelegate *)self window];
    v11 = [v10 rootViewController];
    [v11 presentViewController:v9 animated:1 completion:0];
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v5 session];
      v11 = [v10 persistentIdentifier];
      v13 = 138412802;
      v14 = v9;
      v15 = 2080;
      v16 = "[CKSceneDelegate scene:openURLContexts:]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%@: %s %@", &v13, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "URL Contexts: %@", &v13, 0xCu);
    }
  }
}

- (void)_scene:(id)a3 openItemProviders:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v5 session];
      v11 = [v10 persistentIdentifier];
      v13 = 138412802;
      v14 = v9;
      v15 = 2080;
      v16 = "[CKSceneDelegate _scene:openItemProviders:]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%@: %s %@", &v13, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Item Providers: %@", &v13, 0xCu);
    }
  }
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v4 session];
      v9 = [v8 persistentIdentifier];
      *buf = 138412802;
      v17 = v7;
      v18 = 2080;
      v19 = "[CKSceneDelegate stateRestorationActivityForScene:]";
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%@: %s %@", buf, 0x20u);
    }
  }

  v10 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.Messages.StateRestoration"];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CKSceneDelegate type](self, "type", @"CKCanvasStateRestorationContainerType"}];
  v15 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  [v10 addUserInfoEntriesFromDictionary:v12];

  return v10;
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v5 session];
      v11 = [v10 persistentIdentifier];
      v14 = 138412802;
      v15 = v9;
      v16 = 2080;
      v17 = "[CKSceneDelegate scene:continueUserActivity:]";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%@: %s %@", &v14, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v6 activityType];
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "User activity: %@ %@", &v14, 0x16u);
    }
  }
}

+ (id)userInfoDictionaryForState:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Failed archiving scene state: %@, error: %@", buf, 0x16u);
      }
    }

    v7 = 0;
  }

  else
  {
    v14 = @"CKCanvasStateRestorationContainerState";
    v15[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  return v7;
}

+ (id)stateFromUserInfoDictionary:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"CKCanvasStateRestorationContainerState"];
  if (v4)
  {
    v5 = MEMORY[0x1E696ACD0];
    v6 = +[CKSceneDelegateState unarchivingClasses];
    v12 = 0;
    v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v4 error:&v12];
    v8 = v12;

    if (v7)
    {

      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Failed unarchiving scene state data: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Didn't find scene state data in userInfo dictionary: %@", buf, 0xCu);
    }
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (void)updateSceneActivationConditions
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CKSceneDelegate *)self scene];
      v5 = [v4 session];
      v6 = [v5 persistentIdentifier];
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Updating scene activation conditions for scene: %@ %@", &v15, 0x16u);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x1E69DCE78]);
  v8 = [(CKSceneDelegate *)self canActivatePredicate];
  [v7 setCanActivateForTargetContentIdentifierPredicate:v8];

  v9 = [(CKSceneDelegate *)self prefersToActivatePredicate];
  [v7 setPrefersToActivateForTargetContentIdentifierPredicate:v9];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 canActivateForTargetContentIdentifierPredicate];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "canActivateForTargetContentIdentifierPredicate: %@", &v15, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 prefersToActivateForTargetContentIdentifierPredicate];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "prefersToActivateForTargetContentIdentifierPredicate: %@", &v15, 0xCu);
    }
  }

  v14 = [(CKSceneDelegate *)self scene];
  [v14 setActivationConditions:v7];
}

- (id)predicateMatchingConversation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Creating preferred activation predicate for conversation: %@", buf, 0xCu);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v3 groupID];
  if ([v6 length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sms:%@", v6];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"messages:%@", v6];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self beginswith[cd] %@ OR self beginswith[cd] %@", v7, v8];
    [v5 addObject:v9];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"groupid=%@", v6];
    v11 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];

    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(self beginswith[c] 'sms://' OR self beginswith[c] 'messages://') AND (self contains[cd] %@ OR self contains[cd] %@)", v10, v12];
    [v5 addObject:v13];
  }

  v14 = [v3 recipient];

  if (v14)
  {
    v15 = [v3 recipient];
    v16 = [v15 defaultIMHandle];
    v17 = [v16 ID];

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"recipient=%@", v17];
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v21 = [v17 stringByAddingPercentEncodingWithAllowedCharacters:v20];
    v22 = [v19 stringWithFormat:@"recipient=%@", v21];

    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(self beginswith[c] 'sms://' OR self beginswith[c] 'messages://') AND (self contains[cd] %@ OR self contains[cd] %@)", v18, v22];
    [v5 addObject:v23];
  }

  if ([v5 count])
  {
    v24 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)updateSceneTitleForConversation:(id)a3
{
  v4 = a3;
  if ([v4 hasDisplayName])
  {
    [v4 displayName];
  }

  else
  {
    [v4 name];
  }
  v6 = ;

  v5 = [(CKSceneDelegate *)self scene];
  [v5 setTitle:v6];
}

- (UIWindowScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)scene:(uint64_t)a1 willConnectToSession:(uint64_t)a2 options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKSceneDelegate.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"[scene isKindOfClass:[UIWindowScene class]]"}];
}

@end