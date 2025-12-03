@interface MRDAVHostedExternalDevice
- (BOOL)_endpointShouldPostVolumeNotifications:(id)notifications outputDevice:(id)device;
- (BOOL)_endpointSupportsVolumeControl:(id)control;
- (BOOL)_onSerialQueue_isEndpointsDesignatedGroupLeader:(id)leader;
- (BOOL)_shouldReevaluateVolumeControlCapabilitiesForEndpoint:(id)endpoint previousEndpoint:(id)previousEndpoint externalDevice:(id)device;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MRAVDistantEndpoint)endpoint;
- (MRAVRoutingDiscoverySession)silentDiscoverySession;
- (MRDAVHostedExternalDevice)initWithExternalDevice:(id)device;
- (MRExternalDevice)externalDevice;
- (MROrigin)origin;
- (NSArray)personalOutputDevices;
- (NSError)canMigrateToLocalEndpointError;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)outputDeviceUID;
- (id)_allExternalDeviceClients;
- (id)_connectedExternalDeviceClients;
- (id)_connectingExternalDeviceClients;
- (id)_externalDeviceClientForConnection:(id)connection;
- (id)_mutableExternalDeviceClientsWithRegisteredCallbacks:(unint64_t)callbacks;
- (id)_mutableExternalDeviceClientsWithRegisteredNotification:(unint64_t)notification;
- (id)externalDeviceClients;
- (id)groupSessionToken;
- (unint64_t)notifications;
- (unint64_t)registeredCallbacks;
- (void)_externalDeviceClientDidInvalidate:(id)invalidate withError:(id)error;
- (void)_handleExternalDeviceConnectionDidChange:(id)change;
- (void)_handleExternalDeviceConnectionStateDidChange:(id)change;
- (void)_handleExternalDeviceDeviceInfoDidChange:(id)change;
- (void)_handleMaybeCanMigrateToLocalEndpointDidChange:(id)change;
- (void)_initializeExternalDevice:(id)device;
- (void)_maybePostEndpointDidAddOutputDevice:(id)device;
- (void)_maybePostEndpointDidChangeOutputDevice:(id)device;
- (void)_maybePostEndpointDidRemoveOutputDevice:(id)device;
- (void)_maybePostVolumeDidChange:(float)change outputDevice:(id)device;
- (void)_onReloadQueue_hostedExternalDeviceEndpointDidChange:(id)change;
- (void)_processCanMigrateToLocalEndpointEvent:(id)event timestamp:(id)timestamp error:(id)error;
- (void)_reevaluateVolumeControlCapabilitiesForEndpoint:(id)endpoint;
- (void)_reloadEndpoint;
- (void)_reloadHostedExternalDeviceCallbacks;
- (void)_reloadHostedExternalDeviceNotifications;
- (void)_reloadHostedExternalDeviceSubscribedPlayerPaths;
- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details completion:(id)completion;
- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details completion:(id)completion;
- (void)dealloc;
- (void)disconnect:(id)disconnect;
- (void)disconnectOrigin:(id)origin;
- (void)expanseManagerTelevisionDidJoinSession:(id)session;
- (void)expanseManagerTelevisionDidLeaveSession:(id)session;
- (void)getCustomOriginDataWithCompletion:(id)completion;
- (void)getDeviceInfoWithCompletion:(id)completion;
- (void)getExternalOutputContextWithCompletion:(id)completion;
- (void)getPersonalOutputDevices:(id)devices;
- (void)hostedExternalDeviceDeviceInfoDidChange:(id)change;
- (void)hostedExternalDeviceDidAddOutputDevice:(id)device;
- (void)hostedExternalDeviceDidChangeOutputDevice:(id)device;
- (void)hostedExternalDeviceDidReceiveCustomData:(id)data withName:(id)name;
- (void)hostedExternalDeviceDidRemoveOutputDevice:(id)device;
- (void)hostedExternalDeviceEndpointDidChange:(id)change;
- (void)hostedExternalDeviceVolumeDidChange:(float)change forOutputDevice:(id)device;
- (void)modifyTopologyWithRequest:(id)request completion:(id)completion;
- (void)outputContextDataSourceDidAddOutputDevice:(id)device;
- (void)outputContextDataSourceDidChangeOutputDevice:(id)device;
- (void)outputContextDataSourceDidRemoveOutputDevice:(id)device;
- (void)outputContextDataSourceOutputDeviceDidChangeVolume:(id)volume;
- (void)outputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilities:(id)capabilities;
- (void)outputContextDataSourceOutputDeviceDidChangeVolumeMuted:(id)muted;
- (void)pingWithTimeout:(double)timeout callback:(id)callback;
- (void)registerForOutputContextNotifications:(id)notifications;
- (void)requestGroupSessionWithDetails:(id)details completion:(id)completion;
- (void)requestMicrophoneConnectionWithDetails:(id)details completion:(id)completion;
- (void)sendCustomData:(id)data withName:(id)name;
- (void)setListeningMode:(id)mode outputDeviceUID:(id)d completion:(id)completion;
- (void)setNotifications:(unint64_t)notifications;
- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details completion:(id)completion;
- (void)setRegisteredCallbacks:(unint64_t)callbacks;
- (void)setSubscribedPlayerPaths:(id)paths;
- (void)tombstoneWithError:(id)error;
@end

@implementation MRDAVHostedExternalDevice

- (NSArray)personalOutputDevices
{
  canMigrateToLocalEndpointError = [(MRDAVHostedExternalDevice *)self canMigrateToLocalEndpointError];
  if (canMigrateToLocalEndpointError)
  {
    v4 = 0;
  }

  else
  {
    silentDiscoverySession = [(MRDAVHostedExternalDevice *)self silentDiscoverySession];
    availableOutputDevices = [silentDiscoverySession availableOutputDevices];
    v4 = [availableOutputDevices msv_compactMap:&stru_1004BC8E0];
  }

  return v4;
}

- (NSError)canMigrateToLocalEndpointError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003510C;
  v10 = sub_100035A3C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017824;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRExternalDevice)externalDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003510C;
  v10 = sub_100035A3C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003B764;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_allExternalDeviceClients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003510C;
  v10 = sub_100035A3C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003BA3C;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_reloadEndpoint
{
  reloadQueue = self->_reloadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CE74;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(reloadQueue, block);
}

- (MRAVRoutingDiscoverySession)silentDiscoverySession
{
  if (qword_100529448 != -1)
  {
    sub_1003A9084();
  }

  v3 = qword_100529440;

  return v3;
}

- (id)_connectedExternalDeviceClients
{
  _allExternalDeviceClients = [(MRDAVHostedExternalDevice *)self _allExternalDeviceClients];
  v3 = [_allExternalDeviceClients msv_filter:&stru_1004BCA78];

  return v3;
}

- (MRAVDistantEndpoint)endpoint
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003510C;
  v10 = sub_100035A3C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003C8A0;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_reloadHostedExternalDeviceNotifications
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_10003510C;
  v8 = sub_100035A3C;
  v9 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CD0C;
  block[3] = &unk_1004B9C58;
  block[4] = self;
  block[5] = &v4;
  block[6] = &v10;
  dispatch_sync(serialQueue, block);
  [v5[5] setWantsSystemEndpointNotifications:(v11[3] >> 4) & 1];
  _Block_object_dispose(&v4, 8);

  _Block_object_dispose(&v10, 8);
}

- (NSString)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003510C;
  v9 = sub_100035A3C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (MRDAVHostedExternalDevice)initWithExternalDevice:(id)device
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = MRDAVHostedExternalDevice;
  v6 = [(MRDAVHostedExternalDevice *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalDevice, device);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremoted.hostedExternalDevice.serialQueue", v8);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mediaremoted.hostedExternalDevice.callbackQueue", v11);
    externalDeviceCallbackQueue = v7->_externalDeviceCallbackQueue;
    v7->_externalDeviceCallbackQueue = v12;

    if (qword_100529438 != -1)
    {
      sub_1003A8ED8();
    }

    objc_storeStrong(&v7->_reloadQueue, qword_100529430);
    v14 = objc_alloc_init(NSMutableSet);
    mutableExternalDeviceClients = v7->_mutableExternalDeviceClients;
    v7->_mutableExternalDeviceClients = v14;

    v16 = +[NSDate distantPast];
    canMigrateEvaluationTimestamp = v7->_canMigrateEvaluationTimestamp;
    v7->_canMigrateEvaluationTimestamp = v16;

    if (deviceCopy)
    {
      v18 = +[NSXPCListener anonymousListener];
      xpcListener = v7->_xpcListener;
      v7->_xpcListener = v18;

      [(NSXPCListener *)v7->_xpcListener setDelegate:v7];
      [(NSXPCListener *)v7->_xpcListener resume];
      [(MRDAVHostedExternalDevice *)v7 _initializeExternalDevice:deviceCopy];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_xpcListener setDelegate:0];
  [(NSXPCListener *)self->_xpcListener invalidate];
  v3 = +[MRExpanseManager sharedManager];
  [v3 removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  silentDiscoverySession = [(MRDAVHostedExternalDevice *)self silentDiscoverySession];
  [silentDiscoverySession removeOutputDevicesChangedCallback:self->_silentDiscoverySessionCallbackToken];

  silentDiscoverySessionCallbackToken = self->_silentDiscoverySessionCallbackToken;
  self->_silentDiscoverySessionCallbackToken = 0;

  v7.receiver = self;
  v7.super_class = MRDAVHostedExternalDevice;
  [(MRDAVHostedExternalDevice *)&v7 dealloc];
}

- (NSString)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003510C;
  v9 = sub_100035A3C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)externalDeviceClients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003510C;
  v10 = sub_100035A3C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FD844;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)groupSessionToken
{
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  groupSessionToken = [externalDevice groupSessionToken];

  return groupSessionToken;
}

- (NSString)outputDeviceUID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003510C;
  v9 = sub_100035A3C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)tombstoneWithError:(id)error
{
  errorCopy = error;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] Hosted endpoint %{public}@ did tombstone with error %@", buf, 0x16u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FDB50;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FE188;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v41;
  dispatch_sync(serialQueue, block);
  v8 = *(v42 + 24);
  if (v8 == 1)
  {
    v9 = MRLogCategoryConnections();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] %{public}@ is tombstoned, rejecting new XPC connection %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v10 = [[MRDAVHostedExternalDeviceClient alloc] initWithConnection:connectionCopy];
    v11 = MRLogCategoryConnections();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] %{public}@ is accepting new XPC connection %{public}@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    objc_initWeak(&from, v10);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v46 = 0;
    v12 = self->_serialQueue;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000FE19C;
    v33[3] = &unk_1004BC908;
    v24 = v12;
    v34 = v24;
    v35 = buf;
    objc_copyWeak(&v36, &location);
    objc_copyWeak(&v37, &from);
    v13 = objc_retainBlock(v33);
    v14 = +[MRDistantExternalDevice serviceInterface];
    [connectionCopy setExportedInterface:v14];

    exportedInterface = [connectionCopy exportedInterface];
    protocol = [exportedInterface protocol];
    v17 = [MRWeakProxy weakProxyWithObject:self protocol:protocol];
    [connectionCopy setExportedObject:v17];

    v18 = +[MRDistantExternalDevice clientInterface];
    [connectionCopy setRemoteObjectInterface:v18];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000FE274;
    v31[3] = &unk_1004B79A0;
    v19 = v13;
    v32 = v19;
    [connectionCopy setInterruptionHandler:v31];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000FE2E4;
    v29[3] = &unk_1004B79A0;
    v20 = v19;
    v30 = v20;
    [connectionCopy setInvalidationHandler:v29];
    [connectionCopy resume];
    v21 = self->_serialQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000FE354;
    v26[3] = &unk_1004B7798;
    v27 = v10;
    v28 = buf;
    v26[4] = self;
    v22 = v10;
    dispatch_sync(v21, v26);

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v36);

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v41, 8);

  return v8 ^ 1;
}

- (void)getCustomOriginDataWithCompletion:(id)completion
{
  completionCopy = completion;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  customOrigin = [externalDevice customOrigin];
  v7 = customOrigin;
  if (customOrigin)
  {
    data = [customOrigin data];
    Error = 0;
  }

  else
  {
    Error = MRMediaRemoteCreateError();
    data = 0;
  }

  v10 = data;
  completionCopy[2](completionCopy);
}

- (unint64_t)registeredCallbacks
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v3];
  registeredCallbacks = [v4 registeredCallbacks];

  return registeredCallbacks;
}

- (void)setRegisteredCallbacks:(unint64_t)callbacks
{
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v5];
  [v6 setRegisteredCallbacks:callbacks];
  v7 = MRLogCategoryConnections();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromMRAVDistantExternalDeviceCallbackFlags();
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    selfCopy = self;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Client %{public}@ is setting the following registered callbacks on %{public}@: %{public}@", &v9, 0x20u);
  }

  [(MRDAVHostedExternalDevice *)self _reloadHostedExternalDeviceCallbacks];
}

- (unint64_t)notifications
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v3];
  notifications = [v4 notifications];

  return notifications;
}

- (void)setNotifications:(unint64_t)notifications
{
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v5];
  [v6 setNotifications:notifications];
  v7 = MRLogCategoryConnections();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromMRAVDistantExternalDeviceNotificationFlags();
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    selfCopy = self;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Client %{public}@ is setting the following notifications on %{public}@: %{public}@", &v9, 0x20u);
  }

  [(MRDAVHostedExternalDevice *)self _reloadHostedExternalDeviceNotifications];
}

- (void)setSubscribedPlayerPaths:(id)paths
{
  pathsCopy = paths;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v5];
  [v6 setSubscribedPlayerPaths:pathsCopy];
  v7 = MRLogCategoryConnections();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    selfCopy = self;
    v12 = 2114;
    v13 = pathsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Client %{public}@ is subscribing to the following player paths on %{public}@: %{public}@", &v8, 0x20u);
  }

  [(MRDAVHostedExternalDevice *)self _reloadHostedExternalDeviceSubscribedPlayerPaths];
}

- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v10 = +[NSDate now];
  v36 = +[NSXPCConnection currentConnection];
  v11 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:?];
  v12 = [infoCopy mutableCopy];

  v13 = [v12 objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  bundleIdentifier = [v11 bundleIdentifier];
  v35 = v12;
  [v12 setObject:bundleIdentifier forKeyedSubscript:MRExternalDeviceConnectionClientBundleIDUserInfoKey];

  v15 = [NSString alloc];
  v16 = objc_opt_class();
  optionsCopy = options;
  v17 = MRExternalDeviceConnectOptionsCopyDescription();
  v18 = [v15 initWithFormat:@"%@:%p (%@)", v16, self, v17];

  v19 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"HostedExternalDevice.connectWithOptions", v13];
  v20 = v19;
  if (v18)
  {
    [v19 appendFormat:@" for %@", v18];
  }

  if (v11)
  {
    [v20 appendFormat:@" because %@", v11];
  }

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000FECDC;
  v43[3] = &unk_1004B9780;
  v22 = v18;
  v44 = v22;
  v45 = @"HostedExternalDevice.connectWithOptions";
  v23 = v13;
  v46 = v23;
  v34 = v10;
  v47 = v34;
  v24 = completionCopy;
  v48 = v24;
  v25 = objc_retainBlock(v43);
  [v11 setHasAttemptedToConnect:1];
  v26 = [MRBlockGuard alloc];
  v27 = [[NSString alloc] initWithFormat:@"%@<%@>", @"HostedExternalDevice.connectWithOptions", v23];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000FEF30;
  v41[3] = &unk_1004B6FE8;
  v28 = v25;
  v42 = v28;
  v29 = [v26 initWithTimeout:v27 reason:v41 handler:30.0];

  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  if (externalDevice)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000FEF40;
    v37[3] = &unk_1004B9840;
    v38 = v11;
    v39 = v29;
    v40 = v28;
    v31 = v35;
    [externalDevice connectWithOptions:optionsCopy userInfo:v35 completion:v37];

    v32 = v38;
LABEL_11:

    goto LABEL_12;
  }

  v31 = v35;
  if ([v29 disarm])
  {
    v32 = [[NSError alloc] initWithMRError:123 format:{@"No externalDevice available when attempting to %@", @"HostedExternalDevice.connectWithOptions"}];
    (v28[2])(v28, v32);
    goto LABEL_11;
  }

LABEL_12:
}

- (void)disconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v5];
  connection = [v6 connection];
  v8 = [connection valueForEntitlement:@"com.apple.mediaremote.externaldevice.disconnect"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = MRLogCategoryConnections();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v6;
      v14 = 2114;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] Client %{public}@ is requesting to disconnect from external device using hosted endpoint %{public}@", &v12, 0x16u);
    }

    externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
    [externalDevice disconnect:disconnectCopy];
  }
}

- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  completionCopy = completion;
  v13 = +[NSDate now];
  v36 = +[NSXPCConnection currentConnection];
  v14 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v36];
  volume = [[NSString alloc] initWithFormat:@"%@:%p %@ -> %lf", objc_opt_class(), self, dCopy, volume];
  v16 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v18 = [v16 initWithFormat:@"%@<%@>", @"HostedExternalDevice.setOutputDeviceVolume", requestID];

  if (volume)
  {
    [v18 appendFormat:@" for %@", volume];
  }

  if (v14)
  {
    [v18 appendFormat:@" because %@", v14];
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000FF65C;
  v47[3] = &unk_1004BC930;
  v20 = volume;
  v48 = v20;
  v49 = @"HostedExternalDevice.setOutputDeviceVolume";
  v21 = detailsCopy;
  v50 = v21;
  v22 = v13;
  v51 = v22;
  v23 = completionCopy;
  selfCopy = self;
  v53 = v23;
  v24 = objc_retainBlock(v47);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = sub_10003510C;
  v57 = sub_100035A3C;
  v58 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FF954;
  block[3] = &unk_1004B9C58;
  block[4] = self;
  block[5] = &v43;
  block[6] = &buf;
  dispatch_sync(serialQueue, block);
  v26 = [MRBlockGuard alloc];
  name = [v21 name];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000FF9B0;
  v40[3] = &unk_1004B6FE8;
  v28 = v24;
  v41 = v28;
  v29 = [v26 initWithTimeout:name reason:v40 handler:7.0];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000FF9C0;
  v37[3] = &unk_1004B9BE0;
  v30 = v29;
  v38 = v30;
  v31 = v28;
  v39 = v31;
  v32 = objc_retainBlock(v37);
  if (*(v44 + 24) != 1)
  {
    v35 = [[NSError alloc] initWithMRError:36];
    (v32[2])(v32, v35);
LABEL_12:

    goto LABEL_13;
  }

  v34 = *(*(&buf + 1) + 40);
  if (!v34)
  {
    v35 = [[NSError alloc] initWithMRError:123];
    (v32[2])(v32, v35);
    goto LABEL_12;
  }

  *&v33 = volume;
  [v34 setOutputDeviceVolume:dCopy outputDeviceUID:v21 details:self->_externalDeviceCallbackQueue queue:v32 completion:v33];
LABEL_13:

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v43, 8);
}

- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  completionCopy = completion;
  v12 = +[NSDate now];
  v37 = +[NSXPCConnection currentConnection];
  v13 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v37];
  v14 = [NSString alloc];
  v15 = objc_opt_class();
  v16 = MRMediaRemoteVolumeControlAdjustmentDescription();
  v17 = [v14 initWithFormat:@"%@:%p %@ -> %@", v15, self, dCopy, v16];

  v18 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v20 = [v18 initWithFormat:@"%@<%@>", @"HostedExternalDevice.adjustOutputDeviceVolume", requestID];

  if (v17)
  {
    [v20 appendFormat:@" for %@", v17];
  }

  if (v13)
  {
    [v20 appendFormat:@" because %@", v13];
  }

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000FFF7C;
  v49[3] = &unk_1004BC930;
  v22 = v17;
  v50 = v22;
  v51 = @"HostedExternalDevice.adjustOutputDeviceVolume";
  v23 = detailsCopy;
  v52 = v23;
  v24 = v12;
  v53 = v24;
  v25 = completionCopy;
  selfCopy = self;
  v55 = v25;
  v26 = objc_retainBlock(v49);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_10003510C;
  v59 = sub_100035A3C;
  v60 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100274;
  block[3] = &unk_1004B9C58;
  block[4] = self;
  block[5] = &v45;
  block[6] = &buf;
  dispatch_sync(serialQueue, block);
  v28 = [MRBlockGuard alloc];
  name = [v23 name];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1001002D0;
  v42[3] = &unk_1004B6FE8;
  v30 = v26;
  v43 = v30;
  v31 = [v28 initWithTimeout:name reason:v42 handler:7.0];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001002E0;
  v39[3] = &unk_1004B9BE0;
  v32 = v31;
  v40 = v32;
  v33 = v30;
  v41 = v33;
  v34 = objc_retainBlock(v39);
  if (*(v46 + 24) != 1)
  {
    v36 = [[NSError alloc] initWithMRError:36];
    (v34[2])(v34, v36);
LABEL_12:

    goto LABEL_13;
  }

  v35 = *(*(&buf + 1) + 40);
  if (!v35)
  {
    v36 = [[NSError alloc] initWithMRError:123];
    (v34[2])(v34, v36);
    goto LABEL_12;
  }

  [v35 adjustOutputDeviceVolume:volume outputDeviceUID:dCopy details:v23 queue:self->_externalDeviceCallbackQueue completion:v34];
LABEL_13:

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v45, 8);
}

- (void)setListeningMode:(id)mode outputDeviceUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  modeCopy = mode;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  [externalDevice setListeningMode:modeCopy outputDeviceUID:dCopy queue:self->_externalDeviceCallbackQueue completion:completionCopy];
}

- (void)modifyTopologyWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  v9 = +[NSXPCConnection currentConnection];
  v10 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v9];
  v11 = MRLogCategoryConnections();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    outputDeviceUIDs = [requestCopy outputDeviceUIDs];
    *buf = 138543874;
    v20 = v10;
    v21 = 2114;
    selfCopy = self;
    v23 = 2112;
    selfCopy2 = outputDeviceUIDs;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] Client %{public}@ is requesting to modify hosted endpoint %{public}@ - %@", buf, 0x20u);
  }

  v13 = MRLogCategoryConnections();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [requestCopy type];
    v14 = MRGroupTopologyModificationRequestTypeDescription();
    outputDeviceUIDs2 = [requestCopy outputDeviceUIDs];
    *buf = 138544130;
    v20 = v10;
    v21 = 2114;
    selfCopy = v14;
    v23 = 2114;
    selfCopy2 = self;
    v25 = 2112;
    v26 = outputDeviceUIDs2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] Client %{public}@ is requesting to %{public}@ hosted endpoint %{public}@ - %@", buf, 0x2Au);
  }

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  if (externalDevice)
  {
    [externalDevice modifyTopologyWithRequest:requestCopy withReplyQueue:externalDeviceCallbackQueue completion:completionCopy];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100100FD4;
    block[3] = &unk_1004B79A0;
    v18 = completionCopy;
    dispatch_async(externalDeviceCallbackQueue, block);
  }
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  v12 = +[NSXPCConnection currentConnection];
  v13 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v12];
  v14 = MRLogCategoryConnections();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v19 = v13;
    v20 = 2114;
    selfCopy = self;
    v22 = 2114;
    v23 = dsCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] Client %{public}@ is requesting to create hosted endpoint %{public}@ with output devices: %{public}@", buf, 0x20u);
  }

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  if (externalDevice)
  {
    [externalDevice createHostedEndpointWithOutputDeviceUIDs:dsCopy details:detailsCopy queue:externalDeviceCallbackQueue completion:completionCopy];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100101200;
    block[3] = &unk_1004B79A0;
    v17 = completionCopy;
    dispatch_async(externalDeviceCallbackQueue, block);
  }
}

- (void)sendCustomData:(id)data withName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  v8 = self->_externalDevice;
  v9 = +[NSXPCConnection currentConnection];
  v10 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v9];
  v11 = MRLogCategoryConnections();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138544130;
    v13 = v10;
    v14 = 2048;
    v15 = [dataCopy length];
    v16 = 2114;
    v17 = nameCopy;
    v18 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] Client %{public}@ is requesting to send %llu bytes of custom data with name %{public}@ using hosted endpoint %{public}@", &v12, 0x2Au);
  }

  [(MRExternalDevice *)v8 sendCustomData:dataCopy withName:nameCopy];
}

- (void)pingWithTimeout:(double)timeout callback:(id)callback
{
  callbackCopy = callback;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  v8 = +[NSXPCConnection currentConnection];
  v9 = [(MRDAVHostedExternalDevice *)self _externalDeviceClientForConnection:v8];
  v10 = MRLogCategoryConnections();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v21 = v9;
    v22 = 2048;
    timeoutCopy = timeout;
    v24 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] [Client %{public}@ is requesting to ping external device with timeout %f using hosted endpoint %{public}@", buf, 0x20u);
  }

  if (externalDevice)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001015BC;
    v18[3] = &unk_1004BC958;
    v11 = &v19;
    v19 = callbackCopy;
    externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
    v13 = callbackCopy;
    [externalDevice ping:v18 callback:externalDeviceCallbackQueue withQueue:timeout];
  }

  else
  {
    v14 = self->_externalDeviceCallbackQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001015D4;
    v16[3] = &unk_1004B79A0;
    v11 = &v17;
    v17 = callbackCopy;
    v15 = callbackCopy;
    dispatch_async(v14, v16);
  }
}

- (void)getPersonalOutputDevices:(id)devices
{
  devicesCopy = devices;
  personalOutputDevices = [(MRDAVHostedExternalDevice *)self personalOutputDevices];
  v6 = [personalOutputDevices copy];
  (*(devices + 2))(devicesCopy, v6);
}

- (void)getExternalOutputContextWithCompletion:(id)completion
{
  completionCopy = completion;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  externalOutputContext = [externalDevice externalOutputContext];
  externalOutputContextRepresentation = [externalOutputContext externalOutputContextRepresentation];
  (*(completion + 2))(completionCopy, externalOutputContextRepresentation);
}

- (void)getDeviceInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  deviceInfo = [externalDevice deviceInfo];
  (*(completion + 2))(completionCopy, deviceInfo);
}

- (void)requestGroupSessionWithDetails:(id)details completion:(id)completion
{
  completionCopy = completion;
  detailsCopy = details;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  [externalDevice requestGroupSessionWithDetails:detailsCopy queue:self->_externalDeviceCallbackQueue completion:completionCopy];
}

- (void)requestMicrophoneConnectionWithDetails:(id)details completion:(id)completion
{
  completionCopy = completion;
  detailsCopy = details;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  [externalDevice requestMicrophoneConnectionWithDetails:detailsCopy queue:self->_externalDeviceCallbackQueue completion:completionCopy];
}

- (void)expanseManagerTelevisionDidJoinSession:(id)session
{
  v4 = MRLogCategoryConnections();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] %{public}@ check for local route because TV join.", &v5, 0xCu);
  }

  [(MRDAVHostedExternalDevice *)self _handleMaybeCanMigrateToLocalEndpointDidChange:0];
}

- (void)expanseManagerTelevisionDidLeaveSession:(id)session
{
  v4 = MRLogCategoryConnections();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] %{public}@ check for local route because TV leave.", &v5, 0xCu);
  }

  [(MRDAVHostedExternalDevice *)self _handleMaybeCanMigrateToLocalEndpointDidChange:0];
}

- (MROrigin)origin
{
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  customOrigin = [externalDevice customOrigin];

  return customOrigin;
}

- (void)disconnectOrigin:(id)origin
{
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  v3 = [[NSError alloc] initWithMRError:124];
  [externalDevice disconnect:v3];
}

- (void)_handleExternalDeviceConnectionDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  if ([object connectionState] != 2)
  {
    serialQueue = self->_serialQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100101F90;
    v12[3] = &unk_1004B6D08;
    v12[4] = self;
    dispatch_sync(serialQueue, v12);
    goto LABEL_9;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10003510C;
  v19 = sub_100035A3C;
  v20 = 0;
  v6 = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101F34;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(v6, block);
  serialQueue = +[MRUserSettings currentSettings];
  if (![serialQueue remoteDeviceIdleDisconnection]|| v16[5])
  {
    goto LABEL_6;
  }

  supportsIdleDisconnection = [object supportsIdleDisconnection];

  if (supportsIdleDisconnection)
  {
    v9 = [[MRDConnectionLifetimeController alloc] initWithDataSource:self delegate:self];
    v10 = v16[5];
    v16[5] = v9;

    serialQueue = [(MRDAVHostedExternalDevice *)self serialQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100101F80;
    v13[3] = &unk_1004B6958;
    v13[4] = self;
    v13[5] = &v15;
    dispatch_sync(serialQueue, v13);
LABEL_6:
  }

  [(MRDAVHostedExternalDevice *)self _handleMaybeCanMigrateToLocalEndpointDidChange:changeCopy];
  _Block_object_dispose(&v15, 8);

LABEL_9:
}

- (void)_handleMaybeCanMigrateToLocalEndpointDidChange:(id)change
{
  changeCopy = change;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_10003510C;
  v55 = sub_100035A3C;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_10003510C;
  v49 = sub_100035A3C;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_10003510C;
  v43 = sub_100035A3C;
  v44 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102584;
  block[3] = &unk_1004BC9A8;
  block[4] = self;
  block[5] = &v45;
  block[6] = &v51;
  block[7] = &v39;
  dispatch_sync(serialQueue, block);
  v6 = +[NSDate date];
  playerPath = [changeCopy playerPath];
  origin = [playerPath origin];

  if (!origin || ([origin isLocal] & 1) != 0 || (objc_msgSend(origin, "isEqual:", v46[5]) & 1) != 0 || !v40[5])
  {
    v9 = MRMediaRemoteCopyDeviceUID();
    v10 = v9 == 0;

    if (v10)
    {
      if ([v40[5] connectionState] == 2)
      {
        v13 = +[MRUserSettings currentSettings];
        supportExpanseMigration = [v13 supportExpanseMigration];

        if (supportExpanseMigration)
        {
          v15 = +[MRExpanseManager sharedManager];
          activeTelevisionRouteID = [v15 activeTelevisionRouteID];

          if (activeTelevisionRouteID)
          {
            v16 = MRLogCategoryConnections();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = v52[5];
              *buf = 138543874;
              selfCopy = self;
              v60 = 2114;
              v61 = v17;
              v62 = 2114;
              v63 = activeTelevisionRouteID;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] %{public}@ Checking for match of endpoint: %{public}@ and active TV: %{public}@", buf, 0x20u);
            }

            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            outputDevices = [v52[5] outputDevices];
            v19 = [outputDevices countByEnumeratingWithState:&v34 objects:v57 count:16];
            if (v19)
            {
              v20 = *v35;
              while (2)
              {
                v21 = 0;
                do
                {
                  if (*v35 != v20)
                  {
                    objc_enumerationMutation(outputDevices);
                  }

                  v22 = *(*(&v34 + 1) + 8 * v21);
                  v23 = +[MRExpanseManager sharedManager];
                  LODWORD(v22) = [v23 deviceIsActiveTelevision:v22];

                  if (v22)
                  {
                    [(MRDAVHostedExternalDevice *)self _processCanMigrateToLocalEndpointEvent:@"TV joined Expanse session." timestamp:v6 error:0];

                    goto LABEL_24;
                  }

                  v21 = v21 + 1;
                }

                while (v19 != v21);
                v19 = [outputDevices countByEnumeratingWithState:&v34 objects:v57 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        objc_initWeak(buf, self);
        v24 = v52[5];
        v25 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
        v26 = &_dispatch_main_q;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100102604;
        v30[3] = &unk_1004BC9D0;
        objc_copyWeak(&v33, buf);
        v31 = changeCopy;
        v32 = v6;
        [v24 canMigrateToEndpoint:v25 queue:&_dispatch_main_q completion:v30];

        objc_destroyWeak(&v33);
        objc_destroyWeak(buf);
      }

      else
      {
        name = [changeCopy name];
        v28 = [[NSError alloc] initWithMRError:3 format:@"Not already connected to endpoint"];
        [(MRDAVHostedExternalDevice *)self _processCanMigrateToLocalEndpointEvent:name timestamp:v6 error:v28];
      }
    }

    else
    {
      name2 = [changeCopy name];
      v12 = [[NSError alloc] initWithMRError:6 format:@"Local device is groupable"];
      [(MRDAVHostedExternalDevice *)self _processCanMigrateToLocalEndpointEvent:name2 timestamp:v6 error:v12];
    }
  }

LABEL_24:

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
}

- (void)_processCanMigrateToLocalEndpointEvent:(id)event timestamp:(id)timestamp error:(id)error
{
  eventCopy = event;
  timestampCopy = timestamp;
  errorCopy = error;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001027D8;
  block[3] = &unk_1004BC9F8;
  v12 = timestampCopy;
  v16 = v12;
  selfCopy = self;
  v13 = errorCopy;
  v18 = v13;
  v14 = eventCopy;
  v19 = v14;
  v20 = &v21;
  dispatch_sync(serialQueue, block);
  if (*(v22 + 24) == 1)
  {
    [(MRDAVHostedExternalDevice *)self _reloadEndpoint];
  }

  _Block_object_dispose(&v21, 8);
}

- (void)outputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  userInfo = [capabilitiesCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:MROutputContextDataSourceVolumeCapabilitiesUserInfoKey];
  intValue = [v6 intValue];

  userInfo2 = [capabilitiesCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:MROutputContextDataSourceOutputDeviceUserInfoKey];

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102B1C;
  block[3] = &unk_1004B87F8;
  v14 = intValue;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(externalDeviceCallbackQueue, block);
}

- (void)outputContextDataSourceOutputDeviceDidChangeVolume:(id)volume
{
  volumeCopy = volume;
  userInfo = [volumeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:MROutputContextDataSourceVolumeUserInfoKey];
  [v6 floatValue];
  v8 = v7;

  userInfo2 = [volumeCopy userInfo];

  v10 = [userInfo2 objectForKeyedSubscript:MROutputContextDataSourceOutputDeviceUserInfoKey];

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102C90;
  block[3] = &unk_1004B87F8;
  v15 = v8;
  block[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(externalDeviceCallbackQueue, block);
}

- (void)outputContextDataSourceOutputDeviceDidChangeVolumeMuted:(id)muted
{
  mutedCopy = muted;
  userInfo = [mutedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:MROutputContextDataSourceVolumeMutedUserInfoKey];
  bOOLValue = [v6 BOOLValue];

  userInfo2 = [mutedCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:MROutputContextDataSourceOutputDeviceUserInfoKey];

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102E0C;
  block[3] = &unk_1004B8870;
  v14 = bOOLValue;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(externalDeviceCallbackQueue, block);
}

- (void)outputContextDataSourceDidAddOutputDevice:(id)device
{
  userInfo = [device userInfo];
  v5 = [userInfo objectForKeyedSubscript:MROutputContextDataSourceOutputDeviceUserInfoKey];

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100102F30;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(externalDeviceCallbackQueue, v8);
}

- (void)outputContextDataSourceDidChangeOutputDevice:(id)device
{
  userInfo = [device userInfo];
  v5 = [userInfo objectForKeyedSubscript:MROutputContextDataSourceOutputDeviceUserInfoKey];

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010304C;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(externalDeviceCallbackQueue, v8);
}

- (void)outputContextDataSourceDidRemoveOutputDevice:(id)device
{
  userInfo = [device userInfo];
  v5 = [userInfo objectForKeyedSubscript:MROutputContextDataSourceOutputDeviceUserInfoKey];

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100103168;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(externalDeviceCallbackQueue, v8);
}

- (void)_handleExternalDeviceConnectionStateDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:kMRExternalDeviceConnectionStateUserInfoKey];
  intValue = [v6 intValue];

  userInfo2 = [changeCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001032D4;
  block[3] = &unk_1004B87F8;
  v14 = intValue;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(externalDeviceCallbackQueue, block);
}

- (void)_handleExternalDeviceDeviceInfoDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:MRExternalDeviceDeviceInfoUserInfoKey];

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001033AC;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(externalDeviceCallbackQueue, v8);
}

- (void)hostedExternalDeviceDeviceInfoDidChange:(id)change
{
  changeCopy = change;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Hosted endpoint %{public}@ device deviceInfo did change to %{public}@", buf, 0x16u);
  }

  v6 = [(MRDAVHostedExternalDevice *)self _mutableExternalDeviceClientsWithRegisteredNotification:32];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) hostedExternalDeviceDeviceInfoDidChange:changeCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)hostedExternalDeviceDidReceiveCustomData:(id)data withName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  v8 = MRLogCategoryConnections();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    selfCopy = self;
    v21 = 2048;
    v22 = [dataCopy length];
    v23 = 2114;
    v24 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Hosted endpoint %{public}@ did receive %llu bytes of custom data with name %{public}@", buf, 0x20u);
  }

  v9 = [(MRDAVHostedExternalDevice *)self _mutableExternalDeviceClientsWithRegisteredCallbacks:1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) hostedExternalDeviceDidReceiveCustomData:dataCopy withName:nameCopy];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)hostedExternalDeviceEndpointDidChange:(id)change
{
  changeCopy = change;
  reloadQueue = self->_reloadQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001038E4;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_sync(reloadQueue, v7);
}

- (void)hostedExternalDeviceVolumeDidChange:(float)change forOutputDevice:(id)device
{
  deviceCopy = device;
  v7 = MRLogCategoryConnections();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    selfCopy = self;
    v21 = 2048;
    changeCopy = change;
    v23 = 2114;
    v24 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Hosted endpoint %{public}@ volume did change to %f for outputDevice %{public}@", buf, 0x20u);
  }

  v8 = [(MRDAVHostedExternalDevice *)self _mutableExternalDeviceClientsWithRegisteredNotification:2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v8);
        }

        *&v10 = change;
        [*(*(&v14 + 1) + 8 * v13) hostedExternalDeviceVolumeDidChange:deviceCopy forOutputDevice:v10];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)hostedExternalDeviceDidAddOutputDevice:(id)device
{
  deviceCopy = device;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [deviceCopy uid];
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Hosted endpoint %{public}@ did add output device %{public}@", buf, 0x16u);
  }

  v7 = [(MRDAVHostedExternalDevice *)self _mutableExternalDeviceClientsWithRegisteredNotification:4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) hostedExternalDeviceDidAddOutputDevice:deviceCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)hostedExternalDeviceDidChangeOutputDevice:(id)device
{
  deviceCopy = device;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [deviceCopy uid];
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Hosted endpoint %{public}@ did change output device %{public}@", buf, 0x16u);
  }

  v7 = [(MRDAVHostedExternalDevice *)self _mutableExternalDeviceClientsWithRegisteredNotification:4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) hostedExternalDeviceDidChangeOutputDevice:deviceCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)hostedExternalDeviceDidRemoveOutputDevice:(id)device
{
  deviceCopy = device;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [deviceCopy uid];
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Hosted endpoint %{public}@ did remove output device %{public}@", buf, 0x16u);
  }

  v7 = [(MRDAVHostedExternalDevice *)self _mutableExternalDeviceClientsWithRegisteredNotification:4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) hostedExternalDeviceDidRemoveOutputDevice:deviceCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_onReloadQueue_hostedExternalDeviceEndpointDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_reloadQueue);
  if ([changeCopy connectionType] != 1)
  {
    personalOutputDevices = [(MRDAVHostedExternalDevice *)self personalOutputDevices];
    [changeCopy setDistantPersonalOutputDevices:personalOutputDevices];

    _allExternalDeviceClients = [(MRDAVHostedExternalDevice *)self _allExternalDeviceClients];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [_allExternalDeviceClients countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(_allExternalDeviceClients);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (([v11 notifications] & 8) != 0)
          {
            [v11 hostedExternalDeviceEndpointDidChange:changeCopy];
          }
        }

        v8 = [_allExternalDeviceClients countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_externalDeviceClientDidInvalidate:(id)invalidate withError:(id)error
{
  invalidateCopy = invalidate;
  errorCopy = error;
  v8 = MRLogCategoryConnections();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v27 = 2114;
    v28 = invalidateCopy;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] Hosted endpoint %{public}@ client did invalidate: %{public}@ with error %@", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104870;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v10 = invalidateCopy;
  v23 = v10;
  dispatch_sync(serialQueue, block);
  [(MRDAVHostedExternalDevice *)self _reloadHostedExternalDeviceCallbacks];
  [(MRDAVHostedExternalDevice *)self _reloadHostedExternalDeviceNotifications];
  [(MRDAVHostedExternalDevice *)self _reloadHostedExternalDeviceSubscribedPlayerPaths];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  discoveryTokens = [v10 discoveryTokens];
  v12 = [discoveryTokens countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(discoveryTokens);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
        [externalDevice unregisterDiscoveryToken:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [discoveryTokens countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v13);
  }

  [v10 invalidateWithError:errorCopy];
}

- (id)_externalDeviceClientForConnection:(id)connection
{
  connectionCopy = connection;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003510C;
  v16 = sub_100035A3C;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010498C;
  block[3] = &unk_1004B78D8;
  block[4] = self;
  v10 = connectionCopy;
  v11 = &v12;
  v6 = connectionCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_mutableExternalDeviceClientsWithRegisteredCallbacks:(unint64_t)callbacks
{
  _connectedExternalDeviceClients = [(MRDAVHostedExternalDevice *)self _connectedExternalDeviceClients];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100104B6C;
  v7[3] = &unk_1004BCA38;
  v7[4] = callbacks;
  v5 = [_connectedExternalDeviceClients msv_filter:v7];

  return v5;
}

- (id)_mutableExternalDeviceClientsWithRegisteredNotification:(unint64_t)notification
{
  _connectedExternalDeviceClients = [(MRDAVHostedExternalDevice *)self _connectedExternalDeviceClients];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100104C44;
  v7[3] = &unk_1004BCA38;
  v7[4] = notification;
  v5 = [_connectedExternalDeviceClients msv_filter:v7];

  return v5;
}

- (id)_connectingExternalDeviceClients
{
  _allExternalDeviceClients = [(MRDAVHostedExternalDevice *)self _allExternalDeviceClients];
  v3 = [_allExternalDeviceClients msv_filter:&stru_1004BCA98];

  return v3;
}

- (void)_initializeExternalDevice:(id)device
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  [deviceCopy setConnectionRecoveryBehavior:1];
  externalOutputContext = [deviceCopy externalOutputContext];
  [(MRDAVHostedExternalDevice *)self registerForOutputContextNotifications:externalOutputContext];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = kMRExternalDeviceConnectionStateDidChangeNotification;
  [v6 addObserver:self selector:"_handleExternalDeviceConnectionStateDidChange:" name:kMRExternalDeviceConnectionStateDidChangeNotification object:deviceCopy];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_handleExternalDeviceDeviceInfoDidChange:" name:MRExternalDeviceDeviceInfoDidChangeNotification object:deviceCopy];

  v9 = +[NSDate date];
  ErrorWithDescription = MRMediaRemoteCreateErrorWithDescription();
  [(MRDAVHostedExternalDevice *)self _processCanMigrateToLocalEndpointEvent:@"init" timestamp:v9 error:ErrorWithDescription];

  silentDiscoverySession = [(MRDAVHostedExternalDevice *)self silentDiscoverySession];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100104FBC;
  v20 = &unk_1004B9B48;
  objc_copyWeak(&v21, &location);
  v12 = [silentDiscoverySession addOutputDevicesChangedCallback:&v17];
  [(MRDAVHostedExternalDevice *)self setSilentDiscoverySessionCallbackToken:v12, v17, v18, v19, v20];

  v13 = +[MRExpanseManager sharedManager];
  [v13 addObserver:self];

  [deviceCopy setWantsVolumeNotifications:1];
  [deviceCopy setWantsNowPlayingNotifications:1];
  [deviceCopy setWantsOutputDeviceNotifications:1];
  [deviceCopy setWantsEndpointChangeNotifications:1];
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"_handleMaybeCanMigrateToLocalEndpointDidChange:" name:kMRMediaRemoteOriginSupportedCommandsDidChangeNotification object:0];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"_handleExternalDeviceConnectionDidChange:" name:v7 object:deviceCopy];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_handleMaybeCanMigrateToLocalEndpointDidChange:" name:kMRDeviceInfoDidChangeNotification object:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)registerForOutputContextNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"outputContextDataSourceOutputDeviceDidChangeVolume:" name:MROutputContextDataSourceOutputDeviceDidChangeVolumeNotification object:notificationsCopy];
  [v5 addObserver:self selector:"outputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilities:" name:MROutputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilitiesNotification object:notificationsCopy];
  [v5 addObserver:self selector:"outputContextDataSourceOutputDeviceDidChangeVolumeMuted:" name:MROutputContextDataSourceOutputDeviceDidChangeVolumeMutedNotification object:notificationsCopy];
  [v5 addObserver:self selector:"outputContextDataSourceDidAddOutputDevice:" name:MROutputContextDataSourceDidAddOutputDeviceNotification object:notificationsCopy];
  [v5 addObserver:self selector:"outputContextDataSourceDidChangeOutputDevice:" name:MROutputContextDataSourceDidChangeOutputDeviceNotification object:notificationsCopy];
  [v5 addObserver:self selector:"outputContextDataSourceDidRemoveOutputDevice:" name:MROutputContextDataSourceDidRemoveOutputDeviceNotification object:notificationsCopy];
}

- (void)_reloadHostedExternalDeviceCallbacks
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003510C;
  v13 = sub_100035A3C;
  v14 = 0;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010548C;
  block[3] = &unk_1004B9C58;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(serialQueue, block);
  v4 = v10[5];
  if (v16[3])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001055A8;
    v5[3] = &unk_1004BCAC0;
    objc_copyWeak(&v6, &location);
    [v4 setCustomDataCallback:v5 withQueue:self->_externalDeviceCallbackQueue];
    objc_destroyWeak(&v6);
  }

  else
  {
    [v10[5] setCustomDataCallback:0 withQueue:0];
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

- (void)_reloadHostedExternalDeviceSubscribedPlayerPaths
{
  v3 = objc_alloc_init(NSMutableSet);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10003510C;
  v15 = sub_100035A3C;
  v16 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100105740;
  block[3] = &unk_1004B7798;
  v10 = &v11;
  block[4] = self;
  v5 = v3;
  v9 = v5;
  dispatch_sync(serialQueue, block);
  allObjects = [v5 allObjects];
  subscribedPlayerPaths = self->_subscribedPlayerPaths;
  self->_subscribedPlayerPaths = allObjects;

  [v12[5] setSubscribedPlayerPaths:self->_subscribedPlayerPaths];
  _Block_object_dispose(&v11, 8);
}

- (void)_maybePostVolumeDidChange:(float)change outputDevice:(id)device
{
  deviceCopy = device;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10003510C;
  v14 = sub_100035A3C;
  v15 = 0;
  serialQueue = self->_serialQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100105ACC;
  v9[3] = &unk_1004B6D30;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(serialQueue, v9);
  if ([(MRDAVHostedExternalDevice *)self _endpointShouldPostVolumeNotifications:v11[5] outputDevice:deviceCopy])
  {
    *&v8 = change;
    [(MRDAVHostedExternalDevice *)self hostedExternalDeviceVolumeDidChange:deviceCopy forOutputDevice:v8];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)_maybePostEndpointDidAddOutputDevice:(id)device
{
  deviceCopy = device;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003510C;
  v11 = sub_100035A3C;
  v12 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100105D28;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  if ([(MRDAVHostedExternalDevice *)self _endpointShouldNotifyClientsOfTopologyChanges:v8[5]])
  {
    [(MRDAVHostedExternalDevice *)self hostedExternalDeviceDidAddOutputDevice:deviceCopy];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)_maybePostEndpointDidChangeOutputDevice:(id)device
{
  deviceCopy = device;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003510C;
  v11 = sub_100035A3C;
  v12 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100105E4C;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  if ([(MRDAVHostedExternalDevice *)self _endpointShouldNotifyClientsOfTopologyChanges:v8[5]])
  {
    [(MRDAVHostedExternalDevice *)self hostedExternalDeviceDidChangeOutputDevice:deviceCopy];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)_maybePostEndpointDidRemoveOutputDevice:(id)device
{
  deviceCopy = device;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003510C;
  v11 = sub_100035A3C;
  v12 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100105F70;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  if ([(MRDAVHostedExternalDevice *)self _endpointShouldNotifyClientsOfTopologyChanges:v8[5]])
  {
    [(MRDAVHostedExternalDevice *)self hostedExternalDeviceDidRemoveOutputDevice:deviceCopy];
  }

  _Block_object_dispose(&v7, 8);
}

- (BOOL)_shouldReevaluateVolumeControlCapabilitiesForEndpoint:(id)endpoint previousEndpoint:(id)previousEndpoint externalDevice:(id)device
{
  endpointCopy = endpoint;
  previousEndpointCopy = previousEndpoint;
  deviceCopy = device;
  if ([endpointCopy connectionType] == 1)
  {
    goto LABEL_14;
  }

  designatedGroupLeader = [endpointCopy designatedGroupLeader];
  v12 = [deviceCopy uid];
  v13 = [designatedGroupLeader containsUID:v12];

  if (!v13)
  {
    goto LABEL_14;
  }

  designatedGroupLeader2 = [previousEndpointCopy designatedGroupLeader];
  groupContainsGroupLeader = [designatedGroupLeader2 groupContainsGroupLeader];
  designatedGroupLeader3 = [endpointCopy designatedGroupLeader];
  groupContainsGroupLeader2 = [designatedGroupLeader3 groupContainsGroupLeader];

  if (groupContainsGroupLeader != groupContainsGroupLeader2)
  {
    v18 = MRLogCategoryConnections();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      designatedGroupLeader4 = [previousEndpointCopy designatedGroupLeader];
      if ([(__CFString *)designatedGroupLeader4 groupContainsGroupLeader])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      designatedGroupLeader5 = [endpointCopy designatedGroupLeader];
      v37 = 138544130;
      if ([(__CFString *)designatedGroupLeader5 groupContainsGroupLeader])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      selfCopy3 = self;
      v39 = 2114;
      v40 = @"groupContainsGroupLeader";
      v41 = 2114;
      v42 = v20;
      v43 = 2114;
      v44 = v22;
      goto LABEL_19;
    }

LABEL_20:

    v35 = 1;
    goto LABEL_21;
  }

  designatedGroupLeader6 = [previousEndpointCopy designatedGroupLeader];
  v24 = [designatedGroupLeader6 uid];
  designatedGroupLeader7 = [endpointCopy designatedGroupLeader];
  v26 = [designatedGroupLeader7 uid];
  v27 = [v24 isEqualToString:v26];

  if ((v27 & 1) == 0)
  {
    v18 = MRLogCategoryConnections();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    designatedGroupLeader4 = [previousEndpointCopy designatedGroupLeader];
    designatedGroupLeader5 = [endpointCopy designatedGroupLeader];
    v37 = 138544130;
    selfCopy3 = self;
    v39 = 2114;
    v40 = @"groupLeader";
    v41 = 2114;
    v42 = designatedGroupLeader4;
    v43 = 2114;
    v44 = designatedGroupLeader5;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[MRDAVHostedExternalDevice] Hosted endpoint <%{public}@> reevaluating volume control because %{public}@ changed from <%{public}@> to <%{public}@>", &v37, 0x2Au);

    goto LABEL_20;
  }

  v28 = [NSOrderedSet alloc];
  outputDeviceUIDs = [(MRAVDistantEndpoint *)self->_endpoint outputDeviceUIDs];
  v30 = [v28 initWithArray:outputDeviceUIDs];
  v31 = [NSOrderedSet alloc];
  outputDeviceUIDs2 = [endpointCopy outputDeviceUIDs];
  v33 = [v31 initWithArray:outputDeviceUIDs2];
  v34 = [v30 isEqualToOrderedSet:v33];

  if ((v34 & 1) == 0)
  {
    v18 = MRLogCategoryConnections();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    designatedGroupLeader4 = [previousEndpointCopy outputDeviceUIDs];
    designatedGroupLeader5 = [endpointCopy outputDeviceUIDs];
    v37 = 138544130;
    selfCopy3 = self;
    v39 = 2114;
    v40 = @"topology";
    v41 = 2114;
    v42 = designatedGroupLeader4;
    v43 = 2114;
    v44 = designatedGroupLeader5;
    goto LABEL_19;
  }

LABEL_14:
  v35 = 0;
LABEL_21:

  return v35;
}

- (void)_reevaluateVolumeControlCapabilitiesForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  externalDevice = [(MRDAVHostedExternalDevice *)self externalDevice];
  externalOutputContext = [externalDevice externalOutputContext];

  [externalOutputContext volume];
  v8 = v7;
  LODWORD(externalDevice) = [(MRDAVHostedExternalDevice *)self _endpointSupportsVolumeControl:endpointCopy];

  if (externalDevice)
  {
    volumeControlCapabilities = [externalOutputContext volumeControlCapabilities];
  }

  else
  {
    volumeControlCapabilities = 0;
  }

  externalDeviceCallbackQueue = self->_externalDeviceCallbackQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100106458;
  v11[3] = &unk_1004B7650;
  v11[4] = self;
  v12 = volumeControlCapabilities;
  v13 = v8;
  dispatch_async(externalDeviceCallbackQueue, v11);
}

- (BOOL)_endpointShouldPostVolumeNotifications:(id)notifications outputDevice:(id)device
{
  notificationsCopy = notifications;
  if ([notificationsCopy connectionType] == 1)
  {
    goto LABEL_2;
  }

  if ([notificationsCopy connectionType] == 6 || objc_msgSend(notificationsCopy, "connectionType") == 5)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  designatedGroupLeader = [notificationsCopy designatedGroupLeader];
  if ([designatedGroupLeader groupContainsGroupLeader])
  {
    v9 = [(MRDAVHostedExternalDevice *)self _onSerialQueue_isEndpointsDesignatedGroupLeader:notificationsCopy];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  if ([(MRDAVHostedExternalDevice *)self _endpointIsSolo:notificationsCopy]&& [(MRDAVHostedExternalDevice *)self _onSerialQueue_isEndpointsDesignatedGroupLeader:notificationsCopy])
  {
    goto LABEL_5;
  }

LABEL_2:
  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)_endpointSupportsVolumeControl:(id)control
{
  controlCopy = control;
  if ([controlCopy connectionType] == 3)
  {
    v5 = 1;
  }

  else
  {
    designatedGroupLeader = [controlCopy designatedGroupLeader];
    if ([designatedGroupLeader groupContainsGroupLeader])
    {
      v5 = 1;
    }

    else if ([(MRDAVHostedExternalDevice *)self _endpointIsSolo:controlCopy])
    {
      v5 = [(MRDAVHostedExternalDevice *)self _onSerialQueue_isEndpointsDesignatedGroupLeader:controlCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_onSerialQueue_isEndpointsDesignatedGroupLeader:(id)leader
{
  designatedGroupLeader = [leader designatedGroupLeader];
  v5 = [(MRExternalDevice *)self->_externalDevice uid];
  v6 = [designatedGroupLeader containsUID:v5];

  return v6;
}

@end