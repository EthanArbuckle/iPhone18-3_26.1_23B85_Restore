@interface HURoutesManager
- (BOOL)isRouteUIDHearingAidPeripheralUUID:(id)d inPeripheralUUIDs:(id)ds;
- (BOOL)oldRoutes:(id)routes equalToNewRoutes:(id)newRoutes;
- (HURoutesManager)init;
- (id)_copyPickableRoutes;
- (id)fetchCurrentPickableAudioRoutesIfNeeded;
- (id)fetchHearingAidsPeripheralUUIDs;
- (void)_savePickableRoutes:(id)routes;
- (void)dealloc;
- (void)fetchCurrentPickableAudioRoutesIfNeeded;
- (void)fetchCurrentPickableAudioRoutesIfNeededAsync:(id)async;
- (void)mediaServerDied;
- (void)pickableAudioRoutesDidChange:(id)change;
- (void)registerNotifications;
@end

@implementation HURoutesManager

- (id)_copyPickableRoutes
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__9;
  v8 = __Block_byref_object_dispose__9;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)fetchCurrentPickableAudioRoutesIfNeeded
{
  v37 = *MEMORY[0x1E69E9840];
  _copyPickableRoutes = [(HURoutesManager *)self _copyPickableRoutes];
  if (!_copyPickableRoutes)
  {
    subscribeTimer = [(HURoutesManager *)self subscribeTimer];
    isPending = [subscribeTimer isPending];

    if (isPending)
    {
      _copyPickableRoutes = 0;
    }

    else
    {
      fetchHearingAidsPeripheralUUIDs = [(HURoutesManager *)self fetchHearingAidsPeripheralUUIDs];
      array = [MEMORY[0x1E695DF70] array];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v9 = MRMediaRemoteCopyPickableRoutes();
      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(HURoutesManager *)v9 fetchCurrentPickableAudioRoutesIfNeeded];
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __58__HURoutesManager_fetchCurrentPickableAudioRoutesIfNeeded__block_invoke;
      v30[3] = &unk_1E85CCD68;
      v11 = dictionary;
      v31 = v11;
      selfCopy = self;
      v12 = fetchHearingAidsPeripheralUUIDs;
      v33 = v12;
      v13 = array;
      v34 = v13;
      v27 = v9;
      [v9 enumerateObjectsUsingBlock:v30];
      v14 = [v11 objectForKeyedSubscript:@"AXSHARoutePicked"];
      v15 = [v11 objectForKeyedSubscript:@"AXSHARouteHeadset"];
      v16 = [v11 objectForKeyedSubscript:@"AXSHARouteHearingAid"];
      if ([v14 isEqualToDictionary:v15])
      {
        v17 = 1;
      }

      else
      {
        v17 = [v14 isEqualToDictionary:v16];
      }

      v18 = +[HUUtilities sharedUtilities];
      wirelessSplitterEnabled = [v18 wirelessSplitterEnabled];

      if (!wirelessSplitterEnabled && v17)
      {
        mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
        v21 = [mEMORY[0x1E69AED10] pickableRoutesForCategory:*MEMORY[0x1E6958060] andMode:*MEMORY[0x1E6958140]];

        v22 = HCLogHearingAids();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [(HURoutesManager *)v21 fetchCurrentPickableAudioRoutesIfNeeded];
        }

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __58__HURoutesManager_fetchCurrentPickableAudioRoutesIfNeeded__block_invoke_24;
        v28[3] = &unk_1E85CCA30;
        v29 = v11;
        [v21 enumerateObjectsUsingBlock:v28];
      }

      if ([v11 count])
      {
        [(HURoutesManager *)self setShouldUpdateClients:1];
        [(HURoutesManager *)self _savePickableRoutes:v11];
        _copyPickableRoutes = v11;
      }

      else
      {
        _copyPickableRoutes = 0;
      }

      v23 = HCLogHearingAids();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v13 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v36 = v24;
        _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_INFO, "Routes %@", buf, 0xCu);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return _copyPickableRoutes;
}

uint64_t __38__HURoutesManager__copyPickableRoutes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __35__HURoutesManager_clearAudioRoutes__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (id)fetchHearingAidsPeripheralUUIDs
{
  v2 = +[HUHearingAidSettings sharedInstance];
  peripheralUUIDs = [v2 peripheralUUIDs];

  return peripheralUUIDs;
}

void __58__HURoutesManager_fetchCurrentPickableAudioRoutesIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 valueForKey:@"RouteCurrentlyPicked"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKey:@"OutputRoute"];
    v7 = v6;
    if (!v6 || [v6 BOOLValue])
    {
      [*(a1 + 32) setObject:v3 forKey:@"AXSHARoutePicked"];
    }
  }

  v8 = [v3 valueForKey:@"AVAudioRouteName"];
  v9 = [v3 valueForKey:@"RouteUID"];
  v10 = [v3 valueForKey:@"RouteType"];
  v11 = [v3 valueForKey:@"RouteName"];
  if ((![v8 isEqual:@"BluetoothLEOutput"] || objc_msgSend(v11, "isEqualToString:", @"Bluetooth Audio")) && !objc_msgSend(*(a1 + 40), "isRouteUIDHearingAidPeripheralUUID:inPeripheralUUIDs:", v9, *(a1 + 48)))
  {
    if (([v9 isEqual:@"Speaker"] & 1) != 0 || objc_msgSend(v8, "isEqual:", @"Speaker"))
    {
      v13 = *(a1 + 32);
      v14 = @"AXSHARouteSpeaker";
    }

    else if (([v8 hasPrefix:@"Headset"] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"Headphone") & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"CarAudioOutput"))
    {
      v16 = [v3 valueForKey:@"IsPreferredExternalRoute"];
      v17 = [v16 BOOLValue];

      v18 = [v3 valueForKey:@"PreferredExternalRouteDetails_IsActive"];
      v19 = [v18 BOOLValue];

      if (v17 && !v19)
      {
        goto LABEL_16;
      }

      v13 = *(a1 + 32);
      v14 = @"AXSHARouteHeadset";
    }

    else
    {
      if (([v8 hasPrefix:@"AirTunes"] & v5) != 1)
      {
        goto LABEL_16;
      }

      v13 = *(a1 + 32);
      v14 = @"AXSHARouteAirTunes";
    }

    [v13 setObject:v3 forKey:v14];
    goto LABEL_16;
  }

  [*(a1 + 32) setObject:v3 forKey:@"AXSHARouteHearingAid"];
  v12 = HCLogHearingHandoff();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v3;
    _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Detected HA route: %@", &v20, 0xCu);
  }

LABEL_16:
  if ([v10 isEqual:@"Default"])
  {
    [*(a1 + 32) setObject:v3 forKey:@"AXSHARouteDefault"];
  }

  if (v8)
  {
    [*(a1 + 56) addObject:v8];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __58__HURoutesManager_fetchCurrentPickableAudioRoutesIfNeeded__block_invoke_24(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 valueForKey:*MEMORY[0x1E69AEC18]];
  if ([v4 BOOLValue])
  {
    v5 = [v3 valueForKey:*MEMORY[0x1E69AEC78]];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      [*(a1 + 32) setObject:v3 forKey:@"AXSHARouteLiveListen"];
      v7 = HCLogHearingAids();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_INFO, "Found Live Listen route %@", &v9, 0xCu);
      }
    }
  }

  else
  {
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchCurrentPickableAudioRoutesIfNeededAsync:(id)async
{
  asyncCopy = async;
  routingQueue = [(HURoutesManager *)self routingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__HURoutesManager_fetchCurrentPickableAudioRoutesIfNeededAsync___block_invoke;
  v7[3] = &unk_1E85CA380;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(routingQueue, v7);
}

uint64_t __64__HURoutesManager_fetchCurrentPickableAudioRoutesIfNeededAsync___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchCurrentPickableAudioRoutesIfNeeded];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return MEMORY[0x1EEE66BB8](v3, v2);
}

- (HURoutesManager)init
{
  v9.receiver = self;
  v9.super_class = HURoutesManager;
  v2 = [(HURoutesManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("ha_routing_queue", v3);
    routingQueue = v2->_routingQueue;
    v2->_routingQueue = v4;

    v2->_routingLock._os_unfair_lock_opaque = 0;
    v6 = [objc_alloc(MEMORY[0x1E6988780]) initWithTargetSerialQueue:v2->_routingQueue];
    subscribeTimer = v2->_subscribeTimer;
    v2->_subscribeTimer = v6;

    [(AXDispatchTimer *)v2->_subscribeTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(HURoutesManager *)v2 registerNotifications];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HURoutesManager;
  [(HURoutesManager *)&v4 dealloc];
}

- (void)pickableAudioRoutesDidChange:(id)change
{
  routingQueue = self->_routingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HURoutesManager_pickableAudioRoutesDidChange___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(routingQueue, block);
}

void __48__HURoutesManager_pickableAudioRoutesDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyPickableRoutes];
  [*(a1 + 32) clearAudioRoutes];
  v3 = [*(a1 + 32) shouldUpdateClients];
  v4 = [*(a1 + 32) fetchCurrentPickableAudioRoutesIfNeeded];
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __48__HURoutesManager_pickableAudioRoutesDidChange___block_invoke_cold_1(v2, v4, v5);
  }

  if ((v3 & 1) != 0 || ([*(a1 + 32) oldRoutes:v2 equalToNewRoutes:v4] & 1) == 0)
  {
    v6 = HCLogHearingHandoff();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Posting pickableAudioRoutesDidChange notification", v8, 2u);
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"com.apple.accessibility.hearingaid.audio.route.changed" object:0];

    [*(a1 + 32) setShouldUpdateClients:0];
  }
}

- (void)mediaServerDied
{
  subscribeTimer = [(HURoutesManager *)self subscribeTimer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__HURoutesManager_mediaServerDied__block_invoke;
  v4[3] = &unk_1E85C9F60;
  v4[4] = self;
  [subscribeTimer afterDelay:v4 processBlock:2.0];
}

uint64_t __34__HURoutesManager_mediaServerDied__block_invoke(uint64_t a1)
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __34__HURoutesManager_mediaServerDied__block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) registerNotifications];
}

- (void)registerNotifications
{
  v12[1] = *MEMORY[0x1E69E9840];
  MRMediaRemoteSetWantsRouteChangeNotifications();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_pickableAudioRoutesDidChange_ name:*MEMORY[0x1E69B12A0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_pickableAudioRoutesDidChange_ name:*MEMORY[0x1E69B12E0] object:0];

  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v6 = MEMORY[0x1E69AECB8];
  v12[0] = *MEMORY[0x1E69AECB8];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [mEMORY[0x1E69AED10] setAttribute:v7 forKey:*MEMORY[0x1E69AECD8] error:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *v6;
  mEMORY[0x1E69AED10]2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [defaultCenter3 addObserver:self selector:sel_mediaServerDied name:v9 object:mEMORY[0x1E69AED10]2];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_savePickableRoutes:(id)routes
{
  routesCopy = routes;
  v3 = routesCopy;
  AX_PERFORM_WITH_LOCK();
}

uint64_t __39__HURoutesManager__savePickableRoutes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)oldRoutes:(id)routes equalToNewRoutes:(id)newRoutes
{
  routesCopy = routes;
  newRoutesCopy = newRoutes;
  v11 = [routesCopy valueForKey:@"AXSHARouteSpeaker"];
  if (!v11)
  {
    v4 = [newRoutesCopy valueForKey:@"AXSHARouteSpeaker"];
    if (!v4)
    {
      v34 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v5 = [routesCopy valueForKey:@"AXSHARouteSpeaker"];
  v7 = [v5 valueForKey:@"RouteUID"];
  v12 = [newRoutesCopy valueForKey:@"AXSHARouteSpeaker"];
  v6 = [v12 valueForKey:@"RouteUID"];
  v34 = [v7 isEqualToString:v6];

  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_7:

  v13 = [routesCopy valueForKey:@"AXSHARouteHeadset"];
  if (!v13)
  {
    v5 = [newRoutesCopy valueForKey:@"AXSHARouteHeadset"];
    if (!v5)
    {
      v33 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  v6 = [routesCopy valueForKey:@"AXSHARouteHeadset"];
  v14 = [v6 valueForKey:@"RouteUID"];
  v15 = [newRoutesCopy valueForKey:@"AXSHARouteHeadset"];
  v7 = [v15 valueForKey:@"RouteUID"];
  v33 = [v14 isEqualToString:v7];

  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_13:

  v16 = [routesCopy valueForKey:@"AXSHARouteDefault"];
  if (!v16)
  {
    v6 = [newRoutesCopy valueForKey:@"AXSHARouteDefault"];
    if (!v6)
    {
      v20 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  v7 = [routesCopy valueForKey:@"AXSHARouteDefault"];
  v17 = [v7 valueForKey:@"RouteUID"];
  v18 = [newRoutesCopy valueForKey:@"AXSHARouteDefault"];
  v19 = [v18 valueForKey:@"RouteUID"];
  v20 = [v17 isEqualToString:v19];

  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_19:

  v21 = [routesCopy valueForKey:@"AXSHARouteHearingAid"];
  if (!v21)
  {
    v7 = [newRoutesCopy valueForKey:@"AXSHARouteHearingAid"];
    if (!v7)
    {
      v26 = 1;
LABEL_24:

      goto LABEL_25;
    }
  }

  v22 = [routesCopy valueForKey:@"AXSHARouteHearingAid"];
  v23 = [v22 valueForKey:@"RouteUID"];
  v24 = [newRoutesCopy valueForKey:@"AXSHARouteHearingAid"];
  v25 = [v24 valueForKey:@"RouteUID"];
  v26 = [v23 isEqualToString:v25];

  if (!v21)
  {
    goto LABEL_24;
  }

LABEL_25:

  v27 = [routesCopy valueForKey:@"AXSHARouteLiveListen"];
  if (!v27)
  {
    v7 = [newRoutesCopy valueForKey:@"AXSHARouteLiveListen"];
    if (!v7)
    {
      v30 = 1;
LABEL_30:

      goto LABEL_31;
    }
  }

  v28 = [routesCopy valueForKey:@"AXSHARouteLiveListen"];
  v29 = [newRoutesCopy valueForKey:@"AXSHARouteLiveListen"];
  v30 = [v28 isEqualToDictionary:v29];

  if (!v27)
  {
    goto LABEL_30;
  }

LABEL_31:

  v31 = [routesCopy count];
  LOBYTE(v31) = (v31 == [newRoutesCopy count]) & v34 & v33 & v20;

  return v31 & v26 & v30;
}

- (BOOL)isRouteUIDHearingAidPeripheralUUID:(id)d inPeripheralUUIDs:(id)ds
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dsCopy = ds;
  v7 = [dsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(dsCopy);
        }

        if ([dCopy containsString:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [dsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)fetchCurrentPickableAudioRoutesIfNeeded
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "routesPlayAndRecord: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __48__HURoutesManager_pickableAudioRoutesDidChange___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1DA5E2000, log, OS_LOG_TYPE_DEBUG, "pickableAudioRoutesDidChange\nold: %@\nnew: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end