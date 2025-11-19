@interface DRDragSession
- ($1AB5FA073B851C12C2339EC22442E995)associatedObjectManipulationDragItemSize;
- (BOOL)_areAllTouchesEndedOrCancelled;
- (BOOL)_canRunBlocksWaitingForLastTouchAndDestinationToEnd;
- (BOOL)_runBlocksWaitingForLastTouchAndDestinationToEndIfPossible;
- (BOOL)shouldIgnoreRequest:(SEL)a3 fromDestination:(id)a4;
- (BOOL)synthesizesTouch;
- (CGSize)maximumResizableSize;
- (CGSize)minimumResizableSize;
- (CGSize)originalScale;
- (DRDragSession)initWithIdentifier:(unsigned int)a3 configuration:(id)a4 mainWindow:(id)a5 sourceConnection:(id)a6 accessibilityConnection:(id)a7 clientSource:(id)a8 delegate:(id)a9;
- (DRDragSessionDelegate)delegate;
- (DRTouchTrackingWindow)interactionWindow;
- (DRTouchTrackingWindow)sourceInteractionWindow;
- (NSSet)touchIDs;
- (NSString)description;
- (NSXPCConnection)dropDestinationConnection;
- (UIDraggingSystemTouchRoutingPolicy)routingPolicy;
- (id)currentDestination;
- (id)dataTransferSessionForDestination:(id)a3;
- (id)itemCollectionForDestination:(id)a3;
- (id)newDataTransferSessionWithDestinationAuditToken:(id *)a3 filter:(id)a4;
- (void)_acceptDragPreviews:(id)a3 fence:(id)a4 fromClient:(id)a5;
- (void)_animateOutVisibleItemsAndEndDragWithOperation:(unint64_t)a3 destination:(id)a4;
- (void)_applyMainWindowExclusionToRoutingPolicy:(id)a3;
- (void)_cancelDrag;
- (void)_cancelTouchWatchdog;
- (void)_endDragByCancelling;
- (void)_endDragWithOperation:(unint64_t)a3 dataTransferSession:(id)a4;
- (void)_endDragWithOperation:(unint64_t)a3 destination:(id)a4;
- (void)_handleDirtyItems:(id)a3 fromClient:(id)a4;
- (void)_lastTouchEndedNormally:(BOOL)a3;
- (void)_liftVirtualHIDServiceIfNecessary;
- (void)_logStatisticsForDragEnd:(unint64_t)a3 destination:(id)a4;
- (void)_notifyDestinationsWithAddedItemsStartingAtIndex:(unint64_t)a3;
- (void)_performAfterLastTouchAndDestinationBothEnd:(id)a3;
- (void)_performDropOperation:(unint64_t)a3 layerContext:(id)a4 forConnection:(id)a5;
- (void)_receivedEndFromDestinationOnConnection:(id)a3;
- (void)_resetTouchWatchdogWithTimeout:(double)a3;
- (void)_runBlocksWaitingForLastTouchAndDestinationToEnd;
- (void)_touchWatchdogFired;
- (void)_transitionToDoneIfPossible;
- (void)_updateAccessibilityDragStatus;
- (void)_updateIsAnyProcessBeingDebuggedWithConnection:(id)a3;
- (void)_updatePotentialDrop:(id)a3 forDestinationClient:(id)a4;
- (void)accessibilityCancel;
- (void)accessibilityDrop;
- (void)accessibilityMoveToPoint:(CGPoint)a3;
- (void)addItemCollection:(id)a3 dataProviderEndpoint:(id)a4;
- (void)addTouchID:(id)a3;
- (void)beganPointerDrag;
- (void)beginAccessibilityDragAtLocationIfNeeded:(CAPoint3D)a3 hidService:(id)a4;
- (void)beginDrag;
- (void)beginPointerDragAtLocationIfNeeded:(CAPoint3D)a3 hidService:(id)a4;
- (void)cancelDrag;
- (void)cancelDragSession;
- (void)cancelPointerDrag;
- (void)commandeerDragSession;
- (void)dataTransferSessionFinished:(id)a3;
- (void)dealloc;
- (void)destinationConnectionWasInvalidated:(id)a3;
- (void)didFinishRequestingDataForDragContinuation:(id)a3;
- (void)dirtyDestinationItems:(id)a3;
- (void)dirtySourceItems:(id)a3;
- (void)disableDragDisplay;
- (void)dragDidExitSourceApp;
- (void)enableKeyboardIfNeeded;
- (void)endPointerDrag;
- (void)fail;
- (void)loadURLForItemAtIndex:(unint64_t)a3 reply:(id)a4;
- (void)loadUserActivityDataForItemAtIndex:(unint64_t)a3 reply:(id)a4;
- (void)movePointerDragToPoint:(CAPoint3D)a3 hidService:(id)a4;
- (void)notifyDragMonitorsWithUpdatedPresentation:(id)a3;
- (void)overrideDragWindowToPoint:(CGPoint)a3;
- (void)performAfterReceivingOutsideAppSourceOperationMask:(id)a3;
- (void)performOffscreenDrop;
- (void)requestDragContinuationEndpointWithReply:(id)a3;
- (void)requestDropWithOperation:(unint64_t)a3 layerContext:(id)a4;
- (void)requestImagesForClient:(id)a3 itemIndexes:(id)a4;
- (void)requestVisibleItemsWithReply:(id)a3;
- (void)sawDragEndEvent;
- (void)sendDragEndedWithOperation:(unint64_t)a3;
- (void)setSetDownAnimationState:(int64_t)a3;
- (void)setState:(int64_t)a3;
- (void)sourceConnectionWasInvalidated;
- (void)surrenderDragSession;
- (void)takePotentialDrop:(id)a3;
- (void)touchBeganWithID:(id)a3;
- (void)touchCancelledWithID:(id)a3;
- (void)touchEndedWithID:(id)a3 contextID:(id)a4 pid:(id)a5 likelyMovingOffscreen:(BOOL)a6;
- (void)touchMovedWithID:(id)a3;
- (void)touchUpOccuredForIdentifier:(unsigned int)a3 detached:(BOOL)a4 context:(unsigned int)a5 pid:(int)a6;
- (void)transitionFromState:(int64_t)a3 toTerminalState:(int64_t)a4;
- (void)updateRoutingPolicy:(id)a3;
@end

@implementation DRDragSession

- (DRDragSession)initWithIdentifier:(unsigned int)a3 configuration:(id)a4 mainWindow:(id)a5 sourceConnection:(id)a6 accessibilityConnection:(id)a7 clientSource:(id)a8 delegate:(id)a9
{
  v15 = a4;
  v72 = a5;
  v75 = a6;
  v16 = a7;
  v74 = a8;
  obj = a9;
  v17 = [v15 itemCollection];
  v73 = [v15 dataProviderEndpoint];
  if (!a3 || !v75 || !v17 || ([v17 items], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, !v74) || !v19 || !v73)
  {
    v44 = DRLogTarget();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100030170();
    }

    goto LABEL_16;
  }

  if (v16)
  {
    v20 = _DUINewClientSessionAccessibilityInterface();
    [v16 setRemoteObjectInterface:v20];

    [v16 resume];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v83 = 0x2020000000;
    v84 = 0;
    v21 = [v16 synchronousRemoteObjectProxyWithErrorHandler:&stru_100055680];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100016D38;
    v79[3] = &unk_1000556A8;
    p_buf = &buf;
    v22 = v16;
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
    v45 = 0;
    goto LABEL_17;
  }

LABEL_10:
  v78.receiver = self;
  v78.super_class = DRDragSession;
  v23 = [(DRDragSession *)&v78 init];
  if (v23)
  {
    v24 = [v75 _queue];
    xpcQueue = v23->_xpcQueue;
    v23->_xpcQueue = v24;

    v23->_identifier = a3;
    objc_storeWeak(&v23->_delegate, obj);
    v26 = [v15 routingPolicy];
    routingPolicy = v23->_routingPolicy;
    v23->_routingPolicy = v26;

    v23->_supportsSystemDrag = [v15 supportsSystemDrag];
    v23->_avoidsKeyboardSuppression = [v15 avoidsKeyboardSuppression];
    v23->_rotatable = [v15 rotatable];
    v23->_resizable = [v15 resizable];
    [v15 minimumResizableSize];
    v23->_minimumResizableSize.width = v28;
    v23->_minimumResizableSize.height = v29;
    [v15 maximumResizableSize];
    v23->_maximumResizableSize.width = v30;
    v23->_maximumResizableSize.height = v31;
    v32 = [v15 persistentSceneIdentifier];
    persistentSceneIdentifier = v23->_persistentSceneIdentifier;
    v23->_persistentSceneIdentifier = v32;

    v23->_wantsElasticEffects = [v15 wantsElasticEffects];
    [v15 originalRotation];
    v23->_originalRotation = v34;
    [v15 originalScale];
    v23->_originalScale.width = v35;
    v23->_originalScale.height = v36;
    v23->_mainWindowContextId = [v72 _contextId];
    objc_storeWeak(&v23->_sourceInteractionWindow, v72);
    v37 = [v15 coordinateSpaceSourceLayerContext];
    v23->_dragSourceContextId = [v37 contextID];

    v23->_sourceRestrictsDragToSelf = [v15 sessionIsRestrictedToSourceApplication];
    v23->_sourceRestrictsDragToLocalDevice = [v15 sessionIsRestrictedToLocalDevice];
    v38 = [v72 screen];
    v23->_originatedFromContinuityDisplay = sub_1000022FC(v38);

    [(DRDragSession *)v23 _applyMainWindowExclusionToRoutingPolicy:v23->_routingPolicy];
    objc_storeStrong(&v23->_sourceConnection, a6);
    objc_storeStrong(&v23->_itemCollection, v17);
    objc_storeStrong(&v23->_dataProviderEndpoint, v73);
    v39 = dispatch_queue_create("com.apple.druid.loader", 0);
    loaderQueue = v23->_loaderQueue;
    v23->_loaderQueue = v39;

    if (v16)
    {
      v23->_originatedFromAccessibility = 1;
      objc_storeStrong(&v23->_axConnection, a7);
      v41 = _DUINewServerSessionAccessibilityInterface();
      [v16 setExportedInterface:v41];

      [v16 setExportedObject:v23];
      v42 = [v16 remoteObjectProxy];
      accessibilityProxy = v23->_accessibilityProxy;
      v23->_accessibilityProxy = v42;
    }

    else
    {
      v23->_originatedFromPointer = [v15 initiatedWithPointer];
    }

    if ([v15 associatedObjectManipulationSessionIdentifier])
    {
      v23->_associatedObjectManipulationSessionID = [v15 associatedObjectManipulationSessionIdentifier];
      [v15 associatedObjectManipulationDragItemSize];
      v23->_associatedObjectManipulationDragItemSize.width = v48;
      v23->_associatedObjectManipulationDragItemSize.height = v49;
      v23->_associatedObjectManipulationDragItemSize.depth = v50;
    }

    objc_storeStrong(&v23->_clientSource, a8);
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
    if ([v15 wantsPresentationUpdates])
    {
      v57 = [v75 valueForEntitlement:@"com.apple.DragUI.presentationUpdateNotification"];
      v23->_sourceReceivesPresentationUpdates = [v57 isEqual:&__kCFBooleanTrue];
    }

    v58 = +[NSMapTable weakToStrongObjectsMapTable];
    connectionToDestinationMap = v23->_connectionToDestinationMap;
    v23->_connectionToDestinationMap = v58;

    v60 = [v17 items];
    v61 = [v60 count];
    if (v61)
    {
      for (i = 0; i != v61; ++i)
      {
        v63 = [DRDragItem alloc];
        v64 = [v60 objectAtIndexedSubscript:i];
        v65 = [(DRDragItem *)v63 initWithPasteboardItem:v64];

        if (v65)
        {
          [(NSMutableArray *)v23->_dragItems addObject:v65];
        }
      }
    }

    v23->_sourceDataOwner = [v17 originatorDataOwner];
    [(DRDragSession *)v23 _updateIsAnyProcessBeingDebuggedWithConnection:v75];
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
  v45 = self;
LABEL_17:

  return v45;
}

- (void)_updateIsAnyProcessBeingDebuggedWithConnection:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (!self->_isAnyProcessBeingDebugged)
  {
    v4 = sub_100001D58([v5 processIdentifier]);
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

- (void)setSetDownAnimationState:(int64_t)a3
{
  if (self->_setDownAnimationState != a3)
  {
    self->_setDownAnimationState = a3;
    if (a3 == 2)
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

    else if (a3 == 1)
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
    v3 = self;
    v4 = 6;
  }

  else
  {
    if (self->_pendingDataTransferSession)
    {
      return;
    }

    v5 = [(DRDragSession *)self sourceConnection];
    [v5 invalidate];

    WeakRetained = objc_loadWeakRetained(&self->_dropDestinationConnection);
    [WeakRetained invalidate];

    v3 = self;
    v4 = 7;
  }

  [(DRDragSession *)v3 setState:v4];
}

- (void)addTouchID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (([(NSMutableSet *)self->_touchIDs containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_touchIDs addObject:v4];
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Session %@: Added touch ID %@", &v7, 0x16u);
    }

    ++self->_pendingTouchUpObservationCount;
    self->_pendingDisplayTransitionLift = 0;
    v6 = +[BKSTouchDeliveryObservationService sharedInstance];
    [v6 addObserver:self forTouchIdentifier:{objc_msgSend(v4, "unsignedIntegerValue")}];
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

- (void)touchBeganWithID:(id)a3
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (![(DRDragSession *)self synthesizesTouch])
  {

    [(DRDragSession *)self _resetTouchWatchdogWithTimeout:20.0];
  }
}

- (void)touchMovedWithID:(id)a3
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (![(DRDragSession *)self synthesizesTouch])
  {

    [(DRDragSession *)self _resetTouchWatchdogWithTimeout:20.0];
  }
}

- (void)touchEndedWithID:(id)a3 contextID:(id)a4 pid:(id)a5 likelyMovingOffscreen:(BOOL)a6
{
  v6 = a6;
  xpcQueue = self->_xpcQueue;
  v10 = a3;
  dispatch_assert_queue_V2(xpcQueue);
  v9 = !v6 || self->_isSystemCommandeered;
  [(DRDragSession *)self _touchEndedNormally:v9 withID:v10];
}

- (void)touchCancelledWithID:(id)a3
{
  xpcQueue = self->_xpcQueue;
  v5 = a3;
  dispatch_assert_queue_V2(xpcQueue);
  [(DRDragSession *)self _touchEndedNormally:0 withID:v5];
}

- (BOOL)_areAllTouchesEndedOrCancelled
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  touchIDs = self->_touchIDs;
  endedTouchIDs = self->_endedTouchIDs;

  return [(NSMutableSet *)touchIDs isSubsetOfSet:endedTouchIDs];
}

- (void)_resetTouchWatchdogWithTimeout:(double)a3
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  touchWatchdogTimer = self->_touchWatchdogTimer;
  if (touchWatchdogTimer)
  {

    [(DRDispatchTimer *)touchWatchdogTimer resetWithTimeout:a3 leeway:0.5];
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
    v17 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %@: cancel drag", buf, 0xCu);
  }

  v4 = [(DRDragSession *)self touchIDs];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(DRDragSession *)self touchCancelledWithID:*(*(&v11 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v9 = [v4 allObjects];
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

- (void)touchUpOccuredForIdentifier:(unsigned int)a3 detached:(BOOL)a4 context:(unsigned int)a5 pid:(int)a6
{
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017ACC;
  block[3] = &unk_1000556D0;
  v11 = a4;
  v8 = a3;
  v9 = a5;
  v10 = a6;
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
      v9 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Session %@: begin drag", &v8, 0xCu);
    }

    v4 = [(DRDragSession *)self sourceConnection];
    v5 = -[DRDragSession takeProcessAssertionOnPID:](self, "takeProcessAssertionOnPID:", [v4 processIdentifier]);
    sourceKeepAliveAssertion = self->_sourceKeepAliveAssertion;
    self->_sourceKeepAliveAssertion = v5;

    [(DRDragSession *)self setState:1];
  }

  if (![(DRDragSession *)self avoidsKeyboardSuppression])
  {
    v7 = [(DRDragSession *)self delegate];
    [v7 dragSession:self enableKeyboardIfNeeded:0];
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
    v9 = [(NSXPCConnection *)sourceConnection processIdentifier];
    v10 = 2114;
    v11 = self;
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

- (void)requestImagesForClient:(id)a3 itemIndexes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DRLogTarget();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Session %@: _requestDragImageForItemIndexes:%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018064;
  v10[3] = &unk_1000556F8;
  objc_copyWeak(&v12, buf);
  v9 = v6;
  v11 = v9;
  [v9 requestDragPreviewsForIndexSet:v7 reply:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (id)newDataTransferSessionWithDestinationAuditToken:(id *)a3 filter:(id)a4
{
  v6 = a4;
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

  v10 = [(DRDataTransferSession *)v7 initWithSourceItemCollection:itemCollection sourceAuditToken:&v13 dataProviderEndpoint:self->_dataProviderEndpoint filter:v6];
  [(DRDataTransferSession *)v10 setDelegate:self];
  v11 = *&a3->var0[4];
  v13 = *a3->var0;
  v14 = v11;
  [(DRDataTransferSession *)v10 setDestinationAuditToken:&v13];

  return v10;
}

- (void)destinationConnectionWasInvalidated:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100030454(v4);
  }

  [(NSMapTable *)self->_connectionToDestinationMap removeObjectForKey:v4];
}

- (void)performAfterReceivingOutsideAppSourceOperationMask:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (self->_receivedOutsideAppSourceOperationMask)
  {
    v8[2](v8, 1);
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

    v7 = objc_retainBlock(v8);
    [(NSMutableArray *)pendingMaskBlocks addObject:v7];
  }
}

- (id)itemCollectionForDestination:(id)a3
{
  xpcQueue = self->_xpcQueue;
  v5 = a3;
  dispatch_assert_queue_V2(xpcQueue);
  v6 = [(DRDragSession *)self dataTransferSessionForDestination:v5];

  v7 = [v6 destinationItemCollection];

  return v7;
}

- (id)dataTransferSessionForDestination:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMapTable *)self->_connectionToDestinationMap objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 clientSession];

        if (v10 == v4)
        {
          v6 = [v9 dataTransferSession];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)currentDestination
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  v3 = +[NSXPCConnection currentConnection];
  v4 = [(NSMapTable *)self->_connectionToDestinationMap objectForKey:v3];

  return v4;
}

- (void)dirtySourceItems:(id)a3
{
  v4 = a3;
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Session %@: dirtySourceItems: %@", &v7, 0x16u);
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  v6 = [(DRDragSession *)self clientSource];
  [(DRDragSession *)self _handleDirtyItems:v4 fromClient:v6];
}

- (void)dragDidExitSourceApp
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
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

- (void)addItemCollection:(id)a3 dataProviderEndpoint:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = DRLogTarget();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@: addItemCollection: %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  if ([(DRDragSession *)self state]== 1)
  {
    v10 = [v7 items];
    v11 = [v10 count];
    v12 = [(PBItemCollection *)self->_itemCollection items];
    v13 = [v12 count];

    if (v11 > v13)
    {
      v14 = [(PBItemCollection *)self->_itemCollection items];
      v15 = [v14 count];

      objc_storeStrong(&self->_itemCollection, a3);
      objc_storeStrong(&self->_dataProviderEndpoint, a4);
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
      v18 = [(NSMapTable *)self->_connectionToDestinationMap objectEnumerator];
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            v24 = [v23 dataTransferSession];
            [v24 setSourceItemCollection:v7];

            v25 = [v23 dataTransferSession];
            v33[0] = *buf;
            v33[1] = *&buf[16];
            [v25 setDataProviderEndpoint:v8 auditToken:v33];
          }

          v20 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v20);
      }

      v26 = [v7 items];
      v27 = [v26 count];
      v28 = +[NSMutableArray array];
      if (v15 < v27)
      {
        v29 = v15;
        do
        {
          v30 = [v26 objectAtIndexedSubscript:v29];
          [v28 addObject:v30];
          v31 = [[DRDragItem alloc] initWithPasteboardItem:v30];
          [(NSMutableArray *)self->_dragItems addObject:v31];

          ++v29;
        }

        while (v27 != v29);
      }

      v32 = [(DRDragSession *)self delegate];
      [v32 dragSession:self addedItemCount:{objc_msgSend(v28, "count")}];

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

- (BOOL)shouldIgnoreRequest:(SEL)a3 fromDestination:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_pendingDisplayTransitionLift)
  {
    v8 = DRLogTarget();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a3);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = self;
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

  if (!v6)
  {
    v8 = DRLogTarget();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a3);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = self;
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

  if (![v6 isPolicyDriven])
  {
    v8 = DRLogTarget();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v9 = NSStringFromSelector(a3);
    v15 = 138412802;
    v16 = v9;
    v17 = 2112;
    v18 = self;
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

      v9 = NSStringFromSelector(a3);
      v15 = 138412802;
      v16 = v9;
      v17 = 2112;
      v18 = self;
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

- (void)dirtyDestinationItems:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v6 = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:v6])
  {
    v7 = DRLogTarget();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 clientSession];
      v10 = 138412802;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session %@: dirtyDestinationItems:%@ onDestination:%@", &v10, 0x20u);
    }

    v9 = [v6 clientSession];
    [(DRDragSession *)self _handleDirtyItems:v5 fromClient:v9];
  }
}

- (void)takePotentialDrop:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v6 = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:v6])
  {
    v7 = DRLogTarget();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 clientSession];
      LODWORD(v15[0]) = 138412802;
      *(v15 + 4) = self;
      WORD6(v15[0]) = 2112;
      *(v15 + 14) = v5;
      WORD3(v15[1]) = 2112;
      *(&v15[1] + 1) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session %@: takePotentialDrop:%@ onDestination:%@", v15, 0x20u);
    }

    v9 = [v6 dataTransferSession];
    v10 = [v6 connection];
    v11 = v10;
    if (v10)
    {
      [v10 auditToken];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    [v9 setDestinationAuditToken:v15];

    v12 = [v6 clientSession];
    [(DRDragSession *)self _updatePotentialDrop:v5 forDestinationClient:v12];

    v13 = [v6 connection];
    v14 = [v13 processIdentifier];
    self->_lastPotentialDropWasFromSourceApp = v14 == [(NSXPCConnection *)self->_sourceConnection processIdentifier];
  }
}

- (void)requestDropWithOperation:(unint64_t)a3 layerContext:(id)a4
{
  v7 = a4;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v8 = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:v8])
  {
    v9 = DRLogTarget();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 clientSession];
      *buf = 138412802;
      v17 = self;
      v18 = 2048;
      v19 = a3;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@: request drop with operation %lu on destination %@", buf, 0x20u);
    }

    v11 = [v8 clientSession];
    if (v11 && [(DRDragSession *)self state]== 1)
    {

      if (a3)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100019668;
        v12[3] = &unk_100055720;
        v12[4] = self;
        v15 = a3;
        v13 = v7;
        v14 = v8;
        [(DRDragSession *)self _performAfterLastTouchAndDestinationBothEnd:v12];
      }
    }

    else
    {
    }
  }
}

- (void)didFinishRequestingDataForDragContinuation:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019768;
  v7[3] = &unk_100054C50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)_animateOutVisibleItemsAndEndDragWithOperation:(unint64_t)a3 destination:(id)a4
{
  v7 = a4;
  v6 = [(DRDragSession *)self delegate];
  [v6 dragSession:self animateOutVisibleItemsWithOperation:a3];

  [(DRDragSession *)self _endDragWithOperation:a3 destination:v7];
}

- (void)_performDropOperation:(unint64_t)a3 layerContext:(id)a4 forConnection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = DRLogTarget();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@: last touch and destination have both ended, so proceeding with drop", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  v11 = [(NSMapTable *)self->_connectionToDestinationMap objectForKey:v9];
  if ([v11 clientSessionReportedDragEnd])
  {
    v12 = [(DRDragSession *)self delegate];
    v13 = [v12 dragSession:self destinationIsDragMonitorConnection:{objc_msgSend(v9, "processIdentifier")}];

    v14 = [(DRDragSession *)self delegate];
    LODWORD(v12) = [v14 dragSession:self destinationIsSystemConnection:v9];

    LODWORD(v14) = [v9 processIdentifier];
    LODWORD(v14) = v14 == [(NSXPCConnection *)self->_sourceConnection processIdentifier];
    if (((-[DRDragSession _isPolicyControlled](self, "_isPolicyControlled") & v12 | v13 | v14) & 1) != 0 || [v9 processIdentifier] == self->_lastTouchUpPID)
    {
      if ([(DRDragSession *)self state]== 1)
      {
        objc_storeWeak(&self->_dropDestinationConnection, v9);
        v15 = [v11 clientSession];
        v29 = [v9 processIdentifier];
        [(DRDragSession *)self setState:2];
        objc_initWeak(buf, self);
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100019DB8;
        v46[3] = &unk_100055770;
        objc_copyWeak(v48, buf);
        v48[1] = a3;
        v16 = v15;
        v47 = v16;
        v49 = 1;
        v28 = objc_retainBlock(v46);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10001A100;
        v43[3] = &unk_100054DC8;
        objc_copyWeak(&v45, buf);
        v17 = v9;
        v44 = v17;
        v18 = objc_retainBlock(v43);
        v19 = [v11 clientSession];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10001A170;
        v40[3] = &unk_100055798;
        objc_copyWeak(&v42, buf);
        v40[4] = self;
        v20 = v16;
        v41 = v20;
        v21 = [v19 remoteObjectProxyWithErrorHandler:v40];

        v22 = [(DRDragSession *)self delegate];
        xpcQueue = self->_xpcQueue;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10001A1F8;
        v30[3] = &unk_1000557C0;
        v31 = v11;
        v32 = v17;
        v33 = self;
        v38 = v29;
        v24 = v20;
        v34 = v24;
        v39 = 1;
        v25 = v21;
        v35 = v25;
        v26 = v28;
        v36 = v26;
        v27 = v18;
        v37 = v27;
        [v22 dragSession:self findVisibleDroppedItemsInSpaceOfLayerContext:v8 replyingOnQueue:xpcQueue with:v30];

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
        sub_100030664(v9, &self->_lastTouchUpPID);
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
  v4 = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:v4])
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 clientSession];
      *buf = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %@: saw drag end event on destination %@", buf, 0x16u);
    }

    v7 = [v4 clientSession];

    if (v7)
    {
      v8 = [v4 connection];
      [(DRDragSession *)self _receivedEndFromDestinationOnConnection:v8];

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
  v5 = [(DRDragSession *)self currentDestination];
  if (![(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:?]&& ![(DRDragSession *)self avoidsKeyboardSuppression])
  {
    v4 = [(DRDragSession *)self delegate];
    [v4 dragSession:self enableKeyboardIfNeeded:1];
  }
}

- (void)requestVisibleItemsWithReply:(id)a3
{
  v5 = a3;
  v6 = DRLogTarget();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Session %@: requesting visible items", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_xpcQueue);
  if (v5)
  {
    v7 = +[NSXPCConnection currentConnection];
    v8 = [(DRDragSession *)self currentDestination];
    if ([(DRDragSession *)self shouldIgnoreRequest:a2 fromDestination:v8])
    {
      v9 = DRLogTarget();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_8:

        v5[2](v5, &__NSArray0__struct);
LABEL_13:

        goto LABEL_14;
      }

      *buf = 138412290;
      v19 = self;
      v10 = "Session %@: requested visible items but request is ignored";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
      goto LABEL_8;
    }

    v11 = [(DRDragSession *)self delegate];
    if ([v11 dragSession:self destinationIsSystemConnection:v7])
    {
    }

    else
    {
      v12 = [(DRDragSession *)self delegate];
      v13 = [v12 dragSession:self destinationIsDragMonitorConnection:{objc_msgSend(v7, "processIdentifier")}];

      if (!v13)
      {
        v9 = DRLogTarget();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        *buf = 138412290;
        v19 = self;
        v10 = "Session %@: requested visible items but not system connection";
        goto LABEL_7;
      }
    }

    v14 = [(DRDragSession *)self delegate];
    xpcQueue = self->_xpcQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001A98C;
    v16[3] = &unk_1000557E8;
    v16[4] = self;
    v17 = v5;
    [v14 dragSession:self findVisibleDroppedItemsInSpaceOfLayerContext:0 replyingOnQueue:xpcQueue with:v16];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)beginAccessibilityDragAtLocationIfNeeded:(CAPoint3D)a3 hidService:(id)a4
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AB38;
  block[3] = &unk_100055810;
  v13 = x;
  v14 = y;
  v15 = z;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(xpcQueue, block);
}

- (void)accessibilityMoveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = DRLogTarget();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14.x = x;
    v14.y = y;
    v7 = NSStringFromCGPoint(v14);
    *buf = 138412546;
    v11 = self;
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
    v7 = self;
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

- (void)beginPointerDragAtLocationIfNeeded:(CAPoint3D)a3 hidService:(id)a4
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B0F8;
  block[3] = &unk_100055810;
  v13 = x;
  v14 = y;
  v15 = z;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(xpcQueue, block);
}

- (void)beganPointerDrag
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
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

- (void)movePointerDragToPoint:(CAPoint3D)a3 hidService:(id)a4
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = DRLogTarget();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [NSString stringWithFormat:@"{%.3f, %.3f, %.3f}", *&x, *&y, *&z];
    *buf = 138412546;
    v19 = self;
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
  v14 = v8;
  v15 = x;
  v16 = y;
  v17 = z;
  v12 = v8;
  dispatch_async(xpcQueue, block);
}

- (void)endPointerDrag
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
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

- (void)_applyMainWindowExclusionToRoutingPolicy:(id)a3
{
  v4 = a3;
  v5 = [v4 contextIDsToExcludeFromHitTesting];
  v6 = [(DRDragSession *)self delegate];
  v7 = [v6 allWindowContextIdsForDragSession:self];
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

  v11 = [v9 arrayByExcludingObjectsInArray:v5];
  if ([v11 count])
  {
    v12 = [v5 mutableCopy];
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
    [v4 setContextIDsToExcludeFromHitTesting:v16];
  }
}

- (void)updateRoutingPolicy:(id)a3
{
  v4 = a3;
  [(DRDragSession *)self _applyMainWindowExclusionToRoutingPolicy:v4];
  systemRoutingPolicy = self->_systemRoutingPolicy;
  self->_systemRoutingPolicy = v4;
  v6 = v4;

  self->_isSystemCommandeered = [(UIDraggingSystemTouchRoutingPolicy *)self->_systemRoutingPolicy isHitTestingDisabled];
  v7 = [(DRDragSession *)self delegate];
  [v7 dragSession:self updateRoutingPolicy:v6];
}

- (void)commandeerDragSession
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
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
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System Surrender - session %@", &v6, 0xCu);
  }

  systemRoutingPolicy = self->_systemRoutingPolicy;
  if (systemRoutingPolicy)
  {
    [(UIDraggingSystemTouchRoutingPolicy *)systemRoutingPolicy setHitTestingDisabled:0];
    [(DRDragSession *)self updateRoutingPolicy:self->_systemRoutingPolicy];
    v5 = [(DRDragSession *)self delegate];
    [v5 resetDestinationClientForDragSession:self];
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

- (void)loadURLForItemAtIndex:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = DRLogTarget();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = self;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "System session %@ - loadURLForItemAtIndex: %lu", buf, 0x16u);
  }

  v8 = [(PBItemCollection *)self->_itemCollection items];
  if ([v8 count] <= a3)
  {
    v14 = DRLogTarget();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000309CC();
    }

    v6[2](v6, 0);
  }

  else
  {
    v9 = [UIItemProvider alloc];
    v10 = [v8 objectAtIndexedSubscript:a3];
    v11 = [v9 initWithPBItem:v10];

    loaderQueue = self->_loaderQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001BF9C;
    v15[3] = &unk_100055888;
    v16 = v11;
    v17 = self;
    v18 = v6;
    v19 = a3;
    v13 = v11;
    dispatch_async(loaderQueue, v15);
  }
}

- (void)loadUserActivityDataForItemAtIndex:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = DRLogTarget();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = self;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "System session %@ - loadUserActivityForItemAtIndex: %lu", buf, 0x16u);
  }

  v8 = [(PBItemCollection *)self->_itemCollection items];
  if ([v8 count] <= a3)
  {
    v14 = DRLogTarget();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000309CC();
    }

    v6[2](v6, 0);
  }

  else
  {
    v9 = [UIItemProvider alloc];
    v10 = [v8 objectAtIndexedSubscript:a3];
    v11 = [v9 initWithPBItem:v10];

    loaderQueue = self->_loaderQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C4B4;
    block[3] = &unk_100055468;
    v16 = v11;
    v17 = self;
    v18 = v6;
    v13 = v11;
    dispatch_async(loaderQueue, block);
  }
}

- (void)requestDragContinuationEndpointWithReply:(id)a3
{
  v8 = a3;
  continuationSession = self->_continuationSession;
  if (!continuationSession)
  {
    v5 = [[DRDragContinuationSession alloc] initWithDragSession:self];
    v6 = self->_continuationSession;
    self->_continuationSession = v5;

    continuationSession = self->_continuationSession;
  }

  v7 = [(DRDragContinuationSession *)continuationSession continuationEndpoint];
  v8[2](v8, v7);
}

- (void)performOffscreenDrop
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ensemble session %@ - performOffscreenDrop", &v4, 0xCu);
  }

  [(DRDragSession *)self endPointerDrag];
}

- (void)overrideDragWindowToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = DRLogTarget();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412802;
    v9 = self;
    v10 = 2048;
    v11 = x;
    v12 = 2048;
    v13 = y;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Ensemble session %@ - overrideDragWindowToPoint: %f, %f", &v8, 0x20u);
  }

  v7 = [(DRDragSession *)self delegate];
  [v7 dragSession:self moveToLocation:{x, y, 0.0}];
}

- (void)disableDragDisplay
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Oneness session %@ - disableDragDisplay", &v4, 0xCu);
  }

  self->_continuityDisplayWantsDragsHidden = 1;
}

- (void)setState:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  state = self->_state;
  if (state == a3)
  {
    return;
  }

  if (state <= 2)
  {
    if (state)
    {
      if (state == 1)
      {
        if (a3 > 8)
        {
          goto LABEL_29;
        }

        v6 = 1 << a3;
        v7 = 284;
      }

      else
      {
        if (state != 2 || a3 > 8)
        {
          goto LABEL_29;
        }

        v6 = 1 << a3;
        v7 = 304;
      }

      if ((v6 & v7) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (a3 == 8 || a3 == 1)
    {
      goto LABEL_25;
    }

LABEL_29:
    v11 = DRLogTarget();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_100016F14(state);
      v13 = sub_100016F14(a3);
      v14 = 138412802;
      v15 = self;
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
      if (state == 6 && (a3 - 7) < 2)
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
    if (a3 == 4 || a3 == 8)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if ((a3 - 6) >= 3)
  {
    goto LABEL_29;
  }

LABEL_25:
  self->_state = a3;
  v8 = DRLogTarget();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100016F14(state);
    v10 = sub_100016F14(a3);
    v14 = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@: setState: from %@ to %@", &v14, 0x20u);
  }

  if ((a3 - 7) <= 1)
  {
    [(DRDragSession *)self transitionFromState:state toTerminalState:a3];
  }
}

- (void)transitionFromState:(int64_t)a3 toTerminalState:(int64_t)a4
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (a4 == 8 && (a3 - 1) <= 2)
  {
    [(DRDragSession *)self sendDragEndedWithOperation:0];
  }

  if (a3 <= 1 && a4 == 8)
  {
    v7 = [(DRDragSession *)self touchIDs];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(DRDragSession *)self touchIDs];
      v10 = [v9 allObjects];
      BKSHIDServicesCancelTouchesWithIdentifiers();
    }
  }

  v11 = DRLogTarget();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = self;
    v21 = 2048;
    v22 = a4;
    v23 = 2048;
    v24 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session %@: Transitioned into terminal state %ld from %ld, cleaning up", &v19, 0x20u);
  }

  [(NSMapTable *)self->_connectionToDestinationMap removeAllObjects];
  v12 = DRLogTarget();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = self;
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
  v18 = [(DRDragSession *)self delegate];
  [v18 dragSessionDidEnd:self];
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
    v5 = [(DRDragSession *)self delegate];
    xpcQueue = self->_xpcQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001D29C;
    v8[3] = &unk_1000557E8;
    v8[4] = self;
    v9 = v4;
    v7 = v4;
    [v5 dragSession:self findVisibleDroppedItemsInSpaceOfLayerContext:0 replyingOnQueue:xpcQueue with:v8];
  }

  else if ([(DRDragSession *)self state]!= 3)
  {
    [(DRDragSession *)self _endDragWithOperation:0 destination:0];
  }
}

- (void)_logStatisticsForDragEnd:(unint64_t)a3 destination:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (a3)
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
    v10 = [(DRDragSession *)self dataTransferSessionForDestination:v6];
    v11 = [v10 destinationProcessInfo];

    v12 = [v11 bundleID];
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = v12;
    v14 = [(DRProcessInfo *)v9 bundleID];
    v15 = [v11 bundleID];
    v16 = [v14 isEqualToString:v15];

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
    v18 = [v11 bundleID];
    [_UIKitDragAndDropStatistics incrementUIKitScalarValueForKnownInternalAppsForKey:@"dropSuccessfullOnto" bundleID:v18];
  }
}

- (void)_endDragWithOperation:(unint64_t)a3 destination:(id)a4
{
  v6 = a4;
  [(DRDragSession *)self _logStatisticsForDragEnd:a3 destination:v6];
  v7 = [(DRDragSession *)self dataTransferSessionForDestination:v6];

  [(DRDragSession *)self _endDragWithOperation:a3 dataTransferSession:v7];
}

- (void)_endDragWithOperation:(unint64_t)a3 dataTransferSession:(id)a4
{
  v7 = a4;
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
    v10 = [(DRDragSession *)self delegate];
    [v10 dragSessionWillEnd:self];

    [(DRDragSession *)self sendDragEndedWithOperation:a3];
    if (a3)
    {
      v11 = DRLogTarget();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v7 destinationProcessInfo];
        v14 = 138412546;
        v15 = self;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Session %@: startSendingDelegateCallbacksForDataTransfer (client - %@)", &v14, 0x16u);
      }

      objc_storeStrong(&self->_pendingDataTransferSession, a4);
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

- (void)dataTransferSessionFinished:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D9EC;
  v7[3] = &unk_100054C50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)sendDragEndedWithOperation:(unint64_t)a3
{
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (!a3)
    {
      v10 = @"None";
      goto LABEL_9;
    }

    v6 = +[NSMutableArray array];
    v7 = v6;
    v8 = a3;
    if (a3)
    {
      v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
      [v6 addObject:@"Copy"];
      if ((a3 & 0x10) == 0)
      {
LABEL_5:
        if (!v8)
        {
LABEL_7:
          v10 = [v7 componentsJoinedByString:@"|"];

LABEL_9:
          *buf = 138412546;
          v28 = self;
          v29 = 2112;
          v30 = v10;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %@: sendDragEndedWithOperation: %@", buf, 0x16u);

          goto LABEL_10;
        }

LABEL_6:
        v9 = [NSString stringWithFormat:@"Unknown (%lu)", v8];
        [v7 addObject:v9];

        goto LABEL_7;
      }
    }

    else if ((a3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    v8 &= ~0x10uLL;
    [v7 addObject:@"Move"];
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:

  dispatch_assert_queue_V2(self->_xpcQueue);
  v11 = [(DRDragSession *)self accessibilityProxy];
  [v11 dragDidEndWithOperation:a3];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(NSMapTable *)self->_connectionToDestinationMap keyEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = [(NSMapTable *)self->_connectionToDestinationMap objectForKey:v17];
        v19 = [v18 clientSession];
        [v19 dragEnded];

        WeakRetained = objc_loadWeakRetained(&self->_dropDestinationConnection);
        if (v17 != WeakRetained)
        {
          [v17 invalidate];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v21 = [(DRDragSession *)self clientSource];
  [v21 dragEndedWithOperation:a3];
}

- (void)_handleDirtyItems:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
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
        v14 = [(DRDragSession *)self delegate];
        [v14 dragSession:self invalidateImageForClient:v7 itemIndex:{objc_msgSend(v13, "index")}];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_acceptDragPreviews:(id)a3 fence:(id)a4 fromClient:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if ([(DRDragSession *)self state]== 1)
  {
    v10 = [(DRDragSession *)self delegate];
    [v10 dragSession:self updateDragItems:v11 forClient:v9 withFence:v8];
  }
}

- (void)notifyDragMonitorsWithUpdatedPresentation:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DFA0;
  v7[3] = &unk_100054C50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)_notifyDestinationsWithAddedItemsStartingAtIndex:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_xpcQueue);
  if ([(NSMutableArray *)self->_dragItems count]> a3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(NSMapTable *)self->_connectionToDestinationMap objectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 clientSession];
          v12 = [v10 dataTransferSession];
          v13 = [v12 destinationItemCollection];
          [v11 addedItemCollection:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (void)_lastTouchEndedNormally:(BOOL)a3
{
  v3 = a3;
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
      if (v3)
      {
        v7 = @"with";
      }

      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Observed last touch for session within druid monitoring %@ normal conclusion.", buf, 0xCu);
    }

    if (v3 && [(NSMapTable *)self->_connectionToDestinationMap count])
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

- (void)_receivedEndFromDestinationOnConnection:(id)a3
{
  v4 = a3;
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
    v6 = [(NSMapTable *)self->_connectionToDestinationMap objectForKey:v4];
    [v6 setClientSessionReportedDragEnd:1];
    [(DRDragSession *)self _runBlocksWaitingForLastTouchAndDestinationToEndIfPossible];
  }
}

- (void)_performAfterLastTouchAndDestinationBothEnd:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_xpcQueue);
  if (v4)
  {
    if ([(DRDragSession *)self _canRunBlocksWaitingForLastTouchAndDestinationToEnd])
    {
      v4[2](v4);
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
        v14 = self;
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

      v12 = objc_retainBlock(v4);
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
    v6 = [(DRDragSession *)self _isPolicyControlled];
    lastTouchEnded = self->_lastTouchEnded;
    receivedEndFromDestination = self->_receivedEndFromDestination;
    v10[0] = 67110144;
    v10[1] = v3;
    v11 = 1024;
    v12 = observedLastTouchUp;
    v13 = 1024;
    v14 = v6;
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
  v3 = [(DRDragSession *)self _canRunBlocksWaitingForLastTouchAndDestinationToEnd];
  if (v3)
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

  return v3;
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
      v16 = self;
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
  v3 = [(DRDragSession *)self accessibilityProxy];

  if (v3)
  {
    v9 = objc_alloc_init(_DUIAccessibilityDragStatus);
    [v9 setItemCount:{-[NSMutableArray count](self->_dragItems, "count")}];
    lastPotentialDrop = self->_lastPotentialDrop;
    if (lastPotentialDrop)
    {
      v5 = [(_DUIPotentialDrop *)lastPotentialDrop operation];
    }

    else
    {
      v5 = 0;
    }

    [v9 setPotentialOperation:v5];
    v6 = self->_lastPotentialDrop;
    if (v6)
    {
      v7 = [(_DUIPotentialDrop *)v6 forbidden];
    }

    else
    {
      v7 = 0;
    }

    [v9 setForbidden:v7];
    v8 = [(DRDragSession *)self accessibilityProxy];
    [v8 dragStatusDidChange:v9];
  }
}

- (void)_updatePotentialDrop:(id)a3 forDestinationClient:(id)a4
{
  v17 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_xpcQueue);
  v8 = [(DRDragSession *)self dataTransferSessionForDestination:v7];
  sourceDataOwner = self->_sourceDataOwner;
  v10 = [v8 sourceProcessInfo];
  v11 = [v8 destinationProcessInfo];
  sub_100005ADC(v17, sourceDataOwner, v10, v11);

  v12 = +[NSXPCConnection currentConnection];
  v13 = [v12 processIdentifier];
  if (self->_lastPotentialDropDestinationClient == v7)
  {
    lastPotentialDropProcessIdentifier = self->_lastPotentialDropProcessIdentifier;
  }

  else
  {
    lastPotentialDropProcessIdentifier = v13;
  }

  p_lastPotentialDrop = &self->_lastPotentialDrop;
  if (![(_DUIPotentialDrop *)self->_lastPotentialDrop isEqual:v17]|| self->_lastPotentialDropDestinationClient != v7)
  {
    if (*p_lastPotentialDrop && ([*p_lastPotentialDrop prefersFullSizePreview] & 1) == 0)
    {
      [v17 setPrefersFullSizePreview:0];
    }

    objc_storeStrong(&self->_lastPotentialDrop, a3);
    objc_storeStrong(&self->_lastPotentialDropDestinationClient, a4);
    self->_lastPotentialDropProcessIdentifier = lastPotentialDropProcessIdentifier;
    v16 = [(DRDragSession *)self delegate];
    [v16 dragSession:self updatedPotentialDrop:v17 forDestinationClient:v7];

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