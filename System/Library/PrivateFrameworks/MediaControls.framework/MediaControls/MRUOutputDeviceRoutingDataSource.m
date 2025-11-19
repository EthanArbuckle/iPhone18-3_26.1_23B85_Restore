@interface MRUOutputDeviceRoutingDataSource
+ (id)_globalAudioSessionLock;
- (BOOL)_isRemovingPredictedDevice:(id)a3;
- (BOOL)_shouldAddPredictedDeviceToOuputDevices:(id)a3;
- (BOOL)_shouldDetachOutputDevicesToGroup:(id)a3;
- (BOOL)didReceiveDiscoveryResults;
- (BOOL)routeIsLeaderOfEndpoint:(id)a3;
- (MPAVEndpointRoute)endpointRoute;
- (MPMRAVOutputContextWrapper)applicationOutputContext;
- (MRAVEndpoint)endpoint;
- (MRAVOutputDevice)predictedDevice;
- (MRAVRoutingDiscoverySessionConfiguration)discoverySessionConfiguration;
- (MRUOutputDeviceRoutingDataSourceObserver)hearingAidDelegate;
- (NSString)hearingDeviceName;
- (NSString)routingContextUID;
- (id)_detachableDevicesInOutputDevices:(id)a3;
- (id)_initWithEndpointRoute:(id)a3;
- (id)_outputDeviceRouteWithUID:(id)a3;
- (id)_stateDumpObject;
- (id)getRoutesForCategory:(id)a3;
- (id)outputDevicesForRoutes:(id)a3;
- (int64_t)discoveryMode;
- (void)_endpointsDidChangeNotification:(id)a3;
- (void)_generateDiscoverySession;
- (void)_onDiscoverySessionQueue_generateCompanionDiscoverySession;
- (void)_onDiscoverySessionQueue_generateDiscoverySession;
- (void)_outputDevicesDidChange:(id)a3;
- (void)_outputDevicesDidChangeNotification:(id)a3;
- (void)_personalRoutesDidChange;
- (void)_registerNotifications;
- (void)_resetPredictedOutputDevice;
- (void)_routeStatusDidChangeNotification:(id)a3;
- (void)_setShouldSourceOutputDevicesFromAVODDS:(BOOL)a3;
- (void)_unregisterNotifications;
- (void)addHearingAidRouteIfNeededToRoutes:(id)a3;
- (void)addRouteToGroup:(id)a3 completion:(id)a4;
- (void)addRoutesToGroup:(id)a3 completion:(id)a4;
- (void)createGroupFromOutputDevices:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)hearingAidReachabilityDidChange;
- (void)removeRouteFromGroup:(id)a3 completion:(id)a4;
- (void)removeRoutesFromGroup:(id)a3 completion:(id)a4;
- (void)setCompanionDiscoverySession:(id)a3;
- (void)setDidReceiveDiscoveryResults:(BOOL)a3;
- (void)setDiscoveryMode:(int64_t)a3;
- (void)setDiscoverySession:(id)a3;
- (void)setEndpointRoute:(id)a3;
- (void)setHearingDeviceName:(id)a3;
- (void)setPickedRoute:(id)a3 withPassword:(id)a4 completion:(id)a5;
- (void)setPredictedDevice:(id)a3;
- (void)setRoutingContextUID:(id)a3;
- (void)setTargetSessionID:(unsigned int)a3;
@end

@implementation MRUOutputDeviceRoutingDataSource

- (id)_initWithEndpointRoute:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18.receiver = self;
  v18.super_class = MRUOutputDeviceRoutingDataSource;
  v6 = [(MPAVRoutingDataSource *)&v18 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.MediaPlayer.MPAVOutputDeviceRoutingDataSource/serialQueue", 0);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;

    v9 = dispatch_queue_create("com.apple.MediaPlayer.MPAVOutputDeviceRoutingDataSource/discoverySessionQueue", 0);
    discoverySessionQueue = v6->_discoverySessionQueue;
    v6->_discoverySessionQueue = v9;

    v6->_attemptedToInitializeAppOutputContext = 0;
    v6->_shouldSourceOutputDevicesFromAVODDS = 1;
    v6->_supportsMultipleSelection = 1;
    v6->_supportsQueueHandoff = 1;
    objc_storeStrong(&v6->_endpointRoute, a3);
    SharedAudioPresentationContext = MRAVOutputContextGetSharedAudioPresentationContext();
    if (SharedAudioPresentationContext)
    {
      v12 = [objc_alloc(MEMORY[0x1E6970590]) initWithMRAVOutputContext:SharedAudioPresentationContext];
      applicationOutputContext = v6->_applicationOutputContext;
      v6->_applicationOutputContext = v12;

      SharedAudioPresentationContext = MRAVOutputContextCopyUniqueIdentifier();
    }

    v14 = MCLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v20 = SharedAudioPresentationContext;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "Created new application output context: %{public}@ for data source: %{public}@", buf, 0x16u);
    }

    [(MRUOutputDeviceRoutingDataSource *)v6 _registerNotifications];
    [(MRUOutputDeviceRoutingDataSource *)v6 _generateDiscoverySession];
    [(MRUOutputDeviceRoutingDataSource *)v6 hearingAidReachabilityDidChange];
    v15 = [[MRUODRDSNoticationObserver alloc] initWithDelegate:v6];
    notificationObserver = v6->_notificationObserver;
    v6->_notificationObserver = v15;
  }

  return v6;
}

- (void)dealloc
{
  [(MRUODRDSNoticationObserver *)self->_notificationObserver endObservation];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __43__MRUOutputDeviceRoutingDataSource_dealloc__block_invoke;
  v7 = &unk_1E7663898;
  v8 = self;
  msv_dispatch_sync_on_queue();
  [(MRUOutputDeviceRoutingDataSource *)self _unregisterNotifications];
  v3.receiver = self;
  v3.super_class = MRUOutputDeviceRoutingDataSource;
  [(MPAVRoutingDataSource *)&v3 dealloc];
}

uint64_t __43__MRUOutputDeviceRoutingDataSource_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 240) removeOutputDevicesChangedCallback:*(*(a1 + 32) + 104)];
  [*(*(a1 + 32) + 240) setDiscoveryMode:0];
  [*(*(a1 + 32) + 232) removeEndpointsChangedCallback:*(*(a1 + 32) + 88)];
  v2 = *(*(a1 + 32) + 232);

  return [v2 setDiscoveryMode:0];
}

- (MPMRAVOutputContextWrapper)applicationOutputContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__MRUOutputDeviceRoutingDataSource_applicationOutputContext__block_invoke;
  v5[3] = &unk_1E7665118;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__MRUOutputDeviceRoutingDataSource_applicationOutputContext__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) endpoint];
  if (!v4 || ([*(a1 + 32) endpoint], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "isLocalEndpoint")))
  {
    v3 = *(*(a1 + 32) + 144);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (NSString)routingContextUID
{
  v2 = [(MRUOutputDeviceRoutingDataSource *)self applicationOutputContext];
  [v2 unwrappedValue];
  v3 = MRAVOutputContextCopyUniqueIdentifier();

  return v3;
}

- (void)setRoutingContextUID:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MCLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543874;
    v18 = v7;
    v19 = 2048;
    v20 = self;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> setting routing context UID = %{public}@", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __57__MRUOutputDeviceRoutingDataSource_setRoutingContextUID___block_invoke;
  v14 = &unk_1E76639D0;
  v15 = self;
  v16 = v4;
  v9 = v4;
  dispatch_sync(serialQueue, &v11);
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:*MEMORY[0x1E696F8A0] object:self];
  [v10 postNotificationName:*MEMORY[0x1E696F880] object:self];
}

void __57__MRUOutputDeviceRoutingDataSource_setRoutingContextUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = [objc_opt_class() _globalAudioSessionLock];
  [v4 lock];
  RoutingContext = MRAVOutputContextCreateRoutingContext();
  if (RoutingContext)
  {
    v6 = RoutingContext;
    v7 = [objc_alloc(MEMORY[0x1E6970590]) initWithMRAVOutputContext:RoutingContext];
    v8 = *(a1 + 32);
    v9 = *(v8 + 144);
    *(v8 + 144) = v7;

    CFRelease(v6);
  }

  [v4 unlock];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 72);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__MRUOutputDeviceRoutingDataSource_setRoutingContextUID___block_invoke_2;
  v13[3] = &unk_1E76639D0;
  v13[4] = v11;
  v14 = v10;
  dispatch_async(v12, v13);
}

- (void)setEndpointRoute:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = a3;
  msv_dispatch_sync_on_queue();
  if (*(v8 + 24) == 1)
  {
    [(MRUOutputDeviceRoutingDataSource *)self setDidReceiveDiscoveryResults:0];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E696F868];
    [v5 removeObserver:self name:*MEMORY[0x1E696F868] object:0];
    [v5 addObserver:self selector:sel__personalRoutesDidChange name:v6 object:v4];
    [v5 postNotificationName:*MEMORY[0x1E696F8A0] object:self];
    [v5 postNotificationName:*MEMORY[0x1E696F880] object:self];
    [(MRUOutputDeviceRoutingDataSource *)self _generateDiscoverySession];
  }

  _Block_object_dispose(&v7, 8);
}

void __53__MRUOutputDeviceRoutingDataSource_setEndpointRoute___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 168);
  if (v3 == v2)
  {
  }

  else
  {
    v5 = v3;
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      objc_storeStrong((*(a1 + 32) + 168), *(a1 + 40));
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (void)setTargetSessionID:(unsigned int)a3
{
  if (self->_targetSessionID != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_targetSessionID = a3;
    discoverySessionQueue = self->_discoverySessionQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__MRUOutputDeviceRoutingDataSource_setTargetSessionID___block_invoke;
    v6[3] = &unk_1E7664308;
    v6[4] = self;
    v7 = a3;
    dispatch_async(discoverySessionQueue, v6);
  }
}

- (MRAVEndpoint)endpoint
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__1;
  v8 = __Block_byref_object_dispose__1;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __44__MRUOutputDeviceRoutingDataSource_endpoint__block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 168) endpointWrapper];
  v2 = v6;
  v3 = [v6 unwrappedValue];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (MPAVEndpointRoute)endpointRoute
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__1;
  v8 = __Block_byref_object_dispose__1;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (MRAVOutputDevice)predictedDevice
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__1;
  v8 = __Block_byref_object_dispose__1;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)setPredictedDevice:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__MRUOutputDeviceRoutingDataSource_setPredictedDevice___block_invoke;
  v7[3] = &unk_1E76639D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __55__MRUOutputDeviceRoutingDataSource_setPredictedDevice___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 160);
  v4 = v3;
  if (v3 == v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = [v3 isEqual:v2];

  if ((v5 & 1) == 0)
  {
    v4 = MCLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v6;
      v12 = 2048;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v9 = v6;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Setting predicted device: %@", &v10, 0x20u);
    }

    goto LABEL_5;
  }

LABEL_6:
  objc_storeStrong((*(a1 + 32) + 160), *(a1 + 40));
}

- (BOOL)didReceiveDiscoveryResults
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  discoverySessionQueue = self->_discoverySessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MRUOutputDeviceRoutingDataSource_didReceiveDiscoveryResults__block_invoke;
  v5[3] = &unk_1E7665118;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(discoverySessionQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDidReceiveDiscoveryResults:(BOOL)a3
{
  discoverySessionQueue = self->_discoverySessionQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__MRUOutputDeviceRoutingDataSource_setDidReceiveDiscoveryResults___block_invoke;
  v4[3] = &unk_1E7663F38;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(discoverySessionQueue, v4);
}

- (NSString)hearingDeviceName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MRUOutputDeviceRoutingDataSource_hearingDeviceName__block_invoke;
  v5[3] = &unk_1E7665118;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __53__MRUOutputDeviceRoutingDataSource_hearingDeviceName__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setHearingDeviceName:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MRUOutputDeviceRoutingDataSource_setHearingDeviceName___block_invoke;
  v7[3] = &unk_1E76639D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

uint64_t __57__MRUOutputDeviceRoutingDataSource_setHearingDeviceName___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 176) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 176);
    *(v4 + 176) = v3;

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

- (MRAVRoutingDiscoverySessionConfiguration)discoverySessionConfiguration
{
  v3 = [objc_alloc(MEMORY[0x1E69B09C8]) initWithEndpointFeatures:1];
  [v3 setTargetAudioSessionID:{-[MRUOutputDeviceRoutingDataSource targetSessionID](self, "targetSessionID")}];

  return v3;
}

- (void)setDiscoverySession:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_discoverySessionQueue);
  [(MRAVRoutingDiscoverySession *)self->_discoverySession removeOutputDevicesChangedCallback:self->_callbackToken];
  [(MRAVRoutingDiscoverySession *)self->_discoverySession setDiscoveryMode:0];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MRUOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke;
  block[3] = &unk_1E76639D0;
  block[4] = self;
  v7 = v5;
  v17 = v7;
  dispatch_sync(serialQueue, block);
  objc_storeStrong(&self->_discoverySession, a3);
  self->_devicePresenceDetected = [(MRAVRoutingDiscoverySession *)self->_discoverySession devicePresenceDetected];
  self->_didReceiveDiscoveryResults = 0;
  objc_initWeak(&location, self);
  discoverySession = self->_discoverySession;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__MRUOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke_2;
  v12[3] = &unk_1E7665EE8;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = [(MRAVRoutingDiscoverySession *)discoverySession addOutputDevicesChangedCallback:v12];
  callbackToken = self->_callbackToken;
  self->_callbackToken = v10;

  [(MRAVRoutingDiscoverySession *)self->_discoverySession setDiscoveryMode:MPAVMRRouteDiscoveryModeFromDiscoveryMode()];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __56__MRUOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  if (v2)
  {
    [v2 unwrappedValue];
    v3 = MRAVOutputContextCopyUniqueIdentifier();
    [*(a1 + 40) setRoutingContextUID:v3];
  }
}

void __56__MRUOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v6 = v3;
    v10 = v6;
    msv_dispatch_sync_on_queue();
    if (*(v12 + 24) == 1)
    {
      [v5 _outputDevicesDidChange:{v6, v7, 3221225472, __56__MRUOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke_3, &unk_1E7665EC0, v8, v9, v6, &v11}];
    }

    _Block_object_dispose(&v11, 8);
  }
}

void *__56__MRUOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 240);
  if (result == v2)
  {
    *(*(a1 + 32) + 113) = [result devicePresenceDetected];
    result = [*(a1 + 48) count];
    if (result)
    {
      *(*(a1 + 32) + 129) = 1;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

- (void)setCompanionDiscoverySession:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_discoverySessionQueue);
  [(MRAVRoutingDiscoverySession *)self->_companionDiscoverySession removeEndpointsChangedCallback:self->_companionCallbackToken];
  objc_storeStrong(&self->_companionDiscoverySession, a3);
  self->_didFindCompanion = 0;
  objc_initWeak(&location, self);
  companionDiscoverySession = self->_companionDiscoverySession;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __65__MRUOutputDeviceRoutingDataSource_setCompanionDiscoverySession___block_invoke;
  v12 = &unk_1E7665F10;
  objc_copyWeak(&v13, &location);
  v7 = [(MRAVRoutingDiscoverySession *)companionDiscoverySession addEndpointsChangedCallback:&v9];
  companionCallbackToken = self->_companionCallbackToken;
  self->_companionCallbackToken = v7;

  [(MRAVRoutingDiscoverySession *)self->_companionDiscoverySession setDiscoveryMode:3, v9, v10, v11, v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __65__MRUOutputDeviceRoutingDataSource_setCompanionDiscoverySession___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ((WeakRetained[96] & 1) == 0 && [*(*(&v10 + 1) + 8 * i) isCompanionEndpoint])
          {
            msv_dispatch_sync_on_queue();
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

void __65__MRUOutputDeviceRoutingDataSource_setCompanionDiscoverySession___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) discoverySessionConfiguration];
  v4 = [v2 discoverySessionWithConfiguration:v3];
  [*(a1 + 32) setDiscoverySession:v4];

  *(*(a1 + 32) + 96) = 1;
}

- (void)setDiscoveryMode:(int64_t)a3
{
  discoverySessionQueue = self->_discoverySessionQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__MRUOutputDeviceRoutingDataSource_setDiscoveryMode___block_invoke;
  v4[3] = &unk_1E7663CE0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(discoverySessionQueue, v4);
}

uint64_t __53__MRUOutputDeviceRoutingDataSource_setDiscoveryMode___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 152) = *(a1 + 40);
  v2 = MPAVMRRouteDiscoveryModeFromDiscoveryMode();
  [*(*(a1 + 32) + 240) setDiscoveryMode:v2];
  v3 = *(*(a1 + 32) + 232);

  return [v3 setDiscoveryMode:v2];
}

- (int64_t)discoveryMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  discoverySessionQueue = self->_discoverySessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MRUOutputDeviceRoutingDataSource_discoveryMode__block_invoke;
  v5[3] = &unk_1E7665118;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(discoverySessionQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)getRoutesForCategory:(id)a3
{
  v204 = *MEMORY[0x1E69E9840];
  v113 = a3;
  v114 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v123 = self;
  v4 = [(MRUOutputDeviceRoutingDataSource *)self endpointRoute];
  v117 = [(MRUOutputDeviceRoutingDataSource *)v123 applicationOutputContext];
  v185 = 0;
  v186 = &v185;
  v187 = 0x3032000000;
  v188 = __Block_byref_object_copy__1;
  v189 = __Block_byref_object_dispose__1;
  v190 = 0;
  v178 = MEMORY[0x1E69E9820];
  v179 = 3221225472;
  v180 = __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke;
  v181 = &unk_1E7664168;
  v184 = &v185;
  v182 = v123;
  v5 = v4;
  v183 = v5;
  msv_dispatch_sync_on_queue();
  v115 = v5;
  if ([v5 isPhoneRoute])
  {
    v125 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v6 = v186[5];
    v7 = [v6 countByEnumeratingWithState:&v174 objects:v203 count:16];
    if (v7)
    {
      v8 = *v175;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v175 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v174 + 1) + 8 * i);
          v11 = [v10 groupID];
          v12 = [(MRUOutputDeviceRoutingDataSource *)v123 endpoint];
          v13 = [v12 groupLeader];
          v14 = [v13 groupID];
          v15 = [v11 isEqualToString:v14];

          if (v15)
          {
            [v125 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v174 objects:v203 count:16];
      }

      while (v7);
    }

    v16 = [v125 copy];
    goto LABEL_12;
  }

  if (v5)
  {
    v18 = [v5 endpointObject];
    v16 = [v18 resolvedOutputDevices];

    v17 = [v115 isDeviceRoute] ^ 1;
  }

  else
  {
    if (v117)
    {
      v80 = v117;
      [v117 unwrappedValue];
      v16 = MRAVOutputContextCopyOutputDevices();
LABEL_12:
      v17 = 0;
      goto LABEL_15;
    }

    v16 = 0;
    v17 = 1;
  }

LABEL_15:
  v19 = v117;
  [v117 unwrappedValue];
  v20 = MRAVOutputContextCopyPredictedOutputDevice();
  v116 = v20;
  if (v20)
  {
    v202 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v202 count:1];

    v16 = v21;
  }

  [(MRUOutputDeviceRoutingDataSource *)v123 setPredictedDevice:v116];
  v22 = [v16 count];
  v121 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v112 = v22;
  if (v17)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v24 = v16;
    v25 = [v24 countByEnumeratingWithState:&v170 objects:v201 count:16];
    if (v25)
    {
      v26 = *v171;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v171 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v170 + 1) + 8 * j);
          v29 = [v28 logicalDeviceID];
          if ([v28 isProxyGroupPlayer] && objc_msgSend(v29, "length"))
          {
            [v23 addObject:v29];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v170 objects:v201 count:16];
      }

      while (v25);
    }

    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v30 = v24;
    v31 = [v30 countByEnumeratingWithState:&v166 objects:v200 count:16];
    if (v31)
    {
      v32 = *v167;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v167 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v166 + 1) + 8 * k);
          v35 = [v34 uid];
          v36 = MRComputeBaseRouteUID();

          v37 = [v34 logicalDeviceID];
          if (v36 && ([v34 isProxyGroupPlayer] & 1) == 0 && (!objc_msgSend(v37, "length") || (objc_msgSend(v23, "containsObject:", v37) & 1) == 0))
          {
            [v121 addObject:v36];
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v166 objects:v200 count:16];
      }

      while (v31);
    }
  }

  else
  {
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v23 = v16;
    v38 = [v23 countByEnumeratingWithState:&v162 objects:v199 count:16];
    if (v38)
    {
      v39 = *v163;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v163 != v39)
          {
            objc_enumerationMutation(v23);
          }

          v41 = [*(*(&v162 + 1) + 8 * m) uid];
          v42 = MRComputeBaseRouteUID();

          if (v42)
          {
            [v121 addObject:v42];
          }
        }

        v38 = [v23 countByEnumeratingWithState:&v162 objects:v199 count:16];
      }

      while (v38);
    }
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = v16;
  v43 = [obj countByEnumeratingWithState:&v158 objects:v198 count:16];
  if (v43)
  {
    v44 = *v159;
    while (2)
    {
      for (n = 0; n != v43; ++n)
      {
        if (*v159 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v158 + 1) + 8 * n);
        v47 = [v46 uid];
        v48 = MRComputeBaseRouteUID();

        if (!v48)
        {
          v50 = MCLogCategoryDefault();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v46;
            _os_log_impl(&dword_1A20FC000, v50, OS_LOG_TYPE_DEFAULT, "Found picked device with nil UID: %{public}@", &buf, 0xCu);
          }

          v49 = 0;
          goto LABEL_62;
        }
      }

      v43 = [obj countByEnumeratingWithState:&v158 objects:v198 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  v49 = 1;
LABEL_62:

  v51 = objc_alloc(MEMORY[0x1E695DFA8]);
  v126 = [v51 initWithCapacity:{objc_msgSend(v186[5], "count")}];
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v52 = v186[5];
  v53 = [v52 countByEnumeratingWithState:&v154 objects:v197 count:16];
  if (v53)
  {
    v124 = 0;
    v54 = *v155;
    do
    {
      for (ii = 0; ii != v53; ++ii)
      {
        if (*v155 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v56 = *(*(&v154 + 1) + 8 * ii);
        if ([v56 isLocalDevice])
        {
          v57 = v56;

          v124 = v57;
        }

        v58 = [v56 uid];
        v59 = MRComputeBaseRouteUID();

        if (v59)
        {
          [v126 addObject:v59];
        }

        else
        {
          v60 = MCLogCategoryDefault();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v56;
            _os_log_impl(&dword_1A20FC000, v60, OS_LOG_TYPE_DEFAULT, "Found discovery device with nil UID: %{public}@", &buf, 0xCu);
          }

          v49 = 0;
        }
      }

      v53 = [v52 countByEnumeratingWithState:&v154 objects:v197 count:16];
    }

    while (v53);
  }

  else
  {
    v124 = 0;
  }

  -[MRUOutputDeviceRoutingDataSource _setShouldSourceOutputDevicesFromAVODDS:](v123, "_setShouldSourceOutputDevicesFromAVODDS:", ([v186[5] count] != 0) & v49);
  if (v123->_shouldSourceOutputDevicesFromAVODDS)
  {
    v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v62 = obj;
    v63 = [v62 countByEnumeratingWithState:&v150 objects:v196 count:16];
    if (v63)
    {
      v64 = *v151;
      do
      {
        for (jj = 0; jj != v63; ++jj)
        {
          if (*v151 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v66 = *(*(&v150 + 1) + 8 * jj);
          v67 = [v66 uid];
          v68 = MRComputeBaseRouteUID();

          if (([v126 containsObject:v68] & 1) == 0)
          {
            [v61 addObject:v66];
          }
        }

        v63 = [v62 countByEnumeratingWithState:&v150 objects:v196 count:16];
      }

      while (v63);
    }

    v69 = [v61 count];
    v70 = v186[5];
    if (v69)
    {
      v71 = [v70 mutableCopy];
      v72 = [v71 arrayByAddingObjectsFromArray:v61];

LABEL_110:
      v119 = 0;
      goto LABEL_111;
    }

    v79 = v70;
LABEL_109:
    v72 = v79;
    goto LABEL_110;
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v73 = obj;
  v74 = [v73 countByEnumeratingWithState:&v146 objects:v195 count:16];
  if (v74)
  {
    v75 = *v147;
    while (2)
    {
      for (kk = 0; kk != v74; ++kk)
      {
        if (*v147 != v75)
        {
          objc_enumerationMutation(v73);
        }

        if ([*(*(&v146 + 1) + 8 * kk) isLocalDevice])
        {
          v119 = 1;
          goto LABEL_100;
        }
      }

      v74 = [v73 countByEnumeratingWithState:&v146 objects:v195 count:16];
      if (v74)
      {
        continue;
      }

      break;
    }
  }

  v119 = 0;
LABEL_100:

  v77 = v73;
  v61 = v77;
  if (v124)
  {
    v78 = v119;
  }

  else
  {
    v78 = 1;
  }

  if ((v78 & 1) == 0)
  {
    v79 = [v77 arrayByAddingObject:?];
    goto LABEL_109;
  }

  v72 = v77;
LABEL_111:
  v81 = objc_alloc(MEMORY[0x1E695DF90]);
  v82 = [v81 initWithCapacity:{objc_msgSend(v186[5], "count")}];
  v83 = objc_alloc(MEMORY[0x1E695DF70]);
  v84 = [v83 initWithCapacity:{objc_msgSend(v186[5], "count")}];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v85 = v72;
  v86 = 0;
  v87 = [v85 countByEnumeratingWithState:&v142 objects:v194 count:16];
  if (!v87)
  {
    goto LABEL_125;
  }

  v88 = *v143;
  do
  {
    for (mm = 0; mm != v87; ++mm)
    {
      if (*v143 != v88)
      {
        objc_enumerationMutation(v85);
      }

      v90 = *(*(&v142 + 1) + 8 * mm);
      v91 = [v90 logicalDeviceID];
      v92 = v91;
      if (v86)
      {
        v86 = 1;
        if (!v91)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v86 = [v90 isPickedOnPairedDevice];
        if (!v92)
        {
LABEL_122:
          [v84 addObject:v90];
          goto LABEL_123;
        }
      }

      v93 = [v82 objectForKey:v92];
      if (!v93)
      {
        v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v82 setObject:v93 forKey:v92];
      }

      [v93 addObject:v90];

LABEL_123:
    }

    v87 = [v85 countByEnumeratingWithState:&v142 objects:v194 count:16];
  }

  while (v87);
LABEL_125:

  v94 = v115;
  v95 = v94;
  if (v94)
  {
    v96 = [v94 isDeviceRoute];
  }

  else
  {
    v96 = 1;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v192 = 0x2020000000;
  v193 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_30;
  aBlock[3] = &unk_1E7665F60;
  aBlock[4] = v123;
  v139 = v96;
  v140 = v86;
  p_buf = &buf;
  v138 = v112;
  v122 = v121;
  v135 = v122;
  v141 = v119;
  v97 = v114;
  v136 = v97;
  v98 = _Block_copy(aBlock);
  serialQueue = v123->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_3;
  block[3] = &unk_1E7665FA8;
  block[4] = v123;
  v100 = v97;
  v128 = v100;
  v101 = v82;
  v129 = v101;
  v102 = v98;
  v132 = v102;
  v103 = v84;
  v130 = v103;
  v120 = v113;
  v131 = v120;
  v133 = v96;
  dispatch_sync(serialQueue, block);
  v104 = [(MPAVRoutingDataSource *)v123 filterMode];
  switch(v104)
  {
    case 1:
      v105 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_37];
      v106 = [v100 filteredArrayUsingPredicate:v105];
      v107 = [v106 mutableCopy];
      goto LABEL_134;
    case 2:
      v105 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_41_0];
      v106 = [v100 filteredArrayUsingPredicate:v105];
      v107 = [v106 mutableCopy];
LABEL_134:
      v108 = v107;

      goto LABEL_136;
    case 3:
      v105 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_39_1];
      v106 = [v100 filteredArrayUsingPredicate:v105];
      v107 = [v106 mutableCopy];
      goto LABEL_134;
  }

  v108 = v100;
LABEL_136:
  [(MRUOutputDeviceRoutingDataSource *)v123 addHearingAidRouteIfNeededToRoutes:v108];
  v109 = v131;
  v110 = v108;

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v185, 8);

  return v110;
}

void __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  v6 = [*(a1 + 40) endpointObject];
  v3 = [v2 availableOutputDevicesForEndpoint:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_30(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (([*(a1 + 32) supportsMultipleSelection] & 1) == 0)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_2;
    v20[3] = &unk_1E7665F38;
    v21 = *(a1 + 40);
    v5 = [v3 sortedArrayUsingComparator:v20];
    v6 = [v5 firstObject];
    v23[0] = v6;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  }

  v7 = [objc_alloc(MEMORY[0x1E6970470]) initWithOutputDevices:v4];
  v8 = v7;
  if ((*(a1 + 72) & 1) != 0 || ([v7 isDeviceRoute] & 1) == 0 && objc_msgSend(v8, "isSmartAudio"))
  {
    if (*(*(a1 + 32) + 128) == 1)
    {
      if (*(a1 + 73) == 1)
      {
        v9 = [v8 isPickedOnPairedDevice];
      }

      else if (*(a1 + 64) || ![v8 isDeviceRoute] || (v10 = *(*(a1 + 56) + 8), (*(v10 + 24) & 1) != 0))
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v11 = [v8 outputDevices];
        v9 = [v11 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v9)
        {
          v12 = *v17;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v11);
              }

              v14 = [*(*(&v16 + 1) + 8 * i) uid];
              v15 = MRComputeBaseRouteUID();

              LOBYTE(v14) = [*(a1 + 40) containsObject:v15];
              if (v14)
              {
                v9 = 1;
                goto LABEL_26;
              }
            }

            v9 = [v11 countByEnumeratingWithState:&v16 objects:v22 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:
      }

      else
      {
        v9 = 1;
        *(v10 + 24) = 1;
      }
    }

    else if ([v8 isDeviceRoute])
    {
      v9 = *(a1 + 74);
    }

    else
    {
      v9 = 1;
    }

    [v8 setPicked:v9];
    [*(a1 + 48) addObject:v8];
  }
}

uint64_t __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 uid];
  v7 = MRComputeBaseRouteUID();

  v8 = [v5 uid];

  v9 = MRComputeBaseRouteUID();

  v10 = [*(a1 + 32) containsObject:v7];
  v11 = [*(a1 + 32) containsObject:v9];
  if (!v10 || v11)
  {
    if (v10 & 1 | ((v11 & 1) == 0))
    {
      v12 = [v7 compare:v9];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

void __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_3(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) endpoint];
  v3 = [v2 personalOutputDevices];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = objc_alloc(MEMORY[0x1E6970470]);
        v48 = v9;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        v12 = [v10 initWithOutputDevices:v11];

        [*(a1 + 40) addObject:v12];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v6);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [*(a1 + 48) objectEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      v17 = 0;
      do
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(a1 + 72) + 16))();
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v15);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = *(a1 + 56);
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      v22 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(a1 + 72);
        v45 = *(*(&v33 + 1) + 8 * v22);
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:{1, v33}];
        (*(v23 + 16))(v23, v24);

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v20);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = [*(a1 + 32) activeAudioCategory];
  }

  v27 = v26;
  if (*(a1 + 80) == 1 && [v26 isEqualToString:*MEMORY[0x1E6958070]])
  {
    v28 = *(a1 + 40);
    v29 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_38];
    [v28 filterUsingPredicate:v29];
  }

  v30 = [*(a1 + 40) copy];
  v31 = *(a1 + 32);
  v32 = *(v31 + 120);
  *(v31 + 120) = v30;
}

uint64_t __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isTVRoute] & 1) != 0 || (objc_msgSend(v2, "isAppleTVRoute"))
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 containsDeviceWithSubtype:18] ^ 1;
  }

  return v3;
}

uint64_t __57__MRUOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isTVRoute] & 1) != 0 || (objc_msgSend(v2, "isAppleTVRoute"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 containsDeviceWithSubtype:18];
  }

  return v3;
}

- (void)setPickedRoute:(id)a3 withPassword:(id)a4 completion:(id)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v39 = a4;
  v9 = a5;
  v40 = [(MRUOutputDeviceRoutingDataSource *)self applicationOutputContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v10 outputDevices];
    v12 = [v11 mutableCopy];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke;
    aBlock[3] = &unk_1E7666018;
    objc_copyWeak(&v56, &location);
    aBlock[4] = self;
    v13 = v9;
    v55 = v13;
    v37 = _Block_copy(aBlock);
    v14 = dispatch_get_global_queue(21, 0);
    v15 = [(MRUOutputDeviceRoutingDataSource *)self endpoint];
    v36 = [v15 outputDevices];

    v16 = [(MRUOutputDeviceRoutingDataSource *)self endpointRoute];
    if (v16 && (-[MRUOutputDeviceRoutingDataSource endpoint](self, "endpoint", v36), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isLocalEndpoint], v17, v16, (v18 & 1) == 0))
    {
      if (self->_supportsQueueHandoff || ([MEMORY[0x1E69B0A28] sharedManager], v30 = objc_claimAutoreleasedReturnValue(), -[MRUOutputDeviceRoutingDataSource presentingAppBundleID](self, "presentingAppBundleID"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "activeActivityExistsForBundle:", v31), v31, v30, v32))
      {
        v19 = [(MRUOutputDeviceRoutingDataSource *)self endpoint];
        v33 = [v10 outputDevices];
        [v19 migrateToOrSetOutputDevices:v33 initiator:self->_initiator withReplyQueue:v14 completion:v37];
      }

      else
      {
        v19 = [(MRUOutputDeviceRoutingDataSource *)self endpoint];
        v35 = [v10 outputDevices];
        [v19 setOutputDevices:v35 initiator:self->_initiator withReplyQueue:v14 completion:v37];
      }
    }

    else if (v40)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_3;
      block[3] = &unk_1E7666090;
      v53 = v37;
      block[4] = self;
      v48 = v36;
      v49 = v40;
      v50 = v12;
      v51 = v14;
      v52 = v10;
      dispatch_async(v51, block);

      v19 = v53;
    }

    else
    {
      if (!v13)
      {
LABEL_29:

        objc_destroyWeak(&v56);
        objc_destroyWeak(&location);

        goto LABEL_30;
      }

      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696F878] code:5 userInfo:0];
      (*(v13 + 2))(v13, v19);
    }

    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v40;
    if (v40)
    {
      v38 = v8;
      v21 = [v38 endpointWrapper];
      [v21 unwrappedValue];
      v22 = MRAVEndpointCopyOutputDevices();

      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v43 objects:v58 count:16];
      if (v25)
      {
        v26 = *v44;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = MRAVOutputDeviceCopyUniqueIdentifier();
            v29 = MRComputeBaseRouteUID();

            if (v29)
            {
              [v23 addObject:v29];
            }
          }

          v25 = [v24 countByEnumeratingWithState:&v43 objects:v58 count:16];
        }

        while (v25);
      }

      MRAVReconnaissanceSessionCreateWithEndpointFeatures();
      v41 = v40;
      v42 = v9;
      MRAVReconnaissanceSessionBeginSearch();

      goto LABEL_30;
    }

    if (v9)
    {
      v34 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696F878] code:5 userInfo:0];
      (*(v9 + 2))(v9, v34);

LABEL_30:
      v20 = v40;
    }
  }

  else
  {
    v20 = v40;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

void __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  v6 = WeakRetained;
  msv_dispatch_on_main_queue();
}

void __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_2(uint64_t a1)
{
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:*MEMORY[0x1E696F880] object:*(a1 + 32)];
  [v6 postNotificationName:*MEMORY[0x1E696F8A0] object:*(a1 + 32)];
  v2 = [*(a1 + 40) endpoint];
  if (v2 && !*(a1 + 48))
  {
    v3 = +[MRURouteRecommender sharedInstance];
    v4 = [*(a1 + 40) donatingAppBundleID];
    [v3 donatePickerChoiceFor:v2 bundleID:v4 isEligibleApp:objc_msgSend(*(a1 + 40) reason:{"isDonatingAppEligible"), @"setPickedRoute"}];
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 48));
  }
}

void __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_3(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_4;
  aBlock[3] = &unk_1E7666040;
  v9 = *(a1 + 80);
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 32) _detachableDevicesInOutputDevices:*(a1 + 40)];
  if ([v3 count])
  {
    [*(a1 + 48) unwrappedValue];
    v7 = v2;
    v5 = v3;
    v6 = *(a1 + 64);
    MRAVOutputContextSetOutputDevicesWithInitiator();
  }

  else
  {
    if ([*(a1 + 72) isDeviceSpeakerRoute])
    {
      v4 = [*(a1 + 32) predictedDevice];

      if (v4)
      {
        [*(a1 + 32) _resetPredictedOutputDevice];
      }
    }

    [*(a1 + 48) unwrappedValue];
    MRAVOutputContextSetOutputDevicesWithInitiator();
  }
}

uint64_t __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 32) createGroupFromOutputDevices:*(a1 + 40) queue:*(a1 + 48) completion:*(a1 + 56)];
  }
}

void __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if ([v6 count])
  {
    [*(a1 + 32) unwrappedValue];
    v7 = dispatch_get_global_queue(21, 0);
    v9 = *(a1 + 48);
    MRAVOutputContextSetOutputDevicesWithInitiator();
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, a4);
    }
  }

  CFRelease(*(a1 + 56));
}

void __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = MCLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = a2;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_ERROR, "picked endpoint route, set devices: %{public}@", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }
  }

  else
  {
    v6 = dispatch_get_global_queue(21, 0);
    v7 = *(a1 + 40);
    MRAVEndpointUpdateActiveSystemEndpointWithReason();
  }
}

uint64_t __75__MRUOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_52(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = MCLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = a2;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_ERROR, "picked endpoint route, clear system endpoint: %{public}@", &v6, 0xCu);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:*MEMORY[0x1E696F880] object:*(a1 + 32)];
    [v4 postNotificationName:*MEMORY[0x1E696F8A0] object:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)createGroupFromOutputDevices:(id)a3 queue:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v21 + 1) + 8 * v15) uid];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v17 = MEMORY[0x1E69B0990];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__MRUOutputDeviceRoutingDataSource_createGroupFromOutputDevices_queue_completion___block_invoke;
  v19[3] = &unk_1E7666130;
  v20 = v9;
  v18 = v9;
  [v17 createEndpointWithOutputDeviceUIDs:v10 queue:v8 completion:v19];
}

- (void)addRouteToGroup:(id)a3 completion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(MRUOutputDeviceRoutingDataSource *)self addRoutesToGroup:v9 completion:v7, v10, v11];
}

- (void)addRoutesToGroup:(id)a3 completion:(id)a4
{
  v6 = a4;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __64__MRUOutputDeviceRoutingDataSource_addRoutesToGroup_completion___block_invoke;
  v21 = &unk_1E7666158;
  v22 = self;
  v7 = v6;
  v23 = v7;
  v8 = a3;
  v9 = _Block_copy(&v18);
  v10 = [(MRUOutputDeviceRoutingDataSource *)self outputDevicesForRoutes:v8, v18, v19, v20, v21, v22];
  v11 = [v10 mutableCopy];

  LODWORD(v10) = [(MRUOutputDeviceRoutingDataSource *)self _shouldAddPredictedDeviceToOuputDevices:v8];
  if (v10)
  {
    v12 = [(MRUOutputDeviceRoutingDataSource *)self predictedDevice];
    [v11 addObject:v12];
  }

  v13 = dispatch_get_global_queue(21, 0);
  if (self->_supportsQueueHandoff || ([MEMORY[0x1E69B0A28] sharedManager], v14 = objc_claimAutoreleasedReturnValue(), -[MRUOutputDeviceRoutingDataSource presentingAppBundleID](self, "presentingAppBundleID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "activeActivityExistsForBundle:", v15), v15, v14, v16))
  {
    v17 = [(MRUOutputDeviceRoutingDataSource *)self endpoint];
    [v17 migrateToOrAddOutputDevices:v11 initiator:self->_initiator withReplyQueue:v13 completion:v9];
  }

  else
  {
    v17 = [(MRUOutputDeviceRoutingDataSource *)self endpoint];
    [v17 addOutputDevices:v11 initiator:self->_initiator withReplyQueue:v13 completion:v9];
  }
}

void __64__MRUOutputDeviceRoutingDataSource_addRoutesToGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x1E696F880] object:*(a1 + 32)];
  [v3 postNotificationName:*MEMORY[0x1E696F8A0] object:*(a1 + 32)];
  v4 = [*(a1 + 32) endpoint];
  if (!v8 && v4)
  {
    v5 = +[MRURouteRecommender sharedInstance];
    v6 = [*(a1 + 32) donatingAppBundleID];
    [v5 donatePickerChoiceFor:v4 bundleID:v6 isEligibleApp:objc_msgSend(*(a1 + 32) reason:{"isDonatingAppEligible"), @"addRoutesToGroup"}];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (void)removeRouteFromGroup:(id)a3 completion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(MRUOutputDeviceRoutingDataSource *)self removeRoutesFromGroup:v9 completion:v7, v10, v11];
}

- (void)removeRoutesFromGroup:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MRUOutputDeviceRoutingDataSource *)self outputDevicesForRoutes:a3];
  if ([(MRUOutputDeviceRoutingDataSource *)self _isRemovingPredictedDevice:v7])
  {
    [(MRUOutputDeviceRoutingDataSource *)self _resetPredictedOutputDevice];
    v6[2](v6, 0);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__MRUOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke;
    aBlock[3] = &unk_1E76660B8;
    aBlock[4] = self;
    v28 = v6;
    v39 = v6;
    v8 = _Block_copy(aBlock);
    v27 = dispatch_get_global_queue(21, 0);
    v9 = [(MRUOutputDeviceRoutingDataSource *)self endpoint];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v11)
    {
      v24 = v8;
      v25 = self;
      v26 = v7;
      v12 = *v35;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = [v14 uid];
          v16 = [v9 designatedGroupLeader];
          v17 = [v16 uid];
          v18 = [v15 isEqualToString:v17];

          if (v18)
          {
            v11 = v14;
            goto LABEL_13;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_13:
      self = v25;
      v7 = v26;
      v8 = v24;
    }

    v19 = [v10 mutableCopy];
    v20 = [v10 count];
    if (v11 && v20 >= 2)
    {
      [v19 removeObject:v11];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MRUOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke_3;
    block[3] = &unk_1E76661A8;
    block[4] = self;
    v30 = v19;
    v31 = v27;
    v32 = v10;
    v33 = v8;
    v21 = v8;
    v22 = v27;
    v23 = v19;
    dispatch_async(v22, block);

    v6 = v28;
  }
}

void __69__MRUOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 copy];
  v5 = [*(a1 + 32) endpoint];
  v6 = v5;
  if (!a2 && v5)
  {
    v7 = +[MRURouteRecommender sharedInstance];
    v8 = [*(a1 + 32) donatingAppBundleID];
    [v7 donatePickerChoiceFor:v6 bundleID:v8 isEligibleApp:objc_msgSend(*(a1 + 32) reason:{"isDonatingAppEligible"), @"removeRoutesFromGroup"}];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v11 = v9;
    v10 = v4;
    msv_dispatch_on_main_queue();
  }
}

void __69__MRUOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke_3(id *a1)
{
  v2 = [a1[4] endpointRoute];
  v3 = [v2 endpointWrapper];
  [v3 unwrappedValue];
  v4 = a1[7];
  v5 = a1[6];
  v6 = a1[8];
  MRAVEndpointRemoveOutputDevicesWithInitiator();
}

void __69__MRUOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:*MEMORY[0x1E696F880] object:*(a1 + 32)];
  [v6 postNotificationName:*MEMORY[0x1E696F8A0] object:*(a1 + 32)];
  v4 = [*(a1 + 32) _detachableDevicesInOutputDevices:*(a1 + 40)];
  v5 = v4;
  if (a2 || ![v4 count])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) createGroupFromOutputDevices:v5 queue:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (BOOL)routeIsLeaderOfEndpoint:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 isGroupLeader] && (-[MRUOutputDeviceRoutingDataSource endpointRoute](self, "endpointRoute"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [(MRUOutputDeviceRoutingDataSource *)self endpoint];
    v8 = [v7 outputDevices];
    v9 = [v6 setWithArray:v8];

    v10 = MEMORY[0x1E695DFD8];
    v11 = [v4 outputDevices];
    v12 = [v10 setWithArray:v11];

    v13 = [v9 intersectsSet:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_endpointsDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 name];

  [v7 postNotificationName:v6 object:self];
}

- (void)_outputDevicesDidChangeNotification:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x1E696F8A0] object:self];
}

- (void)_routeStatusDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v17 = objc_alloc_init(v4);
  v6 = [v5 userInfo];

  v7 = [v6 objectForKey:*MEMORY[0x1E69B12D8]];
  v8 = [v7 objectForKey:@"RouteUID"];
  v9 = [v6 objectForKey:*MEMORY[0x1E69B12E8]];
  v10 = [(MRUOutputDeviceRoutingDataSource *)self _outputDeviceRouteWithUID:v8];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    [v17 setObject:v10 forKey:*MEMORY[0x1E696F898]];
    v13 = [v9 integerValue];
    if ((v13 - 2) <= 3)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696F878] code:v13 userInfo:0];
      if (v14)
      {
        v15 = v14;
        [v17 setObject:v14 forKey:*MEMORY[0x1E696F888]];
      }
    }
  }

  if ([v17 count])
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 postNotificationName:*MEMORY[0x1E696F890] object:self userInfo:v17];
  }
}

- (id)outputDevicesForRoutes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) outputDevices];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_detachableDevicesInOutputDevices:(id)a3
{
  v4 = [a3 msv_filter:&__block_literal_global_68];
  if ([(MRUOutputDeviceRoutingDataSource *)self _shouldDetachOutputDevicesToGroup:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (BOOL)_shouldDetachOutputDevicesToGroup:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_detachesRoutesToGroup)
  {
    v5 = [(MRUOutputDeviceRoutingDataSource *)self endpointRoute];
    v6 = [v5 endpointWrapper];
    [v6 unwrappedValue];
    v7 = MRAVEndpointGetDesignatedGroupLeader();

    if (([v4 containsObject:v7] & 1) == 0)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        v12 = 1;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v12 &= [*(*(&v16 + 1) + 8 * i) isGroupable];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);

        if ((v12 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v14 = [v8 count] > 1;
      goto LABEL_15;
    }

LABEL_11:
    v14 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (BOOL)_shouldAddPredictedDeviceToOuputDevices:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v4 count];

  if (v6 == 1)
  {
    v7 = [v5 isSplitterCapable];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MRUOutputDeviceRoutingDataSource *)self predictedDevice];
  v9 = [v8 supportsBluetoothSharing];

  v10 = [v5 routeUID];
  v11 = [(MRUOutputDeviceRoutingDataSource *)self predictedDevice];
  v12 = [v11 uid];
  v13 = [v10 isEqualToString:v12];

  if (v7)
  {
    v14 = v9 & (v13 ^ 1);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isRemovingPredictedDevice:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [(MRUOutputDeviceRoutingDataSource *)self predictedDevice];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_globalAudioSessionLock
{
  if (_globalAudioSessionLock___once != -1)
  {
    +[MRUOutputDeviceRoutingDataSource _globalAudioSessionLock];
  }

  v3 = _globalAudioSessionLock___globalAudioSessionLock;

  return v3;
}

uint64_t __59__MRUOutputDeviceRoutingDataSource__globalAudioSessionLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = _globalAudioSessionLock___globalAudioSessionLock;
  _globalAudioSessionLock___globalAudioSessionLock = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_registerNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__outputDevicesDidChangeNotification_ name:*MEMORY[0x1E69B0B60] object:0];
  [v3 addObserver:self selector:sel__routeStatusDidChangeNotification_ name:*MEMORY[0x1E69B12E0] object:0];
}

- (void)_unregisterNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69B0B60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69B12E0] object:0];
}

- (void)_personalRoutesDidChange
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x1E696F8A0] object:self];
}

- (void)_outputDevicesDidChange:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x1E696F8A0] object:self];
}

- (id)_outputDeviceRouteWithUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  serialQueue = self->_serialQueue;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MRUOutputDeviceRoutingDataSource__outputDeviceRouteWithUID___block_invoke;
  block[3] = &unk_1E7665E98;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__MRUOutputDeviceRoutingDataSource__outputDeviceRouteWithUID___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 120);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 routeUID];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_setShouldSourceOutputDevicesFromAVODDS:(BOOL)a3
{
  if (self->_shouldSourceOutputDevicesFromAVODDS != a3)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    self->_shouldSourceOutputDevicesFromAVODDS = a3;
    v6 = MCLogCategoryDefault();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v11 = 0;
        v8 = "Output device UIDs determined to be available. Output devices from AVODDS will no longer be ignored.";
        v9 = &v11;
LABEL_7:
        _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else if (v7)
    {
      v10 = 0;
      v8 = "Output device UIDs determined to be unavailable. Output devices from AVODDS will be ignored.";
      v9 = &v10;
      goto LABEL_7;
    }
  }
}

- (void)_onDiscoverySessionQueue_generateDiscoverySession
{
  dispatch_assert_queue_V2(self->_discoverySessionQueue);
  v6 = [(MRUOutputDeviceRoutingDataSource *)self endpoint];
  if ([v6 isCompanionEndpoint])
  {
    v3 = v6;
  }

  else
  {
    v3 = MEMORY[0x1E69B09C0];
  }

  v4 = [(MRUOutputDeviceRoutingDataSource *)self discoverySessionConfiguration];
  v5 = [v3 discoverySessionWithConfiguration:v4];
  [(MRUOutputDeviceRoutingDataSource *)self setDiscoverySession:v5];
}

- (void)_generateDiscoverySession
{
  discoverySessionQueue = self->_discoverySessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRUOutputDeviceRoutingDataSource__generateDiscoverySession__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(discoverySessionQueue, block);
}

- (void)_onDiscoverySessionQueue_generateCompanionDiscoverySession
{
  dispatch_assert_queue_V2(self->_discoverySessionQueue);
  v4 = [objc_alloc(MEMORY[0x1E69B09C8]) initWithEndpointFeatures:8];
  v3 = [MEMORY[0x1E69B09C0] discoverySessionWithConfiguration:v4];
  [(MRUOutputDeviceRoutingDataSource *)self setCompanionDiscoverySession:v3];
}

- (void)_resetPredictedOutputDevice
{
  v3 = MCLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "Reset predicted outputDevice", v6, 2u);
  }

  v4 = [(MRUOutputDeviceRoutingDataSource *)self applicationOutputContext];
  [v4 unwrappedValue];
  MRAVOutputContextResetPredictedOutputDevice();
  v5 = [(MRAVRoutingDiscoverySession *)self->_discoverySession availableOutputDevices];
  [(MRUOutputDeviceRoutingDataSource *)self _outputDevicesDidChange:v5];
}

- (id)_stateDumpObject
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  v18[0] = v3;
  v17[1] = @"predictedDevice";
  v4 = [(MRUOutputDeviceRoutingDataSource *)self predictedDevice];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<NONE>";
  }

  v18[1] = v6;
  v17[2] = @"AVOutputContext.predictedDevice";
  v7 = [(MRUOutputDeviceRoutingDataSource *)self applicationOutputContext];
  [v7 unwrappedValue];
  v8 = MRAVOutputContextCopyPredictedOutputDevice();
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<NONE>";
  }

  v18[2] = v10;
  v17[3] = @"AVOutputContext.outputDeviceUIDs";
  v11 = [(MRUOutputDeviceRoutingDataSource *)self applicationOutputContext];
  [v11 unwrappedValue];
  v12 = MRAVOutputContextCopyOutputDevices();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<NONE>";
  }

  v18[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

- (void)addHearingAidRouteIfNeededToRoutes:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRUOutputDeviceRoutingDataSource *)self hearingDeviceName];
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mediaremote"];
    v7 = v5;
    v28 = v6;
    v8 = [v6 BOOLForKey:@"AccessibilityHearingShowVirtualRoute"];
    v9 = v7;
    if (v8)
    {
      v9 = [v7 stringByAppendingString:@" Virtual"];
    }

    v26 = v9;
    v27 = v4;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v4;
    v11 = [(MPAVOutputDeviceRoute *)v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v29 + 1) + 8 * i) outputDevice];
          v16 = [v15 name];
          v17 = [v16 isEqualToString:v7];

          if (v17)
          {
            hearingDeviceRoute = self->_hearingDeviceRoute;
            self->_hearingDeviceRoute = 0;

            v22 = v28;
            v20 = v26;
            goto LABEL_17;
          }
        }

        v12 = [(MPAVOutputDeviceRoute *)v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = [(MPAVOutputDeviceRoute *)self->_hearingDeviceRoute outputDevice];
    v19 = [v18 name];
    v20 = v26;
    v21 = [v19 isEqualToString:v26];

    if (v21)
    {
      v4 = v27;
      v22 = v28;
    }

    else
    {
      v25 = [[MRUVirtualHearingAidRoute alloc] initWithHearingDeviceName:v26];
      v10 = self->_hearingDeviceRoute;
      self->_hearingDeviceRoute = &v25->super;
      v22 = v28;
LABEL_17:

      v4 = v27;
    }
  }

  else
  {
    v24 = self->_hearingDeviceRoute;
    self->_hearingDeviceRoute = 0;
  }

  if (self->_hearingDeviceRoute)
  {
    [v4 addObject:?];
  }
}

- (void)hearingAidReachabilityDidChange
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__MRUOutputDeviceRoutingDataSource_hearingAidReachabilityDidChange__block_invoke;
  v3[3] = &unk_1E7663AE8;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __67__MRUOutputDeviceRoutingDataSource_hearingAidReachabilityDidChange__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = nameOfHearingDeviceReachableForAudioHandoff();
  v3 = MCLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v2;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "Reachable for handoff hearingDeviceName: %@", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__MRUOutputDeviceRoutingDataSource_hearingAidReachabilityDidChange__block_invoke_108;
  v5[3] = &unk_1E7663980;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __67__MRUOutputDeviceRoutingDataSource_hearingAidReachabilityDidChange__block_invoke_108(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setHearingDeviceName:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 hearingAidDelegate];

  if (objc_opt_respondsToSelector())
  {
    [v5 hearingAidReachabilityDidChange];
  }
}

- (MRUOutputDeviceRoutingDataSourceObserver)hearingAidDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hearingAidDelegate);

  return WeakRetained;
}

@end