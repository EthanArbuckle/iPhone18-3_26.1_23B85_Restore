@interface DRAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)isHostedOnContinuityDisplayForDragSession:(id)session;
- (DRAppDelegate)init;
- (id)_contentViewControllerForInteractionWindow:(id)window;
- (id)_resolvedIdentifierForSystemShellHostingSpaceIdentifier:(id)identifier;
- (id)activatedSceneGroupForSystemShellHostingSpaceIdentifier:(id)identifier;
- (id)contentWindowForHardwareDisplayIdentifier:(id)identifier;
- (id)displayIdentifierForSceneIdentifier:(id)identifier;
- (id)sourceDisplayIdentifierForDragSession:(id)session;
- (id)sourceScreenForDragSession:(id)session;
- (id)sourceViewControllerForSession:(id)session;
- (id)targetViewControllerForSession:(id)session;
- (id)touchTrackingWindowForHardwareDisplayIdentifier:(id)identifier;
- (id)virtualHIDServiceForWindow:(id)window;
- (void)_sceneDidDisconnect:(id)disconnect;
- (void)_sceneWillConnect:(id)connect;
- (void)_setEventFetchThreadPriorityWhenPossible;
- (void)scene:(id)scene didUpdateWithDiff:(id)diff transitionContext:(id)context completion:(id)completion;
@end

@implementation DRAppDelegate

- (DRAppDelegate)init
{
  v17.receiver = self;
  v17.super_class = DRAppDelegate;
  v2 = [(DRAppDelegate *)&v17 init];
  if (v2)
  {
    v3 = _os_feature_enabled_impl();
    v4 = &off_100054738;
    if (!v3)
    {
      v4 = off_100054730;
    }

    v5 = *v4;
    v6 = objc_opt_new();
    pasteAnnouncer = v2->_pasteAnnouncer;
    v2->_pasteAnnouncer = v6;

    v8 = +[DRDragSessionManager sharedSessionManager];
    [v8 setDelegate:v2];

    [(DRAppDelegate *)v2 _setEventFetchThreadPriorityWhenPossible];
    v9 = getpid();
    if ((sub_100001D58(v9) & 1) == 0)
    {
      v10 = [[DRDispatchTimer alloc] initWithQueue:&_dispatch_main_q eventHandler:&stru_100054B08];
      [(DRDispatchTimer *)v10 resetWithTimeout:3.0 leeway:0.3];
      [(DRDispatchTimer *)v10 activate];
      launchWatchdogTimer = v2->_launchWatchdogTimer;
      v2->_launchWatchdogTimer = v10;
    }

    [NSURL _setAllowsCreationOfFileURLFromItemProvider:1];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"_sceneWillConnect:" name:UISceneWillConnectNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"_sceneDidDisconnect:" name:UISceneDidDisconnectNotification object:0];

    v14 = DRLogTarget();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Running but not yet listening", v16, 2u);
    }
  }

  return v2;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Application didFinishLaunching", v10, 2u);
  }

  launchWatchdogTimer = self->_launchWatchdogTimer;
  if (launchWatchdogTimer)
  {
    [(DRDispatchTimer *)launchWatchdogTimer cancel];
    v7 = self->_launchWatchdogTimer;
    self->_launchWatchdogTimer = 0;
  }

  v8 = +[DRDragSessionManager sharedSessionManager];
  [v8 startup];

  return 1;
}

- (void)_setEventFetchThreadPriorityWhenPossible
{
  _eventFetchRunLoop = [UIApp _eventFetchRunLoop];
  if (_eventFetchRunLoop)
  {

    CFRunLoopPerformBlock(_eventFetchRunLoop, kCFRunLoopCommonModes, &stru_100054B28);
  }

  else
  {
    v4 = dispatch_time(0, 1000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002A44;
    block[3] = &unk_100054B50;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (id)activatedSceneGroupForSystemShellHostingSpaceIdentifier:(id)identifier
{
  v4 = [(DRAppDelegate *)self _resolvedIdentifierForSystemShellHostingSpaceIdentifier:identifier];
  v5 = [(NSMutableDictionary *)self->_activatedSceneGroupBySystemShellHostingSpaceIdentifier objectForKey:v4];
  if (!v5)
  {
    if (([(NSMutableSet *)self->_systemShellHostingSpaceThatFinishedSceneCreation containsObject:v4]& 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      if (!self->_activatedSceneGroupBySystemShellHostingSpaceIdentifier)
      {
        v6 = +[NSMutableDictionary dictionary];
        activatedSceneGroupBySystemShellHostingSpaceIdentifier = self->_activatedSceneGroupBySystemShellHostingSpaceIdentifier;
        self->_activatedSceneGroupBySystemShellHostingSpaceIdentifier = v6;
      }

      v5 = dispatch_group_create();
      dispatch_group_enter(v5);
      [(NSMutableDictionary *)self->_activatedSceneGroupBySystemShellHostingSpaceIdentifier setObject:v5 forKey:v4];
    }
  }

  return v5;
}

- (id)touchTrackingWindowForHardwareDisplayIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = off_100062738;
  }

  sceneDelegateByDisplayIdentifier = self->_sceneDelegateByDisplayIdentifier;
  identifierCopy2 = identifier;
  v6 = [(NSMutableDictionary *)sceneDelegateByDisplayIdentifier objectForKeyedSubscript:identifierCopy];
  touchTrackingWindow = [v6 touchTrackingWindow];

  return touchTrackingWindow;
}

- (id)contentWindowForHardwareDisplayIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = off_100062738;
  }

  sceneDelegateByDisplayIdentifier = self->_sceneDelegateByDisplayIdentifier;
  identifierCopy2 = identifier;
  v6 = [(NSMutableDictionary *)sceneDelegateByDisplayIdentifier objectForKeyedSubscript:identifierCopy];
  window = [v6 window];

  return window;
}

- (id)sourceScreenForDragSession:(id)session
{
  sourceInteractionWindow = [session sourceInteractionWindow];
  windowScene = [sourceInteractionWindow windowScene];
  screen = [windowScene screen];

  return screen;
}

- (id)sourceDisplayIdentifierForDragSession:(id)session
{
  sourceInteractionWindow = [session sourceInteractionWindow];
  windowScene = [sourceInteractionWindow windowScene];
  v5 = sub_100001F60(windowScene);

  return v5;
}

- (id)sourceViewControllerForSession:(id)session
{
  sourceInteractionWindow = [session sourceInteractionWindow];
  v5 = [(DRAppDelegate *)self _contentViewControllerForInteractionWindow:sourceInteractionWindow];

  return v5;
}

- (id)targetViewControllerForSession:(id)session
{
  sessionCopy = session;
  interactionWindow = [sessionCopy interactionWindow];
  v6 = interactionWindow;
  if (interactionWindow)
  {
    sourceInteractionWindow = interactionWindow;
  }

  else
  {
    sourceInteractionWindow = [sessionCopy sourceInteractionWindow];
  }

  v8 = sourceInteractionWindow;

  v9 = [(DRAppDelegate *)self _contentViewControllerForInteractionWindow:v8];

  return v9;
}

- (id)virtualHIDServiceForWindow:(id)window
{
  windowScene = [window windowScene];
  v5 = sub_100001F60(windowScene);

  v6 = [(NSMutableDictionary *)self->_virtualHIDServiceByDisplayIdentifier objectForKey:v5];

  return v6;
}

- (id)displayIdentifierForSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_layoutMonitorByDisplayIdentifier keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_layoutMonitorByDisplayIdentifier objectForKey:v10];
        if ([v11 containsSceneIdentifier:identifierCopy])
        {
          v12 = v10;

          goto LABEL_11;
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = off_100062738;
LABEL_11:

  return v12;
}

- (id)_contentViewControllerForInteractionWindow:(id)window
{
  windowScene = [window windowScene];
  v5 = sub_100001F60(windowScene);

  v6 = [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier objectForKey:v5];
  window = [v6 window];

  rootViewController = [window rootViewController];

  return rootViewController;
}

- (id)_resolvedIdentifierForSystemShellHostingSpaceIdentifier:(id)identifier
{
  if (identifier)
  {
    return identifier;
  }

  else
  {
    return off_100062738;
  }
}

- (BOOL)isHostedOnContinuityDisplayForDragSession:(id)session
{
  v3 = [(DRAppDelegate *)self sourceScreenForDragSession:session];
  v4 = sub_1000022FC(v3);

  return v4;
}

- (void)_sceneWillConnect:(id)connect
{
  object = [connect object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [object delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      delegate2 = [object delegate];
      v8 = DRLogTarget();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138412290;
        v35 = object;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Druid connected with window scene: %@", &v34, 0xCu);
      }

      v9 = sub_100001F60(object);
      systemShellHostingEnvironment = [object systemShellHostingEnvironment];
      systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];

      if (!self->_windowScenesByDisplayIdentifier)
      {
        v12 = +[NSMutableDictionary dictionary];
        windowScenesByDisplayIdentifier = self->_windowScenesByDisplayIdentifier;
        self->_windowScenesByDisplayIdentifier = v12;
      }

      if (!self->_sceneDelegateByDisplayIdentifier)
      {
        v14 = +[NSMutableDictionary dictionary];
        sceneDelegateByDisplayIdentifier = self->_sceneDelegateByDisplayIdentifier;
        self->_sceneDelegateByDisplayIdentifier = v14;
      }

      if (!self->_virtualHIDServiceByDisplayIdentifier)
      {
        v16 = +[NSMutableDictionary dictionary];
        virtualHIDServiceByDisplayIdentifier = self->_virtualHIDServiceByDisplayIdentifier;
        self->_virtualHIDServiceByDisplayIdentifier = v16;
      }

      if (!self->_layoutMonitorByDisplayIdentifier)
      {
        v18 = +[NSMutableDictionary dictionary];
        layoutMonitorByDisplayIdentifier = self->_layoutMonitorByDisplayIdentifier;
        self->_layoutMonitorByDisplayIdentifier = v18;
      }

      if (!self->_hardwareDisplayIdentifiersBySystemShellHostingSpaceIdentifier)
      {
        v20 = +[NSMutableDictionary dictionary];
        hardwareDisplayIdentifiersBySystemShellHostingSpaceIdentifier = self->_hardwareDisplayIdentifiersBySystemShellHostingSpaceIdentifier;
        self->_hardwareDisplayIdentifiersBySystemShellHostingSpaceIdentifier = v20;
      }

      [object _setKeepContextAssociationInBackground:1];
      v22 = [DRVirtualHIDService alloc];
      screen = [object screen];
      v24 = [(DRVirtualHIDService *)v22 initWithScreen:screen];

      [(NSMutableDictionary *)self->_windowScenesByDisplayIdentifier setObject:object forKey:v9];
      [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier setObject:delegate2 forKey:v9];
      [(NSMutableDictionary *)self->_virtualHIDServiceByDisplayIdentifier setObject:v24 forKey:v9];
      if (systemShellHostingSpaceIdentifier)
      {
        [(NSMutableDictionary *)self->_hardwareDisplayIdentifiersBySystemShellHostingSpaceIdentifier setObject:v9 forKey:systemShellHostingSpaceIdentifier];
      }

      screen2 = [object screen];
      displayIdentity = [screen2 displayIdentity];

      v27 = [[DRLayoutMonitor alloc] initWithDisplayIdentity:displayIdentity];
      [(NSMutableDictionary *)self->_layoutMonitorByDisplayIdentifier setObject:v27 forKey:v9];
      v28 = [(DRAppDelegate *)self _resolvedIdentifierForSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier];
      systemShellHostingSpaceThatFinishedSceneCreation = self->_systemShellHostingSpaceThatFinishedSceneCreation;
      if (!systemShellHostingSpaceThatFinishedSceneCreation)
      {
        v30 = +[NSMutableSet set];
        v31 = self->_systemShellHostingSpaceThatFinishedSceneCreation;
        self->_systemShellHostingSpaceThatFinishedSceneCreation = v30;

        systemShellHostingSpaceThatFinishedSceneCreation = self->_systemShellHostingSpaceThatFinishedSceneCreation;
      }

      if (([(NSMutableSet *)systemShellHostingSpaceThatFinishedSceneCreation containsObject:v28]& 1) == 0)
      {
        [(NSMutableSet *)self->_systemShellHostingSpaceThatFinishedSceneCreation addObject:v28];
      }

      v32 = [(NSMutableDictionary *)self->_activatedSceneGroupBySystemShellHostingSpaceIdentifier objectForKey:v28];
      v33 = v32;
      if (v32)
      {
        dispatch_group_leave(v32);
        [(NSMutableDictionary *)self->_activatedSceneGroupBySystemShellHostingSpaceIdentifier removeObjectForKey:v28];
      }
    }
  }
}

- (void)_sceneDidDisconnect:(id)disconnect
{
  object = [disconnect object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [object delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = DRLogTarget();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = object;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Druid disconnected from window scene: %@", &v22, 0xCu);
      }

      systemShellHostingEnvironment = [object systemShellHostingEnvironment];
      systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];

      v10 = [(DRAppDelegate *)self _resolvedIdentifierForSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier];
      v11 = sub_100001F60(object);
      if ([(NSMutableSet *)self->_systemShellHostingSpaceThatFinishedSceneCreation containsObject:v10])
      {
        [(NSMutableSet *)self->_systemShellHostingSpaceThatFinishedSceneCreation removeObject:v10];
        v12 = [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier objectForKey:v11];
        if (v12)
        {
          v13 = v12;
          [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier removeObjectForKey:v11];
        }

        v14 = [(NSMutableDictionary *)self->_windowScenesByDisplayIdentifier objectForKey:v11];
        if (v14)
        {
          v15 = v14;
          [(NSMutableDictionary *)self->_windowScenesByDisplayIdentifier removeObjectForKey:v11];
        }

        v16 = [(NSMutableDictionary *)self->_activatedSceneGroupBySystemShellHostingSpaceIdentifier objectForKey:v10];
        if (v16)
        {
          v17 = v16;
          [(NSMutableDictionary *)self->_activatedSceneGroupBySystemShellHostingSpaceIdentifier removeObjectForKey:v10];
        }

        v18 = [(NSMutableDictionary *)self->_virtualHIDServiceByDisplayIdentifier objectForKey:v11];
        if (v18)
        {
          v19 = v18;
          [(NSMutableDictionary *)self->_virtualHIDServiceByDisplayIdentifier removeObjectForKey:v11];
        }

        v20 = [(NSMutableDictionary *)self->_layoutMonitorByDisplayIdentifier objectForKey:v11];
        if (v20)
        {
          v21 = v20;
          [(NSMutableDictionary *)self->_layoutMonitorByDisplayIdentifier removeObjectForKey:v11];
        }
      }
    }
  }
}

- (void)scene:(id)scene didUpdateWithDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v9 = UIApp;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000371C;
    v10[3] = &unk_100054B78;
    v11 = completionCopy;
    [v9 _scheduleSceneEventResponseForScene:scene withResponseBlock:v10];
  }
}

@end