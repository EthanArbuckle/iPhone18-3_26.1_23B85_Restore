@interface MRAVConcreteRoutingDiscoverySession
- (BOOL)devicePresenceDetected;
- (MRAVConcreteRoutingDiscoverySession)initWithConfiguration:(id)a3;
- (NSArray)availableOutputDevices;
- (NSSet)lastReportedClientIdentifiers;
- (NSString)debugDescription;
- (NSString)description;
- (id)_onReloadQueue_createOutputDevicesFromAVOutputDevices:(id)a3;
- (id)_onReloadQueue_fetchOutputDevicesFromDiscoverySession:(id)a3;
- (id)_onReloadQueue_reloadAvailableOutputDevices;
- (id)routingContextUID;
- (unsigned)discoveryMode;
- (unsigned)targetAudioSessionID;
- (void)_loadDefaults;
- (void)_onReloadQueue_reload;
- (void)_scheduleReload;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAvailableOutputDevices:(id)a3;
- (void)setDiscoveryMode:(unsigned int)a3 forClientIdentifiers:(id)a4;
- (void)setRoutingContextUID:(id)a3;
- (void)setTargetAudioSessionID:(unsigned int)a3;
@end

@implementation MRAVConcreteRoutingDiscoverySession

- (void)_loadDefaults
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(NSUserDefaults *)self->_userDefaults valueForKey:@"audio-outputdevice-denylist"];
  denyList = self->_denyList;
  v5 = _MRLogForCategory(0);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (denyList)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = self->_denyList;
    *buf = 138544130;
    v31 = @"AVDiscoverySession";
    v32 = 2114;
    v33 = @"denyList";
    v34 = 2112;
    v35 = v7;
    v36 = 2112;
    v37 = v3;
    v8 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
    v9 = v5;
    v10 = 42;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 138543874;
    v31 = @"AVDiscoverySession";
    v32 = 2114;
    v33 = @"denyList";
    v34 = 2112;
    v35 = v3;
    v8 = "Set: %{public}@ setting %{public}@ to <%@>";
    v9 = v5;
    v10 = 32;
  }

  _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = v3;
  if ((isKindOfClass & 1) == 0)
  {
    if (v3)
    {
      v29 = v3;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      goto LABEL_12;
    }

    v12 = 0;
  }

  v13 = v12;
LABEL_12:
  v14 = self->_denyList;
  self->_denyList = v13;

  v15 = [(NSUserDefaults *)self->_userDefaults valueForKey:@"audio-outputdevice-allowlist"];

  allowList = self->_allowList;
  v17 = _MRLogForCategory(0);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (allowList)
  {
    if (!v18)
    {
      goto LABEL_18;
    }

    v19 = self->_allowList;
    *buf = 138544130;
    v31 = @"AVDiscoverySession";
    v32 = 2114;
    v33 = @"allowList";
    v34 = 2112;
    v35 = v19;
    v36 = 2112;
    v37 = v15;
    v20 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
    v21 = v17;
    v22 = 42;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_18;
    }

    *buf = 138543874;
    v31 = @"AVDiscoverySession";
    v32 = 2114;
    v33 = @"allowList";
    v34 = 2112;
    v35 = v15;
    v20 = "Set: %{public}@ setting %{public}@ to <%@>";
    v21 = v17;
    v22 = 32;
  }

  _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_18:

  objc_opt_class();
  v23 = objc_opt_isKindOfClass();
  v24 = v15;
  if (v23)
  {
LABEL_22:
    v25 = v24;
    goto LABEL_23;
  }

  if (!v15)
  {
    v24 = 0;
    goto LABEL_22;
  }

  v28 = v15;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
LABEL_23:
  v26 = self->_allowList;
  self->_allowList = v25;

  v27 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__52;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __50__MRAVConcreteRoutingDiscoverySession_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v10 = MRMediaRemoteEndpointFeaturesDescription(*(v5 + 160));
  v6 = MRMediaRemoteCopyRouteDiscoveryModeDescription(*(*(a1 + 32) + 164));
  v7 = [v2 stringWithFormat:@"<%@: %p> (%@ - %@)", v4, v5, v10, v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (NSArray)availableOutputDevices
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__52;
  v16 = __Block_byref_object_dispose__52;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRAVConcreteRoutingDiscoverySession_availableOutputDevices__block_invoke;
  block[3] = &unk_1E769A2A0;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(serialQueue, block);
  v4 = v13[5];
  if (!v4)
  {
    reloadQueue = self->_reloadQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__MRAVConcreteRoutingDiscoverySession_availableOutputDevices__block_invoke_2;
    v10[3] = &unk_1E769A228;
    v10[4] = self;
    dispatch_sync(reloadQueue, v10);
    v6 = self->_serialQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__MRAVConcreteRoutingDiscoverySession_availableOutputDevices__block_invoke_3;
    v9[3] = &unk_1E769A2A0;
    v9[4] = self;
    v9[5] = &v12;
    dispatch_sync(v6, v9);
    v4 = v13[5];
  }

  v7 = v4;
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_onReloadQueue_reload
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 timeIntervalSinceNow];
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[AVDiscoverySession] NotifyOutputDevicesChanged took %lf seconds", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)_onReloadQueue_reloadAvailableOutputDevices
{
  dispatch_assert_queue_V2(self->_reloadQueue);
  v3 = [(MRAVConcreteRoutingDiscoverySession *)self _onReloadQueue_fetchOutputDevicesFromDiscoverySession:self->_avDiscoverySession];
  v4 = [(MRAVConcreteRoutingDiscoverySession *)self _onReloadQueue_createOutputDevicesFromAVOutputDevices:v3];

  return v4;
}

- (void)_scheduleReload
{
  if (self->_reloadRateLimiter)
  {
    reloadRateLimiter = self->_reloadRateLimiter;

    [(MRRateLimiter *)reloadRateLimiter update];
  }

  else
  {
    block[5] = v2;
    block[6] = v3;
    reloadQueue = self->_reloadQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MRAVConcreteRoutingDiscoverySession__scheduleReload__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    dispatch_async(reloadQueue, block);
  }
}

void __61__MRAVConcreteRoutingDiscoverySession_availableOutputDevices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unsigned)discoveryMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MRAVConcreteRoutingDiscoverySession_discoveryMode__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __61__MRAVConcreteRoutingDiscoverySession_availableOutputDevices__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)devicePresenceDetected
{
  v2 = [(MRAVConcreteRoutingDiscoverySession *)self availableOutputDevices];
  v3 = [v2 count] != 0;

  return v3;
}

- (MRAVConcreteRoutingDiscoverySession)initWithConfiguration:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = MRAVConcreteRoutingDiscoverySession;
  v5 = [(MRAVRoutingDiscoverySession *)&v53 initWithConfiguration:v4];
  if (v5)
  {
    v5->_endpointFeatures = [v4 features];
    v6 = [v4 routingContextUID];
    routingContextUID = v5->_routingContextUID;
    v5->_routingContextUID = v6;

    v5->_discoveryMode = 0;
    v5->_targetAudioSessionID = 0;
    v5->_clientProvidedTargetAudioSessionID = [v4 targetAudioSessionID];
    v8 = objc_opt_class();
    Name = class_getName(v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(Name, v10);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v11;

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = objc_opt_class();
    v45 = [v13 initWithFormat:@"%s.reloadQueue", class_getName(v14)];
    v15 = [v45 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    reloadQueue = v5->_reloadQueue;
    v5->_reloadQueue = v17;

    v19 = [objc_alloc(MEMORY[0x1E6958810]) initWithDeviceFeatures:v5->_endpointFeatures & 0xFLL];
    avDiscoverySession = v5->_avDiscoverySession;
    v5->_avDiscoverySession = v19;

    v21 = +[MRUserSettings currentSettings];
    LODWORD(v16) = [v21 supportDiscoveryCaching];

    if (v16)
    {
      [(AVOutputDeviceDiscoverySession *)v5->_avDiscoverySession setCachedDiscoveryEnabled:1];
    }

    objc_initWeak(&location, v5);
    v22 = [MRRateLimiter alloc];
    v23 = v5->_reloadQueue;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __61__MRAVConcreteRoutingDiscoverySession_initWithConfiguration___block_invoke;
    v50[3] = &unk_1E769B178;
    objc_copyWeak(&v51, &location);
    v24 = [(MRRateLimiter *)v22 initWithInterval:@"concreteDiscoverySession.rateLimiter" name:v23 queue:v50 block:0.2];
    reloadRateLimiter = v5->_reloadRateLimiter;
    v5->_reloadRateLimiter = v24;

    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    v27 = MRMediaRemoteEndpointFeaturesDescription([v4 features]);
    v28 = [v26 initWithFormat:@"Concrete.%@", v27];

    v29 = [MRRollingWindowActivityTracker alloc];
    v30 = +[MRUserSettings currentSettings];
    [v30 persistantDiscoveryModeDetectionDuration];
    v32 = v31;
    v33 = +[MRUserSettings currentSettings];
    [v33 persistantDiscoveryModeDetectionWindowDuration];
    v35 = v34;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __61__MRAVConcreteRoutingDiscoverySession_initWithConfiguration___block_invoke_2;
    v48[3] = &unk_1E769A228;
    v36 = v28;
    v49 = v36;
    v37 = [(MRRollingWindowActivityTracker *)v29 initWithActivityName:v36 maxAllowedTime:v48 windowDuration:v32 handler:v35];
    discoveryTracker = v5->_discoveryTracker;
    v5->_discoveryTracker = v37;

    if (v5->_clientProvidedTargetAudioSessionID)
    {
      v39 = v5->_serialQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__MRAVConcreteRoutingDiscoverySession_initWithConfiguration___block_invoke_3;
      block[3] = &unk_1E769A228;
      v47 = v5;
      dispatch_async(v39, block);
    }

    v40 = [MEMORY[0x1E696AD88] defaultCenter];
    [v40 addObserver:v5 selector:sel__availableOutputDevicesDidChangeNotification_ name:*MEMORY[0x1E69587A0] object:v5->_avDiscoverySession];
    [v40 addObserver:v5 selector:sel__availableOutputDevicesDidChangeNotification_ name:*MEMORY[0x1E69586A8] object:0];
    [v40 addObserver:v5 selector:sel__deviceInfoDidChange_ name:@"kMRActiveDeviceInfoDidChangeNotification" object:0];
    v41 = +[MRAVClusterController sharedController];
    [v41 registerObserver:v5];

    if (MSVDeviceOSIsInternalInstall() && v5->_endpointFeatures == 1)
    {
      v42 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mediaremote"];
      userDefaults = v5->_userDefaults;
      v5->_userDefaults = v42;

      [(NSUserDefaults *)v5->_userDefaults addObserver:v5 forKeyPath:@"audio-outputdevice-denylist" options:0 context:MRAudioOutputDeviceDiscoverySessionDenyListContext];
      [(NSUserDefaults *)v5->_userDefaults addObserver:v5 forKeyPath:@"audio-outputdevice-allowlist" options:0 context:MRAudioOutputDeviceDiscoverySessionAllowListContext];
      [(MRAVConcreteRoutingDiscoverySession *)v5 _loadDefaults];
    }

    [(MRAVConcreteRoutingDiscoverySession *)v5 _scheduleReload];

    objc_destroyWeak(&v51);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __61__MRAVConcreteRoutingDiscoverySession_initWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onReloadQueue_reload];
}

void __61__MRAVConcreteRoutingDiscoverySession_initWithConfiguration___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E69B13D8];
  v2 = *MEMORY[0x1E69B1348];
  v3 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v5 bundleIdentifier];
  [v1 snapshotWithDomain:v2 type:@"Discovery" subType:v3 context:v4 triggerThresholdValues:0 events:0 completion:0];
}

- (void)setAvailableOutputDevices:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MRAVConcreteRoutingDiscoverySession_setAvailableOutputDevices___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (NSSet)lastReportedClientIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__52;
  v10 = __Block_byref_object_dispose__52;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__MRAVConcreteRoutingDiscoverySession_lastReportedClientIdentifiers__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __68__MRAVConcreteRoutingDiscoverySession_lastReportedClientIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 216) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setDiscoveryMode:(unsigned int)a3 forClientIdentifiers:(id)a4
{
  v6 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MRAVConcreteRoutingDiscoverySession_setDiscoveryMode_forClientIdentifiers___block_invoke;
  block[3] = &unk_1E769BCF8;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(serialQueue, block);
}

void __77__MRAVConcreteRoutingDiscoverySession_setDiscoveryMode_forClientIdentifiers___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 164);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) isEqualToSet:*(v2 + 216)];
  if (v3 != v4 || (v5 & 1) == 0)
  {
    if (v3 != v4)
    {
      v6 = _MRLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = MRMediaRemoteCopyRouteDiscoveryModeDescription(*(a1 + 48));
        v16 = 138412546;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[AVDiscoverySession] %@ - Discovery mode changed to: %@", &v16, 0x16u);
      }

      v9 = *(*(a1 + 32) + 200);
      if (*(a1 + 48))
      {
        [v9 startActivityTracking];
      }

      else
      {
        [v9 stopActivityTracking];
      }
    }

    v10 = *(a1 + 48);
    *(*(a1 + 32) + 164) = v10;
    v11 = *(*(a1 + 32) + 152);
    v12 = v10 - 1;
    if (v12 > 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = qword_1A2B81230[v12];
    }

    v14 = [*(a1 + 40) allObjects];
    [v11 setDiscoveryMode:v13 forClientIdentifiers:v14];

    objc_storeStrong((*(a1 + 32) + 216), *(a1 + 40));
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (unsigned)targetAudioSessionID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MRAVConcreteRoutingDiscoverySession_targetAudioSessionID__block_invoke;
  v5[3] = &unk_1E769A4C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __59__MRAVConcreteRoutingDiscoverySession_targetAudioSessionID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  if (!v3)
  {
    v4 = [*(v2 + 152) targetAudioSession];
    *(*(a1 + 32) + 168) = [v4 opaqueSessionID];

    v3 = *(*(a1 + 32) + 168);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (void)setTargetAudioSessionID:(unsigned int)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MRAVConcreteRoutingDiscoverySession_setTargetAudioSessionID___block_invoke;
  v4[3] = &unk_1E769E760;
  v4[4] = self;
  v5 = a3;
  dispatch_async(serialQueue, v4);
}

uint64_t __63__MRAVConcreteRoutingDiscoverySession_setTargetAudioSessionID___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 168) != v2)
  {
    *(v1 + 172) = v2;
    return [*(result + 32) _onQueue_setTargetAudioSessionID:*(result + 40)];
  }

  return result;
}

- (id)routingContextUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__52;
  v10 = __Block_byref_object_dispose__52;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MRAVConcreteRoutingDiscoverySession_routingContextUID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__MRAVConcreteRoutingDiscoverySession_routingContextUID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setRoutingContextUID:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MRAVConcreteRoutingDiscoverySession_setRoutingContextUID___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void *__60__MRAVConcreteRoutingDiscoverySession_setRoutingContextUID___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 176) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 176);
    *(v5 + 176) = v4;

    v7 = *(a1 + 32);

    return [v7 _scheduleReload];
  }

  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (MRAudioOutputDeviceDiscoverySessionDenyListContext == a6 || MRAudioOutputDeviceDiscoverySessionAllowListContext == a6)
  {
    [(MRAVConcreteRoutingDiscoverySession *)self _loadDefaults:a3];

    [(MRAVConcreteRoutingDiscoverySession *)self _scheduleReload];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MRAVConcreteRoutingDiscoverySession;
    [(MRAVConcreteRoutingDiscoverySession *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

uint64_t __60__MRAVConcreteRoutingDiscoverySession__onReloadQueue_reload__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 224);
  v3 = [a2 uid];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __60__MRAVConcreteRoutingDiscoverySession__onReloadQueue_reload__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 232);
  v3 = [a2 uid];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)_onReloadQueue_fetchOutputDevicesFromDiscoverySession:(id)a3
{
  reloadQueue = self->_reloadQueue;
  v4 = a3;
  dispatch_assert_queue_V2(reloadQueue);
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = [v4 availableOutputDevices];

  v8 = [v6 initWithArray:v7];
  v9 = [MEMORY[0x1E6958800] sharedLocalDevice];
  [v8 removeObject:v9];

  [v5 timeIntervalSinceNow];
  if (v10 < -0.1)
  {
    v11 = _MRLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MRAVConcreteRoutingDiscoverySession _onReloadQueue_fetchOutputDevicesFromDiscoverySession:v5];
    }
  }

  return v8;
}

- (id)_onReloadQueue_createOutputDevicesFromAVOutputDevices:(id)a3
{
  reloadQueue = self->_reloadQueue;
  v4 = a3;
  dispatch_assert_queue_V2(reloadQueue);
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v4 indexesOfObjectsPassingTest:&__block_literal_global_107];
  v7 = -[MRAVOutputDeviceSourceInfo initWithMultipleBuiltInDevices:sourceType:]([MRAVOutputDeviceSourceInfo alloc], "initWithMultipleBuiltInDevices:sourceType:", [v6 count] > 1, 2);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__MRAVConcreteRoutingDiscoverySession__onReloadQueue_createOutputDevicesFromAVOutputDevices___block_invoke_2;
  v16[3] = &unk_1E76A4CC0;
  v8 = v7;
  v17 = v8;
  v9 = [v4 msv_compactMap:v16];

  [v5 timeIntervalSinceNow];
  if (v10 < -0.1)
  {
    v11 = _MRLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MRAVConcreteRoutingDiscoverySession _onReloadQueue_createOutputDevicesFromAVOutputDevices:v5];
    }
  }

  v12 = +[MRUserSettings currentSettings];
  v13 = [v12 disableAWDLRoutes];

  if (v13)
  {
    v14 = [v9 msv_filter:&__block_literal_global_46];

    v9 = v14;
  }

  return v9;
}

MRAVConcreteOutputDevice *__93__MRAVConcreteRoutingDiscoverySession__onReloadQueue_createOutputDevicesFromAVOutputDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRAVConcreteOutputDevice alloc] initWithAVOutputDevice:v3 sourceInfo:*(a1 + 32)];

  return v4;
}

- (NSString)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__52;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __55__MRAVConcreteRoutingDiscoverySession_debugDescription__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD60];
  v3 = [*(a1 + 32) description];
  v4 = [v2 stringWithFormat:@"%@\n", v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = MRCreateIndentedDebugDescriptionFromObject(*(*(a1 + 32) + 200));
  [v7 appendFormat:@"  discoveryTracker=%@\n", v8];

  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"  %@\n", *(*(a1 + 32) + 184)];
  v9 = *(*(a1 + 32) + 152);
  if (v9)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [v9 availableOutputDevices];
    [v10 appendFormat:@"AVDiscoverySession=%@\n", v11];
  }
}

- (void)_onReloadQueue_fetchOutputDevicesFromDiscoverySession:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 timeIntervalSinceNow];
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[AVDiscoverySession] Querying AVDiscoverySession.availableOutputDevices took %lf seconds", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_onReloadQueue_createOutputDevicesFromAVOutputDevices:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 timeIntervalSinceNow];
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[AVDiscoverySession] CreateOutputDevicesFromAVOutputDevices took %lf seconds", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_setTargetAudioSessionID:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[AVDiscoverySession] No audio session found for ID %u. Will target active session.", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end