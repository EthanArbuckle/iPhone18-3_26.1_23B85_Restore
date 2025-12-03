@interface CKSceneDelegate
+ (Class)containerClassForType:(int64_t)type;
+ (id)stateFromUserInfoDictionary:(id)dictionary;
+ (id)userInfoDictionaryForState:(id)state;
- (CKSceneDelegate)init;
- (UIWindowScene)scene;
- (id)predicateMatchingConversation:(id)conversation;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)_scene:(id)_scene openItemProviders:(id)providers;
- (void)installDebugHandlerForScene:(id)scene;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)showDebugMenu;
- (void)showInspectorViewForChatItems:(id)items parallelIndexes:(id)indexes;
- (void)showInspectorViewForConversations:(id)conversations;
- (void)showInspectorViewForMessage:(id)message;
- (void)updateSceneActivationConditions;
- (void)updateSceneTitleForConversation:(id)conversation;
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

+ (Class)containerClassForType:(int64_t)type
{
  if (type && type != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CKSceneDelegate.m" lineNumber:68 description:{@"+containerClassForType: should not be called for scene delegate type: %zd", type}];
  }

  v7 = objc_opt_class();

  return v7;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  v33 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      session = [sceneCopy session];
      persistentIdentifier = [session persistentIdentifier];
      v27 = 138412802;
      v28 = v14;
      v29 = 2080;
      v30 = "[CKSceneDelegate scene:willConnectToSession:options:]";
      v31 = 2112;
      v32 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "%@: %s %@", &v27, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = sessionCopy;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Session: %@", &v27, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      stateRestorationActivity = [sessionCopy stateRestorationActivity];
      activityType = [stateRestorationActivity activityType];
      stateRestorationActivity2 = [sessionCopy stateRestorationActivity];
      v27 = 138412546;
      v28 = activityType;
      v29 = 2112;
      v30 = stateRestorationActivity2;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Session state restoration activity: %@ %@", &v27, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = optionsCopy;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Connection options: %@", &v27, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CKSceneDelegate scene:a2 willConnectToSession:self options:?];
  }

  v23 = objc_storeWeak(&self->_scene, sceneCopy);
  [(CKSceneDelegate *)self installDebugHandlerForScene:sceneCopy];

  window = [(CKSceneDelegate *)self window];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [window setWindowScene:WeakRetained];

  window2 = [(CKSceneDelegate *)self window];
  [window2 makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v19 = *MEMORY[0x1E69E9840];
  disconnectCopy = disconnect;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      session = [disconnectCopy session];
      persistentIdentifier = [session persistentIdentifier];
      v13 = 138412802;
      v14 = v7;
      v15 = 2080;
      v16 = "[CKSceneDelegate sceneDidDisconnect:]";
      v17 = 2112;
      v18 = persistentIdentifier;
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

  window = [(CKSceneDelegate *)self window];
  [window setWindowScene:0];

  objc_storeWeak(&self->_scene, 0);
}

- (void)sceneDidBecomeActive:(id)active
{
  v15 = *MEMORY[0x1E69E9840];
  activeCopy = active;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      session = [activeCopy session];
      persistentIdentifier = [session persistentIdentifier];
      v9 = 138412802;
      v10 = v6;
      v11 = 2080;
      v12 = "[CKSceneDelegate sceneDidBecomeActive:]";
      v13 = 2112;
      v14 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@: %s %@", &v9, 0x20u);
    }
  }
}

- (void)sceneWillResignActive:(id)active
{
  v15 = *MEMORY[0x1E69E9840];
  activeCopy = active;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      session = [activeCopy session];
      persistentIdentifier = [session persistentIdentifier];
      v9 = 138412802;
      v10 = v6;
      v11 = 2080;
      v12 = "[CKSceneDelegate sceneWillResignActive:]";
      v13 = 2112;
      v14 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@: %s %@", &v9, 0x20u);
    }
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v15 = *MEMORY[0x1E69E9840];
  foregroundCopy = foreground;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      session = [foregroundCopy session];
      persistentIdentifier = [session persistentIdentifier];
      v9 = 138412802;
      v10 = v6;
      v11 = 2080;
      v12 = "[CKSceneDelegate sceneWillEnterForeground:]";
      v13 = 2112;
      v14 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@: %s %@", &v9, 0x20u);
    }
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  v15 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      session = [backgroundCopy session];
      persistentIdentifier = [session persistentIdentifier];
      v9 = 138412802;
      v10 = v6;
      v11 = 2080;
      v12 = "[CKSceneDelegate sceneDidEnterBackground:]";
      v13 = 2112;
      v14 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@: %s %@", &v9, 0x20u);
    }
  }
}

- (void)installDebugHandlerForScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [sceneCopy delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = sceneCopy;
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v10, &location);
      statusBarManager = [v7 statusBarManager];
      [statusBarManager setDebugMenuHandler:&v9];

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
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    v7 = +[_TtC7ChatKit44DebugInspectorContainerViewControllerFactory debugMenuViewController];
    window = [(CKSceneDelegate *)self window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:v7 animated:1 completion:0];
  }
}

- (void)showInspectorViewForMessage:(id)message
{
  messageCopy = message;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    v6 = [_TtC7ChatKit44DebugInspectorContainerViewControllerFactory inspectorViewControllerForMessage:messageCopy];
    window = [(CKSceneDelegate *)self window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:v6 animated:1 completion:0];
  }
}

- (void)showInspectorViewForConversations:(id)conversations
{
  conversationsCopy = conversations;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    v6 = [_TtC7ChatKit44DebugInspectorContainerViewControllerFactory inspectorViewControllerForConversations:conversationsCopy];
    window = [(CKSceneDelegate *)self window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:v6 animated:1 completion:0];
  }
}

- (void)showInspectorViewForChatItems:(id)items parallelIndexes:(id)indexes
{
  itemsCopy = items;
  indexesCopy = indexes;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    v9 = [_TtC7ChatKit44DebugInspectorContainerViewControllerFactory inspectorViewControllerForChatItems:itemsCopy parallelIndexes:indexesCopy];
    window = [(CKSceneDelegate *)self window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:v9 animated:1 completion:0];
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  v19 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  contextsCopy = contexts;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      session = [sceneCopy session];
      persistentIdentifier = [session persistentIdentifier];
      v13 = 138412802;
      v14 = v9;
      v15 = 2080;
      v16 = "[CKSceneDelegate scene:openURLContexts:]";
      v17 = 2112;
      v18 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%@: %s %@", &v13, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = contextsCopy;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "URL Contexts: %@", &v13, 0xCu);
    }
  }
}

- (void)_scene:(id)_scene openItemProviders:(id)providers
{
  v19 = *MEMORY[0x1E69E9840];
  _sceneCopy = _scene;
  providersCopy = providers;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      session = [_sceneCopy session];
      persistentIdentifier = [session persistentIdentifier];
      v13 = 138412802;
      v14 = v9;
      v15 = 2080;
      v16 = "[CKSceneDelegate _scene:openItemProviders:]";
      v17 = 2112;
      v18 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%@: %s %@", &v13, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = providersCopy;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Item Providers: %@", &v13, 0xCu);
    }
  }
}

- (id)stateRestorationActivityForScene:(id)scene
{
  v22 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      session = [sceneCopy session];
      persistentIdentifier = [session persistentIdentifier];
      *buf = 138412802;
      v17 = v7;
      v18 = 2080;
      v19 = "[CKSceneDelegate stateRestorationActivityForScene:]";
      v20 = 2112;
      v21 = persistentIdentifier;
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

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  v20 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  activityCopy = activity;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      session = [sceneCopy session];
      persistentIdentifier = [session persistentIdentifier];
      v14 = 138412802;
      v15 = v9;
      v16 = 2080;
      v17 = "[CKSceneDelegate scene:continueUserActivity:]";
      v18 = 2112;
      v19 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%@: %s %@", &v14, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      activityType = [activityCopy activityType];
      v14 = 138412546;
      v15 = activityType;
      v16 = 2112;
      v17 = activityCopy;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "User activity: %@ %@", &v14, 0x16u);
    }
  }
}

+ (id)userInfoDictionaryForState:(id)state
{
  v15[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:stateCopy requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v11 = stateCopy;
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

+ (id)stateFromUserInfoDictionary:(id)dictionary
{
  v15 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"CKCanvasStateRestorationContainerState"];
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
      v14 = dictionaryCopy;
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
      scene = [(CKSceneDelegate *)self scene];
      session = [scene session];
      persistentIdentifier = [session persistentIdentifier];
      v15 = 138412546;
      selfCopy = self;
      v17 = 2112;
      v18 = persistentIdentifier;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Updating scene activation conditions for scene: %@ %@", &v15, 0x16u);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x1E69DCE78]);
  canActivatePredicate = [(CKSceneDelegate *)self canActivatePredicate];
  [v7 setCanActivateForTargetContentIdentifierPredicate:canActivatePredicate];

  prefersToActivatePredicate = [(CKSceneDelegate *)self prefersToActivatePredicate];
  [v7 setPrefersToActivateForTargetContentIdentifierPredicate:prefersToActivatePredicate];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      canActivateForTargetContentIdentifierPredicate = [v7 canActivateForTargetContentIdentifierPredicate];
      v15 = 138412290;
      selfCopy = canActivateForTargetContentIdentifierPredicate;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "canActivateForTargetContentIdentifierPredicate: %@", &v15, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      prefersToActivateForTargetContentIdentifierPredicate = [v7 prefersToActivateForTargetContentIdentifierPredicate];
      v15 = 138412290;
      selfCopy = prefersToActivateForTargetContentIdentifierPredicate;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "prefersToActivateForTargetContentIdentifierPredicate: %@", &v15, 0xCu);
    }
  }

  scene2 = [(CKSceneDelegate *)self scene];
  [scene2 setActivationConditions:v7];
}

- (id)predicateMatchingConversation:(id)conversation
{
  v28 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = conversationCopy;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Creating preferred activation predicate for conversation: %@", buf, 0xCu);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  groupID = [conversationCopy groupID];
  if ([groupID length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sms:%@", groupID];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"messages:%@", groupID];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self beginswith[cd] %@ OR self beginswith[cd] %@", v7, v8];
    [v5 addObject:v9];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"groupid=%@", groupID];
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(self beginswith[c] 'sms://' OR self beginswith[c] 'messages://') AND (self contains[cd] %@ OR self contains[cd] %@)", v10, v12];
    [v5 addObject:v13];
  }

  recipient = [conversationCopy recipient];

  if (recipient)
  {
    recipient2 = [conversationCopy recipient];
    defaultIMHandle = [recipient2 defaultIMHandle];
    v17 = [defaultIMHandle ID];

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"recipient=%@", v17];
    v19 = MEMORY[0x1E696AEC0];
    uRLPathAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v21 = [v17 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];
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

- (void)updateSceneTitleForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([conversationCopy hasDisplayName])
  {
    [conversationCopy displayName];
  }

  else
  {
    [conversationCopy name];
  }
  v6 = ;

  scene = [(CKSceneDelegate *)self scene];
  [scene setTitle:v6];
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