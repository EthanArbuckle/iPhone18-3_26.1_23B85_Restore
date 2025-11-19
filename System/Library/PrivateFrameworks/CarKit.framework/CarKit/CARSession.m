@interface CARSession
+ (id)_stringForNightModeNumber:(id)a3;
+ (int64_t)_siriRequestEventForEndpointAction:(id)a3;
- (BOOL)_sessionReady;
- (BOOL)carOwnsMainAudio;
- (BOOL)carOwnsScreen;
- (BOOL)isPaired;
- (BOOL)recognizingSpeech;
- (CARInputDeviceManager)inputDeviceManager;
- (CARSession)initWithFigEndpoint:(OpaqueFigEndpoint *)a3 sessionStatusOptions:(unint64_t)a4;
- (NSNumber)electronicTollCollectionAvailable;
- (NSNumber)nightMode;
- (NSNumber)videoPlaybackAvailable;
- (NSString)description;
- (NSString)sourceVersion;
- (OpaqueFigEndpointRemoteControlSession)createRemoteControlSession:(id)a3 channelID:(id)a4 withoutReply:(BOOL)a5 sendAsIs:(BOOL)a6 qualityOfService:(id)a7 streamPriority:(id)a8 error:(id *)a9;
- (id)_capabilitiesIdentifier;
- (id)_endpointValueForKey:(__CFString *)a3;
- (id)_fig_safe_description;
- (id)borrowScreenForClient:(id)a3 reason:(id)a4;
- (id)lastNavigatingBundleIdentifier;
- (int64_t)_carUserInterfaceStyleForAppearanceMode:(unint64_t)a3;
- (int64_t)mapInterfaceStyleForScreenUUID:(id)a3;
- (int64_t)userInterfaceStyleForScreenUUID:(id)a3;
- (unint64_t)navigationOwner;
- (void)_clusterURLsUpdated:(id)a3;
- (void)_fetchActivationStatus;
- (void)_fetchAuthenticationStatus;
- (void)_handleDisplayPanelsUpdateWithParameters:(id)a3;
- (void)_performExtendedEndpointAction:(id)a3;
- (void)_sessionUpdatesQueue_fetchFallbackIsNightWithToken:(int)a3;
- (void)_sessionUpdatesQueue_handleAppearanceModeUpdateWithParameters:(id)a3;
- (void)_sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters:(id)a3;
- (void)_sessionUpdatesQueue_handleEndpointDescriptionChanged;
- (void)_sessionUpdatesQueue_handleIsPlayingVideoFromApp:(id)a3;
- (void)_sessionUpdatesQueue_handleMapAppearanceModeUpdateWithParameters:(id)a3;
- (void)_sessionUpdatesQueue_handleNightModeChange;
- (void)_sessionUpdatesQueue_handleOpenURL:(id)a3;
- (void)_sessionUpdatesQueue_handleShowUIWithParameters:(id)a3;
- (void)_sessionUpdatesQueue_handleSiriRequestEvent:(int64_t)a3 withPayload:(id)a4;
- (void)_sessionUpdatesQueue_handleStopUIWithParameters:(id)a3;
- (void)_sessionUpdatesQueue_handleViewAreaChangeWithPayload:(id)a3;
- (void)_sessionUpdatesQueue_updateConfiguration;
- (void)_sessionUpdatesQueue_updateScreenInfo:(id)a3 currentViewAreaToViewArea:(id)a4 duration:(double)a5 transitionControlType:(unint64_t)a6;
- (void)_setEndpointValue:(void *)a3 forKey:(__CFString *)a4;
- (void)_updateCarCapabilities;
- (void)addObserver:(id)a3;
- (void)appearanceManager:(id)a3 didUpdateMapAppearanceStyle:(int64_t)a4 forScreenUUIDs:(id)a5;
- (void)appearanceManager:(id)a3 didUpdateUIAppearanceStyle:(int64_t)a4 forScreenUUIDs:(id)a5;
- (void)dealloc;
- (void)handleDDPChangeAppearance:(int64_t)a3 screenID:(id)a4;
- (void)removeObserver:(id)a3;
- (void)requestAdjacentViewAreaForScreenID:(id)a3;
- (void)requestCarUIForURL:(id)a3;
- (void)sendCommand:(id)a3 withParameters:(id)a4;
- (void)sendStopSessionWithReason:(unint64_t)a3;
- (void)setCanvasOverrideSize:(CGSize)a3 forScreenID:(id)a4;
- (void)setCornerMaskImageData:(id)a3 forScreenInfo:(id)a4;
- (void)setInputMode:(unint64_t)a3 forInputDevice:(id)a4;
- (void)setSiriForwardingEnabled:(BOOL)a3;
- (void)suggestUI:(id)a3;
- (void)takeScreenForClient:(id)a3 reason:(id)a4;
- (void)unborrowScreenForToken:(id)a3;
- (void)videoPlaybackAvailable;
@end

@implementation CARSession

- (NSNumber)videoPlaybackAvailable
{
  v3 = [(CARSession *)self configuration];
  v4 = [v3 videoPlaybackSupported];

  if (v4)
  {
    v5 = [(CARSession *)self _endpointValueForKey:*MEMORY[0x1E6962280]];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 unsignedLongLongValue];
      v8 = [MEMORY[0x1E696AD98] numberWithBool:(v7 >> 2) & 1];
    }

    else
    {
      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CARSession videoPlaybackAvailable];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_sessionReady
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = [(CARSession *)self isAuthenticated];
    v7 = 1024;
    v8 = [(CARSession *)self isActivated];
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "session isAuthenticated:%d, isActivated:%d", v6, 0xEu);
  }

  v4 = [(CARSession *)self isAuthenticated];
  if (v4)
  {
    LOBYTE(v4) = [(CARSession *)self isActivated];
  }

  return v4;
}

- (void)_fetchAuthenticationStatus
{
  v11 = 0;
  cf1 = 0;
  [(CARSession *)self endpoint];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4 && (v4(CMBaseObject, *MEMORY[0x1E6961FC8], 0, &cf1), cf1) && (CFEqual(cf1, *MEMORY[0x1E69616B0]) || CFEqual(cf1, @"MFiMutualAuth")))
  {
    [(CARSession *)self endpoint];
    v5 = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, *MEMORY[0x1E6961FC0], 0, &v11);
      if (v11)
      {
        MFiCertificateSerialNumber = self->_MFiCertificateSerialNumber;
        self->_MFiCertificateSerialNumber = v11;

        self->_authenticated = 1;
        v8 = CarGeneralLogging();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "endpoint is authenticated", v10, 2u);
        }
      }
    }
  }

  else
  {
    v9 = self->_MFiCertificateSerialNumber;
    self->_MFiCertificateSerialNumber = 0;

    self->_authenticated = 0;
  }

  if (cf1)
  {
    CFRelease(cf1);
  }
}

- (void)_fetchActivationStatus
{
  v16 = *MEMORY[0x1E69E9840];
  BOOLean = 0;
  v3 = [(CARSession *)self endpoint];
  if (v3)
  {
    v4 = v3;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6 || v6(CMBaseObject, *MEMORY[0x1E6962100], *MEMORY[0x1E695E480], &BOOLean))
    {
      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CARSession _fetchActivationStatus];
      }
    }

    else
    {
      if (BOOLean)
      {
        self->_activated = CFBooleanGetValue(BOOLean) != 0;
        v7 = CarGeneralLogging();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = NSStringFromBOOL();
          *buf = 138543618;
          v13 = v4;
          v14 = 2114;
          v15 = v8;
          _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Endpoint: %{public}@ is activated: %{public}@", buf, 0x16u);
        }

        goto LABEL_11;
      }

      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Received a NULL activation status for endpoint.", buf, 2u);
      }
    }

    self->_activated = 0;
LABEL_11:
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }

    return;
  }

  v10 = CarGeneralLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_DEFAULT, "No available endpoint to fetch activation status.", buf, 2u);
  }

  self->_activated = 0;
}

- (NSNumber)nightMode
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(CARSession *)self appearanceManager];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "effectiveGlobalNightMode")}];

  return v4;
}

- (id)_capabilitiesIdentifier
{
  v3 = [(CARSession *)self MFiCertificateSerialNumber];

  if (v3)
  {
    v4 = [(CARSession *)self MFiCertificateSerialNumber];
    v5 = [v4 base64EncodedStringWithOptions:1];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"CarCapabilitiesDefaultIdentifier";
    }
  }

  else
  {
    v6 = @"CarCapabilitiesDefaultIdentifier";
  }

  return v6;
}

- (void)dealloc
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListeners();
  notify_cancel(self->_nightFallbackNotifyToken);
  endpoint = self->_endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
  }

  v4.receiver = self;
  v4.super_class = CARSession;
  [(CARSession *)&v4 dealloc];
}

- (NSString)description
{
  v16 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = CARSession;
  v3 = [(CARSession *)&v17 description];
  v4 = [(CARSession *)self nightMode];
  v5 = @"NO";
  if (v4)
  {
    v15 = [(CARSession *)self nightMode];
    if ([v15 BOOLValue])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }
  }

  else
  {
    v6 = @"unset";
  }

  v7 = [(CARSession *)self limitUserInterfaces];
  if (v7)
  {
    v14 = [(CARSession *)self limitUserInterfaces];
    if ([v14 BOOLValue])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }
  }

  else
  {
    v8 = @"unset";
  }

  v9 = [(CARSession *)self electronicTollCollectionAvailable];
  if (v9)
  {
    [(CARSession *)self electronicTollCollectionAvailable];
    v5 = v10 = @"NO";
    if ([(__CFString *)v5 BOOLValue])
    {
      v10 = @"YES";
    }
  }

  else
  {
    v10 = @"unset";
  }

  v11 = [(CARSession *)self configuration];
  v12 = [v16 stringWithFormat:@"%@, night mode: %@, limit UI: %@, ETC available: %@, configuration: %@", v3, v6, v8, v10, v11];

  if (v9)
  {
  }

  if (v7)
  {
  }

  if (v4)
  {
  }

  return v12;
}

- (NSNumber)electronicTollCollectionAvailable
{
  if (([(CARSession *)self sessionStatusOptions]& 2) != 0)
  {
    v4 = [(CARSession *)self _endpointValueForKey:*MEMORY[0x1E6962328]];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 valueForKey:*MEMORY[0x1E69626F8]];
      v7 = v6;
      if (v6)
      {
        v3 = [v6 valueForKey:@"active"];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSession *)self observers];
  [v5 registerObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSession *)self observers];
  [v5 unregisterObserver:v4];
}

+ (int64_t)_siriRequestEventForEndpointAction:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:*MEMORY[0x1E69624D8]] & 1) == 0)
  {
    if ([v3 isEqualToString:*MEMORY[0x1E69624C8]])
    {
      v4 = 2;
      goto LABEL_9;
    }

    if ([v3 isEqualToString:*MEMORY[0x1E69624D0]])
    {
      v4 = 3;
      goto LABEL_9;
    }

    if ([v3 isEqualToString:*MEMORY[0x1E69624E0]])
    {
      v4 = 4;
      goto LABEL_9;
    }

    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CARSession _siriRequestEventForEndpointAction:];
    }
  }

  v4 = 1;
LABEL_9:

  return v4;
}

- (CARSession)initWithFigEndpoint:(OpaqueFigEndpoint *)a3 sessionStatusOptions:(unint64_t)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CARSession *)self init];
  v9 = v8;
  if (!v8)
  {
LABEL_21:
    a3 = v9;
    goto LABEL_22;
  }

  v8->_sessionStatusOptions = a4;
  v10 = [[CARObserverHashTable alloc] initWithProtocol:&unk_1F4803DC8];
  observers = v9->_observers;
  v9->_observers = v10;

  if (a3)
  {
    v9->_endpoint = CFRetain(a3);
    CMNotificationCenterGetDefaultLocalCenter();
    v12 = +[CARSessionStatus sessionUpdatesQueue];
    FigNotificationCenterAddWeakListeners();

    [(CARSession *)v9 _fetchAuthenticationStatus];
    [(CARSession *)v9 _fetchActivationStatus];
    if ([(CARSession *)v9 _sessionReady])
    {
      [(CARSession *)v9 _sessionUpdatesQueue_updateConfiguration];
      v13 = [(CARSession *)v9 configuration];
      v14 = [v13 screens];
      v15 = [v14 count];

      if (v15 >= 2)
      {
        v16 = CarGeneralLogging();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C81FC000, v16, OS_LOG_TYPE_DEFAULT, "Listening for cluster URL update notifications", buf, 2u);
        }

        v17 = dispatch_queue_create("com.apple.carkit.clusterURLUpdates", 0);
        clusterURLUpdateQueue = v9->_clusterURLUpdateQueue;
        v9->_clusterURLUpdateQueue = v17;

        v19 = [MEMORY[0x1E696ABB0] defaultCenter];
        [v19 addObserver:v9 selector:sel__clusterURLsUpdated_ name:@"CRInstrumentClusterURLsDidChangeNotification" object:0];
      }

      v20 = CarGeneralLogging();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C81FC000, v20, OS_LOG_TYPE_DEFAULT, "Creating location based night mode observer", buf, 2u);
      }

      objc_initWeak(&location, v9);
      v21 = +[CARSessionStatus sessionUpdatesQueue];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __55__CARSession_initWithFigEndpoint_sessionStatusOptions___block_invoke;
      handler[3] = &unk_1E82FD878;
      objc_copyWeak(&v49, &location);
      notify_register_dispatch("com.apple.private.carkit.fallbackNightModeChanged", &v9->_nightFallbackNotifyToken, v21, handler);

      v22 = [(CARSession *)v9 _endpointValueForKey:*MEMORY[0x1E69621F0]];
      systemNightMode = v9->_systemNightMode;
      v9->_systemNightMode = v22;

      [(CARSession *)v9 _sessionUpdatesQueue_fetchFallbackIsNightWithToken:v9->_nightFallbackNotifyToken];
      v24 = [(CARSession *)v9 _endpointValueForKey:*MEMORY[0x1E6962330]];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 integerValue];
      }

      else
      {
        v26 = -1;
      }

      v9->_voiceTriggerMode = v26;
      v27 = [CARAppearanceManager alloc];
      v28 = [(CARSession *)v9 configuration];
      v29 = [v28 screens];
      v30 = [(NSNumber *)v9->_systemNightMode BOOLValue];
      v31 = [(CARSession *)v9 fallbackNightMode];
      v32 = -[CARAppearanceManager initWithScreens:initialSystemNightMode:initialLocationBasedNightMode:delegate:](v27, "initWithScreens:initialSystemNightMode:initialLocationBasedNightMode:delegate:", v29, v30, [v31 BOOLValue], v9);
      appearanceManager = v9->_appearanceManager;
      v9->_appearanceManager = v32;

      if (([(CARSession *)v9 sessionStatusOptions]& 2) != 0)
      {
        v34 = +[CARPrototypePref disableLocationNightMode];
        v35 = [v34 valueBool];

        if (v35)
        {
          v36 = CarGeneralLogging();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C81FC000, v36, OS_LOG_TYPE_DEFAULT, "Disabling location night mode", buf, 2u);
          }

          [(CARAppearanceManager *)v9->_appearanceManager setDisableLocationNightMode];
        }
      }

      v37 = CarGeneralLogging();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        v39 = [(CARSession *)v9 systemNightMode];
        v40 = [v38 _stringForNightModeNumber:v39];
        v41 = objc_opt_class();
        v42 = [(CARSession *)v9 fallbackNightMode];
        v43 = [v41 _stringForNightModeNumber:v42];
        *buf = 138412546;
        v52 = v40;
        v53 = 2112;
        v54 = v43;
        _os_log_impl(&dword_1C81FC000, v37, OS_LOG_TYPE_DEFAULT, "Initial system night mode: %@, initial location night mode: %@", buf, 0x16u);
      }

      v44 = [(CARSessionConfiguration *)v9->_configuration screens];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __55__CARSession_initWithFigEndpoint_sessionStatusOptions___block_invoke_356;
      v46[3] = &unk_1E82FCCE8;
      v47 = v9;
      [v44 enumerateObjectsUsingBlock:v46];

      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
    }

    goto LABEL_21;
  }

LABEL_22:

  return a3;
}

void __55__CARSession_initWithFigEndpoint_sessionStatusOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "Received cartkid ambient light changed notification, fetching ambient light", v5, 2u);
    }

    [WeakRetained _sessionUpdatesQueue_fetchFallbackIsNightWithToken:a2];
  }
}

void __55__CARSession_initWithFigEndpoint_sessionStatusOptions___block_invoke_356(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CARSession_initWithFigEndpoint_sessionStatusOptions___block_invoke_2;
  v6[3] = &unk_1E82FD850;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = v4;
  v5 = v3;
  [v4 _performExtendedEndpointAction:v6];
}

void __55__CARSession_initWithFigEndpoint_sessionStatusOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v4 = [*(a1 + 32) identifier];
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 120);
  if (v5)
  {
    v5(a2, v4, &cf);
  }

  v6 = *(a1 + 40);
  if (cf)
  {
    [*(a1 + 40) _sessionUpdatesQueue_handleViewAreaChangeWithPayload:?];
    CFRelease(cf);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v7 viewAreas];
    v9 = [v8 firstObject];
    [v6 _sessionUpdatesQueue_updateScreenInfo:v7 currentViewAreaToViewArea:v9 duration:0 transitionControlType:0.0];
  }
}

- (id)_fig_safe_description
{
  v4.receiver = self;
  v4.super_class = CARSession;
  v2 = [(CARSession *)&v4 description];

  return v2;
}

- (void)_performExtendedEndpointAction:(id)a3
{
  v4 = a3;
  v5 = [(CARSession *)self endpoint];
  if (v5 && (v6 = v5, FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    if (v4)
    {
      (v4)[2](v4, v6);
    }
  }

  else
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CARSession _performExtendedEndpointAction:];
    }
  }
}

- (id)_endpointValueForKey:(__CFString *)a3
{
  if ([(CARSession *)self endpoint])
  {
    v12 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5 || ((v6 = v5(CMBaseObject, a3, *MEMORY[0x1E695E480], &v12), v6 != -12787) ? (v7 = v6 == 0) : (v7 = 1), !v7))
    {
      v8 = CarGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CARSession _endpointValueForKey:];
      }
    }

    v9 = v12;
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CARSession _endpointValueForKey:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)_setEndpointValue:(void *)a3 forKey:(__CFString *)a4
{
  if ([(CARSession *)self endpoint])
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {

      v7(CMBaseObject, a4, a3);
    }
  }
}

- (void)_sessionUpdatesQueue_updateConfiguration
{
  v3 = [(CARSession *)self _capabilitiesIdentifier];
  [CRCarPlayCapabilities setCapabilitiesIdentifier:v3];

  if (([(CARSession *)self sessionStatusOptions]& 4) != 0)
  {
    [CRCarPlayCapabilities waitForCarCapabilitiesValuesWithReply:0];
  }

  v4 = [CARSessionConfiguration alloc];
  v5 = [(CARSession *)self sessionStatusOptions];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CARSession__sessionUpdatesQueue_updateConfiguration__block_invoke;
  v8[3] = &unk_1E82FCAA8;
  v8[4] = self;
  v6 = [(CARSessionConfiguration *)v4 initWithSessionStatusOptions:v5 propertySupplier:v8];
  configuration = self->_configuration;
  self->_configuration = v6;
}

- (void)_updateCarCapabilities
{
  v3 = [(CARSession *)self configuration];
  [v3 updateCarCapabilities];

  v4 = [(CARSession *)self observers];
  [v4 sessionDidUpdateCarCapabilities:self];
}

- (OpaqueFigEndpointRemoteControlSession)createRemoteControlSession:(id)a3 channelID:(id)a4 withoutReply:(BOOL)a5 sendAsIs:(BOOL)a6 qualityOfService:(id)a7 streamPriority:(id)a8 error:(id *)a9
{
  v11 = a6;
  v12 = a5;
  v44 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = [v15 substringToIndex:8];
  v20 = CarGeneralLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v19;
    _os_log_impl(&dword_1C81FC000, v20, OS_LOG_TYPE_DEFAULT, "createRemoteControlSession for channel uuid: %{public}@", &buf, 0xCu);
  }

  if ([(CARSession *)self isActivated])
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6962360], v15);
      if (v16)
      {
        CFDictionarySetValue(v22, *MEMORY[0x1E69623A8], v16);
      }

      if (v12)
      {
        CFDictionarySetValue(v22, *MEMORY[0x1E69623C8], MEMORY[0x1E695E118]);
      }

      if (v17)
      {
        CFDictionarySetValue(v22, *MEMORY[0x1E69623B8], v17);
      }

      if (v18)
      {
        CFDictionarySetValue(v22, *MEMORY[0x1E69623D8], v18);
      }

      if (v11)
      {
        CFDictionarySetValue(v22, *MEMORY[0x1E69623C0], MEMORY[0x1E695E118]);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v42 = 0x2020000000;
      v43 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __111__CARSession_createRemoteControlSession_channelID_withoutReply_sendAsIs_qualityOfService_streamPriority_error___block_invoke;
      v34[3] = &unk_1E82FD8A0;
      v34[5] = &buf;
      v34[6] = v22;
      v34[4] = &v35;
      [(CARSession *)self _performExtendedEndpointAction:v34];
      CFRelease(v22);
      v23 = *(v36 + 6);
      if (!v23)
      {
        CFRetain(*(*(&buf + 1) + 24));
        v30 = *(*(&buf + 1) + 24);
LABEL_38:
        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&buf, 8);
        goto LABEL_39;
      }

      v39 = *MEMORY[0x1E696AA08];
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v23 userInfo:0];
      v40 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

      v26 = *(v36 + 6);
      if (v26 == -16727)
      {
        v31 = CarGeneralLogging();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [CARSession createRemoteControlSession:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:error:];
        }

        if (!a9)
        {
          goto LABEL_37;
        }

        v28 = 4;
      }

      else if (v26 == -17606)
      {
        v27 = CarGeneralLogging();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CARSession createRemoteControlSession:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:error:];
        }

        if (!a9)
        {
          goto LABEL_37;
        }

        v28 = 2;
      }

      else
      {
        v32 = CarGeneralLogging();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CARSession createRemoteControlSession:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:error:];
        }

        if (!a9)
        {
          goto LABEL_37;
        }

        v28 = 3;
      }

      *a9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.carkit.session" code:v28 userInfo:v25];
LABEL_37:

      v30 = 0;
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  v29 = CarGeneralLogging();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [CARSession createRemoteControlSession:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:error:];
  }

  if (!a9)
  {
LABEL_26:
    v30 = 0;
    goto LABEL_39;
  }

  [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.carkit.session" code:1 userInfo:0];
  *a9 = v30 = 0;
LABEL_39:

  return v30;
}

uint64_t __111__CARSession_createRemoteControlSession_channelID_withoutReply_sendAsIs_qualityOfService_streamPriority_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = *(a1[5] + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 80);
  if (v6)
  {
    result = v6(a2, v4, v5 + 24);
  }

  else
  {
    result = 4294954514;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

- (void)handleDDPChangeAppearance:(int64_t)a3 screenID:(id)a4
{
  if (a3 != -1)
  {
    v7 = a4;
    v8 = [(CARSession *)self appearanceManager];
    [v8 handleChangeAppearance:a3 screenID:v7];
  }
}

- (int64_t)userInterfaceStyleForScreenUUID:(id)a3
{
  v4 = a3;
  v5 = [(CARSession *)self appearanceManager];
  v6 = [v5 effectiveStyleForUIAppearanceForScreenUUID:v4];

  return v6;
}

- (int64_t)mapInterfaceStyleForScreenUUID:(id)a3
{
  v4 = a3;
  v5 = [(CARSession *)self appearanceManager];
  v6 = [v5 effectiveStyleForMapAppearanceForScreenUUID:v4];

  return v6;
}

- (void)_sessionUpdatesQueue_handleNightModeChange
{
  v3 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"CARSessionNightModeChangedNotification" object:self userInfo:0];

  v6 = [(CARSession *)self observers];
  v5 = [(CARSession *)self nightMode];
  [v6 session:self didUpdateNightMode:{objc_msgSend(v5, "BOOLValue")}];
}

- (int64_t)_carUserInterfaceStyleForAppearanceMode:(unint64_t)a3
{
  v3 = 2;
  if (a3 != 1)
  {
    v3 = -1;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

- (void)_sessionUpdatesQueue_handleAppearanceModeUpdateWithParameters:(id)a3
{
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 objectForKey:@"uuid"];
  v7 = [(CARSession *)self configuration];
  v8 = [v7 screenInfoForScreenID:v6];

  if (v8)
  {
    if ([v8 supportsAppearanceMode])
    {
      v9 = [(CARSession *)self appearanceManager];
      [v9 handleUIAppearanceUpdateWithParameters:v4];
    }

    else
    {
      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CARSession _sessionUpdatesQueue_handleAppearanceModeUpdateWithParameters:];
      }
    }
  }

  else
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CARSession _sessionUpdatesQueue_handleAppearanceModeUpdateWithParameters:];
    }
  }
}

- (void)_sessionUpdatesQueue_handleMapAppearanceModeUpdateWithParameters:(id)a3
{
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 objectForKey:@"uuid"];
  v7 = [(CARSession *)self configuration];
  v8 = [v7 screenInfoForScreenID:v6];

  if (v8)
  {
    if ([v8 supportsMapAppearanceMode])
    {
      v9 = [(CARSession *)self appearanceManager];
      [v9 handleMapAppearanceUpdateWithParameters:v4];
    }

    else
    {
      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring map appearance update because screen does not support maps appearance mode", v10, 2u);
      }
    }
  }

  else
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CARSession _sessionUpdatesQueue_handleAppearanceModeUpdateWithParameters:];
    }
  }
}

+ (id)_stringForNightModeNumber:(id)a3
{
  if (a3)
  {
    [a3 BOOLValue];
    v4 = NSStringFromBOOL();
  }

  else
  {
    v4 = @"Not set";
  }

  return v4;
}

- (NSString)sourceVersion
{
  v2 = [(CARSession *)self _endpointValueForKey:@"SourceVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 stringValue];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (void)_sessionUpdatesQueue_fetchFallbackIsNightWithToken:(int)a3
{
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CARSession _sessionUpdatesQueue_fetchFallbackIsNightWithToken:];
  }

  state64 = 0;
  notify_get_state(a3, &state64);
  v7 = state64;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:state64 != 0];
  [(CARSession *)self setFallbackNightMode:v8];

  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(CARSession *)v7 != 0 _sessionUpdatesQueue_fetchFallbackIsNightWithToken:v9];
  }

  v10 = [(CARSession *)self appearanceManager];
  [v10 handleLocationBasedNightModeUpdate:v7 != 0];

  [(CARSession *)self _sessionUpdatesQueue_handleNightModeChange];
}

- (void)appearanceManager:(id)a3 didUpdateUIAppearanceStyle:(int64_t)a4 forScreenUUIDs:(id)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CARSession_appearanceManager_didUpdateUIAppearanceStyle_forScreenUUIDs___block_invoke;
  v9[3] = &unk_1E82FD8C8;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [a5 enumerateObjectsUsingBlock:v9];
}

void __74__CARSession_appearanceManager_didUpdateUIAppearanceStyle_forScreenUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 effectiveStyleForUIAppearanceForScreenUUID:v4];
  v6 = [*(a1 + 40) observers];
  [v6 session:*(a1 + 40) didUpdateAppearanceStyle:v5 forScreenUUID:v4];
}

- (void)appearanceManager:(id)a3 didUpdateMapAppearanceStyle:(int64_t)a4 forScreenUUIDs:(id)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__CARSession_appearanceManager_didUpdateMapAppearanceStyle_forScreenUUIDs___block_invoke;
  v9[3] = &unk_1E82FD8C8;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [a5 enumerateObjectsUsingBlock:v9];
}

void __75__CARSession_appearanceManager_didUpdateMapAppearanceStyle_forScreenUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 effectiveStyleForMapAppearanceForScreenUUID:v4];
  v6 = [*(a1 + 40) observers];
  [v6 session:*(a1 + 40) didUpdateMapAppearanceStyle:v5 forScreenUUID:v4];
}

- (void)_sessionUpdatesQueue_handleOpenURL:(id)a3
{
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CARSession *)self observers];
  [v6 session:self openURL:v4];
}

- (void)_sessionUpdatesQueue_handleSiriRequestEvent:(int64_t)a3 withPayload:(id)a4
{
  v6 = a4;
  v7 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CARSession *)self observers];
  [v8 session:self handleSiriRequestEvent:a3 withPayload:v6];

  v9 = [(CARSession *)self observers];
  [v9 session:self handleSiriRequestEvent:a3];
}

- (void)_sessionUpdatesQueue_handleViewAreaChangeWithPayload:(id)a3
{
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 objectForKey:@"uuid"];
  v7 = @"viewAreaIndex";
  v8 = [v4 objectForKey:@"viewAreaIndex"];

  if (v8 || (v7 = @"viewArea", [v4 objectForKey:@"viewArea"], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [v4 objectForKey:v7];
    v9 = [v10 unsignedIntegerValue];
  }

  v11 = [v4 objectForKey:@"animationDurationMillis"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [(CARSession *)self configuration];
  v15 = [v14 screenInfoForScreenID:v6];

  v16 = [v15 viewAreas];
  v17 = [v16 count];

  if (v9 >= v17)
  {
    v18 = CarGeneralLogging();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CARSession _sessionUpdatesQueue_handleViewAreaChangeWithPayload:v9];
    }

    v9 = 0;
  }

  v19 = [v15 viewAreas];
  v20 = [v19 count];

  if (v9 >= v20)
  {
    v22 = CarGeneralLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CARSession _sessionUpdatesQueue_handleViewAreaChangeWithPayload:v9];
    }
  }

  else
  {
    v21 = [v15 viewAreas];
    v22 = [v21 objectAtIndex:v9];

    v23 = [v15 viewAreas];
    v24 = _adjacentViewAreaForPayload(v4, v23);

    [v15 setAdjacentViewArea:v24];
    [(CARSession *)self _sessionUpdatesQueue_updateScreenInfo:v15 currentViewAreaToViewArea:v22 duration:_transitionControlTypeForViewAreaChange(v22 transitionControlType:v24), v13 / 1000.0];
  }
}

- (void)requestAdjacentViewAreaForScreenID:(id)a3
{
  v4 = a3;
  v5 = [(CARSession *)self configuration];
  v6 = [v5 screenInfoForScreenID:v4];

  v7 = [v6 adjacentViewArea];
  if (v7)
  {
    v8 = [v6 viewAreas];
    v9 = [v8 indexOfObject:v7];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __49__CARSession_requestAdjacentViewAreaForScreenID___block_invoke;
      v10[3] = &unk_1E82FD8F0;
      v11 = v4;
      v12 = v9;
      [(CARSession *)self _performExtendedEndpointAction:v10];
    }
  }
}

uint64_t __49__CARSession_requestAdjacentViewAreaForScreenID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 24);
  result = VTable + 24;
  v8 = *(v7 + 112);
  if (v8)
  {

    return v8(a2, v3, v4);
  }

  return result;
}

- (void)_sessionUpdatesQueue_updateScreenInfo:(id)a3 currentViewAreaToViewArea:(id)a4 duration:(double)a5 transitionControlType:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v12);

  [v11 setCurrentViewArea:v10];
  [v11 setCurrentViewAreaTransitionControlType:a6];
  v14 = [(CARSession *)self observers];
  v13 = [v11 identifier];

  [v14 session:self didSetViewArea:v10 forScreenID:v13 withDuration:a6 transitionControlType:a5];
}

- (void)_sessionUpdatesQueue_handleShowUIWithParameters:(id)a3
{
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 objectForKeyedSubscript:@"uuid"];
  v7 = MEMORY[0x1E695DFF8];
  v8 = [v4 objectForKey:@"url"];

  v9 = [v7 URLWithString:v8];

  v10 = [(CARSession *)self configuration];
  v11 = [v10 screens];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__CARSession__sessionUpdatesQueue_handleShowUIWithParameters___block_invoke;
  v14[3] = &unk_1E82FD6C0;
  v15 = v6;
  v16 = self;
  v17 = v9;
  v12 = v9;
  v13 = v6;
  [v11 enumerateObjectsUsingBlock:v14];
}

void __62__CARSession__sessionUpdatesQueue_handleShowUIWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = [*(a1 + 40) observers];
    [v5 session:*(a1 + 40) showUIForScreenInfo:v6 withURL:*(a1 + 48)];
  }
}

- (void)_sessionUpdatesQueue_handleStopUIWithParameters:(id)a3
{
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 objectForKeyedSubscript:@"uuid"];

  v7 = [(CARSession *)self configuration];
  v8 = [v7 screens];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CARSession__sessionUpdatesQueue_handleStopUIWithParameters___block_invoke;
  v10[3] = &unk_1E82FD918;
  v11 = v6;
  v12 = self;
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:v10];
}

void __62__CARSession__sessionUpdatesQueue_handleStopUIWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = [*(a1 + 40) observers];
    [v5 session:*(a1 + 40) stopUIForScreenInfo:v6];
  }
}

- (void)_handleDisplayPanelsUpdateWithParameters:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Received display panels update", buf, 2u);
  }

  v6 = [v4 objectForKey:@"displayPanels"];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CARSession__handleDisplayPanelsUpdateWithParameters___block_invoke;
  v7[3] = &unk_1E82FCC00;
  v7[4] = self;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __55__CARSession__handleDisplayPanelsUpdateWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"videoStreams"];
  v5 = [v3 objectForKey:@"uid"];

  v6 = [*(a1 + 32) configuration];
  v7 = [v6 displays];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__CARSession__handleDisplayPanelsUpdateWithParameters___block_invoke_2;
  v13[3] = &unk_1E82FCC78;
  v14 = v5;
  v8 = v5;
  v9 = [v7 bs_firstObjectPassingTest:v13];

  [v9 updateStreams:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CARSession__handleDisplayPanelsUpdateWithParameters___block_invoke_3;
  v11[3] = &unk_1E82FCBD8;
  v11[4] = *(a1 + 32);
  v12 = v9;
  v10 = v9;
  [v4 enumerateObjectsUsingBlock:v11];
}

uint64_t __55__CARSession__handleDisplayPanelsUpdateWithParameters___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __55__CARSession__handleDisplayPanelsUpdateWithParameters___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 configuration];
  v6 = [v4 objectForKey:@"uuid"];

  v12 = [v5 screenInfoForScreenID:v6];

  v7 = v12;
  if (v12)
  {
    [v12 setPhysicalDisplay:*(a1 + 40)];
    v8 = [v12 currentViewArea];
    if (v8)
    {
      v9 = [*(a1 + 32) observers];
      v10 = *(a1 + 32);
      v11 = [v12 identifier];
      [v9 session:v10 didSetViewArea:v8 forScreenID:v11 withDuration:0 transitionControlType:0.0];
    }

    v7 = v12;
  }
}

- (void)_sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "Received display panels update with %@", buf, 0xCu);
  }

  v7 = [v4 objectForKey:@"displayPanels"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__CARSession__sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters___block_invoke;
  v8[3] = &unk_1E82FCC00;
  v8[4] = self;
  [v7 enumerateObjectsUsingBlock:v8];
}

void __76__CARSession__sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"uid"];
  v5 = [*(a1 + 32) configuration];
  v6 = [v5 displays];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__CARSession__sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters___block_invoke_2;
  v19[3] = &unk_1E82FCC78;
  v7 = v4;
  v20 = v7;
  v8 = [v6 bs_firstObjectPassingTest:v19];

  v9 = [v3 objectForKey:@"displayPlugins"];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__CARSession__sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters___block_invoke_3;
    v16[3] = &unk_1E82FCBD8;
    v17 = v3;
    v18 = v8;
    v12 = v8;
    [v11 enumerateObjectsUsingBlock:v16];

    v13 = v17;
  }

  else
  {
    v12 = [v3 objectForKey:@"videoStreams"];
    [v8 updateStreams:v12];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__CARSession__sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters___block_invoke_4;
    v14[3] = &unk_1E82FCBD8;
    v14[4] = *(a1 + 32);
    v15 = v8;
    v13 = v8;
    [v12 enumerateObjectsUsingBlock:v14];
  }
}

uint64_t __76__CARSession__sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __76__CARSession__sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [*(a1 + 40) updateStreamsWithPhysicalDisplayDictionary:v5 displayPluginDictionary:v4];
    }
  }
}

void __76__CARSession__sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 configuration];
  v6 = [v4 objectForKey:@"uuid"];

  v12 = [v5 screenInfoForScreenID:v6];

  v7 = v12;
  if (v12)
  {
    [v12 setPhysicalDisplay:*(a1 + 40)];
    v8 = [v12 currentViewArea];
    if (v8)
    {
      v9 = [*(a1 + 32) observers];
      v10 = *(a1 + 32);
      v11 = [v12 identifier];
      [v9 session:v10 didSetViewArea:v8 forScreenID:v11 withDuration:0 transitionControlType:0.0];
    }

    v7 = v12;
  }
}

- (void)_sessionUpdatesQueue_handleEndpointDescriptionChanged
{
  v3 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v3);

  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "Notification for video playback availability changed", v6, 2u);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"CARSessionVideoPlaybackAvailabilityChangedNotification" object:self];
}

- (void)_sessionUpdatesQueue_handleIsPlayingVideoFromApp:(id)a3
{
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CARSession *)self observers];
  [v6 session:self isPlayingVideoFromApp:v4];
}

- (void)requestCarUIForURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__CARSession_requestCarUIForURL___block_invoke;
  v6[3] = &unk_1E82FD940;
  v7 = v4;
  v5 = v4;
  [(CARSession *)self _performExtendedEndpointAction:v6];
}

uint64_t __33__CARSession_requestCarUIForURL___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 24);
  result = VTable + 24;
  v7 = *(v6 + 8);
  if (v7)
  {

    return v7(a2, 0, v3);
  }

  return result;
}

- (void)setSiriForwardingEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"disabled";
    if (v3)
    {
      v6 = @"enabled";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Setting test Siri forwarding %@", &v8, 0xCu);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  [(CARSession *)self _setEndpointValue:*v7 forKey:*MEMORY[0x1E6961FB0]];
}

- (BOOL)carOwnsScreen
{
  v2 = [(CARSession *)self _endpointValueForKey:*MEMORY[0x1E6962010]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)carOwnsMainAudio
{
  v2 = [(CARSession *)self _endpointValueForKey:*MEMORY[0x1E6962008]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)navigationOwner
{
  v3 = [(CARSession *)self _endpointValueForKey:*MEMORY[0x1E6962358]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    return 1;
  }

  v6 = [(CARSession *)self _endpointValueForKey:*MEMORY[0x1E6961FF8]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)lastNavigatingBundleIdentifier
{
  v2 = [[CARNavigationOwnershipManager alloc] initWithIdentifier:0 delegate:0];
  v3 = [(CARNavigationOwnershipManager *)v2 lastNavigatingBundleIdentifier];

  return v3;
}

- (BOOL)recognizingSpeech
{
  v2 = [(CARSession *)self _endpointValueForKey:*MEMORY[0x1E6962000]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)borrowScreenForClient:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CARSessionScreenBorrowToken alloc] initWithSession:self client:v7 reason:v6];

  return v8;
}

- (void)unborrowScreenForToken:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 unborrowToken];
  }
}

- (void)takeScreenForClient:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__CARSession_takeScreenForClient_reason___block_invoke;
  v10[3] = &unk_1E82FD850;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CARSession *)self _performExtendedEndpointAction:v10];
}

uint64_t __41__CARSession_takeScreenForClient_reason___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 24);
  result = VTable + 24;
  v8 = *(v7 + 32);
  if (v8)
  {

    return v8(a2, v3, v4);
  }

  return result;
}

uint64_t __37__CARSession_takeScreenForConnection__block_invoke(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 24);
  result = VTable + 24;
  v6 = *(v5 + 32);
  if (v6)
  {

    return v6(a2, @"com.apple.CarPlayApp", @"InitialCarPlayConnection");
  }

  return result;
}

- (CARInputDeviceManager)inputDeviceManager
{
  inputDeviceManager = self->_inputDeviceManager;
  if (!inputDeviceManager)
  {
    v4 = [(CARSession *)self _endpointValueForKey:*MEMORY[0x1E69620D0]];
    v5 = [(CARSession *)self configuration];
    v6 = [v5 screenIDs];

    v7 = [(CARSession *)self _endpointValueForKey:*MEMORY[0x1E6962328]];
    v8 = [[CARInputDeviceManager alloc] initWithEndpointInputDevices:v4 screenIDs:v6 vehicleInformation:v7 session:self];
    v9 = self->_inputDeviceManager;
    self->_inputDeviceManager = v8;

    inputDeviceManager = self->_inputDeviceManager;
  }

  return inputDeviceManager;
}

- (void)setInputMode:(unint64_t)a3 forInputDevice:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__CARSession_setInputMode_forInputDevice___block_invoke;
  v8[3] = &unk_1E82FD8F0;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(CARSession *)self _performExtendedEndpointAction:v8];
}

void __42__CARSession_setInputMode_forInputDevice___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) UUID];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 56);
  if (v5)
  {
    v5(a2, v6, v4);
  }
}

- (void)suggestUI:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(CARSession *)self sessionStatusOptions]& 2) != 0)
  {
    v14 = CarGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CARSession suggestUI:];
    }
  }

  else
  {
    v5 = [(CARSession *)self configuration];
    v6 = [v5 screens];
    v7 = [v6 count];

    v8 = CarGeneralLogging();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 < 2)
    {
      if (v9)
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring suggestUI with urls = %@", buf, 0xCu);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 138543362;
        v21 = v4;
        _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "suggestUI with urls = %{public}@", buf, 0xCu);
      }

      v10 = [(CARSession *)self clusterSessionURLs];

      if (v10)
      {
        v11 = [(CARSession *)self configuration];
        v12 = [v11 altScreenSuggestUIURLs];

        v13 = [(CARSession *)self clusterSessionURLs];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __24__CARSession_suggestUI___block_invoke;
        v19[3] = &unk_1E82FD9F8;
        v19[4] = self;
        CARHandleSuggestUI(v4, v13, v12, v19);
      }

      else
      {
        v15 = CarGeneralLogging();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C81FC000, v15, OS_LOG_TYPE_DEFAULT, "Fetching new cluster URLS", buf, 2u);
        }

        v16 = +[CARSessionStatus sessionUpdatesQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __24__CARSession_suggestUI___block_invoke_419;
        block[3] = &unk_1E82FBE38;
        block[4] = self;
        v18 = v4;
        dispatch_async(v16, block);
      }
    }
  }
}

void __24__CARSession_suggestUI___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 sendCommand:@"suggestUI" withParameters:a2];
  }

  else
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __24__CARSession_suggestUI___block_invoke_cold_1();
    }
  }
}

void __24__CARSession_suggestUI___block_invoke_419(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __24__CARSession_suggestUI___block_invoke_2;
  v2[3] = &unk_1E82FDA20;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  CRFetchInstrumentClusterURLs(v2);
}

void __24__CARSession_suggestUI___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__CARSession_suggestUI___block_invoke_3;
  block[3] = &unk_1E82FBEB0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __24__CARSession_suggestUI___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setClusterSessionURLs:*(a1 + 40)];
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 altScreenSuggestUIURLs];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) clusterSessionURLs];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__CARSession_suggestUI___block_invoke_4;
  v6[3] = &unk_1E82FD9F8;
  v6[4] = *(a1 + 32);
  CARHandleSuggestUI(v4, v5, v3, v6);
}

void __24__CARSession_suggestUI___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 sendCommand:@"suggestUI" withParameters:a2];
  }

  else
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __24__CARSession_suggestUI___block_invoke_cold_1();
    }
  }
}

- (void)_clusterURLsUpdated:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Cluster URLs updated with userInfo: %{public}@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CARSession__clusterURLsUpdated___block_invoke;
  v7[3] = &unk_1E82FBE38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __34__CARSession__clusterURLsUpdated___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:@"CARSessionUpdateClusterURLsKey"];
  v3 = [v2 bs_mapNoNulls:&__block_literal_global_424];

  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "Updating with URLs: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 40) setClusterSessionURLs:v3];
}

- (BOOL)isPaired
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(CARSession *)self MFiCertificateSerialNumber];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__CARSession_isPaired__block_invoke;
  v7[3] = &unk_1E82FC520;
  v9 = &v10;
  v5 = v3;
  v8 = v5;
  CRIsPairedWithCertificateSerialNumber(v4, v7);

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (void)sendCommand:(id)a3 withParameters:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CARSession *)self endpoint])
  {
    v8 = [(CARSession *)self endpoint];
    if (!v8 || (v9 = v8, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v9 = 0;
    }

    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_DEFAULT, "sending command %@ %@", &v12, 0x16u);
    }

    v11 = *(*(CMBaseObjectGetVTable() + 24) + 72);
    if (v11)
    {
      v11(v9, v6, v7, 0, 0);
    }
  }
}

- (void)sendStopSessionWithReason:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "sendStopSessionWithReason %lu", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a3, @"disconnectReason"}];
  v9 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(CARSession *)self sendCommand:@"stopSession" withParameters:v7];
}

- (void)setCornerMaskImageData:(id)a3 forScreenInfo:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CARSession *)self configuration];
  v9 = [v8 screens];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
    v11 = [v7 identifier];
    if ([v7 wantsCornerMasks])
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = [v6 length];
      v14 = CarGeneralLogging();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          *buf = 138543618;
          v23 = v11;
          v24 = 2048;
          v25 = [v6 length];
          _os_log_impl(&dword_1C81FC000, v14, OS_LOG_TYPE_DEFAULT, "Screen %{public}@ requests corner masks - setting corner mask image data (length: %lu)", buf, 0x16u);
        }

        [v12 setObject:v6 forKeyedSubscript:v11];
      }

      else
      {
        if (v15)
        {
          *buf = 138543362;
          v23 = v11;
          _os_log_impl(&dword_1C81FC000, v14, OS_LOG_TYPE_DEFAULT, "Screen %{public}@ requests corner masks but nil data specified. Sending NSNull", buf, 0xCu);
        }

        v18 = [MEMORY[0x1E695DFB0] null];
        [v12 setObject:v18 forKeyedSubscript:v11];
      }

      v17 = [v12 copy];
    }

    else
    {
      v16 = CarGeneralLogging();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v11;
        _os_log_impl(&dword_1C81FC000, v16, OS_LOG_TYPE_DEFAULT, "Screen %{public}@ does not request corner masks. Sending NSNull", buf, 0xCu);
      }

      v12 = [MEMORY[0x1E695DFB0] null];
      v21 = v12;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }

    v19 = v17;
    [(CARSession *)self _setEndpointValue:v17 forKey:*MEMORY[0x1E6962068]];
  }

  else
  {
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CARSession setCornerMaskImageData:v7 forScreenInfo:?];
    }
  }
}

- (void)setCanvasOverrideSize:(CGSize)a3 forScreenID:(id)a4
{
  height = a3.height;
  width = a3.width;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(CARSession *)self configuration];
  v9 = [v8 screenInfoForScreenID:v7];

  v10 = CarGeneralLogging();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = v7;
      v21 = 2048;
      v22 = width;
      v23 = 2048;
      v24 = height;
      _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "SetCanvasOverrideSize to %@: (%f,%f)", buf, 0x20u);
    }

    v17 = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:{width, @"Width"}];
    v15[1] = @"Height";
    v16[0] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:height];
    v16[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v18 = v14;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    [(CARSession *)self _setEndpointValue:v11 forKey:@"OverrideCanvasSize"];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CARSession setCanvasOverrideSize:forScreenID:];
  }
}

+ (void)_siriRequestEventForEndpointAction:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_performExtendedEndpointAction:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_endpointValueForKey:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createRemoteControlSession:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createRemoteControlSession:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:error:.cold.2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0(&dword_1C81FC000, v0, v1, "Unable to create remote control session for channel uuid: %{public}@, channel already activated, error: %d");
}

- (void)createRemoteControlSession:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:error:.cold.3()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0(&dword_1C81FC000, v0, v1, "Unable to create remote control session, invalid configuration for channel uuid: %{public}@, error: %d");
}

- (void)createRemoteControlSession:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:error:.cold.4()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0(&dword_1C81FC000, v0, v1, "Unable to create remote control session for channel uuid: %{public}@, error: %d");
}

- (void)_sessionUpdatesQueue_handleAppearanceModeUpdateWithParameters:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sessionUpdatesQueue_handleAppearanceModeUpdateWithParameters:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sessionUpdatesQueue_fetchFallbackIsNightWithToken:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromBOOL();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_DEBUG, "Fetched night mode value: %{public}@", v4, 0xCu);
}

- (void)videoPlaybackAvailable
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sessionUpdatesQueue_handleViewAreaChangeWithPayload:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_sessionUpdatesQueue_handleViewAreaChangeWithPayload:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)suggestUI:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __24__CARSession_suggestUI___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setCornerMaskImageData:(void *)a1 forScreenInfo:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setCanvasOverrideSize:forScreenID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end