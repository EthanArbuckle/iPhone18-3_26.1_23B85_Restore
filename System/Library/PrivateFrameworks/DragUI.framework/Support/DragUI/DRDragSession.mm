@interface DRDragSession
- ($1AB5FA073B851C12C2339EC22442E995)associatedObjectManipulationDragItemSize;
- (BOOL)_areAllTouchesEndedOrCancelled;
- (BOOL)_canRunBlocksWaitingForLastTouchAndDestinationToEnd;
- (BOOL)_runBlocksWaitingForLastTouchAndDestinationToEndIfPossible;
- (BOOL)shouldIgnoreRequest:(SEL)request fromDestination:(id)destination;
- (BOOL)synthesizesTouch;
- (CGSize)maximumResizableSize;
- (CGSize)minimumResizableSize;
- (CGSize)originalScale;
- (DRDragSession)initWithIdentifier:(unsigned int)identifier configuration:(id)configuration mainWindow:(id)window sourceConnection:(id)connection accessibilityConnection:(id)accessibilityConnection clientSource:(id)source delegate:(id)delegate;
- (DRDragSessionDelegate)delegate;
- (DRTouchTrackingWindow)interactionWindow;
- (DRTouchTrackingWindow)sourceInteractionWindow;
- (NSSet)touchIDs;
- (NSString)description;
- (NSXPCConnection)dropDestinationConnection;
- (UIDraggingSystemTouchRoutingPolicy)routingPolicy;
- (id)currentDestination;
- (id)dataTransferSessionForDestination:(id)destination;
- (id)itemCollectionForDestination:(id)destination;
- (id)newDataTransferSessionWithDestinationAuditToken:(id *)token filter:(id)filter;
- (void)_acceptDragPreviews:(id)previews fence:(id)fence fromClient:(id)client;
- (void)_animateOutVisibleItemsAndEndDragWithOperation:(unint64_t)operation destination:(id)destination;
- (void)_applyMainWindowExclusionToRoutingPolicy:(id)policy;
- (void)_cancelDrag;
- (void)_cancelTouchWatchdog;
- (void)_endDragByCancelling;
- (void)_endDragWithOperation:(unint64_t)operation dataTransferSession:(id)session;
- (void)_endDragWithOperation:(unint64_t)operation destination:(id)destination;
- (void)_handleDirtyItems:(id)items fromClient:(id)client;
- (void)_lastTouchEndedNormally:(BOOL)normally;
- (void)_liftVirtualHIDServiceIfNecessary;
- (void)_logStatisticsForDragEnd:(unint64_t)end destination:(id)destination;
- (void)_notifyDestinationsWithAddedItemsStartingAtIndex:(unint64_t)index;
- (void)_performAfterLastTouchAndDestinationBothEnd:(id)end;
- (void)_performDropOperation:(unint64_t)operation layerContext:(id)context forConnection:(id)connection;
- (void)_receivedEndFromDestinationOnConnection:(id)connection;
- (void)_resetTouchWatchdogWithTimeout:(double)timeout;
- (void)_runBlocksWaitingForLastTouchAndDestinationToEnd;
- (void)_touchWatchdogFired;
- (void)_transitionToDoneIfPossible;
- (void)_updateAccessibilityDragStatus;
- (void)_updateIsAnyProcessBeingDebuggedWithConnection:(id)connection;
- (void)_updatePotentialDrop:(id)drop forDestinationClient:(id)client;
- (void)accessibilityCancel;
- (void)accessibilityDrop;
- (void)accessibilityMoveToPoint:(CGPoint)point;
- (void)addItemCollection:(id)collection dataProviderEndpoint:(id)endpoint;
- (void)addTouchID:(id)d;
- (void)beganPointerDrag;
- (void)beginAccessibilityDragAtLocationIfNeeded:(CAPoint3D)needed hidService:(id)service;
- (void)beginDrag;
- (void)beginPointerDragAtLocationIfNeeded:(CAPoint3D)needed hidService:(id)service;
- (void)cancelDrag;
- (void)cancelDragSession;
- (void)cancelPointerDrag;
- (void)commandeerDragSession;
- (void)dataTransferSessionFinished:(id)finished;
- (void)dealloc;
- (void)destinationConnectionWasInvalidated:(id)invalidated;
- (void)didFinishRequestingDataForDragContinuation:(id)continuation;
- (void)dirtyDestinationItems:(id)items;
- (void)dirtySourceItems:(id)items;
- (void)disableDragDisplay;
- (void)dragDidExitSourceApp;
- (void)enableKeyboardIfNeeded;
- (void)endPointerDrag;
- (void)fail;
- (void)loadURLForItemAtIndex:(unint64_t)index reply:(id)reply;
- (void)loadUserActivityDataForItemAtIndex:(unint64_t)index reply:(id)reply;
- (void)movePointerDragToPoint:(CAPoint3D)point hidService:(id)service;
- (void)notifyDragMonitorsWithUpdatedPresentation:(id)presentation;
- (void)overrideDragWindowToPoint:(CGPoint)point;
- (void)performAfterReceivingOutsideAppSourceOperationMask:(id)mask;
- (void)performOffscreenDrop;
- (void)requestDragContinuationEndpointWithReply:(id)reply;
- (void)requestDropWithOperation:(unint64_t)operation layerContext:(id)context;
- (void)requestImagesForClient:(id)client itemIndexes:(id)indexes;
- (void)requestVisibleItemsWithReply:(id)reply;
- (void)sawDragEndEvent;
- (void)sendDragEndedWithOperation:(unint64_t)operation;
- (void)setSetDownAnimationState:(int64_t)state;
- (void)setState:(int64_t)state;
- (void)sourceConnectionWasInvalidated;
- (void)surrenderDragSession;
- (void)takePotentialDrop:(id)drop;
- (void)touchBeganWithID:(id)d;
- (void)touchCancelledWithID:(id)d;
- (void)touchEndedWithID:(id)d contextID:(id)iD pid:(id)pid likelyMovingOffscreen:(BOOL)offscreen;
- (void)touchMovedWithID:(id)d;
- (void)touchUpOccuredForIdentifier:(unsigned int)identifier detached:(BOOL)detached context:(unsigned int)context pid:(int)pid;
- (void)transitionFromState:(int64_t)state toTerminalState:(int64_t)terminalState;
- (void)updateRoutingPolicy:(id)policy;
@end

@implementation DRDragSession

- (DRDragSession)initWithIdentifier:(unsigned int)identifier configuration:(id)configuration mainWindow:(id)window sourceConnection:(id)connection accessibilityConnection:(id)accessibilityConnection clientSource:(id)source delegate:(id)delegate
{
  configurationCopy = configuration;
  windowCopy = window;
  connectionCopy = connection;
  accessibilityConnectionCopy = accessibilityConnection;
  sourceCopy = source;
  obj = delegate;
  itemCollection = [configurationCopy itemCollection];
  dataProviderEndpoint = [configurationCopy dataProviderEndpoint];
  if (!identifier || !connectionCopy || !itemCollection || ([itemCollection items], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, !sourceCopy) || !v19 || !dataProviderEndpoint)
  {
    v44 = DRLogTarget();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100030170();
    }

    goto LABEL_16;
  }

  if (accessibilityConnectionCopy)
  {
    v20 = _DUINewClientSessionAccessibilityInterface();
    [accessibilityConnectionCopy setRemoteObjectInterface:v20];

    [accessibilityConnectionCopy resume];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v83 = 0x2020000000;
    v84 = 0;
    v21 = [accessibilityConnectionCopy synchronousRemoteObjectProxyWithErrorHandler:&stru_100055680];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100016D38;
    v79[3] = &unk_1000556A8;
    p_buf = &buf;
    v22 = accessibilityConnectionCopy;
    v80 = v22;
    [v21 dragWillBeginWithReply:v79];
    if (*(*(&buf + 1) + 24))
    {

      _Block_object_dispose(&buf, 8);
      goto LABEL_10;
    }

    v47 = DRLogTarget();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      sub_100030108();
    }

    [v22 invalidate];
    _Block_object_dispose(&buf, 8);
LABEL_16:
    selfCopy = 0;
    goto LABEL_17;
  }

LABEL_10:
  v78.receiver = self;
  v78.super_class = DRDragSession;
  v23 = [(DRDragSession *)&v78 init];
  if (v23)
  {
    _queue = [connectionCopy _queue];
    xpcQueue = v23->_xpcQueue;
    v23->_xpcQueue = _queue;

    v23->_identifier = identifier;
    objc_storeWeak(&v23->_delegate, obj);
    routingPolicy = [configurationCopy routingPolicy];
    routingPolicy = v23->_routingPolicy;
    v23->_routingPolicy = routingPolicy;

    v23->_supportsSystemDrag = [configurationCopy supportsSystemDrag];
    v23->_avoidsKeyboardSuppression = [configurationCopy avoidsKeyboardSuppression];
    v23->_rotatable = [configurationCopy rotatable];
    v23->_resizable = [configurationCopy resizable];
    [configurationCopy minimumResizableSize];
    v23->_minimumResizableSize.width = v28;
    v23->_minimumResizableSize.height = v29;
    [configurationCopy maximumResizableSize];
    v23->_maximumResizableSize.width = v30;
    v23->_maximumResizableSize.height = v31;
    persistentSceneIdentifier = [configurationCopy persistentSceneIdentifier];
    persistentSceneIdentifier = v23->_persistentSceneIdentifier;
    v23->_persistentSceneIdentifier = persistentSceneIdentifier;

    v23->_wantsElasticEffects = [configurationCopy wantsElasticEffects];
    [configurationCopy originalRotation];
    v23->_originalRotation = v34;
    [configurationCopy originalScale];
    v23->_originalScale.width = v35;
    v23->_originalScale.height = v36;
    v23->_mainWindowContextId = [windowCopy _contextId];
    objc_storeWeak(&v23->_sourceInteractionWindow, windowCopy);
    coordinateSpaceSourceLayerContext = [configurationCopy coordinateSpaceSourceLayerContext];
    v23->_dragSourceContextId = [coordinateSpaceSourceLayerContext contextID];

    v23->_sourceRestrictsDragToSelf = [configurationCopy sessionIsRestrictedToSourceApplication];
    v23->_sourceRestrictsDragToLocalDevice = [configurationCopy sessionIsRestrictedToLocalDevice];
    screen = [windowCopy screen];
    v23->_originatedFromContinuityDisplay = sub_1000022FC(screen);

    [(DRDragSession *)v23 _applyMainWindowExclusionToRoutingPolicy:v23->_routingPolicy];
    objc_storeStrong(&v23->_sourceConnection, connection);
    objc_storeStrong(&v23->_itemCollection, itemCollection);
    objc_storeStrong(&v23->_dataProviderEndpoint, dataProviderEndpoint);
    v39 = dispatch_queue_create("com.apple.druid.loader", 0);
    loaderQueue = v23->_loaderQueue;
    v23->_loaderQueue = v39;

    if (accessibilityConnectionCopy)
    {
      v23->_originatedFromAccessibility = 1;
      objc_storeStrong(&v23->_axConnection, accessibilityConnection);
      v41 = _DUINewServerSessionAccessibilityInterface();
      [accessibilityConnectionCopy setExportedInterface:v41];

      [accessibilityConnectionCopy setExportedObject:v23];
      remoteObjectProxy = [accessibilityConnectionCopy remoteObjectProxy];
      accessibilityProxy = v23->_accessibilityProxy;
      v23->_accessibilityProxy = remoteObjectProxy;
    }

    else
    {
      v23->_originatedFromPointer = [configurationCopy initiatedWithPointer];
    }

    if ([configurationCopy associatedObjectManipulationSessionIdentifier])
    {
      v23->_associatedObjectManipulationSessionID = [configurationCopy associatedObjectManipulationSessionIdentifier];
      [configurationCopy associatedObjectManipulationDragItemSize];
      v23->_associatedObjectManipulationDragItemSize.width = v48;
      v23->_associatedObjectManipulationDragItemSize.height = v49;
      v23->_associatedObjectManipulationDragItemSize.depth = v50;
    }

    objc_storeStrong(&v23->_clientSource, source);
    v51 = objc_alloc_init(NSMutableSet);
    touchIDs = v23->_touchIDs;
    v23->_touchIDs = v51;

    v53 = objc_alloc_init(NSMutableSet);
    endedTouchIDs = v23->_endedTouchIDs;
    v23->_endedTouchIDs = v53;

    v55 = objc_alloc_init(NSMutableArray);
    dragItems = v23->_dragItems;
    v23->_dragItems = v55;

    v23->_state = 0;
    v23->_lastPotentialDropWasFromSourceApp = 1;
    if ([configurationCopy wantsPresentationUpdates])
    {
      v57 = [connectionCopy valueForEntitlement:@"com.apple.DragUI.presentationUpdateNotification"];
      v23->_sourceReceivesPresentationUpdates = [v57 isEqual:&__kCFBooleanTrue];
    }

    v58 = +[NSMapTable weakToStrongObjectsMapTable];
    connectionToDestinationMap = v23->_connectionToDestinationMap;
    v23->_connectionToDestinationMap = v58;

    items = [itemCollection items];
    v61 = [items count];
    if (v61)
    {
      for (i = 0; i != v61; ++i)
      {
        v63 = [DRDragItem alloc];
        v64 = [items objectAtIndexedSubscript:i];
        v65 = [(DRDragItem *)v63 initWithPasteboardItem:v64];

        if (v65)
        {
          [(NSMutableArray *)v23->_dragItems addObject:v65];
        }
      }
    }

    v23->_sourceDataOwner = [itemCollection originatorDataOwner];
    [(DRDragSession *)v23 _updateIsAnyProcessBeingDebuggedWithConnection:connectionCopy];
    if (qword_100063628 != -1)
    {
      sub_100030148();
    }

    if (byte_100063630 == 1 && (sub_10001F158() & 1) == 0 || v23->_originatedFromAccessibility || v23->_isAnyProcessBeingDebugged)
    {
      v66 = DRLogTarget();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v23;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Session %@: Touch watchdog disabled", &buf, 0xCu);
      }
    }

    else
    {
      objc_initWeak(&buf, v23);
      v67 = [DRDispatchTimer alloc];
      v68 = v23->_xpcQueue;
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_100016DD4;
      v76[3] = &unk_100054CA0;
      objc_copyWeak(&v77, &buf);
      v69 = [(DRDispatchTimer *)v67 initWithQueue:v68 eventHandler:v76];
      touchWatchdogTimer = v23->_touchWatchdogTimer;
      v23->_touchWatchdogTimer = v69;

      if (v23->_touchWatchdogTimer)
      {
        [(DRDragSession *)v23 _resetTouchWatchdogWithTimeout:2.0];
        [(DRDispatchTimer *)v23->_touchWatchdogTimer activate];
      }

      objc_destroyWeak(&v77);
      objc_destroyWeak(&buf);
    }

    if (v23->_originatedFromAccessibility)
    {
      [(DRDragSession *)v23 _updateAccessibilityDragStatus];
    }
  }

  self = v23;
  selfCopy = self;
LABEL_17:

  return selfCopy;
}

- (void)_updateIsAnyProcessBeingDebuggedWithConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (!self->_isAnyProcessBeingDebugged)
  {
    v4 = sub_100001D58([connectionCopy processIdentifier]);
    self->_isAnyProcessBeingDebugged = v4;
    if (v4)
    {
      [(DRDragSession *)self _cancelTouchWatchdog];
    }
  }
}

- (void)dealloc
{
  if ((self->_state - 7) >= 2)
  {
    v3 = DRLogTarget();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000301AC(self, &self->_state, v3);
    }
  }

  v4.receiver = self;
  v4.super_class = DRDragSession;
  [(DRDragSession *)&v4 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = self->_identifier;
  v6 = sub_100016F14(self->_state);
  v7 = [NSString stringWithFormat:@"<%@ %p identifier=%u state=%@>", v4, self, identifier, v6];

  return v7;
}

- (BOOL)synthesizesTouch
{
  if (self->_originatedFromAccessibility)
  {
    return 1;
  }

  else
  {
    return sub_100002668() && self->_originatedFromPointer;
  }
}

- (void)setSetDownAnimationState:(int64_t)state
{
  if (self->_setDownAnimationState != state)
  {
    self->_setDownAnimationState = state;
    if (state == 2)
    {
      setDownAnimationTimeoutTimer = self->_setDownAnimationTimeoutTimer;
      if (setDownAnimationTimeoutTimer)
      {
        [(DRDispatchTimer *)setDownAnimationTimeoutTimer cancel];
        v10 = self->_setDownAnimationTimeoutTimer;
        self->_setDownAnimationTimeoutTimer = 0;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100017298;
      block[3] = &unk_100054B50;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
      [(DRDragSession *)self _transitionToDoneIfPossible];
    }

    else if (state == 1)
    {
      if (!self->_setDownAnimationTimeoutTimer)
      {
        objc_initWeak(&location, self);
        v4 = [DRDispatchTimer alloc];
        xpcQueue = self->_xpcQueue;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100017254;
        v12[3] = &unk_100054CA0;
        objc_copyWeak(&v13, &location);
        v6 = [(DRDispatchTimer *)v4 initWithQueue:xpcQueue eventHandler:v12];
        v7 = self->_setDownAnimationTimeoutTimer;
        self->_setDownAnimationTimeoutTimer = v6;

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }

      if (qword_100063628 != -1)
      {
        sub_100030260();
      }

      v8 = 5.0;
      if (byte_100063630 == 1)
      {
        v8 = sub_10001F304();
      }

      [(DRDispatchTimer *)self->_setDownAnimationTimeoutTimer resetWithTimeout:v8 leeway:v8 * 0.1];
      [(DRDispatchTimer *)self->_setDownAnimationTimeoutTimer activate];
    }
  }
}

- (void)_transitionToDoneIfPossible
{
  if ([(DRDragSession *)self setDownAnimationState]== 1)
  {
    selfCopy2 = self;
    v4 = 6;
  }

  else
  {
    if (self->_pendingDataTransferSession)
    {
      return;
    }

    sourceConnection = [(DRDragSession *)self sourceConnection];
    [sourceConnection invalidate];

    WeakRetained = objc_loadWeakRetained(&self->_dropDestinationConnection);
    [WeakRetained invalidate];

    selfCopy2 = self;
    v4 = 7;
  }

  [(DRDragSession *)selfCopy2 setState:v4];
}

- (void)addTouchID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (([(NSMutableSet *)self->_touchIDs containsObject:dCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_touchIDs addObject:dCopy];
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = dCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Session %@: Added touch ID %@", &v7, 0x16u);
    }

    ++self->_pendingTouchUpObservationCount;
    self->_pendingDisplayTransitionLift = 0;
    v6 = +[BKSTouchDeliveryObservationService sharedInstance];
    [v6 addObserver:self forTouchIdentifier:{objc_msgSend(dCopy, "unsignedIntegerValue")}];
  }
}

- (NSSet)touchIDs
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v3 = [(NSMutableSet *)self->_touchIDs copy];

  return v3;
}

- (UIDraggingSystemTouchRoutingPolicy)routingPolicy
{
  systemRoutingPolicy = self->_systemRoutingPolicy;
  if (!systemRoutingPolicy)
  {
    systemRoutingPolicy = self->_routingPolicy;
  }

  return systemRoutingPolicy;
}

- (void)touchBeganWithID:(id)d
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (![(DRDragSession *)self synthesizesTouch])
  {

    [(DRDragSession *)self _resetTouchWatchdogWithTimeout:20.0];
  }
}

- (void)touchMovedWithID:(id)d
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (![(DRDragSession *)self synthesizesTouch])
  {

    [(DRDragSession *)self _resetTouchWatchdogWithTimeout:20.0];
  }
}

- (void)touchEndedWithID:(id)d contextID:(id)iD pid:(id)pid likelyMovingOffscreen:(BOOL)offscreen
{
  offscreenCopy = offscreen;
  xpcQueue = self->_xpcQueue;
  dCopy = d;
  dispatch_assert_queue_V2(xpcQueue);
  v9 = !offscreenCopy || self->_isSystemCommandeered;
  [(DRDragSession *)self _touchEndedNormally:v9 withID:dCopy];
}

- (void)touchCancelledWithID:(id)d
{
  xpcQueue = self->_xpcQueue;
  dCopy = d;
  dispatch_assert_queue_V2(xpcQueue);
  [(DRDragSession *)self _touchEndedNormally:0 withID:dCopy];
}

- (BOOL)_areAllTouchesEndedOrCancelled
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  touchIDs = self->_touchIDs;
  endedTouchIDs = self->_endedTouchIDs;

  return [(NSMutableSet *)touchIDs isSubsetOfSet:endedTouchIDs];
}

- (void)_resetTouchWatchdogWithTimeout:(double)timeout
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  touchWatchdogTimer = self->_touchWatchdogTimer;
  if (touchWatchdogTimer)
  {

    [(DRDispatchTimer *)touchWatchdogTimer resetWithTimeout:timeout leeway:0.5];
  }
}

- (void)_cancelTouchWatchdog
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  touchWatchdogTimer = self->_touchWatchdogTimer;
  if (touchWatchdogTimer)
  {
    [(DRDispatchTimer *)touchWatchdogTimer cancel];
    v4 = self->_touchWatchdogTimer;
    self->_touchWatchdogTimer = 0;
  }
}

- (void)_touchWatchdogFired
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100030288();
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  [(DRDragSession *)self _cancelDrag];
  [(DRDragSession *)self _cancelTouchWatchdog];
}

- (void)_cancelDrag
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %@: cancel drag", buf, 0xCu);
  }

  touchIDs = [(DRDragSession *)self touchIDs];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [touchIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(touchIDs);
        }

        [(DRDragSession *)self touchCancelledWithID:*(*(&v11 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [touchIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([touchIDs count])
  {
    allObjects = [touchIDs allObjects];
    BKSHIDServicesCancelTouchesWithIdentifiers();
  }

  if (!self->_lastTouchEnded)
  {
    v10 = DRLogTarget();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_cancelDrag injecting last touch ended, normally=NO", buf, 2u);
    }

    [(DRDragSession *)self _lastTouchEndedNormally:0];
  }
}

- (void)touchUpOccuredForIdentifier:(unsigned int)identifier detached:(BOOL)detached context:(unsigned int)context pid:(int)pid
{
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017ACC;
  block[3] = &unk_1000556D0;
  detachedCopy = detached;
  identifierCopy = identifier;
  contextCopy = context;
  pidCopy = pid;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

- (void)beginDrag
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (![(DRDragSession *)self state])
  {
    v3 = DRLogTarget();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Session %@: begin drag", &v8, 0xCu);
    }

    sourceConnection = [(DRDragSession *)self sourceConnection];
    v5 = -[DRDragSession takeProcessAssertionOnPID:](self, "takeProcessAssertionOnPID:", [sourceConnection processIdentifier]);
    sourceKeepAliveAssertion = self->_sourceKeepAliveAssertion;
    self->_sourceKeepAliveAssertion = v5;

    [(DRDragSession *)self setState:1];
  }

  if (![(DRDragSession *)self avoidsKeyboardSuppression])
  {
    delegate = [(DRDragSession *)self delegate];
    [delegate dragSession:self enableKeyboardIfNeeded:0];
  }
}

- (void)fail
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if ([(DRDragSession *)self state]- 7 >= 2)
  {

    [(DRDragSession *)self setState:8];
  }
}

- (void)sourceConnectionWasInvalidated
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sourceConnection = self->_sourceConnection;
    v6 = 138543874;
    v7 = sourceConnection;
    v8 = 1024;
    processIdentifier = [(NSXPCConnection *)sourceConnection processIdentifier];
    v10 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Source connection %{public}@ from pid %d was invalidated for session %{public}@", &v6, 0x1Cu);
  }

  if ([(DRDragSession *)self state]!= 4)
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003036C();
    }

    [(DRDragSession *)self fail];
  }
}

- (void)requestImagesForClient:(id)client itemIndexes:(id)indexes
{
  clientCopy = client;
  indexesCopy = indexes;
  v8 = DRLogTarget();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = indexesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Session %@: _requestDragImageForItemIndexes:%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018064;
  v10[3] = &unk_1000556F8;
  objc_copyWeak(&v12, buf);
  v9 = clientCopy;
  v11 = v9;
  [v9 requestDragPreviewsForIndexSet:indexesCopy reply:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (id)newDataTransferSessionWithDestinationAuditToken:(id *)token filter:(id)filter
{
  filterCopy = filter;
  v7 = [DRDataTransferSession alloc];
  itemCollection = self->_itemCollection;
  sourceConnection = self->_sourceConnection;
  if (sourceConnection)
  {
    [(NSXPCConnection *)sourceConnection auditToken];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v10 = [(DRDataTransferSession *)v7 initWithSourceItemCollection:itemCollection sourceAuditToken:&v13 dataProviderEndpoint:self->_dataProviderEndpoint filter:filterCopy];
  [(DRDataTransferSession *)v10 setDelegate:self];
  v11 = *&token->var0[4];
  v13 = *token->var0;
  v14 = v11;
  [(DRDataTransferSession *)v10 setDestinationAuditToken:&v13];

  return v10;
}

- (void)destinationConnectionWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100030454(invalidatedCopy);
  }

  [(NSMapTable *)self->_connectionToDestinationMap removeObjectForKey:invalidatedCopy];
}

- (void)performAfterReceivingOutsideAppSourceOperationMask:(id)mask
{
  maskCopy = mask;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (self->_receivedOutsideAppSourceOperationMask)
  {
    maskCopy[2](maskCopy, 1);
  }

  else
  {
    pendingMaskBlocks = self->_pendingMaskBlocks;
    if (!pendingMaskBlocks)
    {
      v5 = objc_opt_new();
      v6 = self->_pendingMaskBlocks;
      self->_pendingMaskBlocks = v5;

      pendingMaskBlocks = self->_pendingMaskBlocks;
    }

    v7 = objc_retainBlock(maskCopy);
    [(NSMutableArray *)pendingMaskBlocks addObject:v7];
  }
}

- (id)itemCollectionForDestination:(id)destination
{
  xpcQueue = self->_xpcQueue;
  destinationCopy = destination;
  dispatch_assert_queue_V2(xpcQueue);
  v6 = [(DRDragSession *)self dataTransferSessionForDestination:destinationCopy];

  destinationItemCollection = [v6 destinationItemCollection];

  return destinationItemCollection;
}

- (id)dataTransferSessionForDestination:(id)destination
{
  destinationCopy = destination;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMapTable *)self->_connectionToDestinationMap objectEnumerator];
  dataTransferSession = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (dataTransferSession)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != dataTransferSession; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        clientSession = [v9 clientSession];

        if (clientSession == destinationCopy)
        {
          dataTransferSession = [v9 dataTransferSession];
          goto LABEL_11;
        }
      }

      dataTransferSession = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (dataTransferSession)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return dataTransferSession;
}

- (id)currentDestination
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v3 = +[NSXPCConnection currentConnection];
  v4 = [(NSMapTable *)self->_connectionToDestinationMap objectForKey:v3];

  return v4;
}

- (void)dirtySourceItems:(id)items
{
  itemsCopy = items;
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = itemsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Session %@: dirtySourceItems: %@", &v7, 0x16u);
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  clientSource = [(DRDragSession *)self clientSource];
  [(DRDragSession *)self _handleDirtyItems:itemsCopy fromClient:clientSource];
}

- (void)dragDidExitSourceApp
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %@: dragDidExitSourceApp", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  lastPotentialDrop = self->_lastPotentialDrop;
  if (lastPotentialDrop)
  {
    v5 = [(_DUIPotentialDrop *)lastPotentialDrop copy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  if (self->_lastPotentialDropWasFromSourceApp)
  {
    [v5 setOperation:0];
  }

  if (!self->_isSystemCommandeered)
  {
    [v6 setPrefersFullSizePreview:0];
  }

  [(DRDragSession *)self _updatePotentialDrop:v6 forDestinationClient:self->_lastPotentialDropDestinationClient];
}

- (void)addItemCollection:(id)collection dataProviderEndpoint:(id)endpoint
{
  collectionCopy = collection;
  endpointCopy = endpoint;
  v9 = DRLogTarget();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = collectionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@: addItemCollection: %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  if ([(DRDragSession *)self state]== 1)
  {
    items = [collectionCopy items];
    v11 = [items count];
    items2 = [(PBItemCollection *)self->_itemCollection items];
    v13 = [items2 count];

    if (v11 > v13)
    {
      items3 = [(PBItemCollection *)self->_itemCollection items];
      v15 = [items3 count];

      objc_storeStrong(&self->_itemCollection, collection);
      objc_storeStrong(&self->_dataProviderEndpoint, endpoint);
      memset(buf, 0, 32);
      v16 = +[NSXPCConnection currentConnection];
      v17 = v16;
      if (v16)
      {
        [v16 auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      objectEnumerator = [(NSMapTable *)self->_connectionToDestinationMap objectEnumerator];
      v19 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            dataTransferSession = [v23 dataTransferSession];
            [dataTransferSession setSourceItemCollection:collectionCopy];

            dataTransferSession2 = [v23 dataTransferSession];
            v33[0] = *buf;
            v33[1] = *&buf[16];
            [dataTransferSession2 setDataProviderEndpoint:endpointCopy auditToken:v33];
          }

          v20 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v20);
      }

      items4 = [collectionCopy items];
      v27 = [items4 count];
      v28 = +[NSMutableArray array];
      if (v15 < v27)
      {
        v29 = v15;
        do
        {
          v30 = [items4 objectAtIndexedSubscript:v29];
          [v28 addObject:v30];
          v31 = [[DRDragItem alloc] initWithPasteboardItem:v30];
          [(NSMutableArray *)self->_dragItems addObject:v31];

          ++v29;
        }

        while (v27 != v29);
      }

      delegate = [(DRDragSession *)self delegate];
      [delegate dragSession:self addedItemCount:{objc_msgSend(v28, "count")}];

      [(DRDragSession *)self _notifyDestinationsWithAddedItemsStartingAtIndex:v15];
      [(DRDragSession *)self _resetTouchWatchdogWithTimeout:20.0];
      [(DRDragSession *)self _updateAccessibilityDragStatus];
    }
  }
}

- (void)cancelDrag
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100030558();
  }

  [(DRDragSession *)self _cancelDrag];
}

- (BOOL)shouldIgnoreRequest:(SEL)request fromDestination:(id)destination
{
  destinationCopy = destination;
  v7 = destinationCopy;
  if (self->_pendingDisplayTransitionLift)
  {
    v8 = DRLogTarget();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(request);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      selfCopy4 = self;
      v10 = "~Ignoring Request~ (%@) Session %@: Pending transition move between displays.";
LABEL_13:
      v11 = v8;
      v12 = 22;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (!destinationCopy)
  {
    v8 = DRLogTarget();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(request);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      selfCopy4 = self;
      v10 = "~Ignoring Request~ (%@) Session %@: Unable to find destination for request";
      goto LABEL_13;
    }

LABEL_19:

    v13 = 1;
    goto LABEL_20;
  }

  if (!self->_isSystemCommandeered)
  {
    goto LABEL_23;
  }

  if (![destinationCopy isPolicyDriven])
  {
    v8 = DRLogTarget();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v9 = NSStringFromSelector(request);
    v15 = 138412802;
    v16 = v9;
    v17 = 2112;
    selfCopy4 = self;
    v19 = 2112;
    v20 = v7;
    v10 = "~Ignoring Request (Commandeered)~ (%@) Session %@: Destination:%@";
    goto LABEL_17;
  }

  if (!self->_isSystemCommandeered)
  {
LABEL_23:
    if ([v7 isPolicyDriven])
    {
      v8 = DRLogTarget();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v9 = NSStringFromSelector(request);
      v15 = 138412802;
      v16 = v9;
      v17 = 2112;
      selfCopy4 = self;
      v19 = 2112;
      v20 = v7;
      v10 = "~Ignoring Request~ (%@) Session %@: Destination:%@";
LABEL_17:
      v11 = v8;
      v12 = 32;
      goto LABEL_18;
    }
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (void)dirtyDestinationItems:(id)items
{
  itemsCopy = items;
  dispatch_assert_queue_V2(self->_xpcQueue);
  currentDestination = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:currentDestination])
  {
    v7 = DRLogTarget();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      clientSession = [currentDestination clientSession];
      v10 = 138412802;
      selfCopy = self;
      v12 = 2112;
      v13 = itemsCopy;
      v14 = 2112;
      v15 = clientSession;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session %@: dirtyDestinationItems:%@ onDestination:%@", &v10, 0x20u);
    }

    clientSession2 = [currentDestination clientSession];
    [(DRDragSession *)self _handleDirtyItems:itemsCopy fromClient:clientSession2];
  }
}

- (void)takePotentialDrop:(id)drop
{
  dropCopy = drop;
  dispatch_assert_queue_V2(self->_xpcQueue);
  currentDestination = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:currentDestination])
  {
    v7 = DRLogTarget();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      clientSession = [currentDestination clientSession];
      LODWORD(v15[0]) = 138412802;
      *(v15 + 4) = self;
      WORD6(v15[0]) = 2112;
      *(v15 + 14) = dropCopy;
      WORD3(v15[1]) = 2112;
      *(&v15[1] + 1) = clientSession;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session %@: takePotentialDrop:%@ onDestination:%@", v15, 0x20u);
    }

    dataTransferSession = [currentDestination dataTransferSession];
    connection = [currentDestination connection];
    v11 = connection;
    if (connection)
    {
      [connection auditToken];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    [dataTransferSession setDestinationAuditToken:v15];

    clientSession2 = [currentDestination clientSession];
    [(DRDragSession *)self _updatePotentialDrop:dropCopy forDestinationClient:clientSession2];

    connection2 = [currentDestination connection];
    processIdentifier = [connection2 processIdentifier];
    self->_lastPotentialDropWasFromSourceApp = processIdentifier == [(NSXPCConnection *)self->_sourceConnection processIdentifier];
  }
}

- (void)requestDropWithOperation:(unint64_t)operation layerContext:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(self->_xpcQueue);
  currentDestination = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:currentDestination])
  {
    v9 = DRLogTarget();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      clientSession = [currentDestination clientSession];
      *buf = 138412802;
      selfCopy = self;
      v18 = 2048;
      operationCopy = operation;
      v20 = 2112;
      v21 = clientSession;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@: request drop with operation %lu on destination %@", buf, 0x20u);
    }

    clientSession2 = [currentDestination clientSession];
    if (clientSession2 && [(DRDragSession *)self state]== 1)
    {

      if (operation)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100019668;
        v12[3] = &unk_100055720;
        v12[4] = self;
        operationCopy2 = operation;
        v13 = contextCopy;
        v14 = currentDestination;
        [(DRDragSession *)self _performAfterLastTouchAndDestinationBothEnd:v12];
      }
    }

    else
    {
    }
  }
}

- (void)didFinishRequestingDataForDragContinuation:(id)continuation
{
  continuationCopy = continuation;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019768;
  v7[3] = &unk_100054C50;
  v7[4] = self;
  v8 = continuationCopy;
  v6 = continuationCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)_animateOutVisibleItemsAndEndDragWithOperation:(unint64_t)operation destination:(id)destination
{
  destinationCopy = destination;
  delegate = [(DRDragSession *)self delegate];
  [delegate dragSession:self animateOutVisibleItemsWithOperation:operation];

  [(DRDragSession *)self _endDragWithOperation:operation destination:destinationCopy];
}

- (void)_performDropOperation:(unint64_t)operation layerContext:(id)context forConnection:(id)connection
{
  contextCopy = context;
  connectionCopy = connection;
  v10 = DRLogTarget();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@: last touch and destination have both ended, so proceeding with drop", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  v11 = [(NSMapTable *)self->_connectionToDestinationMap objectForKey:connectionCopy];
  if ([v11 clientSessionReportedDragEnd])
  {
    delegate = [(DRDragSession *)self delegate];
    v13 = [delegate dragSession:self destinationIsDragMonitorConnection:{objc_msgSend(connectionCopy, "processIdentifier")}];

    delegate2 = [(DRDragSession *)self delegate];
    LODWORD(delegate) = [delegate2 dragSession:self destinationIsSystemConnection:connectionCopy];

    LODWORD(delegate2) = [connectionCopy processIdentifier];
    LODWORD(delegate2) = delegate2 == [(NSXPCConnection *)self->_sourceConnection processIdentifier];
    if (((-[DRDragSession _isPolicyControlled](self, "_isPolicyControlled") & delegate | v13 | delegate2) & 1) != 0 || [connectionCopy processIdentifier] == self->_lastTouchUpPID)
    {
      if ([(DRDragSession *)self state]== 1)
      {
        objc_storeWeak(&self->_dropDestinationConnection, connectionCopy);
        clientSession = [v11 clientSession];
        processIdentifier = [connectionCopy processIdentifier];
        [(DRDragSession *)self setState:2];
        objc_initWeak(buf, self);
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100019DB8;
        v46[3] = &unk_100055770;
        objc_copyWeak(v48, buf);
        v48[1] = operation;
        v16 = clientSession;
        v47 = v16;
        v49 = 1;
        v28 = objc_retainBlock(v46);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10001A100;
        v43[3] = &unk_100054DC8;
        objc_copyWeak(&v45, buf);
        v17 = connectionCopy;
        v44 = v17;
        v18 = objc_retainBlock(v43);
        clientSession2 = [v11 clientSession];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10001A170;
        v40[3] = &unk_100055798;
        objc_copyWeak(&v42, buf);
        v40[4] = self;
        v20 = v16;
        v41 = v20;
        v21 = [clientSession2 remoteObjectProxyWithErrorHandler:v40];

        delegate3 = [(DRDragSession *)self delegate];
        xpcQueue = self->_xpcQueue;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10001A1F8;
        v30[3] = &unk_1000557C0;
        v31 = v11;
        v32 = v17;
        selfCopy2 = self;
        v38 = processIdentifier;
        v24 = v20;
        v34 = v24;
        v39 = 1;
        v25 = v21;
        v35 = v25;
        v26 = v28;
        v36 = v26;
        v27 = v18;
        v37 = v27;
        [delegate3 dragSession:self findVisibleDroppedItemsInSpaceOfLayerContext:contextCopy replyingOnQueue:xpcQueue with:v30];

        objc_destroyWeak(&v42);
        objc_destroyWeak(&v45);

        objc_destroyWeak(v48);
        objc_destroyWeak(buf);
      }

      else
      {
        v24 = DRLogTarget();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100030700();
        }
      }
    }

    else
    {
      v24 = DRLogTarget();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100030664(connectionCopy, &self->_lastTouchUpPID);
      }
    }
  }

  else
  {
    v24 = DRLogTarget();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000305F4();
    }
  }
}

- (void)sawDragEndEvent
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  currentDestination = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:currentDestination])
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      clientSession = [currentDestination clientSession];
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = clientSession;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %@: saw drag end event on destination %@", buf, 0x16u);
    }

    clientSession2 = [currentDestination clientSession];

    if (clientSession2)
    {
      connection = [currentDestination connection];
      [(DRDragSession *)self _receivedEndFromDestinationOnConnection:connection];

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10001A5E8;
      v10[3] = &unk_100054B50;
      v10[4] = self;
      [(DRDragSession *)self _performAfterLastTouchAndDestinationBothEnd:v10];
    }

    else
    {
      v9 = DRLogTarget();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Destination is not a client session, ignoring sawDragEndEvent.", buf, 2u);
      }
    }
  }
}

- (void)enableKeyboardIfNeeded
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  currentDestination = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:?]&& ![(DRDragSession *)self avoidsKeyboardSuppression])
  {
    delegate = [(DRDragSession *)self delegate];
    [delegate dragSession:self enableKeyboardIfNeeded:1];
  }
}

- (void)requestVisibleItemsWithReply:(id)reply
{
  replyCopy = reply;
  v6 = DRLogTarget();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Session %@: requesting visible items", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  if (replyCopy)
  {
    v7 = +[NSXPCConnection currentConnection];
    currentDestination = [(DRDragSession *)self currentDestination];
    if ([(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:currentDestination])
    {
      v9 = DRLogTarget();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_8:

        replyCopy[2](replyCopy, &__NSArray0__struct);
LABEL_13:

        goto LABEL_14;
      }

      *buf = 138412290;
      selfCopy3 = self;
      v10 = "Session %@: requested visible items but request is ignored";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
      goto LABEL_8;
    }

    delegate = [(DRDragSession *)self delegate];
    if ([delegate dragSession:self destinationIsSystemConnection:v7])
    {
    }

    else
    {
      delegate2 = [(DRDragSession *)self delegate];
      v13 = [delegate2 dragSession:self destinationIsDragMonitorConnection:{objc_msgSend(v7, "processIdentifier")}];

      if (!v13)
      {
        v9 = DRLogTarget();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        *buf = 138412290;
        selfCopy3 = self;
        v10 = "Session %@: requested visible items but not system connection";
        goto LABEL_7;
      }
    }

    delegate3 = [(DRDragSession *)self delegate];
    xpcQueue = self->_xpcQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001A98C;
    v16[3] = &unk_1000557E8;
    v16[4] = self;
    v17 = replyCopy;
    [delegate3 dragSession:self findVisibleDroppedItemsInSpaceOfLayerContext:0 replyingOnQueue:xpcQueue with:v16];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)beginAccessibilityDragAtLocationIfNeeded:(CAPoint3D)needed hidService:(id)service
{
  z = needed.z;
  y = needed.y;
  x = needed.x;
  serviceCopy = service;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AB38;
  block[3] = &unk_100055810;
  v13 = x;
  v14 = y;
  v15 = z;
  block[4] = self;
  v12 = serviceCopy;
  v10 = serviceCopy;
  dispatch_async(xpcQueue, block);
}

- (void)accessibilityMoveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = DRLogTarget();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14.x = x;
    v14.y = y;
    v7 = NSStringFromCGPoint(v14);
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Session %@: AX moveToPoint:%@", buf, 0x16u);
  }

  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ADC8;
  block[3] = &unk_100054EC8;
  *&block[5] = x;
  *&block[6] = y;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

- (void)accessibilityDrop
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %@: AX drop", buf, 0xCu);
  }

  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF44;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

- (void)accessibilityCancel
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000308B0();
  }

  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B030;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

- (void)beginPointerDragAtLocationIfNeeded:(CAPoint3D)needed hidService:(id)service
{
  z = needed.z;
  y = needed.y;
  x = needed.x;
  serviceCopy = service;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B0F8;
  block[3] = &unk_100055810;
  v13 = x;
  v14 = y;
  v15 = z;
  block[4] = self;
  v12 = serviceCopy;
  v10 = serviceCopy;
  dispatch_async(xpcQueue, block);
}

- (void)beganPointerDrag
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %@: Pointer drag began", buf, 0xCu);
  }

  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B310;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

- (void)movePointerDragToPoint:(CAPoint3D)point hidService:(id)service
{
  z = point.z;
  y = point.y;
  x = point.x;
  serviceCopy = service;
  v9 = DRLogTarget();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [NSString stringWithFormat:@"{%.3f, %.3f, %.3f}", *&x, *&y, *&z];
    *buf = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Session %@: Pointer drag moveToPoint:%@", buf, 0x16u);
  }

  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B494;
  block[3] = &unk_100055810;
  block[4] = self;
  v14 = serviceCopy;
  v15 = x;
  v16 = y;
  v17 = z;
  v12 = serviceCopy;
  dispatch_async(xpcQueue, block);
}

- (void)endPointerDrag
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %@: Pointer drop", buf, 0xCu);
  }

  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B874;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

- (void)cancelPointerDrag
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100030920();
  }

  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B96C;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

- (void)_applyMainWindowExclusionToRoutingPolicy:(id)policy
{
  policyCopy = policy;
  contextIDsToExcludeFromHitTesting = [policyCopy contextIDsToExcludeFromHitTesting];
  delegate = [(DRDragSession *)self delegate];
  v7 = [delegate allWindowContextIdsForDragSession:self];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [NSNumber numberWithUnsignedInt:self->_mainWindowContextId];
    v17 = v10;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
  }

  v11 = [v9 arrayByExcludingObjectsInArray:contextIDsToExcludeFromHitTesting];
  if ([v11 count])
  {
    v12 = [contextIDsToExcludeFromHitTesting mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = +[NSMutableArray array];
    }

    v15 = v14;

    [v15 addObjectsFromArray:v11];
    v16 = [v15 copy];
    [policyCopy setContextIDsToExcludeFromHitTesting:v16];
  }
}

- (void)updateRoutingPolicy:(id)policy
{
  policyCopy = policy;
  [(DRDragSession *)self _applyMainWindowExclusionToRoutingPolicy:policyCopy];
  systemRoutingPolicy = self->_systemRoutingPolicy;
  self->_systemRoutingPolicy = policyCopy;
  v6 = policyCopy;

  self->_isSystemCommandeered = [(UIDraggingSystemTouchRoutingPolicy *)self->_systemRoutingPolicy isHitTestingDisabled];
  delegate = [(DRDragSession *)self delegate];
  [delegate dragSession:self updateRoutingPolicy:v6];
}

- (void)commandeerDragSession
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System Commandeer - session %@ ", &v5, 0xCu);
  }

  systemRoutingPolicy = self->_systemRoutingPolicy;
  if (systemRoutingPolicy)
  {
    [(UIDraggingSystemTouchRoutingPolicy *)systemRoutingPolicy setHitTestingDisabled:1];
    [(DRDragSession *)self updateRoutingPolicy:self->_systemRoutingPolicy];
  }
}

- (void)surrenderDragSession
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System Surrender - session %@", &v6, 0xCu);
  }

  systemRoutingPolicy = self->_systemRoutingPolicy;
  if (systemRoutingPolicy)
  {
    [(UIDraggingSystemTouchRoutingPolicy *)systemRoutingPolicy setHitTestingDisabled:0];
    [(DRDragSession *)self updateRoutingPolicy:self->_systemRoutingPolicy];
    delegate = [(DRDragSession *)self delegate];
    [delegate resetDestinationClientForDragSession:self];
  }
}

- (void)cancelDragSession
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100030990();
  }

  [(DRDragSession *)self _cancelDrag];
}

- (void)loadURLForItemAtIndex:(unint64_t)index reply:(id)reply
{
  replyCopy = reply;
  v7 = DRLogTarget();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v22 = 2048;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "System session %@ - loadURLForItemAtIndex: %lu", buf, 0x16u);
  }

  items = [(PBItemCollection *)self->_itemCollection items];
  if ([items count] <= index)
  {
    v14 = DRLogTarget();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000309CC();
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v9 = [UIItemProvider alloc];
    v10 = [items objectAtIndexedSubscript:index];
    v11 = [v9 initWithPBItem:v10];

    loaderQueue = self->_loaderQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001BF9C;
    v15[3] = &unk_100055888;
    v16 = v11;
    selfCopy2 = self;
    v18 = replyCopy;
    indexCopy2 = index;
    v13 = v11;
    dispatch_async(loaderQueue, v15);
  }
}

- (void)loadUserActivityDataForItemAtIndex:(unint64_t)index reply:(id)reply
{
  replyCopy = reply;
  v7 = DRLogTarget();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v21 = 2048;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "System session %@ - loadUserActivityForItemAtIndex: %lu", buf, 0x16u);
  }

  items = [(PBItemCollection *)self->_itemCollection items];
  if ([items count] <= index)
  {
    v14 = DRLogTarget();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000309CC();
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v9 = [UIItemProvider alloc];
    v10 = [items objectAtIndexedSubscript:index];
    v11 = [v9 initWithPBItem:v10];

    loaderQueue = self->_loaderQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C4B4;
    block[3] = &unk_100055468;
    v16 = v11;
    selfCopy2 = self;
    v18 = replyCopy;
    v13 = v11;
    dispatch_async(loaderQueue, block);
  }
}

- (void)requestDragContinuationEndpointWithReply:(id)reply
{
  replyCopy = reply;
  continuationSession = self->_continuationSession;
  if (!continuationSession)
  {
    v5 = [[DRDragContinuationSession alloc] initWithDragSession:self];
    v6 = self->_continuationSession;
    self->_continuationSession = v5;

    continuationSession = self->_continuationSession;
  }

  continuationEndpoint = [(DRDragContinuationSession *)continuationSession continuationEndpoint];
  replyCopy[2](replyCopy, continuationEndpoint);
}

- (void)performOffscreenDrop
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ensemble session %@ - performOffscreenDrop", &v4, 0xCu);
  }

  [(DRDragSession *)self endPointerDrag];
}

- (void)overrideDragWindowToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = DRLogTarget();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412802;
    selfCopy = self;
    v10 = 2048;
    v11 = x;
    v12 = 2048;
    v13 = y;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Ensemble session %@ - overrideDragWindowToPoint: %f, %f", &v8, 0x20u);
  }

  delegate = [(DRDragSession *)self delegate];
  [delegate dragSession:self moveToLocation:{x, y, 0.0}];
}

- (void)disableDragDisplay
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Oneness session %@ - disableDragDisplay", &v4, 0xCu);
  }

  self->_continuityDisplayWantsDragsHidden = 1;
}

- (void)setState:(int64_t)state
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  state = self->_state;
  if (state == state)
  {
    return;
  }

  if (state <= 2)
  {
    if (state)
    {
      if (state == 1)
      {
        if (state > 8)
        {
          goto LABEL_29;
        }

        v6 = 1 << state;
        v7 = 284;
      }

      else
      {
        if (state != 2 || state > 8)
        {
          goto LABEL_29;
        }

        v6 = 1 << state;
        v7 = 304;
      }

      if ((v6 & v7) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (state == 8 || state == 1)
    {
      goto LABEL_25;
    }

LABEL_29:
    v11 = DRLogTarget();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_100016F14(state);
      v13 = sub_100016F14(state);
      v14 = 138412802;
      selfCopy2 = self;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Session %@: Attempted invalid state transition from %@ to %@", &v14, 0x20u);
    }

    return;
  }

  if (state > 4)
  {
    if (state != 5)
    {
      if (state == 6 && (state - 7) < 2)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (state == 3)
  {
LABEL_16:
    if (state == 4 || state == 8)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if ((state - 6) >= 3)
  {
    goto LABEL_29;
  }

LABEL_25:
  self->_state = state;
  v8 = DRLogTarget();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100016F14(state);
    v10 = sub_100016F14(state);
    v14 = 138412802;
    selfCopy2 = self;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@: setState: from %@ to %@", &v14, 0x20u);
  }

  if ((state - 7) <= 1)
  {
    [(DRDragSession *)self transitionFromState:state toTerminalState:state];
  }
}

- (void)transitionFromState:(int64_t)state toTerminalState:(int64_t)terminalState
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (terminalState == 8 && (state - 1) <= 2)
  {
    [(DRDragSession *)self sendDragEndedWithOperation:0];
  }

  if (state <= 1 && terminalState == 8)
  {
    touchIDs = [(DRDragSession *)self touchIDs];
    v8 = [touchIDs count];

    if (v8)
    {
      touchIDs2 = [(DRDragSession *)self touchIDs];
      allObjects = [touchIDs2 allObjects];
      BKSHIDServicesCancelTouchesWithIdentifiers();
    }
  }

  v11 = DRLogTarget();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    selfCopy2 = self;
    v21 = 2048;
    terminalStateCopy = terminalState;
    v23 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session %@: Transitioned into terminal state %ld from %ld, cleaning up", &v19, 0x20u);
  }

  [(NSMapTable *)self->_connectionToDestinationMap removeAllObjects];
  v12 = DRLogTarget();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Session %@: Invalidating destination process assertions.", &v19, 0xCu);
  }

  [(RBSAssertion *)self->_sourceKeepAliveAssertion invalidate];
  sourceKeepAliveAssertion = self->_sourceKeepAliveAssertion;
  self->_sourceKeepAliveAssertion = 0;

  [(RBSAssertion *)self->_destinationKeepAliveAssertion invalidate];
  destinationKeepAliveAssertion = self->_destinationKeepAliveAssertion;
  self->_destinationKeepAliveAssertion = 0;

  blocksWaitingForLastTouchAndDestinationToEnd = self->_blocksWaitingForLastTouchAndDestinationToEnd;
  self->_blocksWaitingForLastTouchAndDestinationToEnd = 0;

  objc_storeWeak(&self->_dropDestinationConnection, 0);
  waitingForDestinationAndTouchObserverTimer = self->_waitingForDestinationAndTouchObserverTimer;
  if (waitingForDestinationAndTouchObserverTimer)
  {
    [(DRDispatchTimer *)waitingForDestinationAndTouchObserverTimer cancel];
    v17 = self->_waitingForDestinationAndTouchObserverTimer;
    self->_waitingForDestinationAndTouchObserverTimer = 0;
  }

  [(DRDragSession *)self _cancelTouchWatchdog];
  delegate = [(DRDragSession *)self delegate];
  [delegate dragSessionDidEnd:self];
}

- (void)_endDragByCancelling
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100030CD8();
  }

  if ([(DRDragSession *)self state]== 1)
  {
    [(DRDragSession *)self setState:3];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001D28C;
    v10[3] = &unk_100054B50;
    v10[4] = self;
    v4 = objc_retainBlock(v10);
    delegate = [(DRDragSession *)self delegate];
    xpcQueue = self->_xpcQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001D29C;
    v8[3] = &unk_1000557E8;
    v8[4] = self;
    v9 = v4;
    v7 = v4;
    [delegate dragSession:self findVisibleDroppedItemsInSpaceOfLayerContext:0 replyingOnQueue:xpcQueue with:v8];
  }

  else if ([(DRDragSession *)self state]!= 3)
  {
    [(DRDragSession *)self _endDragWithOperation:0 destination:0];
  }
}

- (void)_logStatisticsForDragEnd:(unint64_t)end destination:(id)destination
{
  destinationCopy = destination;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (end)
  {
    v7 = [DRProcessInfo alloc];
    sourceConnection = self->_sourceConnection;
    if (sourceConnection)
    {
      [(NSXPCConnection *)sourceConnection auditToken];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v9 = [(DRProcessInfo *)v7 initWithAuditToken:&v19];
    v10 = [(DRDragSession *)self dataTransferSessionForDestination:destinationCopy];
    destinationProcessInfo = [v10 destinationProcessInfo];

    bundleID = [destinationProcessInfo bundleID];
    if (!bundleID)
    {
      goto LABEL_7;
    }

    v13 = bundleID;
    bundleID2 = [(DRProcessInfo *)v9 bundleID];
    bundleID3 = [destinationProcessInfo bundleID];
    v16 = [bundleID2 isEqualToString:bundleID3];

    if (!v16)
    {
      v17 = @"multipleAppDrag";
    }

    else
    {
LABEL_7:
      v17 = @"singleAppDrag";
    }

    [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:v17, v19, v20];
    bundleID4 = [destinationProcessInfo bundleID];
    [_UIKitDragAndDropStatistics incrementUIKitScalarValueForKnownInternalAppsForKey:@"dropSuccessfullOnto" bundleID:bundleID4];
  }
}

- (void)_endDragWithOperation:(unint64_t)operation destination:(id)destination
{
  destinationCopy = destination;
  [(DRDragSession *)self _logStatisticsForDragEnd:operation destination:destinationCopy];
  v7 = [(DRDragSession *)self dataTransferSessionForDestination:destinationCopy];

  [(DRDragSession *)self _endDragWithOperation:operation dataTransferSession:v7];
}

- (void)_endDragWithOperation:(unint64_t)operation dataTransferSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_xpcQueue);
  performDropTimeoutTimer = self->_performDropTimeoutTimer;
  if (performDropTimeoutTimer)
  {
    [(DRDispatchTimer *)performDropTimeoutTimer cancel];
    v9 = self->_performDropTimeoutTimer;
    self->_performDropTimeoutTimer = 0;
  }

  [(DRDragSession *)self setState:4];
  if ([(DRDragSession *)self state]== 4)
  {
    delegate = [(DRDragSession *)self delegate];
    [delegate dragSessionWillEnd:self];

    [(DRDragSession *)self sendDragEndedWithOperation:operation];
    if (operation)
    {
      v11 = DRLogTarget();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        destinationProcessInfo = [sessionCopy destinationProcessInfo];
        v14 = 138412546;
        selfCopy = self;
        v16 = 2112;
        v17 = destinationProcessInfo;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Session %@: startSendingDelegateCallbacksForDataTransfer (client - %@)", &v14, 0x16u);
      }

      objc_storeStrong(&self->_pendingDataTransferSession, session);
      [(DRDataTransferSession *)self->_pendingDataTransferSession startSendingDelegateCallbacks];
    }

    else
    {
      [(DRDragSession *)self _transitionToDoneIfPossible];
    }
  }

  [(DRDragSession *)self _liftVirtualHIDServiceIfNecessary];
  v13 = +[BKSTouchDeliveryObservationService sharedInstance];
  [v13 removeObserver:self];
}

- (void)_liftVirtualHIDServiceIfNecessary
{
  if ([(DRDragSession *)self synthesizesTouch])
  {
    [(DRVirtualHIDService *)self->_virtualHIDService lift];
    virtualHIDService = self->_virtualHIDService;
    self->_virtualHIDService = 0;
  }
}

- (void)dataTransferSessionFinished:(id)finished
{
  finishedCopy = finished;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D9EC;
  v7[3] = &unk_100054C50;
  v7[4] = self;
  v8 = finishedCopy;
  v6 = finishedCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)sendDragEndedWithOperation:(unint64_t)operation
{
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (!operation)
    {
      v10 = @"None";
      goto LABEL_9;
    }

    v6 = +[NSMutableArray array];
    v7 = v6;
    operationCopy = operation;
    if (operation)
    {
      operationCopy = operation & 0xFFFFFFFFFFFFFFFELL;
      [v6 addObject:@"Copy"];
      if ((operation & 0x10) == 0)
      {
LABEL_5:
        if (!operationCopy)
        {
LABEL_7:
          v10 = [v7 componentsJoinedByString:@"|"];

LABEL_9:
          *buf = 138412546;
          selfCopy = self;
          v29 = 2112;
          v30 = v10;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %@: sendDragEndedWithOperation: %@", buf, 0x16u);

          goto LABEL_10;
        }

LABEL_6:
        operationCopy = [NSString stringWithFormat:@"Unknown (%lu)", operationCopy];
        [v7 addObject:operationCopy];

        goto LABEL_7;
      }
    }

    else if ((operation & 0x10) == 0)
    {
      goto LABEL_5;
    }

    operationCopy &= ~0x10uLL;
    [v7 addObject:@"Move"];
    if (!operationCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:

  dispatch_assert_queue_V2(self->_xpcQueue);
  accessibilityProxy = [(DRDragSession *)self accessibilityProxy];
  [accessibilityProxy dragDidEndWithOperation:operation];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  keyEnumerator = [(NSMapTable *)self->_connectionToDestinationMap keyEnumerator];
  v13 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = [(NSMapTable *)self->_connectionToDestinationMap objectForKey:v17];
        clientSession = [v18 clientSession];
        [clientSession dragEnded];

        WeakRetained = objc_loadWeakRetained(&self->_dropDestinationConnection);
        if (v17 != WeakRetained)
        {
          [v17 invalidate];
        }
      }

      v14 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  clientSource = [(DRDragSession *)self clientSource];
  [clientSource dragEndedWithOperation:operation];
}

- (void)_handleDirtyItems:(id)items fromClient:(id)client
{
  itemsCopy = items;
  clientCopy = client;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        delegate = [(DRDragSession *)self delegate];
        [delegate dragSession:self invalidateImageForClient:clientCopy itemIndex:{objc_msgSend(v13, "index")}];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_acceptDragPreviews:(id)previews fence:(id)fence fromClient:(id)client
{
  previewsCopy = previews;
  fenceCopy = fence;
  clientCopy = client;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if ([(DRDragSession *)self state]== 1)
  {
    delegate = [(DRDragSession *)self delegate];
    [delegate dragSession:self updateDragItems:previewsCopy forClient:clientCopy withFence:fenceCopy];
  }
}

- (void)notifyDragMonitorsWithUpdatedPresentation:(id)presentation
{
  presentationCopy = presentation;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DFA0;
  v7[3] = &unk_100054C50;
  v7[4] = self;
  v8 = presentationCopy;
  v6 = presentationCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)_notifyDestinationsWithAddedItemsStartingAtIndex:(unint64_t)index
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if ([(NSMutableArray *)self->_dragItems count]> index)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    objectEnumerator = [(NSMapTable *)self->_connectionToDestinationMap objectEnumerator];
    v6 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          clientSession = [v10 clientSession];
          dataTransferSession = [v10 dataTransferSession];
          destinationItemCollection = [dataTransferSession destinationItemCollection];
          [clientSession addedItemCollection:destinationItemCollection];
        }

        v7 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (void)_lastTouchEndedNormally:(BOOL)normally
{
  normallyCopy = normally;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (self->_lastTouchEnded)
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100030E54();
    }
  }

  else
  {
    self->_lastTouchEnded = 1;
    [(DRDragSession *)self _cancelTouchWatchdog];
    v6 = DRLogTarget();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"without";
      if (normallyCopy)
      {
        v7 = @"with";
      }

      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Observed last touch for session within druid monitoring %@ normal conclusion.", buf, 0xCu);
    }

    if (normallyCopy && [(NSMapTable *)self->_connectionToDestinationMap count])
    {
      if (![(DRDragSession *)self _runBlocksWaitingForLastTouchAndDestinationToEndIfPossible])
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10001E538;
        v18[3] = &unk_100054B50;
        v18[4] = self;
        v8 = objc_retainBlock(v18);
        v9 = [DRDispatchTimer alloc];
        xpcQueue = self->_xpcQueue;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10001E57C;
        v16[3] = &unk_100054CF0;
        v16[4] = self;
        v11 = v8;
        v17 = v11;
        v12 = [(DRDispatchTimer *)v9 initWithQueue:xpcQueue eventHandler:v16];
        v13 = v12;
        if (v12)
        {
          [(DRDispatchTimer *)v12 resetWithTimeout:0.2 leeway:0.05];
          [(DRDispatchTimer *)v13 activate];
          objc_storeStrong(&self->_waitingForDestinationAndTouchObserverTimer, v13);
        }

        else
        {
          v15 = DRLogTarget();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100030D6C();
          }

          v11[2](v11);
        }
      }
    }

    else
    {
      v14 = DRLogTarget();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100030DA8(self);
      }

      [(DRDragSession *)self _endDragByCancelling];
    }
  }
}

- (void)_receivedEndFromDestinationOnConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (self->_receivedEndFromDestination)
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100030F18();
    }
  }

  else
  {
    self->_receivedEndFromDestination = 1;
    v6 = [(NSMapTable *)self->_connectionToDestinationMap objectForKey:connectionCopy];
    [v6 setClientSessionReportedDragEnd:1];
    [(DRDragSession *)self _runBlocksWaitingForLastTouchAndDestinationToEndIfPossible];
  }
}

- (void)_performAfterLastTouchAndDestinationBothEnd:(id)end
{
  endCopy = end;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (endCopy)
  {
    if ([(DRDragSession *)self _canRunBlocksWaitingForLastTouchAndDestinationToEnd])
    {
      endCopy[2](endCopy);
    }

    else
    {
      v5 = DRLogTarget();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        observedLastTouchUp = self->_observedLastTouchUp;
        lastTouchEnded = self->_lastTouchEnded;
        receivedEndFromDestination = self->_receivedEndFromDestination;
        v13 = 138413058;
        selfCopy = self;
        v15 = 1024;
        v16 = observedLastTouchUp;
        v17 = 1024;
        v18 = lastTouchEnded;
        v19 = 1024;
        v20 = receivedEndFromDestination;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %@: observedLastTouchUp %d, last touch ended %d, received end from destination %d, so saving block for later", &v13, 0x1Eu);
      }

      blocksWaitingForLastTouchAndDestinationToEnd = self->_blocksWaitingForLastTouchAndDestinationToEnd;
      if (!blocksWaitingForLastTouchAndDestinationToEnd)
      {
        v10 = objc_opt_new();
        v11 = self->_blocksWaitingForLastTouchAndDestinationToEnd;
        self->_blocksWaitingForLastTouchAndDestinationToEnd = v10;

        blocksWaitingForLastTouchAndDestinationToEnd = self->_blocksWaitingForLastTouchAndDestinationToEnd;
      }

      v12 = objc_retainBlock(endCopy);
      [(NSMutableArray *)blocksWaitingForLastTouchAndDestinationToEnd addObject:v12];
    }
  }
}

- (BOOL)_canRunBlocksWaitingForLastTouchAndDestinationToEnd
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v3 = (self->_observedLastTouchUp || [(DRDragSession *)self _isPolicyControlled]) && self->_lastTouchEnded && self->_receivedEndFromDestination;
  v4 = DRLogTarget();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    observedLastTouchUp = self->_observedLastTouchUp;
    _isPolicyControlled = [(DRDragSession *)self _isPolicyControlled];
    lastTouchEnded = self->_lastTouchEnded;
    receivedEndFromDestination = self->_receivedEndFromDestination;
    v10[0] = 67110144;
    v10[1] = v3;
    v11 = 1024;
    v12 = observedLastTouchUp;
    v13 = 1024;
    v14 = _isPolicyControlled;
    v15 = 1024;
    v16 = lastTouchEnded;
    v17 = 1024;
    v18 = receivedEndFromDestination;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Can run blocks waiting to end session = %d. observed last touch up = %d, policy controlled = %d, last touch ended = %d, received end from destination = %d", v10, 0x20u);
  }

  return v3;
}

- (BOOL)_runBlocksWaitingForLastTouchAndDestinationToEndIfPossible
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  _canRunBlocksWaitingForLastTouchAndDestinationToEnd = [(DRDragSession *)self _canRunBlocksWaitingForLastTouchAndDestinationToEnd];
  if (_canRunBlocksWaitingForLastTouchAndDestinationToEnd)
  {
    waitingForDestinationAndTouchObserverTimer = self->_waitingForDestinationAndTouchObserverTimer;
    if (waitingForDestinationAndTouchObserverTimer)
    {
      [(DRDispatchTimer *)waitingForDestinationAndTouchObserverTimer cancel];
      v5 = self->_waitingForDestinationAndTouchObserverTimer;
      self->_waitingForDestinationAndTouchObserverTimer = 0;
    }

    [(DRDragSession *)self _runBlocksWaitingForLastTouchAndDestinationToEnd];
  }

  return _canRunBlocksWaitingForLastTouchAndDestinationToEnd;
}

- (void)_runBlocksWaitingForLastTouchAndDestinationToEnd
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if ([(NSMutableArray *)self->_blocksWaitingForLastTouchAndDestinationToEnd count])
  {
    v3 = DRLogTarget();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %@: running deferred blocks", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_blocksWaitingForLastTouchAndDestinationToEnd;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  blocksWaitingForLastTouchAndDestinationToEnd = self->_blocksWaitingForLastTouchAndDestinationToEnd;
  self->_blocksWaitingForLastTouchAndDestinationToEnd = 0;
}

- (void)_updateAccessibilityDragStatus
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  accessibilityProxy = [(DRDragSession *)self accessibilityProxy];

  if (accessibilityProxy)
  {
    v9 = objc_alloc_init(_DUIAccessibilityDragStatus);
    [v9 setItemCount:{-[NSMutableArray count](self->_dragItems, "count")}];
    lastPotentialDrop = self->_lastPotentialDrop;
    if (lastPotentialDrop)
    {
      operation = [(_DUIPotentialDrop *)lastPotentialDrop operation];
    }

    else
    {
      operation = 0;
    }

    [v9 setPotentialOperation:operation];
    v6 = self->_lastPotentialDrop;
    if (v6)
    {
      forbidden = [(_DUIPotentialDrop *)v6 forbidden];
    }

    else
    {
      forbidden = 0;
    }

    [v9 setForbidden:forbidden];
    accessibilityProxy2 = [(DRDragSession *)self accessibilityProxy];
    [accessibilityProxy2 dragStatusDidChange:v9];
  }
}

- (void)_updatePotentialDrop:(id)drop forDestinationClient:(id)client
{
  dropCopy = drop;
  clientCopy = client;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v8 = [(DRDragSession *)self dataTransferSessionForDestination:clientCopy];
  sourceDataOwner = self->_sourceDataOwner;
  sourceProcessInfo = [v8 sourceProcessInfo];
  destinationProcessInfo = [v8 destinationProcessInfo];
  sub_100005ADC(dropCopy, sourceDataOwner, sourceProcessInfo, destinationProcessInfo);

  v12 = +[NSXPCConnection currentConnection];
  processIdentifier = [v12 processIdentifier];
  if (self->_lastPotentialDropDestinationClient == clientCopy)
  {
    lastPotentialDropProcessIdentifier = self->_lastPotentialDropProcessIdentifier;
  }

  else
  {
    lastPotentialDropProcessIdentifier = processIdentifier;
  }

  p_lastPotentialDrop = &self->_lastPotentialDrop;
  if (![(_DUIPotentialDrop *)self->_lastPotentialDrop isEqual:dropCopy]|| self->_lastPotentialDropDestinationClient != clientCopy)
  {
    if (*p_lastPotentialDrop && ([*p_lastPotentialDrop prefersFullSizePreview] & 1) == 0)
    {
      [dropCopy setPrefersFullSizePreview:0];
    }

    objc_storeStrong(&self->_lastPotentialDrop, drop);
    objc_storeStrong(&self->_lastPotentialDropDestinationClient, client);
    self->_lastPotentialDropProcessIdentifier = lastPotentialDropProcessIdentifier;
    delegate = [(DRDragSession *)self delegate];
    [delegate dragSession:self updatedPotentialDrop:dropCopy forDestinationClient:clientCopy];

    [(DRDragSession *)self _updateAccessibilityDragStatus];
  }
}

- (DRDragSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)minimumResizableSize
{
  width = self->_minimumResizableSize.width;
  height = self->_minimumResizableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumResizableSize
{
  width = self->_maximumResizableSize.width;
  height = self->_maximumResizableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)originalScale
{
  width = self->_originalScale.width;
  height = self->_originalScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (DRTouchTrackingWindow)sourceInteractionWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceInteractionWindow);

  return WeakRetained;
}

- (DRTouchTrackingWindow)interactionWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionWindow);

  return WeakRetained;
}

- ($1AB5FA073B851C12C2339EC22442E995)associatedObjectManipulationDragItemSize
{
  width = self->_associatedObjectManipulationDragItemSize.width;
  height = self->_associatedObjectManipulationDragItemSize.height;
  depth = self->_associatedObjectManipulationDragItemSize.depth;
  result.var2 = depth;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (NSXPCConnection)dropDestinationConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_dropDestinationConnection);

  return WeakRetained;
}

@end