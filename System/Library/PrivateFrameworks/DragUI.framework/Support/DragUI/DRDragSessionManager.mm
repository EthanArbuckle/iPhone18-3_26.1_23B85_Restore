@interface DRDragSessionManager
+ (id)sharedSessionManager;
- (BOOL)_addBeginningTouchesToExistingSessions:(id)sessions viewController:(id)controller touchWindow:(id)window;
- (BOOL)destinationIsSystemConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)xpcQueue_hasTouchBasedDragSessionForEventsForDisplayIdentifier:(id)identifier;
- (BOOL)xpcQueue_shouldAcceptNewDestinationConnection:(id)connection;
- (BOOL)xpcQueue_shouldAcceptNewSourceConnection:(id)connection;
- (DRDragSessionManager)init;
- (DRDragSessionManagerDelegate)delegate;
- (id)_filterTouchesForPointer:(id)pointer performingBlockForPointerTouch:(id)touch;
- (id)allWindowContextIdsForDragSession:(id)session;
- (id)xpcQueue_accessibilityDragSessionForEvents;
- (id)xpcQueue_pointerDragSessionForEvents;
- (void)_cancelAllDragSessions;
- (void)_cancelPointerBeganWatchdog;
- (void)_createExternalConnections;
- (void)_forEachTouch:(id)touch performBlockForSession:(id)session;
- (void)_getTransformForContextID:(unsigned int)d layerRenderID:(unint64_t)iD displayID:(id)displayID allowingEmptyLayerID:(BOOL)layerID completion:(id)completion;
- (void)_getTransformForLayerContext:(id)context completion:(id)completion;
- (void)_notifyListenersSessionDidEnd:(id)end;
- (void)_notifyListenersSessionWillBegin:(id)begin configuration:(id)configuration completion:(id)completion;
- (void)_pointerBeganWatchdogFired;
- (void)beginDragWithClientSession:(id)session configuration:(id)configuration reply:(id)reply;
- (void)configurePortalViewsForDragSessionOriginatingFromViewController:(id)controller;
- (void)dragSession:(id)session addedItemCount:(unint64_t)count;
- (void)dragSession:(id)session animateOutVisibleItemsWithOperation:(unint64_t)operation;
- (void)dragSession:(id)session enableKeyboardIfNeeded:(BOOL)needed;
- (void)dragSession:(id)session findVisibleDroppedItemsInSpaceOfLayerContext:(id)context replyingOnQueue:(id)queue with:(id)with;
- (void)dragSession:(id)session invalidateImageForClient:(id)client itemIndex:(unint64_t)index;
- (void)dragSession:(id)session moveToLocation:(CAPoint3D)location;
- (void)dragSession:(id)session removeVisibleDroppedItemsInSpaceOfLayerContext:(id)context replyingOnQueue:(id)queue with:(id)with;
- (void)dragSession:(id)session updateDragItems:(id)items forClient:(id)client withFence:(id)fence;
- (void)dragSession:(id)session updateRoutingPolicy:(id)policy;
- (void)dragSession:(id)session updatedPotentialDrop:(id)drop forDestinationClient:(id)client;
- (void)dragSessionDidEnd:(id)end;
- (void)dragSessionSetDownAnimationDidEnd:(id)end;
- (void)dragSessionWillEnd:(id)end;
- (void)presentationDidUpdate:(id)update forSession:(unsigned int)session;
- (void)requestImagesForSessionID:(unsigned int)d client:(id)client itemIndexSet:(id)set;
- (void)resetDestinationClientForDragSession:(id)session;
- (void)startup;
- (void)teardownPortalViewsForDragSessionOriginatingFromViewController:(id)controller;
- (void)touchTrackingWindow:(id)window touchesBegan:(id)began;
- (void)touchTrackingWindow:(id)window touchesCancelled:(id)cancelled;
- (void)touchTrackingWindow:(id)window touchesEnded:(id)ended pairedWithVelocities:(id)velocities;
- (void)touchTrackingWindow:(id)window touchesMoved:(id)moved;
- (void)warmUp;
- (void)xpcQueue_acceptNewDestinationConnection:(id)connection;
- (void)xpcQueue_acceptNewSourceConnection:(id)connection;
- (void)xpcQueue_addDragSession:(id)session;
- (void)xpcQueue_removeDragSession:(id)session;
- (void)xpcQueue_validateTouchStreamForDragSession:(id)session;
@end

@implementation DRDragSessionManager

+ (id)sharedSessionManager
{
  if (qword_1000637F8 != -1)
  {
    sub_100031458();
  }

  v3 = qword_1000637F0;

  return v3;
}

- (DRDragSessionManager)init
{
  v23.receiver = self;
  v23.super_class = DRDragSessionManager;
  v2 = [(DRDragSessionManager *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dragSessions = v2->_dragSessions;
    v2->_dragSessions = v3;

    v2->_lastSessionIdentifier = arc4random();
    v5 = +[NSHashTable weakObjectsHashTable];
    keyboardSessions = v2->_keyboardSessions;
    v2->_keyboardSessions = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.DragUI.druid.xpcQueue", v7);
    xpcQueue = v2->_xpcQueue;
    v2->_xpcQueue = v8;

    v10 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.DragUI.druid.source"];
    sourceListener = v2->_sourceListener;
    v2->_sourceListener = v10;

    [(NSXPCListener *)v2->_sourceListener _setQueue:v2->_xpcQueue];
    [(NSXPCListener *)v2->_sourceListener setDelegate:v2];
    v12 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.DragUI.druid.destination"];
    destinationListener = v2->_destinationListener;
    v2->_destinationListener = v12;

    [(NSXPCListener *)v2->_destinationListener _setQueue:v2->_xpcQueue];
    [(NSXPCListener *)v2->_destinationListener setDelegate:v2];
    v14 = objc_opt_new();
    keyboardArbiter = v2->_keyboardArbiter;
    v2->_keyboardArbiter = v14;

    objc_initWeak(&location, v2);
    v16 = [DRLockObserver alloc];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100025BC0;
    v20[3] = &unk_1000561C8;
    objc_copyWeak(&v21, &location);
    v17 = [(DRLockObserver *)v16 initWithLockHandler:v20];
    lockObserver = v2->_lockObserver;
    v2->_lockObserver = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)startup
{
  keyboardArbiter = [(DRDragSessionManager *)self keyboardArbiter];
  [keyboardArbiter connect];

  [(DRDragSessionManager *)self _createExternalConnections];
  v4 = objc_opt_new();
  touchDetacher = self->_touchDetacher;
  self->_touchDetacher = v4;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100025CC0;
  v6[3] = &unk_100054B50;
  v6[4] = self;
  [UIApp _performBlockAfterCATransactionCommits:v6];
}

- (void)requestImagesForSessionID:(unsigned int)d client:(id)client itemIndexSet:(id)set
{
  clientCopy = client;
  setCopy = set;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_dragSessions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ([v15 identifier] == d)
        {
          [v15 requestImagesForClient:clientCopy itemIndexes:setCopy];
          goto LABEL_11;
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)presentationDidUpdate:(id)update forSession:(unsigned int)session
{
  updateCopy = update;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_dragSessions;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 identifier] == session)
        {
          [v12 notifyDragMonitorsWithUpdatedPresentation:updateCopy];
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (self->_sourceListener == listenerCopy)
  {
    v9 = [(DRDragSessionManager *)self xpcQueue_shouldAcceptNewSourceConnection:connectionCopy];
LABEL_6:
    v8 = v9;
    goto LABEL_7;
  }

  if (self->_destinationListener == listenerCopy)
  {
    v9 = [(DRDragSessionManager *)self xpcQueue_shouldAcceptNewDestinationConnection:connectionCopy];
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)xpcQueue_shouldAcceptNewSourceConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [(DRDragSessionManager *)self xpcQueue_canCreateNewDragSessionWithSourceConnection:connectionCopy];
  if (v5)
  {
    [(DRDragSessionManager *)self xpcQueue_acceptNewSourceConnection:connectionCopy];
    [connectionCopy resume];
  }

  else
  {
    v6 = DRLogTarget();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Refusing to accept new source connection", v8, 2u);
    }
  }

  return v5;
}

- (void)xpcQueue_acceptNewSourceConnection:(id)connection
{
  connectionCopy = connection;
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accepting new source connection from PID %d", &buf, 8u);
  }

  [connectionCopy _setQueue:self->_xpcQueue];
  v6 = _DUINewServerSourceInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v7 = _DUINewClientSourceInterface();
  [connectionCopy setRemoteObjectInterface:v7];

  objc_initWeak(&buf, connectionCopy);
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100026348;
  v11[3] = &unk_100054CA0;
  objc_copyWeak(&v12, &buf);
  [connectionCopy setInterruptionHandler:v11];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026408;
  v8[3] = &unk_1000561F0;
  objc_copyWeak(&v9, &buf);
  objc_copyWeak(&v10, &location);
  [connectionCopy setInvalidationHandler:v8];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  objc_destroyWeak(&buf);
}

- (BOOL)xpcQueue_shouldAcceptNewDestinationConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [(DRDragSessionManager *)self xpcQueue_canAcceptDestinationConnection:connectionCopy];
  if (v5)
  {
    [(DRDragSessionManager *)self xpcQueue_acceptNewDestinationConnection:connectionCopy];
    [connectionCopy resume];
  }

  else
  {
    v6 = DRLogTarget();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Refusing to accept new destination connection", v8, 2u);
    }
  }

  return v5;
}

- (void)xpcQueue_acceptNewDestinationConnection:(id)connection
{
  connectionCopy = connection;
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Accepting new destination connection from PID %d", &buf, 8u);
  }

  [connectionCopy _setQueue:self->_xpcQueue];
  v6 = _DUINewServerDestinationInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v7 = _DUINewClientDestinationInterface();
  [connectionCopy setRemoteObjectInterface:v7];

  objc_initWeak(&buf, connectionCopy);
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000268B8;
  v11[3] = &unk_100054CA0;
  objc_copyWeak(&v12, &buf);
  [connectionCopy setInterruptionHandler:v11];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026978;
  v8[3] = &unk_1000561F0;
  objc_copyWeak(&v9, &buf);
  objc_copyWeak(&v10, &location);
  [connectionCopy setInvalidationHandler:v8];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  objc_destroyWeak(&buf);
}

- (void)xpcQueue_addDragSession:(id)session
{
  sessionCopy = session;
  [(NSMutableArray *)self->_dragSessions addObject:sessionCopy];
  [(DRDragSessionManager *)self xpcQueue_validateTouchStreamForDragSession:sessionCopy];
  +[NSXPCConnection beginTransaction];
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sessionCopy identifier];
    v7 = [(NSMutableArray *)self->_dragSessions count];
    v8[0] = 67109376;
    v8[1] = identifier;
    v9 = 2048;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Added drag session %u (session count now: %lu)", v8, 0x12u);
  }
}

- (void)xpcQueue_removeDragSession:(id)session
{
  sessionCopy = session;
  v5 = [(NSMutableArray *)self->_dragSessions indexOfObjectIdenticalTo:sessionCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    identifier = [sessionCopy identifier];
    [(NSMutableArray *)self->_dragSessions removeObjectAtIndex:v6];
    [(DRDragSessionManager *)self xpcQueue_validateTouchStreamForDragSession:sessionCopy];
    +[NSXPCConnection endTransaction];
    v8 = DRLogTarget();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSMutableArray *)self->_dragSessions count];
      v10[0] = 67109376;
      v10[1] = identifier;
      v11 = 2048;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed drag session %u (session count now: %lu)", v10, 0x12u);
    }
  }
}

- (void)xpcQueue_validateTouchStreamForDragSession:(id)session
{
  sessionCopy = session;
  xpcQueue_pointerDragSessionForEvents = [(DRDragSessionManager *)self xpcQueue_pointerDragSessionForEvents];
  xpcQueue_accessibilityDragSessionForEvents = [(DRDragSessionManager *)self xpcQueue_accessibilityDragSessionForEvents];
  delegate = [(DRDragSessionManager *)self delegate];
  allDisplayIdentifiers = [delegate allDisplayIdentifiers];

  v65 = +[NSMutableDictionary dictionary];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = allDisplayIdentifiers;
  v6 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (!v6)
  {

    v63 = 0;
    goto LABEL_32;
  }

  v63 = 0;
  v58 = 0;
  v61 = *v73;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v73 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v72 + 1) + 8 * i);
      delegate2 = [(DRDragSessionManager *)self delegate];
      v10 = [delegate2 touchTrackingWindowForHardwareDisplayIdentifier:v8];

      [v65 setObject:v10 forKey:v8];
      if (xpcQueue_accessibilityDragSessionForEvents)
      {
        displayIdentifierForSynthesizedTouch = [xpcQueue_accessibilityDragSessionForEvents displayIdentifierForSynthesizedTouch];
        v12 = [displayIdentifierForSynthesizedTouch isEqualToString:v8]^ 1;
      }

      else
      {
        v13 = [(DRDragSessionManager *)self xpcQueue_hasTouchBasedDragSessionForEventsForDisplayIdentifier:v8];
        if (xpcQueue_pointerDragSessionForEvents)
        {
          displayIdentifierForSynthesizedTouch2 = [xpcQueue_pointerDragSessionForEvents displayIdentifierForSynthesizedTouch];
          v15 = [displayIdentifierForSynthesizedTouch2 isEqualToString:v8];

          v16 = v15 ^ 1;
          v58 |= v15 ^ 1;
          v63 |= v15;
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }

        displayIdentifierForSynthesizedTouch = DRLogTarget();
        v12 = v16 | v13;
        if (os_log_type_enabled(displayIdentifierForSynthesizedTouch, OS_LOG_TYPE_INFO))
        {
          *buf = 138413570;
          v78 = v8;
          v79 = 1024;
          *v80 = v12 & 1;
          *&v80[4] = 1024;
          *&v80[6] = v16;
          v81 = 1024;
          v82 = v13;
          v83 = 1024;
          v84 = v15;
          v85 = 2112;
          v86 = xpcQueue_pointerDragSessionForEvents;
          _os_log_impl(&_mh_execute_header, displayIdentifierForSynthesizedTouch, OS_LOG_TYPE_INFO, "{xpcQueue_validateTouchStream: display %@ shouldHaveTouchStream: %d (pointer %d touch %d), shouldHavePointerStream %d, pointerSession %@, ", buf, 0x2Eu);
        }
      }

      windowScene = [v10 windowScene];
      screen = [windowScene screen];
      displayConfiguration = [screen displayConfiguration];
      hardwareIdentifier = [displayConfiguration hardwareIdentifier];

      _contextId = [v10 _contextId];
      touchStreamsByDisplayIdentifier = self->_touchStreamsByDisplayIdentifier;
      if ((v12 & 1) == 0)
      {
        v31 = [(NSMutableDictionary *)touchStreamsByDisplayIdentifier objectForKey:v8];
        v29 = v31;
        if (v31)
        {
          [v31 invalidate];
          v32 = DRLogTarget();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v78 = v8;
            v79 = 2112;
            *v80 = v29;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "xpcQueue_validateTouchStream: display: %@, deleting stream: %@", buf, 0x16u);
          }

          [(NSMutableDictionary *)self->_touchStreamsByDisplayIdentifier removeObjectForKey:v8];
        }

        goto LABEL_24;
      }

      if (!touchStreamsByDisplayIdentifier)
      {
        v23 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [obj count]);
        v24 = self->_touchStreamsByDisplayIdentifier;
        self->_touchStreamsByDisplayIdentifier = v23;

        touchStreamsByDisplayIdentifier = self->_touchStreamsByDisplayIdentifier;
      }

      v25 = [(NSMutableDictionary *)touchStreamsByDisplayIdentifier objectForKey:v8];
      v26 = v25 == 0;

      if (v26)
      {
        v27 = [BKSTouchStream alloc];
        v28 = objc_opt_new();
        v29 = [v27 initWithContextID:_contextId displayUUID:hardwareIdentifier identifier:2 policy:v28];

        v30 = DRLogTarget();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v78 = v8;
          v79 = 2112;
          *v80 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "xpcQueue_validateTouchStream: display: %@, created stream: %@", buf, 0x16u);
        }

        [(NSMutableDictionary *)self->_touchStreamsByDisplayIdentifier setObject:v29 forKey:v8];
LABEL_24:
      }
    }

    v6 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
  }

  while (v6);

  if (((xpcQueue_pointerDragSessionForEvents != 0) & v58) == 1)
  {
    v33 = DRLogTarget();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "xpcQueue_validateTouchStream: creating pointer began watchdog", buf, 2u);
    }

    objc_initWeak(buf, self);
    v34 = [DRDispatchTimer alloc];
    xpcQueue = [(DRDragSessionManager *)self xpcQueue];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_1000275F4;
    v70[3] = &unk_100054CA0;
    objc_copyWeak(&v71, buf);
    v36 = [(DRDispatchTimer *)v34 initWithQueue:xpcQueue eventHandler:v70];

    [(DRDispatchTimer *)v36 resetWithTimeout:0.5 leeway:0.1];
    [(DRDispatchTimer *)v36 activate];
    pointerWatchdogTimer = self->_pointerWatchdogTimer;
    self->_pointerWatchdogTimer = v36;

    objc_destroyWeak(&v71);
    objc_destroyWeak(buf);
  }

LABEL_32:
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v62 = obj;
  v38 = [v62 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v38)
  {
    v39 = *v67;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v67 != v39)
        {
          objc_enumerationMutation(v62);
        }

        v41 = *(*(&v66 + 1) + 8 * j);
        v42 = [v65 objectForKey:v41];
        windowScene2 = [v42 windowScene];
        screen2 = [windowScene2 screen];
        displayConfiguration2 = [screen2 displayConfiguration];
        hardwareIdentifier2 = [displayConfiguration2 hardwareIdentifier];

        _contextId2 = [v42 _contextId];
        pointerServiceAssertionsByDisplayIdentifier = self->_pointerServiceAssertionsByDisplayIdentifier;
        if ((v63 & 1) == 0)
        {
          v54 = [(NSMutableDictionary *)pointerServiceAssertionsByDisplayIdentifier objectForKey:v41];
          if (v54)
          {
            v56 = DRLogTarget();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v78 = v41;
              v79 = 2112;
              *v80 = v54;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "xpcQueue_validateTouchStream: display: %@ deleting mouse pointer service assertion %@", buf, 0x16u);
            }

            [v54 invalidate];
            [(NSMutableDictionary *)self->_pointerServiceAssertionsByDisplayIdentifier removeObjectForKey:v41];
          }

          goto LABEL_48;
        }

        if (!pointerServiceAssertionsByDisplayIdentifier)
        {
          v49 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v62 count]);
          v50 = self->_pointerServiceAssertionsByDisplayIdentifier;
          self->_pointerServiceAssertionsByDisplayIdentifier = v49;

          pointerServiceAssertionsByDisplayIdentifier = self->_pointerServiceAssertionsByDisplayIdentifier;
        }

        v51 = [(NSMutableDictionary *)pointerServiceAssertionsByDisplayIdentifier objectForKey:v41];
        v52 = v51 == 0;

        if (v52)
        {
          v53 = +[BKSMousePointerService sharedInstance];
          v54 = [v53 requestGlobalMouseEventsForDisplay:hardwareIdentifier2 targetContextID:_contextId2];

          v55 = DRLogTarget();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v78 = v41;
            v79 = 2112;
            *v80 = v54;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "xpcQueue_validateTouchStream: display: %@ created mouse pointer service assertion: %@", buf, 0x16u);
          }

          [(NSMutableDictionary *)self->_pointerServiceAssertionsByDisplayIdentifier setObject:v54 forKey:v41];
LABEL_48:
        }
      }

      v38 = [v62 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v38);
  }
}

- (id)xpcQueue_accessibilityDragSessionForEvents
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_dragSessions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 originatedFromAccessibility] && objc_msgSend(v6, "state") < 4)
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)xpcQueue_hasTouchBasedDragSessionForEventsForDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_dragSessions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        delegate = [(DRDragSessionManager *)self delegate];
        v12 = [delegate sourceDisplayIdentifierForDragSession:v10];

        if ([v10 state] <= 3 && (objc_msgSend(v10, "originatedFromAccessibility") & 1) == 0 && (objc_msgSend(v10, "originatedFromPointer") & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", identifierCopy) & 1) != 0)
        {

          v13 = 1;
          goto LABEL_14;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)xpcQueue_pointerDragSessionForEvents
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_dragSessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 originatedFromPointer] && objc_msgSend(v7, "state") < 4)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)_cancelPointerBeganWatchdog
{
  xpcQueue = [(DRDragSessionManager *)self xpcQueue];
  dispatch_assert_queue_V2(xpcQueue);

  [(DRDispatchTimer *)self->_pointerWatchdogTimer cancel];
  pointerWatchdogTimer = self->_pointerWatchdogTimer;
  self->_pointerWatchdogTimer = 0;
}

- (void)_pointerBeganWatchdogFired
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10003146C();
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  xpcQueue_pointerDragSessionForEvents = [(DRDragSessionManager *)self xpcQueue_pointerDragSessionForEvents];
  [xpcQueue_pointerDragSessionForEvents cancelPointerDrag];

  [(DRDragSessionManager *)self _cancelPointerBeganWatchdog];
}

- (void)warmUp
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NSXPCConnection currentConnection];
    v4[0] = 67109120;
    v4[1] = [v3 processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Warmed up by PID %d", v4, 8u);
  }
}

- (void)beginDragWithClientSession:(id)session configuration:(id)configuration reply:(id)reply
{
  sessionCopy = session;
  configurationCopy = configuration;
  replyCopy = reply;
  val = +[NSXPCConnection currentConnection];
  axEndpoint = [configurationCopy axEndpoint];

  touchIDs = [configurationCopy touchIDs];
  v12 = touchIDs;
  v13 = &__NSArray0__struct;
  if (touchIDs)
  {
    v13 = touchIDs;
  }

  v56 = v13;

  v14 = DRLogTarget();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    processIdentifier = [val processIdentifier];
    v16 = [v56 count];
    itemCollection = [configurationCopy itemCollection];
    items = [itemCollection items];
    LODWORD(buf) = 67109632;
    HIDWORD(buf) = processIdentifier;
    v78 = 2048;
    v79 = v16;
    v80 = 2048;
    v81 = [items count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received request to begin drag for PID %d with %ld touches, %ld items", &buf, 0x1Cu);
  }

  if (axEndpoint)
  {
    v19 = [NSXPCConnection alloc];
    axEndpoint2 = [configurationCopy axEndpoint];
    v21 = [v19 initWithListenerEndpoint:axEndpoint2];

    if (v21)
    {
      objc_initWeak(&buf, val);
      objc_initWeak(&location, v21);
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_1000284A0;
      v73[3] = &unk_100054CA0;
      objc_copyWeak(&v74, &location);
      [v21 setInterruptionHandler:v73];
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100028520;
      v71[3] = &unk_100054CA0;
      objc_copyWeak(&v72, &buf);
      [v21 setInvalidationHandler:v71];
      objc_destroyWeak(&v72);
      objc_destroyWeak(&v74);
      objc_destroyWeak(&location);
      objc_destroyWeak(&buf);
    }

    if ([(NSMutableArray *)self->_dragSessions count])
    {
      goto LABEL_13;
    }

    initiatedWithPointer = 0;
    v23 = 0;
  }

  else
  {
    initiatedWithPointer = [configurationCopy initiatedWithPointer];
    v21 = 0;
    v23 = initiatedWithPointer ^ 1;
  }

  xpcQueue_accessibilityDragSessionForEvents = [(DRDragSessionManager *)self xpcQueue_accessibilityDragSessionForEvents];
  v25 = xpcQueue_accessibilityDragSessionForEvents == 0;

  if (v25)
  {
    if (!initiatedWithPointer || ([(DRDragSessionManager *)self xpcQueue_pointerDragSessionForEvents], v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 == 0, v27, v28))
    {
      if ((!axEndpoint || v21) && (([v56 count] == 0) & v23) == 0 && (objc_msgSend(v56, "count") == 0) | v23 & 1 && replyCopy)
      {
        v49 = self->_lastSessionIdentifier + 1;
        self->_lastSessionIdentifier = v49;
        coordinateSpaceSourceLayerContext = [configurationCopy coordinateSpaceSourceLayerContext];
        systemShellHostingSpaceIdentifier = [coordinateSpaceSourceLayerContext systemShellHostingSpaceIdentifier];

        delegate = [(DRDragSessionManager *)self delegate];
        v51 = [delegate activatedSceneGroupForSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier];

        if (v51)
        {
          v31 = dispatch_time(0, 200000000);
          dispatch_group_wait(v51, v31);
        }

        delegate2 = [(DRDragSessionManager *)self delegate];
        v54 = [delegate2 hardwareDisplayIdentifierMatchingSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier];

        if (!v54)
        {
          delegate3 = [(DRDragSessionManager *)self delegate];
          sceneIdentifier = [configurationCopy sceneIdentifier];
          v54 = [delegate3 displayIdentifierForSceneIdentifier:sceneIdentifier];
        }

        delegate4 = [(DRDragSessionManager *)self delegate];
        v50 = [delegate4 touchTrackingWindowForHardwareDisplayIdentifier:v54];

        v52 = [[DRDragSession alloc] initWithIdentifier:v49 configuration:configurationCopy mainWindow:v50 sourceConnection:val accessibilityConnection:v21 clientSource:sessionCopy delegate:self];
        v36 = DRLogTarget();
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        if (!v52)
        {
          if (v37)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Cannot begin drag: could not create drag session", &buf, 2u);
          }

          (*(replyCopy + 2))(replyCopy, 0, 0);
          goto LABEL_54;
        }

        if (v37)
        {
          identifier = [(DRDragSession *)v52 identifier];
          LODWORD(buf) = 67109120;
          HIDWORD(buf) = identifier;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Created session with ID %u", &buf, 8u);
        }

        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_1000285A0;
        v67[3] = &unk_100056218;
        v67[4] = self;
        v47 = v56;
        v68 = v47;
        v39 = v52;
        v69 = v39;
        v40 = configurationCopy;
        v70 = v40;
        v48 = objc_retainBlock(v67);
        if (v23)
        {
          if (!(v48[2])())
          {
            v46 = DRLogTarget();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              sub_1000314DC();
            }

            [(DRDragSession *)v39 fail];
            (*(replyCopy + 2))(replyCopy, 0, 0);
            goto LABEL_53;
          }

          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v41 = v47;
          v42 = [v41 countByEnumeratingWithState:&v63 objects:v76 count:16];
          if (v42)
          {
            v43 = *v64;
            do
            {
              for (i = 0; i != v42; i = i + 1)
              {
                if (*v64 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                [(DRDragSession *)v39 addTouchID:*(*(&v63 + 1) + 8 * i)];
              }

              v42 = [v41 countByEnumeratingWithState:&v63 objects:v76 count:16];
            }

            while (v42);
          }
        }

        [(DRDragSessionManager *)self xpcQueue_addDragSession:v39];
        v45 = DRLogTarget();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Beginning drag", &buf, 2u);
        }

        (*(replyCopy + 2))(replyCopy, v49, v39);
        [(DRDragSession *)v39 beginDrag];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_100028618;
        v58[3] = &unk_100056268;
        v59 = v40;
        v60 = v39;
        selfCopy = self;
        v62 = v47;
        [(DRDragSessionManager *)self _notifyListenersSessionWillBegin:v60 configuration:v59 completion:v58];

LABEL_53:
LABEL_54:

        goto LABEL_17;
      }
    }
  }

LABEL_13:
  v26 = DRLogTarget();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_10003154C();
  }

  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

LABEL_17:
}

- (void)_createExternalConnections
{
  v3 = [DRSystemConnection alloc];
  xpcQueue = [(DRDragSessionManager *)self xpcQueue];
  v5 = [(DRSystemConnection *)v3 initWithQueue:xpcQueue];
  systemConnection = self->_systemConnection;
  self->_systemConnection = v5;

  if (+[DRDragMonitorConnectionProvider isEnsembleSupported])
  {
    xpcQueue2 = [(DRDragSessionManager *)self xpcQueue];
    v8 = [DRDragMonitorConnectionProvider ensembleConnectionWithQueue:xpcQueue2];
    ensembleConnection = self->_ensembleConnection;
    self->_ensembleConnection = v8;
  }

  xpcQueue3 = [(DRDragSessionManager *)self xpcQueue];
  v10 = [DRDragMonitorConnectionProvider onenessConnectionWithQueue:xpcQueue3];
  onenessConnection = self->_onenessConnection;
  self->_onenessConnection = v10;
}

- (void)_notifyListenersSessionWillBegin:(id)begin configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  beginCopy = begin;
  v11 = dispatch_group_create();
  [(DRSystemConnection *)self->_systemConnection notifySessionWillBegin:beginCopy];
  [(DRDragMonitorConnection *)self->_ensembleConnection notifySessionWillBegin:beginCopy configuration:configurationCopy completion:&stru_100056288];
  dispatch_group_enter(v11);
  onenessConnection = self->_onenessConnection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100028B54;
  v14[3] = &unk_100054B50;
  v15 = v11;
  v13 = v11;
  [(DRDragMonitorConnection *)onenessConnection notifySessionWillBegin:beginCopy configuration:configurationCopy completion:v14];

  dispatch_group_notify(v13, self->_xpcQueue, completionCopy);
}

- (void)_notifyListenersSessionDidEnd:(id)end
{
  systemConnection = self->_systemConnection;
  endCopy = end;
  [(DRSystemConnection *)systemConnection notifySessionDidEnd:endCopy];
  [(DRDragMonitorConnection *)self->_ensembleConnection notifySessionDidEnd:endCopy];
  [(DRDragMonitorConnection *)self->_onenessConnection notifySessionDidEnd:endCopy];
}

- (void)configurePortalViewsForDragSessionOriginatingFromViewController:(id)controller
{
  controllerCopy = controller;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  delegate = [(DRDragSessionManager *)self delegate];
  allDisplayIdentifiers = [delegate allDisplayIdentifiers];

  obj = allDisplayIdentifiers;
  v32 = [allDisplayIdentifiers countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v30 = *v34;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        delegate2 = [(DRDragSessionManager *)selfCopy delegate];
        v13 = [delegate2 contentWindowForHardwareDisplayIdentifier:v11];

        rootViewController = [v13 rootViewController];
        v15 = rootViewController;
        if (rootViewController != controllerCopy)
        {
          view = [rootViewController view];
          window = [view window];
          screen = [window screen];
          view2 = [controllerCopy view];
          window2 = [view2 window];
          screen2 = [window2 screen];
          v22 = sub_100002334(screen, screen2, CGRectZero.origin.x);
          v24 = v23;
          v26 = v25;
          v28 = v27;

          v38.origin.x = v22;
          v38.origin.y = v24;
          v38.size.width = v26;
          v38.size.height = v28;
          if (!CGRectIsNull(v38))
          {
            [v15 configurePortalViewForDragSessionOriginatingFromViewController:controllerCopy];
          }
        }

        v10 = v10 + 1;
      }

      while (v32 != v10);
      v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }
}

- (void)teardownPortalViewsForDragSessionOriginatingFromViewController:(id)controller
{
  controllerCopy = controller;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  delegate = [(DRDragSessionManager *)self delegate];
  allDisplayIdentifiers = [delegate allDisplayIdentifiers];

  v7 = [allDisplayIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allDisplayIdentifiers);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        delegate2 = [(DRDragSessionManager *)self delegate];
        v13 = [delegate2 contentWindowForHardwareDisplayIdentifier:v11];

        rootViewController = [v13 rootViewController];
        v15 = rootViewController;
        if (rootViewController != controllerCopy)
        {
          [rootViewController teardownPortalViewForDragSessionOriginatingFromViewController:controllerCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allDisplayIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (id)allWindowContextIdsForDragSession:(id)session
{
  v4 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  delegate = [(DRDragSessionManager *)self delegate];
  allDisplayIdentifiers = [delegate allDisplayIdentifiers];

  v7 = [allDisplayIdentifiers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(allDisplayIdentifiers);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        delegate2 = [(DRDragSessionManager *)self delegate];
        v13 = [delegate2 contentWindowForHardwareDisplayIdentifier:v11];

        delegate3 = [(DRDragSessionManager *)self delegate];
        v15 = [delegate3 touchTrackingWindowForHardwareDisplayIdentifier:v11];

        v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 _contextId]);
        [v4 addObject:v16];

        v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 _contextId]);
        [v4 addObject:v17];
      }

      v8 = [allDisplayIdentifiers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)dragSession:(id)session updateDragItems:(id)items forClient:(id)client withFence:(id)fence
{
  sessionCopy = session;
  itemsCopy = items;
  clientCopy = client;
  fenceCopy = fence;
  v12 = dispatch_group_create();
  selfCopy = self;
  delegate = [(DRDragSessionManager *)self delegate];
  v41 = sessionCopy;
  v42 = [delegate sourceViewControllerForSession:sessionCopy];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v58;
    do
    {
      v18 = 0;
      do
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(v14);
        }

        preview = [*(*(&v57 + 1) + 8 * v18) preview];
        v20 = preview;
        if (preview)
        {
          coordinateSpaceSourceLayerContext = [preview coordinateSpaceSourceLayerContext];
          contextID = [coordinateSpaceSourceLayerContext contextID];

          coordinateSpaceSourceLayerContext2 = [v20 coordinateSpaceSourceLayerContext];
          renderID = [coordinateSpaceSourceLayerContext2 renderID];

          coordinateSpaceSourceLayerContext3 = [v20 coordinateSpaceSourceLayerContext];
          systemShellHostingSpaceIdentifier = [coordinateSpaceSourceLayerContext3 systemShellHostingSpaceIdentifier];

          if (contextID)
          {
            v27 = renderID == 0;
          }

          else
          {
            v27 = 1;
          }

          if (!v27 && systemShellHostingSpaceIdentifier != 0)
          {
            [v20 originalCenterInCoordinateSpace];
            v30 = v29;
            v32 = v31;
            dispatch_group_enter(v12);
            coordinateSpaceSourceLayerContext4 = [v20 coordinateSpaceSourceLayerContext];
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 3221225472;
            v51[2] = sub_100029B48;
            v51[3] = &unk_1000562D8;
            v52 = v42;
            v55 = v30;
            v56 = v32;
            v53 = v20;
            v54 = v12;
            [(DRDragSessionManager *)selfCopy _getTransformForLayerContext:coordinateSpaceSourceLayerContext4 completion:v51];
          }
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v16);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029C0C;
  block[3] = &unk_100056300;
  v45 = v42;
  v46 = v41;
  v47 = fenceCopy;
  v48 = clientCopy;
  v49 = v14;
  v50 = selfCopy;
  v34 = v14;
  v35 = clientCopy;
  v36 = fenceCopy;
  v37 = v41;
  v38 = v42;
  dispatch_group_notify(v12, &_dispatch_main_q, block);
}

- (void)dragSession:(id)session invalidateImageForClient:(id)client itemIndex:(unint64_t)index
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029E20;
  v9[3] = &unk_100055720;
  v9[4] = self;
  sessionCopy = session;
  clientCopy = client;
  indexCopy = index;
  v7 = clientCopy;
  v8 = sessionCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)dragSession:(id)session addedItemCount:(unint64_t)count
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029F6C;
  block[3] = &unk_100055508;
  block[4] = self;
  sessionCopy = session;
  countCopy = count;
  v5 = sessionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dragSession:(id)session updatedPotentialDrop:(id)drop forDestinationClient:(id)client
{
  sessionCopy = session;
  dropCopy = drop;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002A1DC;
  v13[3] = &unk_100056268;
  v13[4] = self;
  v14 = sessionCopy;
  clientCopy = client;
  v16 = dropCopy;
  v10 = dropCopy;
  v11 = clientCopy;
  v12 = sessionCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)resetDestinationClientForDragSession:(id)session
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002A328;
  v4[3] = &unk_100054C50;
  v4[4] = self;
  sessionCopy = session;
  v3 = sessionCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (BOOL)destinationIsSystemConnection:(id)connection
{
  connectionCopy = connection;
  if (-[DRSystemConnection systemProcessIdentifier](self->_systemConnection, "systemProcessIdentifier") && (v5 = [connectionCopy processIdentifier], v5 == -[DRSystemConnection systemProcessIdentifier](self->_systemConnection, "systemProcessIdentifier")))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_100001F18(connectionCopy);
  }

  return v6;
}

- (void)dragSession:(id)session updateRoutingPolicy:(id)policy
{
  xpcQueue = self->_xpcQueue;
  policyCopy = policy;
  sessionCopy = session;
  dispatch_assert_queue_V2(xpcQueue);
  [(DRTouchDetacher *)self->_touchDetacher updateRoutingPolicy:policyCopy forSession:sessionCopy];
}

- (void)dragSession:(id)session findVisibleDroppedItemsInSpaceOfLayerContext:(id)context replyingOnQueue:(id)queue with:(id)with
{
  sessionCopy = session;
  queueCopy = queue;
  withCopy = with;
  contextCopy = context;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002A650;
  v17[3] = &unk_100056350;
  v17[4] = self;
  v18 = sessionCopy;
  identifier = [sessionCopy identifier];
  v19 = queueCopy;
  v20 = withCopy;
  v14 = withCopy;
  v15 = queueCopy;
  v16 = sessionCopy;
  [(DRDragSessionManager *)self _getTransformForLayerContext:contextCopy completion:v17];
}

- (void)dragSession:(id)session removeVisibleDroppedItemsInSpaceOfLayerContext:(id)context replyingOnQueue:(id)queue with:(id)with
{
  sessionCopy = session;
  contextCopy = context;
  queueCopy = queue;
  withCopy = with;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002A9C4;
  v18[3] = &unk_1000563A0;
  v18[4] = self;
  v19 = sessionCopy;
  identifier = [sessionCopy identifier];
  v20 = contextCopy;
  v21 = queueCopy;
  v22 = withCopy;
  v14 = withCopy;
  v15 = queueCopy;
  v16 = contextCopy;
  v17 = sessionCopy;
  [(DRDragSessionManager *)self _getTransformForLayerContext:v16 completion:v18];
}

- (void)dragSessionSetDownAnimationDidEnd:(id)end
{
  endCopy = end;
  delegate = [(DRDragSessionManager *)self delegate];
  v7 = [delegate targetViewControllerForSession:endCopy];

  identifier = [endCopy identifier];
  [v7 teardownSetDownAnimationPortalForSessionIdentifier:identifier];
}

- (void)dragSession:(id)session moveToLocation:(CAPoint3D)location
{
  z = location.z;
  y = location.y;
  x = location.x;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AD94;
  block[3] = &unk_100055810;
  block[4] = self;
  sessionCopy = session;
  v10 = x;
  v11 = y;
  v12 = z;
  v7 = sessionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dragSession:(id)session animateOutVisibleItemsWithOperation:(unint64_t)operation
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002AEC4;
  v6[3] = &unk_1000563C8;
  v6[4] = self;
  sessionCopy = session;
  identifier = [sessionCopy identifier];
  operationCopy = operation;
  v5 = sessionCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)dragSessionWillEnd:(id)end
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AFD8;
  block[3] = &unk_100054DA0;
  block[4] = self;
  endCopy = end;
  identifier = [endCopy identifier];
  v3 = endCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dragSessionDidEnd:(id)end
{
  endCopy = end;
  [(DRDragSessionManager *)self _notifyListenersSessionDidEnd:endCopy];
  [(DRDragSessionManager *)self dragSession:endCopy enableKeyboardIfNeeded:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B118;
  block[3] = &unk_100054DA0;
  block[4] = self;
  v7 = endCopy;
  identifier = [endCopy identifier];
  v5 = endCopy;
  dispatch_async(&_dispatch_main_q, block);
  [(DRDragSessionManager *)self xpcQueue_removeDragSession:v5];
}

- (void)dragSession:(id)session enableKeyboardIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v7 = DRLogTarget();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (neededCopy)
  {
    if (v8)
    {
      v9 = [(NSHashTable *)self->_keyboardSessions count];
      v10 = [(NSHashTable *)self->_keyboardSessions containsObject:sessionCopy];
      *buf = 134218240;
      v25 = v9;
      v26 = 1024;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Drag session setting keyboard enabled, with %lu extant sessions, contained = %d", buf, 0x12u);
    }

    if ([(NSHashTable *)self->_keyboardSessions count]== 1 && [(NSHashTable *)self->_keyboardSessions containsObject:sessionCopy])
    {
      v11 = DRLogTarget();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Keyboard arbiter enabling keyboard", buf, 2u);
      }

      keyboardArbiter = self->_keyboardArbiter;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10002B494;
      v22[3] = &unk_100054D18;
      v23 = sessionCopy;
      [(DRKeyboardArbiter *)keyboardArbiter setKeyboardTotalDisable:0 withFence:0 completionHandler:v22];
    }

    [(NSHashTable *)self->_keyboardSessions removeObject:sessionCopy];
  }

  else
  {
    if (v8)
    {
      v13 = [(NSHashTable *)self->_keyboardSessions count];
      v14 = [(NSHashTable *)self->_keyboardSessions containsObject:sessionCopy];
      *buf = 134218240;
      v25 = v13;
      v26 = 1024;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Drag session setting keyboard disabled, with %lu extant sessions, contained = %d", buf, 0x12u);
    }

    if (![(NSHashTable *)self->_keyboardSessions count])
    {
      v15 = DRLogTarget();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Keyboard arbiter disabling keyboard", buf, 2u);
      }

      v16 = self->_keyboardArbiter;
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_10002B538;
      v20 = &unk_100054D18;
      v21 = sessionCopy;
      [(DRKeyboardArbiter *)v16 setKeyboardTotalDisable:1 withFence:0 completionHandler:&v17];
    }

    [(NSHashTable *)self->_keyboardSessions addObject:sessionCopy, v17, v18, v19, v20];
  }
}

- (void)touchTrackingWindow:(id)window touchesBegan:(id)began
{
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10002B9E0;
  v45[3] = &unk_1000563F0;
  windowCopy = window;
  v46 = windowCopy;
  selfCopy = self;
  v32 = [(DRDragSessionManager *)self _filterTouchesForPointer:began performingBlockForPointerTouch:v45];
  [DRDragSessionManager _forEachTouch:"_forEachTouch:performBlockForSession:" performBlockForSession:?];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy2 = self;
  delegate = [(DRDragSessionManager *)self delegate];
  allDisplayIdentifiers = [delegate allDisplayIdentifiers];

  obj = allDisplayIdentifiers;
  v33 = [allDisplayIdentifiers countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v33)
  {
    v31 = *v42;
    v9 = kSBSCGPointInvalid[0];
    v10 = kSBSCGPointInvalid[1];
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v11;
        v12 = *(*(&v41 + 1) + 8 * v11);
        delegate2 = [(DRDragSessionManager *)selfCopy2 delegate];
        v14 = [delegate2 contentWindowForHardwareDisplayIdentifier:v12];

        rootViewController = [v14 rootViewController];
        v15 = +[NSMutableSet set];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v16 = v32;
        v17 = [v16 countByEnumeratingWithState:&v37 objects:v48 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v38;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v38 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v37 + 1) + 8 * i);
              [v21 locationInView:windowCopy];
              v23 = v22;
              screen = [windowCopy screen];
              screen2 = [v14 screen];
              v26 = sub_100002024(screen, screen2, v23);
              v28 = v27;

              if (v26 != v9 || v28 != v10)
              {
                [v15 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v37 objects:v48 count:16];
          }

          while (v18);
        }

        if ([v15 count] && -[DRDragSessionManager _addBeginningTouchesToExistingSessions:viewController:touchWindow:](selfCopy2, "_addBeginningTouchesToExistingSessions:viewController:touchWindow:", v15, rootViewController, windowCopy))
        {
          [rootViewController updateWithTouches:v15];
        }

        v11 = v36 + 1;
      }

      while ((v36 + 1) != v33);
      v33 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v33);
  }
}

- (void)touchTrackingWindow:(id)window touchesMoved:(id)moved
{
  windowCopy = window;
  movedCopy = moved;
  delegate = [(DRDragSessionManager *)self delegate];
  windowScene = [windowCopy windowScene];
  v10 = sub_100001F60(windowScene);
  v11 = [delegate contentWindowForHardwareDisplayIdentifier:v10];

  [v11 rootViewController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002BCD4;
  v16 = v15[3] = &unk_100056458;
  selfCopy = self;
  v18 = windowCopy;
  v12 = windowCopy;
  v13 = v16;
  v14 = [(DRDragSessionManager *)self _filterTouchesForPointer:movedCopy performingBlockForPointerTouch:v15];

  [(DRDragSessionManager *)self _forEachTouch:v14 performBlockForSession:&stru_100056478];
  [v13 updateWithTouches:v14];
}

- (void)touchTrackingWindow:(id)window touchesEnded:(id)ended pairedWithVelocities:(id)velocities
{
  windowCopy = window;
  velocitiesCopy = velocities;
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10002C3A8;
  v70[3] = &unk_1000564A0;
  v70[4] = self;
  v10 = [(DRDragSessionManager *)self _filterTouchesForPointer:ended performingBlockForPointerTouch:v70];
  selfCopy = self;
  delegate = [(DRDragSessionManager *)self delegate];
  windowScene = [windowCopy windowScene];
  v13 = sub_100001F60(windowScene);
  v14 = [delegate contentWindowForHardwareDisplayIdentifier:v13];

  v49 = v14;
  rootViewController = [v14 rootViewController];
  v50 = v10;
  [rootViewController removeTouches:v10];
  v15 = objc_opt_new();
  v53 = objc_opt_new();
  v46 = objc_opt_new();
  v45 = objc_opt_new();
  [windowCopy bounds];
  y = v88.origin.y;
  x = v88.origin.x;
  height = v88.size.height;
  width = v88.size.width;
  v89 = CGRectInset(v88, 10.0, 10.0);
  v16 = v89.origin.x;
  v17 = v89.origin.y;
  v18 = v89.size.width;
  v19 = v89.size.height;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = velocitiesCopy;
  v20 = [obj countByEnumeratingWithState:&v66 objects:v83 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v67;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v67 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v66 + 1) + 8 * i);
        touch = [v24 touch];
        v26 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [touch _touchIdentifier]);
        [touch locationInView:windowCopy];
        v28 = v27;
        v30 = v29;
        v64 = 0u;
        v65 = 0u;
        if (v24)
        {
          [v24 velocity];
          v31 = *(&v64 + 1);
          v32 = *&v64;
        }

        else
        {
          v31 = 0.0;
          v32 = 0.0;
        }

        v90.origin.x = v16;
        v90.origin.y = v17;
        v90.size.width = v18;
        v90.size.height = v19;
        v86.x = v28;
        v86.y = v30;
        v33 = CGRectContainsPoint(v90, v86);
        v34 = v15;
        if (!v33)
        {
          v35 = v30 + v31 * 0.5;
          v36 = v28 + v32 * 0.5;
          v91.origin.y = y;
          v91.origin.x = x;
          v91.size.height = height;
          v91.size.width = width;
          v87.x = v36;
          v87.y = v35;
          v37 = CGRectContainsPoint(v91, v87);
          v34 = v15;
          if (!v37)
          {
            v38 = DRLogTarget();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v84.x = v28;
              v84.y = v30;
              v39 = NSStringFromCGPoint(v84);
              v85.x = v36;
              v85.y = v35;
              v52 = NSStringFromCGPoint(v85);
              v92.origin.y = y;
              v92.origin.x = x;
              v92.size.height = height;
              v92.size.width = width;
              v51 = NSStringFromCGRect(v92);
              *buf = 138544642;
              v72 = v39;
              v73 = 2048;
              v74 = v64;
              v75 = 2048;
              v76 = *(&v64 + 1);
              v77 = 2048;
              v78 = v65;
              v79 = 2114;
              v80 = v52;
              v81 = 2114;
              v82 = v51;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Touch end is likely moving offscreen: location %{public}@ velocity (%f, %f, %f) estimatedTo %{public}@ bounds %{public}@", buf, 0x3Eu);
            }

            v34 = v53;
          }
        }

        [v34 addObject:v26];
      }

      v21 = [obj countByEnumeratingWithState:&v66 objects:v83 count:16];
    }

    while (v21);
  }

  xpcQueue = selfCopy->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C4B0;
  block[3] = &unk_1000564C8;
  block[4] = selfCopy;
  v60 = v15;
  v61 = v45;
  v62 = v46;
  v63 = v53;
  v41 = v53;
  v42 = v46;
  v43 = v45;
  v44 = v15;
  dispatch_async(xpcQueue, block);
}

- (void)touchTrackingWindow:(id)window touchesCancelled:(id)cancelled
{
  windowCopy = window;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10002CAE4;
  v34[3] = &unk_1000564A0;
  v34[4] = self;
  v7 = [(DRDragSessionManager *)self _filterTouchesForPointer:cancelled performingBlockForPointerTouch:v34];
  selfCopy = self;
  delegate = [(DRDragSessionManager *)self delegate];
  windowScene = [windowCopy windowScene];
  v10 = sub_100001F60(windowScene);
  v11 = [delegate contentWindowForHardwareDisplayIdentifier:v10];

  v25 = v11;
  rootViewController = [v11 rootViewController];
  [rootViewController removeTouches:v7];
  v12 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = DRLogTarget();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          [v17 locationInView:windowCopy];
          v19 = NSStringFromCGPoint(v40);
          [windowCopy bounds];
          v20 = NSStringFromCGRect(v41);
          *buf = 138412546;
          v36 = v19;
          v37 = 2112;
          v38 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Touch tracking window received touch cancellation: location %@ bounds %@", buf, 0x16u);
        }

        v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 _touchIdentifier]);
        [v12 addObject:v21];
      }

      v14 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  xpcQueue = selfCopy->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CBEC;
  block[3] = &unk_100054C50;
  block[4] = selfCopy;
  v29 = v12;
  v23 = v12;
  dispatch_async(xpcQueue, block);
}

- (void)_cancelAllDragSessions
{
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CE28;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

- (void)_forEachTouch:(id)touch performBlockForSession:(id)session
{
  touchCopy = touch;
  sessionCopy = session;
  if (sessionCopy)
  {
    v8 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = touchCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(*(&v20 + 1) + 8 * v13) _touchIdentifier]);
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    xpcQueue = [(DRDragSessionManager *)self xpcQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002D0FC;
    block[3] = &unk_100055468;
    block[4] = self;
    v18 = v8;
    v19 = sessionCopy;
    v16 = v8;
    dispatch_async(xpcQueue, block);
  }
}

- (id)_filterTouchesForPointer:(id)pointer performingBlockForPointerTouch:(id)touch
{
  pointerCopy = pointer;
  touchCopy = touch;
  if (sub_100002668())
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = pointerCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v13 _isPointerTouch])
          {
            if (!v10)
            {
              v10 = [v7 mutableCopy];
            }

            [v10 removeObject:v13];
            if (touchCopy)
            {
              touchCopy[2](touchCopy, v13);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v7;
    }

    v16 = v15;
  }

  else
  {
    if (pointerCopy)
    {
      v14 = pointerCopy;
    }

    else
    {
      v14 = +[NSSet set];
    }

    v16 = v14;
  }

  return v16;
}

- (BOOL)_addBeginningTouchesToExistingSessions:(id)sessions viewController:(id)controller touchWindow:(id)window
{
  sessionsCopy = sessions;
  controllerCopy = controller;
  windowCopy = window;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = sessionsCopy;
  v10 = [sessionsCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    selfCopy = self;
    v25 = windowCopy;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v27 = *v35;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = [controllerCopy sessionViewModelForAddingTouch:{v16, selfCopy}];
        if (v17)
        {
          if (v13)
          {
            v18 = v12;
            v19 = v14;
          }

          else
          {
            v13 = objc_opt_new();
            v19 = objc_opt_new();

            v18 = +[NSMutableIndexSet indexSet];
          }

          v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [controllerCopy sessionIDForViewModel:v17]);
          v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v16 _touchIdentifier]);
          [v13 setObject:v21 forKey:v20];

          v14 = v19;
          [v19 setObject:v17 forKey:v20];
          [v18 addIndex:{objc_msgSend(v20, "unsignedIntegerValue")}];

          v12 = v18;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
    if (v12)
    {
      xpcQueue = selfCopy->_xpcQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002D788;
      block[3] = &unk_1000564C8;
      block[4] = selfCopy;
      v30 = v12;
      v14 = v14;
      v31 = v14;
      v13 = v13;
      v32 = v13;
      windowCopy = v25;
      v33 = v25;
      v12 = v12;
      dispatch_sync(xpcQueue, block);

      LOBYTE(v12) = 1;
    }

    else
    {
      windowCopy = v25;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
    v14 = 0;
    v13 = 0;
  }

  return v12;
}

- (void)_getTransformForLayerContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  systemShellHostingSpaceIdentifier = [contextCopy systemShellHostingSpaceIdentifier];

  if (systemShellHostingSpaceIdentifier)
  {
    delegate = [(DRDragSessionManager *)self delegate];
    systemShellHostingSpaceIdentifier2 = [contextCopy systemShellHostingSpaceIdentifier];
    systemShellHostingSpaceIdentifier = [delegate hardwareDisplayIdentifierMatchingSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier2];

    if (!systemShellHostingSpaceIdentifier)
    {
      v11 = DRLogTarget();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10003181C(contextCopy, v11);
      }

      systemShellHostingSpaceIdentifier = 0;
    }
  }

  -[DRDragSessionManager _getTransformForContextID:layerRenderID:displayID:allowingEmptyLayerID:completion:](self, "_getTransformForContextID:layerRenderID:displayID:allowingEmptyLayerID:completion:", [contextCopy contextID], objc_msgSend(contextCopy, "renderID"), systemShellHostingSpaceIdentifier, 0, completionCopy);
}

- (void)_getTransformForContextID:(unsigned int)d layerRenderID:(unint64_t)iD displayID:(id)displayID allowingEmptyLayerID:(BOOL)layerID completion:(id)completion
{
  layerIDCopy = layerID;
  displayIDCopy = displayID;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([displayIDCopy isEqualToString:off_100062738])
    {

      displayIDCopy = 0;
    }

    if (iD)
    {
      v14 = 1;
    }

    else
    {
      v14 = layerIDCopy;
    }

    if (d && v14)
    {
      transformUpdateQueue = self->_transformUpdateQueue;
      if (!transformUpdateQueue)
      {
        v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v17 = BSDispatchQueueCreateWithFixedPriority();
        v18 = self->_transformUpdateQueue;
        self->_transformUpdateQueue = v17;

        transformUpdateQueue = self->_transformUpdateQueue;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002DE20;
      block[3] = &unk_100056518;
      v19 = &v23;
      v23 = displayIDCopy;
      iDCopy = iD;
      dCopy = d;
      v24 = completionCopy;
      dispatch_async(transformUpdateQueue, block);
    }

    else
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10002E008;
      v20[3] = &unk_100054B78;
      v19 = &v21;
      v21 = completionCopy;
      dispatch_async(&_dispatch_main_q, v20);
    }
  }
}

- (DRDragSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end