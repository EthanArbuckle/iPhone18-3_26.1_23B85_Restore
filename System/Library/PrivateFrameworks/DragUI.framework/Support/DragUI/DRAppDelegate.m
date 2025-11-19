@interface DRAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)isHostedOnContinuityDisplayForDragSession:(id)a3;
- (DRAppDelegate)init;
- (id)_contentViewControllerForInteractionWindow:(id)a3;
- (id)_resolvedIdentifierForSystemShellHostingSpaceIdentifier:(id)a3;
- (id)activatedSceneGroupForSystemShellHostingSpaceIdentifier:(id)a3;
- (id)contentWindowForHardwareDisplayIdentifier:(id)a3;
- (id)displayIdentifierForSceneIdentifier:(id)a3;
- (id)sourceDisplayIdentifierForDragSession:(id)a3;
- (id)sourceScreenForDragSession:(id)a3;
- (id)sourceViewControllerForSession:(id)a3;
- (id)targetViewControllerForSession:(id)a3;
- (id)touchTrackingWindowForHardwareDisplayIdentifier:(id)a3;
- (id)virtualHIDServiceForWindow:(id)a3;
- (void)_sceneDidDisconnect:(id)a3;
- (void)_sceneWillConnect:(id)a3;
- (void)_setEventFetchThreadPriorityWhenPossible;
- (void)scene:(id)a3 didUpdateWithDiff:(id)a4 transitionContext:(id)a5 completion:(id)a6;
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

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
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
  v3 = [UIApp _eventFetchRunLoop];
  if (v3)
  {

    CFRunLoopPerformBlock(v3, kCFRunLoopCommonModes, &stru_100054B28);
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

- (id)activatedSceneGroupForSystemShellHostingSpaceIdentifier:(id)a3
{
  v4 = [(DRAppDelegate *)self _resolvedIdentifierForSystemShellHostingSpaceIdentifier:a3];
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

- (id)touchTrackingWindowForHardwareDisplayIdentifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = off_100062738;
  }

  sceneDelegateByDisplayIdentifier = self->_sceneDelegateByDisplayIdentifier;
  v5 = a3;
  v6 = [(NSMutableDictionary *)sceneDelegateByDisplayIdentifier objectForKeyedSubscript:v3];
  v7 = [v6 touchTrackingWindow];

  return v7;
}

- (id)contentWindowForHardwareDisplayIdentifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = off_100062738;
  }

  sceneDelegateByDisplayIdentifier = self->_sceneDelegateByDisplayIdentifier;
  v5 = a3;
  v6 = [(NSMutableDictionary *)sceneDelegateByDisplayIdentifier objectForKeyedSubscript:v3];
  v7 = [v6 window];

  return v7;
}

- (id)sourceScreenForDragSession:(id)a3
{
  v3 = [a3 sourceInteractionWindow];
  v4 = [v3 windowScene];
  v5 = [v4 screen];

  return v5;
}

- (id)sourceDisplayIdentifierForDragSession:(id)a3
{
  v3 = [a3 sourceInteractionWindow];
  v4 = [v3 windowScene];
  v5 = sub_100001F60(v4);

  return v5;
}

- (id)sourceViewControllerForSession:(id)a3
{
  v4 = [a3 sourceInteractionWindow];
  v5 = [(DRAppDelegate *)self _contentViewControllerForInteractionWindow:v4];

  return v5;
}

- (id)targetViewControllerForSession:(id)a3
{
  v4 = a3;
  v5 = [v4 interactionWindow];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 sourceInteractionWindow];
  }

  v8 = v7;

  v9 = [(DRAppDelegate *)self _contentViewControllerForInteractionWindow:v8];

  return v9;
}

- (id)virtualHIDServiceForWindow:(id)a3
{
  v4 = [a3 windowScene];
  v5 = sub_100001F60(v4);

  v6 = [(NSMutableDictionary *)self->_virtualHIDServiceByDisplayIdentifier objectForKey:v5];

  return v6;
}

- (id)displayIdentifierForSceneIdentifier:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMutableDictionary *)self->_layoutMonitorByDisplayIdentifier keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_layoutMonitorByDisplayIdentifier objectForKey:v10];
        if ([v11 containsSceneIdentifier:v4])
        {
          v12 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_contentViewControllerForInteractionWindow:(id)a3
{
  v4 = [a3 windowScene];
  v5 = sub_100001F60(v4);

  v6 = [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier objectForKey:v5];
  v7 = [v6 window];

  v8 = [v7 rootViewController];

  return v8;
}

- (id)_resolvedIdentifierForSystemShellHostingSpaceIdentifier:(id)a3
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return off_100062738;
  }
}

- (BOOL)isHostedOnContinuityDisplayForDragSession:(id)a3
{
  v3 = [(DRAppDelegate *)self sourceScreenForDragSession:a3];
  v4 = sub_1000022FC(v3);

  return v4;
}

- (void)_sceneWillConnect:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 delegate];
      v8 = DRLogTarget();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138412290;
        v35 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Druid connected with window scene: %@", &v34, 0xCu);
      }

      v9 = sub_100001F60(v4);
      v10 = [v4 systemShellHostingEnvironment];
      v11 = [v10 systemShellHostingSpaceIdentifier];

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

      [v4 _setKeepContextAssociationInBackground:1];
      v22 = [DRVirtualHIDService alloc];
      v23 = [v4 screen];
      v24 = [(DRVirtualHIDService *)v22 initWithScreen:v23];

      [(NSMutableDictionary *)self->_windowScenesByDisplayIdentifier setObject:v4 forKey:v9];
      [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier setObject:v7 forKey:v9];
      [(NSMutableDictionary *)self->_virtualHIDServiceByDisplayIdentifier setObject:v24 forKey:v9];
      if (v11)
      {
        [(NSMutableDictionary *)self->_hardwareDisplayIdentifiersBySystemShellHostingSpaceIdentifier setObject:v9 forKey:v11];
      }

      v25 = [v4 screen];
      v26 = [v25 displayIdentity];

      v27 = [[DRLayoutMonitor alloc] initWithDisplayIdentity:v26];
      [(NSMutableDictionary *)self->_layoutMonitorByDisplayIdentifier setObject:v27 forKey:v9];
      v28 = [(DRAppDelegate *)self _resolvedIdentifierForSystemShellHostingSpaceIdentifier:v11];
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

- (void)_sceneDidDisconnect:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = DRLogTarget();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Druid disconnected from window scene: %@", &v22, 0xCu);
      }

      v8 = [v4 systemShellHostingEnvironment];
      v9 = [v8 systemShellHostingSpaceIdentifier];

      v10 = [(DRAppDelegate *)self _resolvedIdentifierForSystemShellHostingSpaceIdentifier:v9];
      v11 = sub_100001F60(v4);
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

- (void)scene:(id)a3 didUpdateWithDiff:(id)a4 transitionContext:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = v7;
  if (v7)
  {
    v9 = UIApp;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000371C;
    v10[3] = &unk_100054B78;
    v11 = v7;
    [v9 _scheduleSceneEventResponseForScene:a3 withResponseBlock:v10];
  }
}

@end