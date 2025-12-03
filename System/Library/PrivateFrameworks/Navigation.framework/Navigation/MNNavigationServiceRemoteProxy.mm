@interface MNNavigationServiceRemoteProxy
- (BOOL)_hasNavigationServiceEntitlement;
- (BOOL)_shouldReconnectWithInterruptionOnDate:(id)date;
- (BOOL)isOpenForClient:(id)client;
- (MNNavigationServiceClientInterface)delegate;
- (MNNavigationServiceRemoteProxy)init;
- (NSArray)interruptionDates;
- (id)_remoteObjectProxy;
- (id)methodSignatureForSelector:(SEL)selector;
- (unint64_t)clientCount;
- (unint64_t)interruptionCount;
- (void)_closeConnection;
- (void)_consumeSandboxExtension:(char *)extension;
- (void)_handleDisconnect;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)_openConnection;
- (void)_releaseSandboxExtension;
- (void)_restoreIdleConnection;
- (void)_restoreNavigationSession;
- (void)_setExpectedClassesForClientInterface:(id)interface;
- (void)_startNavigationWithDetails:(id)details;
- (void)_updateConnection;
- (void)acceptReroute:(BOOL)reroute forTrafficIncidentAlert:(id)alert;
- (void)advanceToNextLeg;
- (void)changeOfflineMode:(unsigned __int8)mode;
- (void)changeTransportType:(int)type route:(id)route;
- (void)changeUserOptions:(id)options;
- (void)checkinForNavigationService:(id)service;
- (void)closeForClient:(id)client;
- (void)dealloc;
- (void)disableNavigationCapability:(unint64_t)capability;
- (void)enableNavigationCapability:(unint64_t)capability;
- (void)forceReroute;
- (void)forwardInvocation:(id)invocation;
- (void)insertWaypoint:(id)waypoint;
- (void)interfaceHashesWithHandler:(id)handler;
- (void)navigationServiceProxy:(id)proxy didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationServiceProxy:(id)proxy didSendNavigationServiceCallback:(id)callback;
- (void)navigationServiceProxy:(id)proxy didUpdateNavigationDetails:(id)details;
- (void)navigationServiceProxy:(id)proxy willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)openForClient:(id)client;
- (void)pauseRealtimeUpdatesForSubscriber:(id)subscriber;
- (void)recordPedestrianTracePath:(id)path;
- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data;
- (void)removeWaypointAtIndex:(unint64_t)index;
- (void)repeatCurrentGuidanceWithReply:(id)reply;
- (void)repeatCurrentTrafficAlertWithReply:(id)reply;
- (void)rerouteWithWaypoints:(id)waypoints;
- (void)resumeOriginalDestination;
- (void)resumeRealtimeUpdatesForSubscriber:(id)subscriber;
- (void)setDisplayedStepIndex:(unint64_t)index;
- (void)setGuidancePromptsEnabled:(BOOL)enabled;
- (void)setGuidanceType:(unint64_t)type;
- (void)setHeadingOrientation:(int)orientation;
- (void)setIsConnectedToCarplay:(BOOL)carplay;
- (void)setIsDisplayingNavigationTray:(BOOL)tray;
- (void)setJunctionViewImageWidth:(double)width height:(double)height;
- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex;
- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index;
- (void)setSimulationPosition:(double)position;
- (void)setSimulationSpeedMultiplier:(double)multiplier;
- (void)setSimulationSpeedOverride:(double)override;
- (void)setTraceIsPlaying:(BOOL)playing;
- (void)setTracePlaybackSpeed:(double)speed;
- (void)setTracePosition:(double)position;
- (void)setVoiceGuidanceLevelOverride:(unint64_t)override;
- (void)startNavigationWithDetails:(id)details activeBlock:(id)block;
- (void)stopCurrentGuidancePrompt;
- (void)stopNavigationWithReason:(unint64_t)reason;
- (void)switchToDestinationRoute;
- (void)switchToRoute:(id)route;
- (void)updateDestination:(id)destination;
- (void)updateForUserIncidentReport:(id)report;
- (void)vibrateForPrompt:(unint64_t)prompt withReply:(id)reply;
@end

@implementation MNNavigationServiceRemoteProxy

- (MNNavigationServiceRemoteProxy)init
{
  v12.receiver = self;
  v12.super_class = MNNavigationServiceRemoteProxy;
  v2 = [(MNNavigationServiceRemoteProxy *)&v12 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = geo_isolater_create();
    clientsLock = v2->_clientsLock;
    v2->_clientsLock = v5;

    v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:261];
    clients = v2->_clients;
    v2->_clients = v7;

    v9 = geo_isolater_create();
    interruptionDatesLock = v2->_interruptionDatesLock;
    v2->_interruptionDatesLock = v9;
  }

  return v2;
}

- (unint64_t)clientCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  clientsLock = self->_clientsLock;
  geo_isolate_sync();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (void)_updateConnection
{
  v12 = *MEMORY[0x1E69E9840];
  clientCount = [(MNNavigationServiceRemoteProxy *)self clientCount];
  connection = self->_connection;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109632;
    v7[1] = clientCount != 0;
    v8 = 1024;
    v9 = connection != 0;
    v10 = 1024;
    v11 = clientCount;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Updating connection for new client list. shouldConnect: %d, isConnected: %d, clientCount: %d", v7, 0x14u);
  }

  if ((clientCount != 0) != (connection != 0))
  {
    if (clientCount)
    {
      [(MNNavigationServiceRemoteProxy *)self _openConnection];
    }

    else
    {
      [(MNNavigationServiceRemoteProxy *)self _closeConnection];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __45__MNNavigationServiceRemoteProxy_clientCount__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) setRepresentation];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (BOOL)_hasNavigationServiceEntitlement
{
  if (_hasNavigationServiceEntitlement_onceToken != -1)
  {
    dispatch_once(&_hasNavigationServiceEntitlement_onceToken, &__block_literal_global_12742);
  }

  return _hasNavigationServiceEntitlement_hasNavigationServiceEntitlement;
}

- (void)_openConnection
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_connection)
  {
    goto LABEL_2;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calling _openConnection when XPC connection has already been created"];
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v10 = "[MNNavigationServiceRemoteProxy _openConnection]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationServiceRemoteProxy.m";
    v13 = 1024;
    v14 = 165;
    v15 = 2080;
    v16 = "_connection == nil";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
  }

  if (!self->_connection)
  {
LABEL_2:
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Opening connection to navigation server", buf, 2u);
    }

    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MNNavigationServiceRemoteProxy__openConnection__block_invoke;
    block[3] = &unk_1E8430ED8;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __49__MNNavigationServiceRemoteProxy__openConnection__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _hasNavigationServiceEntitlement])
  {
    v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.navigationService" options:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EEA548];
    [*(a1 + 32) _setExpectedClassesForClientInterface:v5];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EEDD48];
    [*(*(a1 + 32) + 16) setRemoteObjectInterface:v6];
    [*(*(a1 + 32) + 16) setExportedInterface:v5];
    [*(*(a1 + 32) + 16) setExportedObject:?];
    objc_initWeak(location, *(a1 + 32));
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__MNNavigationServiceRemoteProxy__openConnection__block_invoke_253;
    v20[3] = &unk_1E8430EA0;
    objc_copyWeak(&v21, location);
    [*(*(a1 + 32) + 16) setInterruptionHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__MNNavigationServiceRemoteProxy__openConnection__block_invoke_2;
    v18[3] = &unk_1E8430EA0;
    objc_copyWeak(&v19, location);
    [*(*(a1 + 32) + 16) setInvalidationHandler:v18];
    [*(*(a1 + 32) + 16) resume];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Connection to navigation server created", buf, 2u);
    }

    [*(a1 + 32) checkinForNavigationService:0];
    v8 = *(*(a1 + 32) + 56);
    geo_isolate_sync();
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AE30] processInfo];
    v11 = [v10 processName];
    v12 = [v9 stringWithFormat:@"Process '%@' is trying to use the MNNavigationService SPI without the proper entitlement.", v11];

    if (([*(a1 + 32) _hasNavigationServiceEntitlement] & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *location = 136315394;
        *&location[4] = "[self _hasNavigationServiceEntitlement]";
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", location, 0x16u);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MNNavigationServiceRemoteProxy__openConnection__block_invoke_31;
    block[3] = &unk_1E8430ED8;
    v23 = v12;
    v13 = MNNavigationServiceXPCMachPort_block_invoke_onceToken;
    v5 = v12;
    if (v13 != -1)
    {
      dispatch_once(&MNNavigationServiceXPCMachPort_block_invoke_onceToken, block);
    }

    v6 = v23;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __49__MNNavigationServiceRemoteProxy__openConnection__block_invoke_254(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

- (id)_remoteObjectProxy
{
  v21 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (!connection)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempting to connect to navd without previously opening a connection. Execution can continue but please file a radar."];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = "[MNNavigationServiceRemoteProxy _remoteObjectProxy]";
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationServiceRemoteProxy.m";
      v15 = 1024;
      v16 = 456;
      v17 = 2080;
      v18 = "NO";
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v11, 0x30u);
    }

    [(MNNavigationServiceRemoteProxy *)self _openConnection];
    connection = self->_connection;
    if (!connection)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPC connection must be created before calling remoteObjectProxy"];
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136316162;
        v12 = "[MNNavigationServiceRemoteProxy _remoteObjectProxy]";
        v13 = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationServiceRemoteProxy.m";
        v15 = 1024;
        v16 = 460;
        v17 = 2080;
        v18 = "_connection != nil";
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v11, 0x30u);
      }

      connection = self->_connection;
    }
  }

  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  v7 = *MEMORY[0x1E69E9840];

  return remoteObjectProxy;
}

void __66__MNNavigationServiceRemoteProxy__hasNavigationServiceEntitlement__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    error = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.navigation.spi", &error);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
      _hasNavigationServiceEntitlement_hasNavigationServiceEntitlement = v5;
      CFRelease(v3);
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Error getting entitlement value from security task", buf, 2u);
      }
    }

    if (error)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = error;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Error getting entitlement value from security task: %@", buf, 0xCu);
      }

      CFRelease(error);
    }

    CFRelease(v1);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Error creating security task", buf, 2u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_closeConnection
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Closing connection to navigation server", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MNNavigationServiceRemoteProxy__closeConnection__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (MNNavigationServiceClientInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationServiceProxy:(id)proxy didSendNavigationServiceCallback:(id)callback
{
  callbackCopy = callback;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__MNNavigationServiceRemoteProxy_navigationServiceProxy_didSendNavigationServiceCallback___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __90__MNNavigationServiceRemoteProxy_navigationServiceProxy_didSendNavigationServiceCallback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained navigationServiceProxy:*(a1 + 32) didSendNavigationServiceCallback:*(a1 + 40)];
}

- (void)navigationServiceProxy:(id)proxy didUpdateNavigationDetails:(id)details
{
  detailsCopy = details;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__MNNavigationServiceRemoteProxy_navigationServiceProxy_didUpdateNavigationDetails___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = detailsCopy;
  v6 = detailsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __84__MNNavigationServiceRemoteProxy_navigationServiceProxy_didUpdateNavigationDetails___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 72) isReconnecting] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
    [WeakRetained navigationServiceProxy:*(a1 + 32) didUpdateNavigationDetails:*(a1 + 40)];
  }
}

- (void)navigationServiceProxy:(id)proxy didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    if (state - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[state - 1];
    }

    v12 = v11;
    if (toState - 1 > 5)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_1E842AC68[toState - 1];
    }

    v14 = v13;
    *buf = 138412802;
    v18 = processName;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "navd => %@ didChangeFromState: '%@' toState: '%@'", buf, 0x20u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__MNNavigationServiceRemoteProxy_navigationServiceProxy_didChangeFromState_toState___block_invoke;
  block[3] = &unk_1E842F5F8;
  block[4] = self;
  block[5] = state;
  block[6] = toState;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v15 = *MEMORY[0x1E69E9840];
}

void __84__MNNavigationServiceRemoteProxy_navigationServiceProxy_didChangeFromState_toState___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) isReconnecting])
  {
    v2 = MNGetMNNavigationXPCLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Reconnected to navd", buf, 2u);
    }

    v3 = [*(*(a1 + 32) + 72) spokenAnnouncements];
    v4 = +[MNNavigationService sharedService];
    v5 = [v4 details];
    [v5 setSpokenAnnouncements:v3];

    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
    [WeakRetained navigationServiceProxy:*(a1 + 32) didChangeFromState:*(a1 + 40) toState:*(a1 + 48)];

    if (!*(a1 + 48))
    {
      v9 = *(*(a1 + 32) + 56);
      geo_isolate_sync();
    }

    [*(a1 + 32) _updateConnection];
  }
}

void __84__MNNavigationServiceRemoteProxy_navigationServiceProxy_didChangeFromState_toState___block_invoke_300(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 64) count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ssZ"];
    v3 = [MEMORY[0x1E696AD60] string];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = *(*(a1 + 32) + 64);
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          v10 = [*(*(a1 + 32) + 64) firstObject];

          if (v9 != v10)
          {
            [v3 appendString:{@", "}];
          }

          v11 = [v2 stringFromDate:v9];
          [v3 appendFormat:@"%@", v11];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

    v12 = MNGetMNNavigationXPCLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(*(a1 + 32) + 64) count];
      *buf = 67109378;
      v20 = v13;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "navd state changed to stopped and %d interruptions were detected at: %@", buf, 0x12u);
    }

    [*(*(a1 + 32) + 64) removeAllObjects];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)proxy willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    if (state - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[state - 1];
    }

    v12 = v11;
    if (toState - 1 > 5)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_1E842AC68[toState - 1];
    }

    v14 = v13;
    *buf = 138412802;
    v18 = processName;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "navd => %@ willChangeFromState: '%@' toState: '%@'", buf, 0x20u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MNNavigationServiceRemoteProxy_navigationServiceProxy_willChangeFromState_toState___block_invoke;
  block[3] = &unk_1E842F5F8;
  block[4] = self;
  block[5] = state;
  block[6] = toState;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v15 = *MEMORY[0x1E69E9840];
}

void __85__MNNavigationServiceRemoteProxy_navigationServiceProxy_willChangeFromState_toState___block_invoke(void *a1)
{
  if (([*(a1[4] + 72) isReconnecting] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 96));
    [WeakRetained navigationServiceProxy:a1[4] willChangeFromState:a1[5] toState:a1[6]];
  }
}

- (void)resumeRealtimeUpdatesForSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MNNavigationServiceRemoteProxy_resumeRealtimeUpdatesForSubscriber___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = subscriberCopy;
  v6 = subscriberCopy;
  dispatch_async(serialQueue, v7);
}

void __69__MNNavigationServiceRemoteProxy_resumeRealtimeUpdatesForSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 resumeRealtimeUpdatesForSubscriber:*(a1 + 40)];
}

- (void)pauseRealtimeUpdatesForSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MNNavigationServiceRemoteProxy_pauseRealtimeUpdatesForSubscriber___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = subscriberCopy;
  v6 = subscriberCopy;
  dispatch_async(serialQueue, v7);
}

void __68__MNNavigationServiceRemoteProxy_pauseRealtimeUpdatesForSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 pauseRealtimeUpdatesForSubscriber:*(a1 + 40)];
}

- (void)checkinForNavigationService:(id)service
{
  if (self->_sandboxHandle <= 0)
  {
    v9[3] = v3;
    v9[4] = v4;
    objc_initWeak(v9, self);
    serialQueue = self->_serialQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__MNNavigationServiceRemoteProxy_checkinForNavigationService___block_invoke;
    v7[3] = &unk_1E8430EA0;
    objc_copyWeak(&v8, v9);
    dispatch_async(serialQueue, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(v9);
  }
}

void __62__MNNavigationServiceRemoteProxy_checkinForNavigationService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _remoteObjectProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__MNNavigationServiceRemoteProxy_checkinForNavigationService___block_invoke_2;
  v4[3] = &unk_1E842F620;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 checkinForNavigationService:v4];

  objc_destroyWeak(&v5);
}

void __62__MNNavigationServiceRemoteProxy_checkinForNavigationService___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _consumeSandboxExtension:a2];
}

- (void)interfaceHashesWithHandler:(id)handler
{
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__MNNavigationServiceRemoteProxy_interfaceHashesWithHandler___block_invoke;
  v7[3] = &unk_1E842F580;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serialQueue, v7);
}

void __61__MNNavigationServiceRemoteProxy_interfaceHashesWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 interfaceHashesWithHandler:*(a1 + 40)];
}

- (void)setSimulationPosition:(double)position
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MNNavigationServiceRemoteProxy_setSimulationPosition___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  *&v4[5] = position;
  dispatch_async(serialQueue, v4);
}

void __56__MNNavigationServiceRemoteProxy_setSimulationPosition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setSimulationPosition:*(a1 + 40)];
}

- (void)setSimulationSpeedMultiplier:(double)multiplier
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MNNavigationServiceRemoteProxy_setSimulationSpeedMultiplier___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  *&v4[5] = multiplier;
  dispatch_async(serialQueue, v4);
}

void __63__MNNavigationServiceRemoteProxy_setSimulationSpeedMultiplier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setSimulationSpeedMultiplier:*(a1 + 40)];
}

- (void)setSimulationSpeedOverride:(double)override
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__MNNavigationServiceRemoteProxy_setSimulationSpeedOverride___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  *&v4[5] = override;
  dispatch_async(serialQueue, v4);
}

void __61__MNNavigationServiceRemoteProxy_setSimulationSpeedOverride___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setSimulationSpeedOverride:*(a1 + 40)];
}

- (void)recordPedestrianTracePath:(id)path
{
  pathCopy = path;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MNNavigationServiceRemoteProxy_recordPedestrianTracePath___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_async(serialQueue, v7);
}

void __60__MNNavigationServiceRemoteProxy_recordPedestrianTracePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 recordPedestrianTracePath:*(a1 + 40)];
}

- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data
{
  dataCopy = data;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__MNNavigationServiceRemoteProxy_recordTraceBookmarkAtCurrentPositionWthScreenshotData___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(serialQueue, v7);
}

void __88__MNNavigationServiceRemoteProxy_recordTraceBookmarkAtCurrentPositionWthScreenshotData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 recordTraceBookmarkAtCurrentPositionWthScreenshotData:*(a1 + 40)];
}

- (void)setTracePosition:(double)position
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MNNavigationServiceRemoteProxy_setTracePosition___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  *&v4[5] = position;
  dispatch_async(serialQueue, v4);
}

void __51__MNNavigationServiceRemoteProxy_setTracePosition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setTracePosition:*(a1 + 40)];
}

- (void)setTracePlaybackSpeed:(double)speed
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MNNavigationServiceRemoteProxy_setTracePlaybackSpeed___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  *&v4[5] = speed;
  dispatch_async(serialQueue, v4);
}

void __56__MNNavigationServiceRemoteProxy_setTracePlaybackSpeed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setTracePlaybackSpeed:*(a1 + 40)];
}

- (void)setTraceIsPlaying:(BOOL)playing
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__MNNavigationServiceRemoteProxy_setTraceIsPlaying___block_invoke;
  v4[3] = &unk_1E8430928;
  v4[4] = self;
  playingCopy = playing;
  dispatch_async(serialQueue, v4);
}

void __52__MNNavigationServiceRemoteProxy_setTraceIsPlaying___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setTraceIsPlaying:*(a1 + 40)];
}

- (void)acceptReroute:(BOOL)reroute forTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MNNavigationServiceRemoteProxy_acceptReroute_forTrafficIncidentAlert___block_invoke;
  block[3] = &unk_1E842F9D8;
  rerouteCopy = reroute;
  block[4] = self;
  v10 = alertCopy;
  v8 = alertCopy;
  dispatch_async(serialQueue, block);
}

void __72__MNNavigationServiceRemoteProxy_acceptReroute_forTrafficIncidentAlert___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 acceptReroute:*(a1 + 48) forTrafficIncidentAlert:*(a1 + 40)];
}

- (void)changeOfflineMode:(unsigned __int8)mode
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__MNNavigationServiceRemoteProxy_changeOfflineMode___block_invoke;
  v4[3] = &unk_1E8430928;
  v4[4] = self;
  modeCopy = mode;
  dispatch_async(serialQueue, v4);
}

void __52__MNNavigationServiceRemoteProxy_changeOfflineMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 changeOfflineMode:*(a1 + 40)];
}

- (void)enableNavigationCapability:(unint64_t)capability
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__MNNavigationServiceRemoteProxy_enableNavigationCapability___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  v4[5] = capability;
  dispatch_async(serialQueue, v4);
}

void __61__MNNavigationServiceRemoteProxy_enableNavigationCapability___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 enableNavigationCapability:*(a1 + 40)];
}

- (void)disableNavigationCapability:(unint64_t)capability
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__MNNavigationServiceRemoteProxy_disableNavigationCapability___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  v4[5] = capability;
  dispatch_async(serialQueue, v4);
}

void __62__MNNavigationServiceRemoteProxy_disableNavigationCapability___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 disableNavigationCapability:*(a1 + 40)];
}

- (void)updateForUserIncidentReport:(id)report
{
  reportCopy = report;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MNNavigationServiceRemoteProxy_updateForUserIncidentReport___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = reportCopy;
  v6 = reportCopy;
  dispatch_async(serialQueue, v7);
}

void __62__MNNavigationServiceRemoteProxy_updateForUserIncidentReport___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 updateForUserIncidentReport:*(a1 + 40)];
}

- (void)setJunctionViewImageWidth:(double)width height:(double)height
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MNNavigationServiceRemoteProxy_setJunctionViewImageWidth_height___block_invoke;
  block[3] = &unk_1E842F5F8;
  block[4] = self;
  *&block[5] = width;
  *&block[6] = height;
  dispatch_async(serialQueue, block);
}

void __67__MNNavigationServiceRemoteProxy_setJunctionViewImageWidth_height___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setJunctionViewImageWidth:*(a1 + 40) height:*(a1 + 48)];
}

- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MNNavigationServiceRemoteProxy_setRideIndex_forSegmentIndex___block_invoke;
  block[3] = &unk_1E842F5F8;
  block[4] = self;
  block[5] = index;
  block[6] = segmentIndex;
  dispatch_async(serialQueue, block);
}

void __63__MNNavigationServiceRemoteProxy_setRideIndex_forSegmentIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setRideIndex:*(a1 + 40) forSegmentIndex:*(a1 + 48)];
}

- (void)setDisplayedStepIndex:(unint64_t)index
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MNNavigationServiceRemoteProxy_setDisplayedStepIndex___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  v4[5] = index;
  dispatch_async(serialQueue, v4);
}

void __56__MNNavigationServiceRemoteProxy_setDisplayedStepIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setDisplayedStepIndex:*(a1 + 40)];
}

- (void)setIsConnectedToCarplay:(BOOL)carplay
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MNNavigationServiceRemoteProxy_setIsConnectedToCarplay___block_invoke;
  v4[3] = &unk_1E8430928;
  v4[4] = self;
  carplayCopy = carplay;
  dispatch_async(serialQueue, v4);
}

void __58__MNNavigationServiceRemoteProxy_setIsConnectedToCarplay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setIsConnectedToCarplay:*(a1 + 40)];
}

- (void)setIsDisplayingNavigationTray:(BOOL)tray
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__MNNavigationServiceRemoteProxy_setIsDisplayingNavigationTray___block_invoke;
  v4[3] = &unk_1E8430928;
  v4[4] = self;
  trayCopy = tray;
  dispatch_async(serialQueue, v4);
}

void __64__MNNavigationServiceRemoteProxy_setIsDisplayingNavigationTray___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setIsDisplayingNavigationTray:*(a1 + 40)];
}

- (void)setGuidancePromptsEnabled:(BOOL)enabled
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MNNavigationServiceRemoteProxy_setGuidancePromptsEnabled___block_invoke;
  v4[3] = &unk_1E8430928;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(serialQueue, v4);
}

void __60__MNNavigationServiceRemoteProxy_setGuidancePromptsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setGuidancePromptsEnabled:*(a1 + 40)];
}

- (void)setHeadingOrientation:(int)orientation
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MNNavigationServiceRemoteProxy_setHeadingOrientation___block_invoke;
  v4[3] = &unk_1E842F5D0;
  v4[4] = self;
  orientationCopy = orientation;
  dispatch_async(serialQueue, v4);
}

void __56__MNNavigationServiceRemoteProxy_setHeadingOrientation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setHeadingOrientation:*(a1 + 40)];
}

- (void)stopCurrentGuidancePrompt
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MNNavigationServiceRemoteProxy_stopCurrentGuidancePrompt__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __59__MNNavigationServiceRemoteProxy_stopCurrentGuidancePrompt__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteObjectProxy];
  [v1 stopCurrentGuidancePrompt];
}

- (void)vibrateForPrompt:(unint64_t)prompt withReply:(id)reply
{
  replyCopy = reply;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MNNavigationServiceRemoteProxy_vibrateForPrompt_withReply___block_invoke;
  block[3] = &unk_1E842F5A8;
  v10 = replyCopy;
  promptCopy = prompt;
  block[4] = self;
  v8 = replyCopy;
  dispatch_async(serialQueue, block);
}

void __61__MNNavigationServiceRemoteProxy_vibrateForPrompt_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__MNNavigationServiceRemoteProxy_vibrateForPrompt_withReply___block_invoke_2;
  v4[3] = &unk_1E842F558;
  v3 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v2 vibrateForPrompt:v3 withReply:v4];
}

uint64_t __61__MNNavigationServiceRemoteProxy_vibrateForPrompt_withReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)repeatCurrentTrafficAlertWithReply:(id)reply
{
  replyCopy = reply;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MNNavigationServiceRemoteProxy_repeatCurrentTrafficAlertWithReply___block_invoke;
  v7[3] = &unk_1E842F580;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(serialQueue, v7);
}

void __69__MNNavigationServiceRemoteProxy_repeatCurrentTrafficAlertWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__MNNavigationServiceRemoteProxy_repeatCurrentTrafficAlertWithReply___block_invoke_2;
  v3[3] = &unk_1E842F558;
  v4 = *(a1 + 40);
  [v2 repeatCurrentTrafficAlertWithReply:v3];
}

uint64_t __69__MNNavigationServiceRemoteProxy_repeatCurrentTrafficAlertWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)repeatCurrentGuidanceWithReply:(id)reply
{
  replyCopy = reply;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MNNavigationServiceRemoteProxy_repeatCurrentGuidanceWithReply___block_invoke;
  v7[3] = &unk_1E842F580;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(serialQueue, v7);
}

void __65__MNNavigationServiceRemoteProxy_repeatCurrentGuidanceWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__MNNavigationServiceRemoteProxy_repeatCurrentGuidanceWithReply___block_invoke_2;
  v3[3] = &unk_1E842F558;
  v4 = *(a1 + 40);
  [v2 repeatCurrentGuidanceWithReply:v3];
}

uint64_t __65__MNNavigationServiceRemoteProxy_repeatCurrentGuidanceWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setVoiceGuidanceLevelOverride:(unint64_t)override
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__MNNavigationServiceRemoteProxy_setVoiceGuidanceLevelOverride___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  v4[5] = override;
  dispatch_async(serialQueue, v4);
}

void __64__MNNavigationServiceRemoteProxy_setVoiceGuidanceLevelOverride___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setVoiceGuidanceLevelOverride:*(a1 + 40)];
}

- (void)changeUserOptions:(id)options
{
  optionsCopy = options;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MNNavigationServiceRemoteProxy_changeUserOptions___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(serialQueue, v7);
}

void __52__MNNavigationServiceRemoteProxy_changeUserOptions___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 changeUserOptions:*(a1 + 40)];
}

- (void)setGuidanceType:(unint64_t)type
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MNNavigationServiceRemoteProxy_setGuidanceType___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  v4[5] = type;
  dispatch_async(serialQueue, v4);
}

void __50__MNNavigationServiceRemoteProxy_setGuidanceType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setGuidanceType:*(a1 + 40)];
}

- (void)switchToDestinationRoute
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MNNavigationServiceRemoteProxy_switchToDestinationRoute__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __58__MNNavigationServiceRemoteProxy_switchToDestinationRoute__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteObjectProxy];
  [v1 switchToDestinationRoute];
}

- (void)changeTransportType:(int)type route:(id)route
{
  routeCopy = route;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MNNavigationServiceRemoteProxy_changeTransportType_route___block_invoke;
  block[3] = &unk_1E842F530;
  typeCopy = type;
  block[4] = self;
  v10 = routeCopy;
  v8 = routeCopy;
  dispatch_async(serialQueue, block);
}

void __60__MNNavigationServiceRemoteProxy_changeTransportType_route___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 changeTransportType:*(a1 + 48) route:*(a1 + 40)];
}

- (void)switchToRoute:(id)route
{
  routeCopy = route;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MNNavigationServiceRemoteProxy_switchToRoute___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = routeCopy;
  v6 = routeCopy;
  dispatch_async(serialQueue, v7);
}

void __48__MNNavigationServiceRemoteProxy_switchToRoute___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 switchToRoute:*(a1 + 40)];
}

- (void)forceReroute
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MNNavigationServiceRemoteProxy_forceReroute__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __46__MNNavigationServiceRemoteProxy_forceReroute__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteObjectProxy];
  [v1 forceReroute];
}

- (void)resumeOriginalDestination
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MNNavigationServiceRemoteProxy_resumeOriginalDestination__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __59__MNNavigationServiceRemoteProxy_resumeOriginalDestination__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteObjectProxy];
  [v1 resumeOriginalDestination];
}

- (void)updateDestination:(id)destination
{
  destinationCopy = destination;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MNNavigationServiceRemoteProxy_updateDestination___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = destinationCopy;
  v6 = destinationCopy;
  dispatch_async(serialQueue, v7);
}

void __52__MNNavigationServiceRemoteProxy_updateDestination___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 updateDestination:*(a1 + 40)];
}

- (void)advanceToNextLeg
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MNNavigationServiceRemoteProxy_advanceToNextLeg__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __50__MNNavigationServiceRemoteProxy_advanceToNextLeg__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteObjectProxy];
  [v1 advanceToNextLeg];
}

- (void)removeWaypointAtIndex:(unint64_t)index
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MNNavigationServiceRemoteProxy_removeWaypointAtIndex___block_invoke;
  v4[3] = &unk_1E8430A10;
  v4[4] = self;
  v4[5] = index;
  dispatch_async(serialQueue, v4);
}

void __56__MNNavigationServiceRemoteProxy_removeWaypointAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 removeWaypointAtIndex:*(a1 + 40)];
}

- (void)insertWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MNNavigationServiceRemoteProxy_insertWaypoint___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = waypointCopy;
  v6 = waypointCopy;
  dispatch_async(serialQueue, v7);
}

void __49__MNNavigationServiceRemoteProxy_insertWaypoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 insertWaypoint:*(a1 + 40)];
}

- (void)rerouteWithWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__MNNavigationServiceRemoteProxy_rerouteWithWaypoints___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = waypointsCopy;
  v6 = waypointsCopy;
  dispatch_async(serialQueue, v7);
}

void __55__MNNavigationServiceRemoteProxy_rerouteWithWaypoints___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 rerouteWithWaypoints:*(a1 + 40)];
}

- (void)stopNavigationWithReason:(unint64_t)reason
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v8 = processName;
    if (reason - 1 > 9)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E842F640[reason - 1];
    }

    *buf = 138412546;
    v16 = processName;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "%@ => navd stopNavigationWithReason: %@", buf, 0x16u);
  }

  reconnectionDetails = self->_reconnectionDetails;
  self->_reconnectionDetails = 0;

  startNavigationDetails = self->_startNavigationDetails;
  self->_startNavigationDetails = 0;

  serialQueue = self->_serialQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__MNNavigationServiceRemoteProxy_stopNavigationWithReason___block_invoke;
  v14[3] = &unk_1E8430A10;
  v14[4] = self;
  v14[5] = reason;
  dispatch_async(serialQueue, v14);
  v13 = *MEMORY[0x1E69E9840];
}

void __59__MNNavigationServiceRemoteProxy_stopNavigationWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 stopNavigationWithReason:*(a1 + 40)];
}

- (void)startNavigationWithDetails:(id)details activeBlock:(id)block
{
  detailsCopy = details;
  interruptionDatesLock = self->_interruptionDatesLock;
  geo_isolate_sync();
  reconnectionDetails = self->_reconnectionDetails;
  self->_reconnectionDetails = 0;

  startNavigationDetails = self->_startNavigationDetails;
  self->_startNavigationDetails = detailsCopy;
  v9 = detailsCopy;

  [(MNNavigationServiceRemoteProxy *)self _startNavigationWithDetails:v9];
}

- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index
{
  previewCopy = preview;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Maps => navd setRoutesForPreview", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MNNavigationServiceRemoteProxy_setRoutesForPreview_selectedRouteIndex___block_invoke;
  block[3] = &unk_1E84309E8;
  block[4] = self;
  v11 = previewCopy;
  indexCopy = index;
  v9 = previewCopy;
  dispatch_async(serialQueue, block);
}

void __73__MNNavigationServiceRemoteProxy_setRoutesForPreview_selectedRouteIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 setRoutesForPreview:*(a1 + 40) selectedRouteIndex:*(a1 + 48)];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (MNProtocolDeclaresSelector(&unk_1F4EEA548, selector))
  {
    delegate = [(MNNavigationServiceRemoteProxy *)self delegate];
    if (!delegate)
    {
      _navigation_methodSignatureForEmptyMethod = [MEMORY[0x1E695DF68] _navigation_methodSignatureForEmptyMethod];
LABEL_6:
      v7 = _navigation_methodSignatureForEmptyMethod;

      if (v7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (objc_opt_respondsToSelector())
    {
      _navigation_methodSignatureForEmptyMethod = [delegate methodSignatureForSelector:selector];
      goto LABEL_6;
    }
  }

LABEL_9:
  v9.receiver = self;
  v9.super_class = MNNavigationServiceRemoteProxy;
  v7 = [(MNNavigationServiceRemoteProxy *)&v9 methodSignatureForSelector:selector];
LABEL_10:

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  selector = [invocationCopy selector];
  if (MNProtocolDeclaresSelector(&unk_1F4EEA548, selector))
  {
    methodSignature = [invocationCopy methodSignature];
    _navigation_methodSignatureForEmptyMethod = [MEMORY[0x1E695DF68] _navigation_methodSignatureForEmptyMethod];

    if (methodSignature != _navigation_methodSignatureForEmptyMethod)
    {
      selfCopy = self;
      v11 = selfCopy;
      [invocationCopy setArgument:&v11 atIndex:2];
      [invocationCopy retainArguments];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__MNNavigationServiceRemoteProxy_forwardInvocation___block_invoke;
      block[3] = &unk_1E8430D50;
      block[4] = selfCopy;
      v10 = invocationCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    [(MNNavigationServiceRemoteProxy *)self doesNotRecognizeSelector:selector];
  }
}

void __52__MNNavigationServiceRemoteProxy_forwardInvocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));

  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = objc_loadWeakRetained((*(a1 + 32) + 96));
    [v3 invokeWithTarget:v4];
  }
}

- (void)_releaseSandboxExtension
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_sandboxHandle)
  {
    v3 = sandbox_extension_release();
    v4 = MNGetMNNavigationServiceLog();
    v5 = v4;
    if (v3 == -1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v10 = *__error();
        v12[0] = 67109120;
        v12[1] = v10;
        v6 = "Error releasing sandbox extension: %d";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        v9 = 8;
        goto LABEL_7;
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      v6 = "Sandbox extension released.";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 2;
LABEL_7:
      _os_log_impl(&dword_1D311E000, v7, v8, v6, v12, v9);
    }

    self->_sandboxHandle = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_consumeSandboxExtension:(char *)extension
{
  v17 = *MEMORY[0x1E69E9840];
  if (extension && *extension)
  {
    v5 = sandbox_extension_consume();
    if (v5 == -1)
    {
      v6 = MNGetMNNavigationServiceLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        v13 = 136380931;
        extensionCopy2 = extension;
        v15 = 1024;
        v16 = v11;
        v7 = "Error consuming (%{private}s) sandbox extension: %d";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
        v10 = 18;
        goto LABEL_8;
      }
    }

    else
    {
      self->_sandboxHandle = v5;
      v6 = MNGetMNNavigationServiceLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136380675;
        extensionCopy2 = extension;
        v7 = "Sandbox extension (%{private}s) consumed.";
        v8 = v6;
        v9 = OS_LOG_TYPE_DEFAULT;
        v10 = 12;
LABEL_8:
        _os_log_impl(&dword_1D311E000, v8, v9, v7, &v13, v10);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_startNavigationWithDetails:(id)details
{
  v15 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    *buf = 138412290;
    v14 = processName;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "%@ => navd _startNavigationWithDetails", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__MNNavigationServiceRemoteProxy__startNavigationWithDetails___block_invoke;
  v11[3] = &unk_1E8430D50;
  v11[4] = self;
  v12 = detailsCopy;
  v9 = detailsCopy;
  dispatch_async(serialQueue, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __62__MNNavigationServiceRemoteProxy__startNavigationWithDetails___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectProxy];
  [v2 startNavigationWithDetails:*(a1 + 40) activeBlock:&__block_literal_global_287_12726];
}

void __50__MNNavigationServiceRemoteProxy__closeConnection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  geo_isolate_sync();
  [*(*(a1 + 32) + 16) setInvalidationHandler:0];
  [*(*(a1 + 32) + 16) setInterruptionHandler:0];
  [*(*(a1 + 32) + 16) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  [*(a1 + 32) _releaseSandboxExtension];
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  *(v5 + 72) = 0;
}

void __50__MNNavigationServiceRemoteProxy__closeConnection__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

- (BOOL)_shouldReconnectWithInterruptionOnDate:(id)date
{
  dateCopy = date;
  UInteger = GEOConfigGetUInteger();
  if ([(MNNavigationServiceRemoteProxy *)self interruptionCount]<= UInteger)
  {
    v10 = 1;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__12729;
    v16 = __Block_byref_object_dispose__12730;
    v17 = 0;
    interruptionDatesLock = self->_interruptionDatesLock;
    geo_isolate_sync();
    GEOConfigGetDouble();
    v8 = v7;
    [dateCopy timeIntervalSinceDate:v13[5]];
    v10 = v9 >= v8;
    _Block_object_dispose(&v12, 8);
  }

  return v10;
}

void __73__MNNavigationServiceRemoteProxy__shouldReconnectWithInterruptionOnDate___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectAtIndexedSubscript:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_restoreIdleConnection
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    interruptionCount = [(MNNavigationServiceRemoteProxy *)self interruptionCount];
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "Attempting to restore idle connection after interruption (%d interruptions overall)", buf, 8u);
  }

  [(MNNavigationServiceRemoteProxy *)self _releaseSandboxExtension];
  interruptionDatesLock = self->_interruptionDatesLock;
  geo_isolate_sync();
  [(MNNavigationServiceRemoteProxy *)self checkinForNavigationService:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_restoreNavigationSession
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v27[0] = 67109120;
    v27[1] = [(MNNavigationServiceRemoteProxy *)self interruptionCount];
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "Attempting to restart navigation after interruption (%d interruptions overall)", v27, 8u);
  }

  v4 = +[MNNavigationService sharedService];
  route = [v4 route];

  if (route)
  {
    userOptions = [v4 userOptions];
    [(MNNavigationServiceRemoteProxy *)self changeUserOptions:userOptions];

    alternateRoutes = [v4 alternateRoutes];
    v8 = [alternateRoutes count];

    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8 + 1];
    route2 = [v4 route];
    [v9 addObject:route2];

    alternateRoutes2 = [v4 alternateRoutes];
    [v9 addObjectsFromArray:alternateRoutes2];

    v12 = [(MNStartNavigationDetails *)self->_startNavigationDetails copy];
    [v12 setRoutes:v9];
    currentRequest = [v4 currentRequest];
    [v12 setDirectionsRequest:currentRequest];

    currentResponse = [v4 currentResponse];
    [v12 setDirectionsResponse:currentResponse];

    lastLocation = [v4 lastLocation];
    [v12 setInitialUserLocation:lastLocation];

    details = [v4 details];
    v17 = objc_alloc_init(MNStartNavigationReconnectionDetails);
    reconnectionDetails = self->_reconnectionDetails;
    self->_reconnectionDetails = v17;

    [(MNStartNavigationReconnectionDetails *)self->_reconnectionDetails setIsReconnecting:1];
    -[MNStartNavigationReconnectionDetails setInitialRouteSource:](self->_reconnectionDetails, "setInitialRouteSource:", [details initialRouteSource]);
    -[MNStartNavigationReconnectionDetails setTargetLegIndex:](self->_reconnectionDetails, "setTargetLegIndex:", [details targetLegIndex]);
    spokenAnnouncements = [details spokenAnnouncements];
    [(MNStartNavigationReconnectionDetails *)self->_reconnectionDetails setSpokenAnnouncements:spokenAnnouncements];

    resumeRouteHandle = [details resumeRouteHandle];
    serverSessionState = [resumeRouteHandle serverSessionState];
    [(MNStartNavigationReconnectionDetails *)self->_reconnectionDetails setServerSessionState:serverSessionState];

    [v12 setReconnectionDetails:self->_reconnectionDetails];
    tracePath = [v4 tracePath];
    if (tracePath && ([v4 traceIsPlaying] & 1) == 0)
    {
      lastPathComponent = [tracePath lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      [v12 setTraceRecordingNameOverride:stringByDeletingPathExtension];
    }

    [(MNNavigationServiceRemoteProxy *)self _startNavigationWithDetails:v12];
  }

  else
  {
    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "Restoring navigation session failed because no active route was found.", v27, 2u);
    }

    v9 = self->_reconnectionDetails;
    self->_reconnectionDetails = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_handleDisconnect
{
  v34 = *MEMORY[0x1E69E9840];
  if ([(MNStartNavigationReconnectionDetails *)self->_reconnectionDetails isReconnecting])
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "Handling a navd disconnect while a reconnect was already in progress. This likely means that navd is crashing repeatedly. Attempting to continue anyway.", buf, 2u);
    }
  }

  date = [MEMORY[0x1E695DF00] date];
  v5 = [(MNNavigationServiceRemoteProxy *)self _shouldReconnectWithInterruptionOnDate:date];
  interruptionDatesLock = self->_interruptionDatesLock;
  v24 = MEMORY[0x1E69E9820];
  v7 = date;
  v25 = v7;
  geo_isolate_sync();
  if (v5)
  {
    v8 = +[MNNavigationService sharedService];
    if ([v8 state] >= 3 && (objc_msgSend(v8, "route"), (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (startNavigationDetails = self->_startNavigationDetails, v9, startNavigationDetails))
    {
      [(MNNavigationServiceRemoteProxy *)self _restoreNavigationSession];
    }

    else
    {
      [(MNNavigationServiceRemoteProxy *)self _restoreIdleConnection];
    }
  }

  else
  {
    reconnectionDetails = self->_reconnectionDetails;
    self->_reconnectionDetails = 0;

    UInteger = GEOConfigGetUInteger();
    GEOConfigGetDouble();
    v14 = v13;
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      interruptionCount = [(MNNavigationServiceRemoteProxy *)self interruptionCount];
      *buf = 67109632;
      v29 = UInteger;
      v30 = 1024;
      v31 = interruptionCount;
      v32 = 2048;
      v33 = v14;
      _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_ERROR, "navd connection interrupted over %d times (%d overall) in %g seconds. No longer attempting to reconnect.", buf, 0x18u);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Connection to the navigation service was interrupted over %d times in %g seconds. Please file a Radar with a sysdiagnose.", UInteger, v14, v24, 3221225472, __51__MNNavigationServiceRemoteProxy__handleDisconnect__block_invoke, &unk_1E8430D50, self, v7];
    v26[0] = @"MNErrorInternalDescriptionKey";
    v26[1] = @"MNErrorInterruptionDatesKey";
    v27[0] = v8;
    interruptionDates = [(MNNavigationServiceRemoteProxy *)self interruptionDates];
    v27[1] = interruptionDates;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    v19 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:10 userInfo:v18];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationServiceProxy:self didFailWithError:v19];

    v21 = +[MNNavigationService sharedService];
    v22 = objc_loadWeakRetained(&self->_delegate);
    [v22 navigationServiceProxy:self didChangeFromState:objc_msgSend(v21 toState:{"state"), 0}];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_handleInvalidation
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = +[MNNavigationService sharedService];
    state = [v4 state];
    if ((state - 1) > 5)
    {
      v6 = @"Stopped";
    }

    else
    {
      v6 = off_1E842AC68[state - 1];
    }

    v7 = v6;
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "navd connection invalidated while in state '%@'. See logs with 'category=xpc.exceptions' for more information on the invalidation.", buf, 0xCu);
  }

  [(MNNavigationServiceRemoteProxy *)self _closeConnection];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MNNavigationServiceRemoteProxy__handleInvalidation__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(serialQueue, block);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __53__MNNavigationServiceRemoteProxy__handleInvalidation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateConnection];
  v2 = *(a1 + 32);

  return [v2 _handleDisconnect];
}

- (void)_handleInterruption
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = +[MNNavigationService sharedService];
    state = [v4 state];
    if ((state - 1) > 5)
    {
      v6 = @"Stopped";
    }

    else
    {
      v6 = off_1E842AC68[state - 1];
    }

    v7 = v6;
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "navd connection interrupted while in state '%@'.", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MNNavigationServiceRemoteProxy__handleInterruption__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(serialQueue, block);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setExpectedClassesForClientInterface:(id)interface
{
  v3 = MEMORY[0x1E695DFD8];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_navigationServiceProxy_didUpdatePreviewRoutes_withSelectedRouteIndex_ argumentIndex:1 ofReply:0];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];

  [interfaceCopy setClasses:v9 forSelector:sel_navigationServiceProxy_didRerouteWithRoute_withLocation_withAlternateRoutes_rerouteReason_ argumentIndex:3 ofReply:0];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];

  [interfaceCopy setClasses:v12 forSelector:sel_navigationServiceProxy_didFailRerouteWithError_ argumentIndex:1 ofReply:0];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];

  [interfaceCopy setClasses:v15 forSelector:sel_navigationServiceProxy_didUpdateAlternateRoutes_ argumentIndex:1 ofReply:0];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = [v16 setWithObjects:{v17, v18, v19, v20, v21, v22, v23, objc_opt_class(), 0}];

  [interfaceCopy setClasses:v24 forSelector:sel_navigationServiceProxy_didFailWithError_ argumentIndex:1 ofReply:0];
  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];

  [interfaceCopy setClasses:v28 forSelector:sel_navigationServiceProxy_willRequestRealtimeUpdatesForRouteIDs_ argumentIndex:1 ofReply:0];
  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v29 setWithObjects:{v30, v31, v32, objc_opt_class(), 0}];

  [interfaceCopy setClasses:v33 forSelector:sel_navigationServiceProxy_didReceiveRealtimeUpdates_ argumentIndex:1 ofReply:0];
  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];

  [interfaceCopy setClasses:v36 forSelector:sel_navigationServiceProxy_updateSignsWithARInfo_ argumentIndex:1 ofReply:0];
}

void __49__MNNavigationServiceRemoteProxy__openConnection__block_invoke_31(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_FAULT, "%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __49__MNNavigationServiceRemoteProxy__openConnection__block_invoke_253(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterruption];
}

void __49__MNNavigationServiceRemoteProxy__openConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

- (unint64_t)interruptionCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  interruptionDatesLock = self->_interruptionDatesLock;
  geo_isolate_sync();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __51__MNNavigationServiceRemoteProxy_interruptionCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSArray)interruptionDates
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12729;
  v9 = __Block_byref_object_dispose__12730;
  v10 = 0;
  interruptionDatesLock = self->_interruptionDatesLock;
  geo_isolate_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __51__MNNavigationServiceRemoteProxy_interruptionDates__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isOpenForClient:(id)client
{
  clientCopy = client;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  clientsLock = self->_clientsLock;
  v7 = clientCopy;
  geo_isolate_sync();
  LOBYTE(clientsLock) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return clientsLock;
}

uint64_t __50__MNNavigationServiceRemoteProxy_isOpenForClient___block_invoke(void *a1)
{
  result = [*(a1[4] + 40) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)closeForClient:(id)client
{
  clientCopy = client;
  clientsLock = self->_clientsLock;
  v7 = MEMORY[0x1E69E9820];
  v8 = clientCopy;
  v6 = clientCopy;
  geo_isolate_sync();
  [(MNNavigationServiceRemoteProxy *)self _updateConnection:v7];
}

- (void)openForClient:(id)client
{
  v21 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  if ([(MNNavigationServiceRemoteProxy *)self isOpenForClient:clientCopy])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calling openForClient with an already existing client."];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v12 = "[MNNavigationServiceRemoteProxy openForClient:]";
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationServiceRemoteProxy.m";
      v15 = 1024;
      v16 = 90;
      v17 = 2080;
      v18 = "NO";
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  else
  {
    clientsLock = self->_clientsLock;
    v9 = MEMORY[0x1E69E9820];
    v10 = clientCopy;
    geo_isolate_sync();
    [(MNNavigationServiceRemoteProxy *)self _updateConnection:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MNNavigationServiceRemoteProxy *)self _closeConnection];
  v3.receiver = self;
  v3.super_class = MNNavigationServiceRemoteProxy;
  [(MNNavigationServiceRemoteProxy *)&v3 dealloc];
}

@end