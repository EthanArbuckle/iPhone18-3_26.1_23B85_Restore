@interface MRDRemoteControlDiscoverySession
- (BOOL)_shouldCreateClusterOutputDevices;
- (BOOL)devicePresenceDetected;
- (BOOL)shouldUseDeviceInfoForLocalDevice;
- (MRAVOutputDevice)nativeOutputDevice;
- (MRAVRoutingDiscoverySessionConfiguration)configuration;
- (MRAirPlayTransportConnection)localEndpointConnection;
- (MRDRemoteControlDiscoverySession)init;
- (MRDeviceInfo)deviceInfo;
- (NSArray)availableOutputDevices;
- (NSArray)unclusteredOutputDevices;
- (NSSet)lastReportedClientIdentifiers;
- (NSString)debugDescription;
- (id)_addUndiscoverableGroupLeaderFromDeviceInfo:(id)a3;
- (id)_addUndiscoveredOutputContextOutputDevices:(id)a3;
- (id)_applyDeviceInfoValuesToOutputDevices:(id)a3 withDeviceInfo:(id)a4;
- (id)_applyLocalReservedOutputContextValuesToOutputDevices:(id)a3;
- (id)_applyLocallySourcedValuesToOutputDevices:(id)a3;
- (id)_applyOutputContextValuesToOutputDevices:(id)a3;
- (id)_calculateUndiscoverableGroupLeaderFromDeviceInfo:(id)a3;
- (id)_clusterOutputDevicesFromUnclusteredDevices:(id)a3;
- (id)_fetchAvailableOutputDevicesFromDiscoverySessions;
- (id)routingContextUID;
- (unsigned)discoveryMode;
- (void)_initializeDiscoverySessions;
- (void)_loadDefaults;
- (void)_loadLocalEndpointConnection;
- (void)_logChangesInModifyingOutputDevice:(id)a3 toOutputDevice:(id)a4 reason:(id)a5;
- (void)_mergeDeviceInfo:(id)a3 intoProtobuf:(id)a4;
- (void)_mergeOutputDevice:(id)a3 intoProtobuf:(id)a4;
- (void)_reloadOutputDevices;
- (void)_scheduleAvailableOutputDevicesReload;
- (void)_setupProxiedDiscoveryWithDestinationEndpoint:(id)a3;
- (void)_setupStandaloneDiscovery;
- (void)_updateLocalEndpointConnection:(id)a3 withUrgency:(BOOL)a4;
- (void)controller:(id)a3 didDiscoverCompanion:(id)a4;
- (void)controllerDidUndiscoverCompanion:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerConnectionFailureForWHAIdentifier:(id)a3;
- (void)setAvailableOutputDevices:(id)a3;
- (void)setDeviceInfo:(id)a3;
- (void)setDiscoveryMode:(unsigned int)a3 forClientIdentifiers:(id)a4;
- (void)setLocalEndpointConnection:(id)a3;
- (void)setNativeOutputDevice:(id)a3;
- (void)setRoutingContextUID:(id)a3;
- (void)setUnclusteredOutputDevices:(id)a3;
- (void)setUndiscoverableGroupLeaderHandle:(id)a3;
- (void)transport:(id)a3 didReceiveData:(id)a4;
- (void)transportDidClose:(id)a3 error:(id)a4;
- (void)unregisterConnectionFailureForWHAIdentifier:(id)a3;
@end

@implementation MRDRemoteControlDiscoverySession

- (NSSet)lastReportedClientIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastReportedClientIdentifiers;
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)availableOutputDevices
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_availableOutputDevices copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)_scheduleAvailableOutputDevicesReload
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_scheduledAvailableOutputDevicesReload)
  {
    v2->_scheduledAvailableOutputDevicesReload = 1;
    workerQueue = v2->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012634;
    block[3] = &unk_1004B6D08;
    block[4] = v2;
    dispatch_async(workerQueue, block);
  }

  objc_sync_exit(v2);
}

- (void)_reloadOutputDevices
{
  dispatch_assert_queue_V2(self->_workerQueue);
  v3 = +[MRUserSettings currentSettings];
  if ([v3 shouldConnectToLocalEndpoint])
  {
    v4 = [(MRDRemoteControlDiscoverySession *)self localEndpointConnection];

    if (!v4)
    {
      return;
    }
  }

  else
  {
  }

  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v6 localOriginClient];
  v8 = [v7 deviceInfoDataSource];
  v9 = [v8 deviceInfo];
  [(MRDRemoteControlDiscoverySession *)self setDeviceInfo:v9];

  v10 = [(MRDRemoteControlDiscoverySession *)self _fetchAvailableOutputDevicesFromDiscoverySessions];
  if ([(NSArray *)self->_allowList count])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10009CE84;
    v22[3] = &unk_1004B8A40;
    v22[4] = self;
    v11 = [v10 msv_filter:v22];

    v10 = v11;
  }

  if ([(NSArray *)self->_denyList count])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009CED8;
    v21[3] = &unk_1004B8A40;
    v21[4] = self;
    v12 = [v10 msv_filter:v21];

    v10 = v12;
  }

  [(MRDRemoteControlDiscoverySession *)self setUnclusteredOutputDevices:v10];
  v13 = [(MRDRemoteControlDiscoverySession *)self deviceInfo];
  v14 = [v13 deviceUID];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003B434;
  v19[3] = &unk_1004B8A40;
  v20 = v14;
  v15 = v14;
  v16 = [v10 msv_firstWhere:v19];
  [(MRDRemoteControlDiscoverySession *)self setNativeOutputDevice:v16];

  v17 = [(MRDRemoteControlDiscoverySession *)self _clusterOutputDevicesFromUnclusteredDevices:v10];
  [(MRDRemoteControlDiscoverySession *)self setAvailableOutputDevices:v17];

  v18 = [(MRDRemoteControlDiscoverySession *)self availableOutputDevices];
  [(MRDRemoteControlDiscoverySession *)self notifyOutputDevicesChanged:v18];
}

- (id)_fetchAvailableOutputDevicesFromDiscoverySessions
{
  v3 = objc_alloc_init(NSMutableSet);
  if ([(MRDRemoteControlDiscoverySession *)self shouldUseDeviceInfoForLocalDevice])
  {
    v4 = [MRDeviceInfoOutputDevice alloc];
    v5 = [(MRDRemoteControlDiscoverySession *)self deviceInfo];
    v6 = [v4 initWithDeviceInfo:v5];

    [v3 addObject:v6];
  }

  v7 = objc_alloc_init(NSMutableSet);
  v8 = [(MRAVConcreteRoutingDiscoverySession *)self->_avDiscoverySession availableOutputDevices];
  v9 = [v8 copy];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        v15 = [v14 clusterID];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = [v14 uid];
        }

        v18 = v17;

        if (([(NSMutableSet *)self->_connectionFailedWHAIdentifiers containsObject:v18]& 1) == 0)
        {
          [v3 addObject:v14];
          if (v18)
          {
            [v7 addObject:v18];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v11);
  }

  v19 = [(MRDGroupSessionDiscoverySession *)self->_groupSessionDiscoverySession availableOutputDevices];
  v20 = [v19 copy];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v36 + 1) + 8 * j);
        v27 = [v26 uid];
        v28 = [v7 containsObject:v27];

        if ((v28 & 1) == 0)
        {
          [v3 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v23);
  }

  v29 = [(MRDIDSDiscoverySession *)self->_idsDiscoverySession availableOutputDevices];
  [v3 addObjectsFromArray:v29];

  v30 = [(MRAVRoutingDiscoverySession *)self->_companionDiscoverySession availableOutputDevices];
  [v3 addObjectsFromArray:v30];

  v31 = [(MRAVRoutingDiscoverySession *)self->_externalDiscoverySession availableOutputDevices];
  [v3 addObjectsFromArray:v31];

  v32 = [v3 allObjects];
  v33 = [(MRDRemoteControlDiscoverySession *)self _applyLocallySourcedValuesToOutputDevices:v32];

  return v33;
}

- (BOOL)shouldUseDeviceInfoForLocalDevice
{
  v2 = +[MRUserSettings currentSettings];
  if ([v2 forceDeviceInfoDiscovery])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[MRUserSettings currentSettings];
    v3 = [v4 homepodDemoMode];
  }

  return v3;
}

- (MRDeviceInfo)deviceInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MRDeviceInfo *)v2->_deviceInfo copy];
  objc_sync_exit(v2);

  return v3;
}

- (unsigned)discoveryMode
{
  v2 = self;
  objc_sync_enter(v2);
  discoveryMode = v2->_discoveryMode;
  objc_sync_exit(v2);

  return discoveryMode;
}

- (NSArray)unclusteredOutputDevices
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_unclusteredOutputDevices copy];
  objc_sync_exit(v2);

  return v3;
}

- (MRAVOutputDevice)nativeOutputDevice
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_nativeOutputDevice;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)_shouldCreateClusterOutputDevices
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 useClusterDevices];

  return v3;
}

- (MRDRemoteControlDiscoverySession)init
{
  v3 = [(MRDRemoteControlDiscoverySession *)self configuration];
  v48.receiver = self;
  v48.super_class = MRDRemoteControlDiscoverySession;
  v4 = [(MRDRemoteControlDiscoverySession *)&v48 initWithConfiguration:v3];
  v5 = v4;
  if (v4)
  {
    [(MRDRemoteControlDiscoverySession *)v4 setAlwaysLogUpdates:1];
    v6 = [[NSString alloc] initWithFormat:@"com.apple.mediaremote.%@", objc_opt_class()];
    v7 = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    workerQueue = v5->_workerQueue;
    v5->_workerQueue = v9;

    [v3 features];
    v11 = MRMediaRemoteEndpointFeaturesDescription();
    v12 = [MRRollingWindowActivityTracker alloc];
    v13 = +[MRUserSettings currentSettings];
    [v13 persistantDiscoveryModeDetectionDuration];
    v15 = v14;
    v16 = +[MRUserSettings currentSettings];
    [v16 persistantDiscoveryModeDetectionWindowDuration];
    v18 = v17;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10009B6C8;
    v46[3] = &unk_1004B6D08;
    v19 = v11;
    v47 = v19;
    v20 = [v12 initWithActivityName:v19 maxAllowedTime:v46 windowDuration:v15 handler:v18];
    discoveryTracker = v5->_discoveryTracker;
    v5->_discoveryTracker = v20;

    v22 = +[MRUserSettings currentSettings];
    LODWORD(v12) = [v22 shouldConnectToLocalEndpoint];

    if (v12)
    {
      v23 = v5->_workerQueue;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10009B76C;
      v44[3] = &unk_1004B6D08;
      v45 = v5;
      sub_10019FEE8(v23, v44);
    }

    objc_initWeak(&location, v5);
    v24 = +[NSNotificationCenter defaultCenter];
    v25 = kMRDeviceInfoDidChangeNotification;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100017D9C;
    v41[3] = &unk_1004B9A58;
    objc_copyWeak(&v42, &location);
    v26 = [v24 addObserverForName:v25 object:0 queue:0 usingBlock:v41];

    v27 = +[NSNotificationCenter defaultCenter];
    v28 = kMRAVOutputContextDevicesDidChangeNotification;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10009B774;
    v39[3] = &unk_1004B9A58;
    objc_copyWeak(&v40, &location);
    v29 = [v27 addObserverForName:v28 object:0 queue:0 usingBlock:v39];

    v30 = +[NSNotificationCenter defaultCenter];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10009B7B4;
    v37[3] = &unk_1004B9A58;
    objc_copyWeak(&v38, &location);
    v31 = [v30 addObserverForName:@"MRDNowPlayingAirplaySessionStarted" object:0 queue:0 usingBlock:v37];

    v32 = +[MRDMRRelayConnectionManager sharedManager];
    [v32 addObserver:v5];

    v33 = v5->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009B7F4;
    block[3] = &unk_1004B6D08;
    v36 = v5;
    dispatch_async(v33, block);

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@ %p {\n", objc_opt_class(), self];
  v4 = self;
  objc_sync_enter(v4);
  [v3 appendFormat:@"  localEndpointConnection=%@\n", v4->_localEndpointConnection];
  discoveryMode = v4->_discoveryMode;
  v6 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  [v3 appendFormat:@"  discoveryMode=%@\n", v6];

  [v3 appendFormat:@"  lastReportedClientIdentifiers=%@\n", v4->_lastReportedClientIdentifiers];
  discoveryTracker = v4->_discoveryTracker;
  v8 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@"  discoveryTracker=%@\n", v8];

  [v3 appendFormat:@"  routingContextID=%@\n", v4->_routingContextID];
  objc_sync_exit(v4);

  workerQueue = v4->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009BB3C;
  block[3] = &unk_1004B68F0;
  block[4] = v4;
  v10 = v3;
  v19 = v10;
  dispatch_sync(workerQueue, block);
  v11 = v4;
  objc_sync_enter(v11);
  v12 = [v11[4] mr_formattedDebugDescription];
  [v10 appendFormat:@"  nativeOutputDevice = %@\n", v12];

  v13 = [v11[3] mr_formattedDebugDescription];
  [v10 appendFormat:@"  unclusteredOutputDevices = %@\n", v13];

  v14 = [v11[2] mr_formattedDebugDescription];
  [v10 appendFormat:@"  availableOutputDevices = %@\n", v14];

  [v10 appendString:@"}>"];
  objc_sync_exit(v11);

  v15 = v19;
  v16 = v10;

  return v10;
}

- (MRAVRoutingDiscoverySessionConfiguration)configuration
{
  v2 = [MRAVRoutingDiscoverySessionConfiguration configurationWithEndpointFeatures:8];
  [v2 setAlwaysAllowUpdates:1];
  v3 = +[MRAVOutputContext sharedAudioPresentationContext];
  v4 = [v3 uniqueIdentifier];
  [v2 setRoutingContextUID:v4];

  return v2;
}

- (MRAirPlayTransportConnection)localEndpointConnection
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_localEndpointConnection;
  objc_sync_exit(v2);

  return v3;
}

- (void)setLocalEndpointConnection:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_localEndpointConnection)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      localEndpointConnection = v6->_localEndpointConnection;
      v13 = 138544130;
      v14 = v8;
      v15 = 2114;
      v16 = @"localEndpointConnection";
      v17 = 2112;
      v18 = localEndpointConnection;
      v19 = 2112;
      v20 = v5;
      v10 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
      v11 = v7;
      v12 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);
    }
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543874;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = @"localEndpointConnection";
      v17 = 2112;
      v18 = v5;
      v10 = "Set: %{public}@ setting %{public}@ to <%@>";
      v11 = v7;
      v12 = 32;
      goto LABEL_6;
    }
  }

  objc_storeStrong(&v6->_localEndpointConnection, a3);
  [(MRAirPlayTransportConnection *)v6->_localEndpointConnection addObserver:v6];
  objc_sync_exit(v6);
}

- (void)_updateLocalEndpointConnection:(id)a3 withUrgency:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isValid])
  {
    [(MRDRemoteControlDiscoverySession *)self setLocalEndpointConnection:v6];
    [(MRDRemoteControlDiscoverySession *)self _scheduleAvailableOutputDevicesReload];
  }

  else
  {
    if (v4)
    {
      v7 = 1000000000;
    }

    else
    {
      v7 = 5000000000;
    }

    v8 = dispatch_time(0, v7);
    workerQueue = self->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009C0D8;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_after(v8, workerQueue, block);
  }
}

- (void)setUndiscoverableGroupLeaderHandle:(id)a3
{
  v4 = a3;
  undiscoverableGroupLeaderHandle = self->_undiscoverableGroupLeaderHandle;
  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (undiscoverableGroupLeaderHandle)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = self->_undiscoverableGroupLeaderHandle;
      v14 = 138544130;
      v15 = v8;
      v16 = 2114;
      v17 = @"undiscoverableGroupLeader";
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v4;
      v10 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
      v11 = v6;
      v12 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  else if (v7)
  {
    v14 = 138543874;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = @"undiscoverableGroupLeader";
    v18 = 2112;
    v19 = v4;
    v10 = "Set: %{public}@ setting %{public}@ to <%@>";
    v11 = v6;
    v12 = 32;
    goto LABEL_6;
  }

  v13 = self->_undiscoverableGroupLeaderHandle;
  self->_undiscoverableGroupLeaderHandle = v4;
}

- (void)setDiscoveryMode:(unsigned int)a3 forClientIdentifiers:(id)a4
{
  v7 = a4;
  if (a3 == 3)
  {
    v8 = +[MRSharedSettings currentSettings];
    v9 = [v8 supportNanoStandalone];

    if (v9)
    {
      a3 = 3;
    }

    else
    {
      a3 = 2;
    }
  }

  v10 = self;
  objc_sync_enter(v10);
  discoveryMode = v10->_discoveryMode;
  v12 = [v7 isEqualToSet:v10->_lastReportedClientIdentifiers];
  v10->_discoveryMode = a3;
  objc_storeStrong(&v10->_lastReportedClientIdentifiers, a4);
  objc_sync_exit(v10);

  if (discoveryMode != a3 || v12 != 1)
  {
    workerQueue = v10->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009C3D0;
    block[3] = &unk_1004B9A80;
    v18 = discoveryMode != a3;
    block[4] = v10;
    v17 = a3;
    v16 = v7;
    dispatch_async(workerQueue, block);
  }
}

- (BOOL)devicePresenceDetected
{
  v2 = [(MRDRemoteControlDiscoverySession *)self availableOutputDevices];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setAvailableOutputDevices:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  availableOutputDevices = obj->_availableOutputDevices;
  obj->_availableOutputDevices = v4;

  objc_sync_exit(obj);
}

- (void)setUnclusteredOutputDevices:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  unclusteredOutputDevices = obj->_unclusteredOutputDevices;
  obj->_unclusteredOutputDevices = v4;

  objc_sync_exit(obj);
}

- (void)setNativeOutputDevice:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  nativeOutputDevice = obj->_nativeOutputDevice;
  obj->_nativeOutputDevice = v4;

  objc_sync_exit(obj);
}

- (void)setRoutingContextUID:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  routingContextID = obj->_routingContextID;
  obj->_routingContextID = v4;

  objc_sync_exit(obj);
}

- (id)routingContextUID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_routingContextID;
  objc_sync_exit(v2);

  return v3;
}

- (void)setDeviceInfo:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  deviceInfo = obj->_deviceInfo;
  obj->_deviceInfo = v4;

  objc_sync_exit(obj);
}

- (void)registerConnectionFailureForWHAIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    workerQueue = self->_workerQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009C934;
    v7[3] = &unk_1004B68F0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(workerQueue, v7);
  }
}

- (void)unregisterConnectionFailureForWHAIdentifier:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009CA48;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, v7);
}

- (void)transport:(id)a3 didReceiveData:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(MRDRemoteControlDiscoverySession *)v7 localEndpointConnection];

  objc_sync_exit(v7);
}

- (void)transportDidClose:(id)a3 error:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MRDRemoteControlDiscoverySession *)v7 localEndpointConnection];

  if (v8 == v14)
  {
    v13 = [(MRDRemoteControlDiscoverySession *)v7 localEndpointConnection];
    [v13 removeObserver:v7];

    [(MRDRemoteControlDiscoverySession *)v7 _updateLocalEndpointConnection:0 withUrgency:1];
  }

  else
  {
    v9 = [(MRDRemoteControlDiscoverySession *)v7 undiscoverableGroupLeaderHandle];
    v10 = [v9 connection];

    if (v10 == v14)
    {
      v11 = [(MRDRemoteControlDiscoverySession *)v7 undiscoverableGroupLeaderHandle];
      v12 = [v11 connection];
      [v12 removeObserver:v7];

      [(MRDRemoteControlDiscoverySession *)v7 _scheduleAvailableOutputDevicesReload];
    }
  }

  objc_sync_exit(v7);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_10051F468 == a6 || off_10051F470 == a6)
  {
    workerQueue = self->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009CD18;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(workerQueue, block);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MRDRemoteControlDiscoverySession;
    [(MRDRemoteControlDiscoverySession *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)controller:(id)a3 didDiscoverCompanion:(id)a4
{
  v5 = a4;
  workerQueue = self->_workerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009CDF4;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(workerQueue, v8);
}

- (void)controllerDidUndiscoverCompanion:(id)a3
{
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CE7C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (id)_clusterOutputDevicesFromUnclusteredDevices:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableDictionary);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 clusterID];
        if (v13 && [(MRDRemoteControlDiscoverySession *)self _shouldCreateClusterOutputDevices])
        {
          v14 = [v6 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v15 = objc_alloc_init(NSMutableArray);
            [v6 setObject:v15 forKeyedSubscript:v13];
          }

          v16 = [v6 objectForKeyedSubscript:v13];
          [v16 addObject:v12];
        }

        else
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10009D160;
  v19[3] = &unk_1004B9AA8;
  v17 = v5;
  v20 = v17;
  [v6 enumerateKeysAndObjectsUsingBlock:v19];

  return v17;
}

- (id)_applyLocallySourcedValuesToOutputDevices:(id)a3
{
  v4 = [(MRDRemoteControlDiscoverySession *)self _applyOutputContextValuesToOutputDevices:a3];
  v5 = [(MRDRemoteControlDiscoverySession *)self deviceInfo];
  v6 = [(MRDRemoteControlDiscoverySession *)self _applyDeviceInfoValuesToOutputDevices:v4 withDeviceInfo:v5];

  v7 = +[MRUserSettings currentSettings];
  LODWORD(v5) = [v7 supportMultiplayerHost];

  if (v5)
  {
    v8 = [(MRDRemoteControlDiscoverySession *)self deviceInfo];
    v9 = [v8 parentGroupContainsDiscoverableGroupLeader];

    if (v9)
    {
      [(MRDRemoteControlDiscoverySession *)self setRoutingContextUID:0];
    }

    else
    {
      v10 = [(MRDRemoteControlDiscoverySession *)self _applyLocalReservedOutputContextValuesToOutputDevices:v6];

      v6 = v10;
    }
  }

  v11 = [(MRDRemoteControlDiscoverySession *)self _addUndiscoveredOutputContextOutputDevices:v6];

  v12 = +[MRUserSettings currentSettings];
  v13 = [v12 supportMRRelay];

  if (v13)
  {
    v14 = [(MRDRemoteControlDiscoverySession *)self _addUndiscoverableGroupLeaderFromDeviceInfo:v11];

    v11 = v14;
  }

  return v11;
}

- (id)_applyOutputContextValuesToOutputDevices:(id)a3
{
  v4 = a3;
  v40 = [v4 mutableCopy];
  v5 = +[MRDAVOutputContextManager sharedManager];
  v31 = [v5 outputContexts];

  v6 = self;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v58;
    v39 = v6;
    v30 = *v58;
    do
    {
      v10 = 0;
      v32 = v8;
      do
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v57 + 1) + 8 * v10);
        if (([v11 isLocalDeviceOrBelongsToLocalCluster] & 1) == 0)
        {
          v34 = v10;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v35 = v31;
          v37 = [v35 countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (!v37)
          {
            goto LABEL_37;
          }

          v36 = *v54;
          while (1)
          {
            v12 = 0;
            do
            {
              if (*v54 != v36)
              {
                objc_enumerationMutation(v35);
              }

              v38 = v12;
              v13 = *(*(&v53 + 1) + 8 * v12);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v41 = [v13 outputDevices];
              v44 = [v41 countByEnumeratingWithState:&v49 objects:v62 count:16];
              if (v44)
              {
                v43 = *v50;
                do
                {
                  for (i = 0; i != v44; i = i + 1)
                  {
                    if (*v50 != v43)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v15 = *(*(&v49 + 1) + 8 * i);
                    v16 = [v15 clusterCompositionMembers];
                    v17 = v16;
                    if (v16)
                    {
                      v47 = 0u;
                      v48 = 0u;
                      v45 = 0u;
                      v46 = 0u;
                      v18 = v16;
                      v19 = [v18 countByEnumeratingWithState:&v45 objects:v61 count:16];
                      if (v19)
                      {
                        v42 = v17;
                        v20 = *v46;
                        while (2)
                        {
                          for (j = 0; j != v19; j = j + 1)
                          {
                            if (*v46 != v20)
                            {
                              objc_enumerationMutation(v18);
                            }

                            v22 = [*(*(&v45 + 1) + 8 * j) uid];
                            v23 = [v11 uid];
                            v24 = [v22 isEqualToString:v23];

                            if (v24)
                            {
                              v19 = [v11 descriptor];
                              v6 = v39;
                              [(MRDRemoteControlDiscoverySession *)v39 _mergeOutputDevice:v15 intoProtobuf:v19];
                              goto LABEL_28;
                            }
                          }

                          v19 = [v18 countByEnumeratingWithState:&v45 objects:v61 count:16];
                          if (v19)
                          {
                            continue;
                          }

                          break;
                        }

                        v6 = v39;
LABEL_28:
                        v17 = v42;
                      }
                    }

                    else
                    {
                      v25 = [v15 uid];
                      v26 = [v11 uid];
                      v27 = [v25 isEqualToString:v26];

                      if (!v27)
                      {
                        goto LABEL_33;
                      }

                      v19 = [v11 descriptor];
                      v18 = [v15 descriptor];
                      [v19 mergeFrom:v18];
                    }

                    if (v19)
                    {
                      [v19 setIsRemoteControllable:1];
                      [v40 removeObject:v11];
                      v28 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v19];
                      [v40 addObject:v28];

                      [(MRDRemoteControlDiscoverySession *)v6 _logChangesInModifyingOutputDevice:v11 toOutputDevice:v19 reason:@"updateFromOutputContext"];
                    }

LABEL_33:
                  }

                  v44 = [v41 countByEnumeratingWithState:&v49 objects:v62 count:16];
                }

                while (v44);
              }

              v12 = v38 + 1;
            }

            while ((v38 + 1) != v37);
            v37 = [v35 countByEnumeratingWithState:&v53 objects:v63 count:16];
            if (!v37)
            {
LABEL_37:

              v9 = v30;
              v8 = v32;
              v10 = v34;
              break;
            }
          }
        }

        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v8);
  }

  return v40;
}

- (id)_applyDeviceInfoValuesToOutputDevices:(id)a3 withDeviceInfo:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009D864;
  v8[3] = &unk_1004B9AD0;
  v8[4] = self;
  v9 = a4;
  v5 = v9;
  v6 = [a3 msv_map:v8];

  return v6;
}

- (id)_applyLocalReservedOutputContextValuesToOutputDevices:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009D998;
  v5[3] = &unk_1004B9AF8;
  v5[4] = self;
  v3 = [a3 msv_map:v5];

  return v3;
}

- (id)_addUndiscoveredOutputContextOutputDevices:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = +[MRDAVOutputContextManager sharedManager];
  v7 = [v6 populatedOutputContexts];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10009DF7C;
  v51[3] = &unk_1004B8A40;
  v26 = v4;
  v52 = v26;
  v8 = objc_retainBlock(v51);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10009E08C;
  v48[3] = &unk_1004B9B20;
  v25 = v5;
  v49 = v25;
  v50 = self;
  v35 = self;
  v9 = objc_retainBlock(v48);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v7;
  v29 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v29)
  {
    v28 = *v45;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v10;
        v11 = *(*(&v44 + 1) + 8 * v10);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v31 = [v11 outputDevices];
        v33 = [v31 countByEnumeratingWithState:&v40 objects:v54 count:16];
        if (v33)
        {
          v32 = *v41;
          do
          {
            v12 = 0;
            do
            {
              if (*v41 != v32)
              {
                objc_enumerationMutation(v31);
              }

              v34 = v12;
              v13 = *(*(&v40 + 1) + 8 * v12);
              v14 = [v13 clusterCompositionMembers];
              v15 = v14;
              if (v14)
              {
                v38 = 0u;
                v39 = 0u;
                v36 = 0u;
                v37 = 0u;
                v16 = [v14 countByEnumeratingWithState:&v36 objects:v53 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v37;
                  do
                  {
                    for (i = 0; i != v17; i = i + 1)
                    {
                      if (*v37 != v18)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v20 = *(*(&v36 + 1) + 8 * i);
                      if (((v8[2])(v8, v20) & 1) == 0)
                      {
                        v21 = [v20 descriptor];
                        [(MRDRemoteControlDiscoverySession *)v35 _mergeOutputDevice:v13 intoProtobuf:v21];
                        (v9[2])(v9, v21);
                      }
                    }

                    v17 = [v15 countByEnumeratingWithState:&v36 objects:v53 count:16];
                  }

                  while (v17);
                }
              }

              else if (((v8[2])(v8, v13) & 1) == 0)
              {
                v22 = [v13 descriptor];
                (v9[2])(v9, v22);
              }

              v12 = v34 + 1;
            }

            while ((v34 + 1) != v33);
            v33 = [v31 countByEnumeratingWithState:&v40 objects:v54 count:16];
          }

          while (v33);
        }

        v10 = v30 + 1;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v29);
  }

  v23 = v25;
  return v25;
}

- (id)_addUndiscoverableGroupLeaderFromDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = [(MRDRemoteControlDiscoverySession *)self deviceInfo];
  v6 = [(MRDRemoteControlDiscoverySession *)self _calculateUndiscoverableGroupLeaderFromDeviceInfo:v5];
  if (v6)
  {
    v7 = [(MRDRemoteControlDiscoverySession *)self undiscoverableGroupLeaderHandle];

    if (!v7)
    {
      [(MRDRemoteControlDiscoverySession *)self setUndiscoverableGroupLeaderHandle:v6];
      v8 = [v6 connection];
      [v8 addObserver:self];
    }

    v9 = [v5 leaderDeviceInfo];
    v10 = [[MRDeviceInfoOutputDevice alloc] initWithDeviceInfo:v9];
    v11 = [v10 descriptor];
    [(MRDRemoteControlDiscoverySession *)self _mergeDeviceInfo:v9 intoProtobuf:v11];
    [v11 setIsRemoteControllable:1];
    [v11 setParentGroupContainsDiscoverableLeader:1];
    [v11 setGroupContainsGroupLeader:1];
    [v11 setIsProxyGroupPlayer:1];
    v12 = [v9 WHAIdentifier];
    [v11 setUniqueIdentifier:v12];

    [v11 setIsGroupLeader:1];
    [v11 setTransportType:8];
    [(MRDRemoteControlDiscoverySession *)self _logChangesInModifyingOutputDevice:0 toOutputDevice:v11 reason:@"addUndiscoveredGroupLeader"];
    v13 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v11];
    v14 = [v4 arrayByAddingObject:v13];
  }

  else
  {
    [(MRDRemoteControlDiscoverySession *)self setUndiscoverableGroupLeaderHandle:0];
    v14 = v4;
  }

  return v14;
}

- (id)_calculateUndiscoverableGroupLeaderFromDeviceInfo:(id)a3
{
  v3 = a3;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 routingServer];
  v6 = [v5 isStartingNowPlayingSession];

  if (v6 & 1) != 0 || ([v3 parentGroupContainsDiscoverableGroupLeader])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 leaderDeviceInfo];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 WHAIdentifier];
      if (v10)
      {
        v11 = +[MRDMRRelayConnectionManager sharedManager];
        v7 = [v11 connectionForOutputDeviceUID:v10];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_mergeOutputDevice:(id)a3 intoProtobuf:(id)a4
{
  v11 = a4;
  v5 = a3;
  [v11 setIsAirPlayReceiverSessionActive:{objc_msgSend(v5, "isAirPlayReceiverSessionActive")}];
  v6 = [v5 groupID];
  [v11 setGroupID:v6];

  v7 = [v5 airPlayGroupID];
  [v11 setAirPlayGroupID:v7];

  v8 = [v5 parentGroupIdentifier];
  [v11 setParentGroupIdentifier:v8];

  [v11 setGroupContainsGroupLeader:{objc_msgSend(v5, "groupContainsGroupLeader")}];
  [v11 setParentGroupContainsDiscoverableLeader:{objc_msgSend(v5, "parentGroupContainsDiscoverableLeader")}];
  [v11 setIsGroupLeader:{objc_msgSend(v5, "isGroupLeader")}];
  [v11 setIsProxyGroupPlayer:{objc_msgSend(v5, "isProxyGroupPlayer")}];
  v9 = [v5 uid];
  [v11 setClusterID:v9];

  [v11 setIsRemoteControllable:1];
  [v11 setConfiguredClusterSize:{objc_msgSend(v5, "configuredClusterSize")}];
  v10 = [v5 clusterType];

  [v11 setClusterType:v10];
}

- (void)_mergeDeviceInfo:(id)a3 intoProtobuf:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 setIsAirPlayReceiverSessionActive:{objc_msgSend(v6, "isAirPlayActive")}];
  v7 = [v6 groupUID];
  [v5 setGroupID:v7];

  v8 = [v6 airPlayGroupUID];
  [v5 setAirPlayGroupID:v8];

  v9 = [v6 parentGroupID];
  [v5 setParentGroupIdentifier:v9];

  [v5 setGroupContainsGroupLeader:{objc_msgSend(v6, "groupContainsDiscoverableGroupLeader")}];
  [v5 setParentGroupContainsDiscoverableLeader:{objc_msgSend(v6, "parentGroupContainsDiscoverableGroupLeader")}];
  [v5 setIsGroupLeader:{objc_msgSend(v6, "isGroupLeader")}];
  [v5 setIsProxyGroupPlayer:{objc_msgSend(v6, "isProxyGroupPlayer")}];
  v10 = [v6 clusterID];

  [v5 setClusterID:v10];
}

- (void)_logChangesInModifyingOutputDevice:(id)a3 toOutputDevice:(id)a4 reason:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[MRUserSettings currentSettings];
  v11 = [v10 verboseRemoteControlDiscoveryLogging];

  if (v11)
  {
    v12 = [v7 descriptor];
    v13 = [v12 dictionaryRepresentation];
    v14 = [v8 dictionaryRepresentation];
    MRDictionaryCalculateDeltas();
    v15 = 0;
    v16 = 0;
    v17 = 0;

    v18 = [v15 count];
    v19 = &v18[[v16 count]];
    if ([v17 count] + v19)
    {
      v20 = MRLogCategoryDiscoveryOversize();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v8 uniqueIdentifier];
        v22 = [v8 name];
        *buf = 138412802;
        v27 = v9;
        v28 = 2112;
        v29 = v21;
        v30 = 2112;
        v31 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[RemoteControlDiscoverySession] Applied %@ sourced values from outputDevice %@:%@", buf, 0x20u);
      }

      if (v7)
      {
        if ([v15 count])
        {
          v23 = MRLogCategoryDiscoveryOversize();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v27 = v15;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[RemoteControlDiscoverySession] Added Fields: %{public}@", buf, 0xCu);
          }
        }

        if ([v16 count])
        {
          v24 = MRLogCategoryDiscoveryOversize();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v27 = v16;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[RemoteControlDiscoverySession] Removed Fields: %{public}@", buf, 0xCu);
          }
        }

        if ([v17 count])
        {
          v25 = MRLogCategoryDiscoveryOversize();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v27 = v17;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[RemoteControlDiscoverySession] Updated Values: %{public}@", buf, 0xCu);
          }
        }
      }
    }
  }
}

- (void)_loadLocalEndpointConnection
{
  v3 = +[NSDate date];
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];

  v6 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"loadLocalEndpointConnection", v5];
  if (objc_opt_class())
  {
    [(__CFString *)v6 appendFormat:@" for %@", objc_opt_class()];
  }

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v8 setObject:v10 forKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];

  [v8 setObject:v5 forKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v11 = MRMediaRemoteCopyDeviceUID();
  v12 = [MRAVOutputDeviceTransport _createConnectionWith:v11 groupID:0 connectionType:2 shouldUseSystemAuthenticationPrompt:0 userInfo:v8];
  v13 = [v12 first];
  v14 = [v12 second];

  if (v14 || !v13)
  {
    v19 = v3;
    v25 = [v12 second];

    v26 = objc_opt_class();
    v27 = _MRLogForCategory();
    v16 = v27;
    if (v25)
    {
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (!v26)
      {
        if (!v28)
        {
          goto LABEL_21;
        }

        v34 = [v12 second];
        v40 = +[NSDate date];
        [v40 timeIntervalSinceDate:v19];
        *buf = 138544130;
        v45 = @"loadLocalEndpointConnection";
        v46 = 2114;
        v47 = v5;
        v48 = 2114;
        v49 = v34;
        v50 = 2048;
        v51 = v41;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);

        v3 = v19;
LABEL_26:

        goto LABEL_22;
      }

      if (v28)
      {
        v43 = [v12 second];
        v42 = objc_opt_class();
        v29 = +[NSDate date];
        [v29 timeIntervalSinceDate:v19];
        *buf = 138544386;
        v45 = @"loadLocalEndpointConnection";
        v46 = 2114;
        v47 = v5;
        v48 = 2114;
        v49 = v43;
        v50 = 2114;
        v51 = v42;
        v3 = v19;
        v52 = 2048;
        v53 = v30;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);

        goto LABEL_22;
      }
    }

    else
    {
      v31 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (!v26)
      {
        v3 = v19;
        if (!v31)
        {
          goto LABEL_22;
        }

        v34 = +[NSDate date];
        [v34 timeIntervalSinceDate:v19];
        *buf = 138543874;
        v45 = @"loadLocalEndpointConnection";
        v46 = 2114;
        v47 = v5;
        v48 = 2048;
        v49 = v39;
        v36 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v37 = v16;
        v38 = 32;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
        goto LABEL_26;
      }

      if (v31)
      {
        v32 = objc_opt_class();
        v20 = +[NSDate date];
        [v20 timeIntervalSinceDate:v19];
        *buf = 138544130;
        v45 = @"loadLocalEndpointConnection";
        v46 = 2114;
        v47 = v5;
        v48 = 2114;
        v49 = v32;
        v50 = 2048;
        v51 = v33;
        v22 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v23 = v16;
        v24 = 42;
        goto LABEL_17;
      }
    }

LABEL_21:
    v3 = v19;
    goto LABEL_22;
  }

  v15 = objc_opt_class();
  v16 = _MRLogForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    v34 = +[NSDate date];
    [v34 timeIntervalSinceDate:v3];
    *buf = 138544130;
    v45 = @"loadLocalEndpointConnection";
    v46 = 2114;
    v47 = v5;
    v48 = 2112;
    v49 = v13;
    v50 = 2048;
    v51 = v35;
    v36 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v37 = v16;
    v38 = 42;
    goto LABEL_25;
  }

  if (v17)
  {
    v18 = objc_opt_class();
    +[NSDate date];
    v20 = v19 = v3;
    [v20 timeIntervalSinceDate:v19];
    *buf = 138544386;
    v45 = @"loadLocalEndpointConnection";
    v46 = 2114;
    v47 = v5;
    v48 = 2112;
    v49 = v13;
    v50 = 2114;
    v51 = v18;
    v52 = 2048;
    v53 = v21;
    v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
    v23 = v16;
    v24 = 52;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);

    goto LABEL_21;
  }

LABEL_22:

  [(MRDRemoteControlDiscoverySession *)self _updateLocalEndpointConnection:v13 withUrgency:0];
}

- (void)_loadDefaults
{
  v3 = [(NSUserDefaults *)self->_userDefaults valueForKey:@"remotecontrol-denylist"];
  denyList = self->_denyList;
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (denyList)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = self->_denyList;
    *buf = 138544130;
    v30 = @"RemoteControlDiscoverySession";
    v31 = 2114;
    v32 = @"denyList";
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v3;
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
    v30 = @"RemoteControlDiscoverySession";
    v31 = 2114;
    v32 = @"denyList";
    v33 = 2112;
    v34 = v3;
    v8 = "Set: %{public}@ setting %{public}@ to <%@>";
    v9 = v5;
    v10 = 32;
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = v3;
  if ((isKindOfClass & 1) == 0)
  {
    if (v3)
    {
      v28 = v3;
      v13 = [NSArray arrayWithObjects:&v28 count:1];
      goto LABEL_12;
    }

    v12 = 0;
  }

  v13 = v12;
LABEL_12:
  v14 = self->_denyList;
  self->_denyList = v13;

  v15 = [(NSUserDefaults *)self->_userDefaults valueForKey:@"remotecontrol-allowlist"];

  allowList = self->_allowList;
  v17 = _MRLogForCategory();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (allowList)
  {
    if (!v18)
    {
      goto LABEL_18;
    }

    v19 = self->_allowList;
    *buf = 138544130;
    v30 = @"RemoteControlDiscoverySession";
    v31 = 2114;
    v32 = @"allowList";
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = v15;
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
    v30 = @"RemoteControlDiscoverySession";
    v31 = 2114;
    v32 = @"allowList";
    v33 = 2112;
    v34 = v15;
    v20 = "Set: %{public}@ setting %{public}@ to <%@>";
    v21 = v17;
    v22 = 32;
  }

  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
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

  v27 = v15;
  v25 = [NSArray arrayWithObjects:&v27 count:1];
LABEL_23:
  v26 = self->_allowList;
  self->_allowList = v25;
}

- (void)_initializeDiscoverySessions
{
  dispatch_assert_queue_V2(self->_workerQueue);
  objc_initWeak(&location, self);
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 supportIDSDiscovery];

  if (v4)
  {
    v5 = objc_alloc_init(MRDIDSDiscoverySession);
    idsDiscoverySession = self->_idsDiscoverySession;
    self->_idsDiscoverySession = v5;

    [(MRDIDSDiscoverySession *)self->_idsDiscoverySession setAlwaysLogUpdates:1];
    [(MRDIDSDiscoverySession *)self->_idsDiscoverySession setAlwaysAllowUpdates:1];
    v7 = self->_idsDiscoverySession;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10009F620;
    v30[3] = &unk_1004B9B48;
    objc_copyWeak(&v31, &location);
    v8 = [(MRDIDSDiscoverySession *)v7 addOutputDevicesChangedCallback:v30];
    objc_destroyWeak(&v31);
  }

  v9 = +[MRSharedSettings currentSettings];
  v10 = [v9 supportGroupSession];

  if (v10)
  {
    v11 = objc_alloc_init(_TtC12mediaremoted31MRDGroupSessionDiscoverySession);
    groupSessionDiscoverySession = self->_groupSessionDiscoverySession;
    self->_groupSessionDiscoverySession = v11;

    v13 = self->_groupSessionDiscoverySession;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10009F660;
    v28[3] = &unk_1004B9B48;
    objc_copyWeak(&v29, &location);
    v14 = [(MRDGroupSessionDiscoverySession *)v13 addOutputDevicesChangedCallback:v28];
    objc_destroyWeak(&v29);
  }

  v15 = +[MRUserSettings currentSettings];
  v16 = [v15 discoverCompanionDevices];

  if (v16)
  {
    v17 = objc_alloc_init(MRIDSCompanionDiscoverySession);
    companionDiscoverySession = self->_companionDiscoverySession;
    self->_companionDiscoverySession = v17;

    [(MRAVRoutingDiscoverySession *)self->_companionDiscoverySession setAlwaysLogUpdates:1];
    [(MRAVRoutingDiscoverySession *)self->_companionDiscoverySession setAlwaysAllowUpdates:1];
    v19 = self->_companionDiscoverySession;
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10009F6A0;
    v26 = &unk_1004B9B48;
    objc_copyWeak(&v27, &location);
    v20 = [(MRAVRoutingDiscoverySession *)v19 addOutputDevicesChangedCallback:&v23];
    v21 = objc_alloc_init(MRCompanionConnectionController);
    companionController = self->_companionController;
    self->_companionController = v21;

    [(MRCompanionConnectionController *)self->_companionController setDelegate:self, v23, v24, v25, v26];
    [(MRAVRoutingDiscoverySession *)self->_companionDiscoverySession setDiscoveryMode:3];
    objc_destroyWeak(&v27);
  }

  [(MRDRemoteControlDiscoverySession *)self _setupStandaloneDiscovery];
  objc_destroyWeak(&location);
}

- (void)_setupStandaloneDiscovery
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[RemoteControlDiscoverySession] %@ setupStandaloneDiscovery", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_workerQueue);
  v4 = [MRAVConcreteRoutingDiscoverySession alloc];
  v5 = [(MRDRemoteControlDiscoverySession *)self configuration];
  v6 = [v4 initWithConfiguration:v5];
  avDiscoverySession = self->_avDiscoverySession;
  self->_avDiscoverySession = v6;

  [(MRAVConcreteRoutingDiscoverySession *)self->_avDiscoverySession setAlwaysLogUpdates:1];
  [(MRAVConcreteRoutingDiscoverySession *)self->_avDiscoverySession setAlwaysAllowUpdates:1];
  objc_initWeak(buf, self);
  v8 = self->_avDiscoverySession;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012544;
  v12[3] = &unk_1004B9B48;
  objc_copyWeak(&v13, buf);
  v9 = [(MRAVConcreteRoutingDiscoverySession *)v8 addOutputDevicesChangedCallback:v12];
  [(MRAVConcreteRoutingDiscoverySession *)self->_avDiscoverySession setDiscoveryMode:self->_discoveryMode];
  [(MRAVRoutingDiscoverySession *)self->_externalDiscoverySession removeOutputDevicesChangedCallback:self->_externalDiscoverySessionToken];
  [(MRAVRoutingDiscoverySession *)self->_externalDiscoverySession setDiscoveryMode:0];
  externalDiscoverySession = self->_externalDiscoverySession;
  self->_externalDiscoverySession = 0;

  externalDiscoverySessionToken = self->_externalDiscoverySessionToken;
  self->_externalDiscoverySessionToken = 0;

  [(MRDRemoteControlDiscoverySession *)self _scheduleAvailableOutputDevicesReload];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)_setupProxiedDiscoveryWithDestinationEndpoint:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RemoteControlDiscoverySession] %@ setupCompanionDiscovery", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_workerQueue);
  v6 = [[MRAVRoutingDiscoverySessionConfiguration alloc] initWithEndpointFeatures:{-[MRDRemoteControlDiscoverySession endpointFeatures](self, "endpointFeatures")}];
  v7 = [(MRDRemoteControlDiscoverySession *)self routingContextUID];
  [v6 setRoutingContextUID:v7];

  v8 = [v4 discoverySessionWithConfiguration:v6];
  externalDiscoverySession = self->_externalDiscoverySession;
  self->_externalDiscoverySession = v8;

  [(MRAVRoutingDiscoverySession *)self->_externalDiscoverySession setAlwaysLogUpdates:1];
  [(MRAVRoutingDiscoverySession *)self->_externalDiscoverySession setAlwaysAllowUpdates:1];
  objc_initWeak(buf, self);
  v10 = self->_externalDiscoverySession;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009FB58;
  v14[3] = &unk_1004B9B48;
  objc_copyWeak(&v15, buf);
  v11 = [(MRAVRoutingDiscoverySession *)v10 addOutputDevicesChangedCallback:v14];
  externalDiscoverySessionToken = self->_externalDiscoverySessionToken;
  self->_externalDiscoverySessionToken = v11;

  [(MRAVRoutingDiscoverySession *)self->_externalDiscoverySession setDiscoveryMode:[(MRDRemoteControlDiscoverySession *)self discoveryMode]];
  [(MRAVConcreteRoutingDiscoverySession *)self->_avDiscoverySession setDiscoveryMode:0];
  avDiscoverySession = self->_avDiscoverySession;
  self->_avDiscoverySession = 0;

  [(MRDRemoteControlDiscoverySession *)self _scheduleAvailableOutputDevicesReload];
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

@end