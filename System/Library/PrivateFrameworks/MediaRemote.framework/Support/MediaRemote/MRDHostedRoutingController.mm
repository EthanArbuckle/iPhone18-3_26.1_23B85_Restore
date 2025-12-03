@interface MRDHostedRoutingController
- (BOOL)isOutputContextInUse:(id)use;
- (MRAVEndpoint)endpointContainingLocal;
- (MRAVEndpoint)nativeEndpoint;
- (MRAVOutputDevice)nativeOutputDevice;
- (MRDHostedRoutingController)initWithDiscoverySession:(id)session;
- (NSArray)availableDistantEndpoints;
- (NSArray)availableDistantOutputDevices;
- (NSArray)availableEndpoints;
- (NSArray)availableOutputDevices;
- (NSArray)resolvedAvailableEndpoints;
- (NSArray)virtualOutputDevices;
- (NSString)debugDescription;
- (id)_onQueue_determineGroupLeaderForOutputDevices:(id)devices availableOutputDevices:(id)outputDevices options:(unint64_t)options;
- (id)_onQueue_makeExternalDeviceForEndpoint:(id)endpoint;
- (id)_onQueue_makeExternalDeviceTransportForEndpoint:(id)endpoint designatedGroupLeader:(id)leader;
- (id)_onQueue_makeHostedExternalDeviceForEndpoint:(id)endpoint didCreate:(BOOL *)create;
- (id)_onQueue_makeHostedExternalDeviceForEndpoint:(id)endpoint didCreate:(BOOL *)create factory:(id)factory;
- (id)_onQueue_makeLocalHostedExternalDeviceForEndpoint:(id)endpoint didCreate:(BOOL *)create;
- (id)computeHostsByGroupIDForOutputDevices:(id)devices unclusteredDevices:(id)unclusteredDevices;
- (id)createDiscoverySession;
- (id)determineGroupLeaderForOutputDevices:(id)devices options:(unint64_t)options;
- (id)externalDeviceForEndpoint:(id)endpoint;
- (id)filterOutputDevices:(id)devices remoteControllableOnly:(BOOL)only;
- (id)makeEndpointWithOutputDeviceUIDs:(id)ds options:(unint64_t)options;
- (id)makeEndpointWithOutputDevices:(id)devices options:(unint64_t)options;
- (id)makeTransientExternalDeviceToOutputDevice:(id)device;
- (id)resolveOutputDevices:(id)devices;
- (void)_handleEndpointOutputDevicesDidChangeNotification:(id)notification;
- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)notification;
- (void)_handleOutputContextManagerDidReset:(id)reset;
- (void)_onQueue_reloadEndpoints;
- (void)_onQueue_reloadOutputDevices;
- (void)_onQueue_reloadWithOutputDevices:(id)devices;
- (void)_processDiscoveryObserverChanges;
- (void)addObserver:(id)observer;
- (void)addVirtualOutputDevice:(id)device forClient:(id)client;
- (void)dealloc;
- (void)hostedExternalDeviceManagerDidUpdateExternalDeviceMapping:(id)mapping;
- (void)removeObserver:(id)observer;
- (void)removeVirtualOutputDevicesForClient:(id)client;
- (void)scheduleReload;
@end

@implementation MRDHostedRoutingController

- (NSArray)availableDistantEndpoints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003512C;
  v10 = sub_100035A4C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011C74;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_processDiscoveryObserverChanges
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011500;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (NSArray)availableDistantOutputDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003512C;
  v10 = sub_100035A4C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000124C4;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_onQueue_reloadOutputDevices
{
  discoverySession = [(MRDHostedRoutingController *)self discoverySession];
  deviceInfo = [discoverySession deviceInfo];
  deviceInfo = self->_deviceInfo;
  self->_deviceInfo = deviceInfo;

  discoverySession2 = [(MRDHostedRoutingController *)self discoverySession];
  availableOutputDevices = [discoverySession2 availableOutputDevices];
  [(MRDHostedRoutingController *)self _onQueue_reloadWithOutputDevices:availableOutputDevices];
}

- (NSArray)availableEndpoints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003512C;
  v10 = sub_100035A4C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100033CE8;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)resolvedAvailableEndpoints
{
  availableDistantEndpoints = [(MRDHostedRoutingController *)self availableDistantEndpoints];
  v3 = [availableDistantEndpoints msv_map:&stru_1004BD598];

  return v3;
}

- (MRDHostedRoutingController)initWithDiscoverySession:(id)session
{
  sessionCopy = session;
  v36.receiver = self;
  v36.super_class = MRDHostedRoutingController;
  v5 = [(MRDHostedRoutingController *)&v36 init];
  if (v5)
  {
    v6 = objc_opt_class();
    Name = class_getName(v6);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(Name, v8);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mediaremoted.MRDHostedRoutingController/calloutQueue", v11);
    observerCalloutQueue = v5->_observerCalloutQueue;
    v5->_observerCalloutQueue = v12;

    v14 = +[NSHashTable weakObjectsHashTable];
    weakObservers = v5->_weakObservers;
    v5->_weakObservers = v14;

    v16 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
    localEndpoint = v5->_localEndpoint;
    v5->_localEndpoint = v16;

    v18 = objc_alloc_init(MRDHostedExternalDeviceManager);
    externalDeviceManager = v5->_externalDeviceManager;
    v5->_externalDeviceManager = v18;

    [(MRDHostedExternalDeviceManager *)v5->_externalDeviceManager setDelegate:v5];
    v20 = +[MRDAVOutputContextManager sharedManager];
    [v20 addDataSource:v5];

    v21 = +[NSMutableDictionary dictionary];
    virtualOutputDeviceDictionary = v5->_virtualOutputDeviceDictionary;
    v5->_virtualOutputDeviceDictionary = v21;

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v5 selector:"_handleExternalDeviceConnectionStateDidChangeNotification:" name:kMRExternalDeviceConnectionStateDidChangeNotification object:0];
    [v23 addObserver:v5 selector:"_handleObserverDiscoveryModeDidChangeNotification:" name:@"MRDAVHostedRoutingObserverDiscoveryModeDidChangeNotification" object:0];
    [v23 addObserver:v5 selector:"_handleEndpointOutputDevicesDidChangeNotification:" name:kMRAVEndpointOutputDevicesDidChangeNotification object:0];
    [v23 addObserver:v5 selector:"_handleOutputContextManagerDidReset:" name:@"MRDAVOutputContextManagerDidReset" object:0];
    if (sessionCopy)
    {
      v24 = sessionCopy;
    }

    else
    {
      v24 = objc_alloc_init(MRDRemoteControlDiscoverySession);
    }

    discoverySession = v5->_discoverySession;
    v5->_discoverySession = v24;

    objc_initWeak(&location, v5);
    discoverySession = [(MRDHostedRoutingController *)v5 discoverySession];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_10011885C;
    v33 = &unk_1004B9B48;
    objc_copyWeak(&v34, &location);
    v27 = [discoverySession addOutputDevicesChangedCallback:&v30];
    discoverySessionOutputDevicesToken = v5->_discoverySessionOutputDevicesToken;
    v5->_discoverySessionOutputDevicesToken = v27;

    [(MRDHostedRoutingController *)v5 scheduleReload:v30];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  discoverySession = [(MRDHostedRoutingController *)self discoverySession];
  [discoverySession removeOutputDevicesChangedCallback:self->_discoverySessionOutputDevicesToken];

  v4.receiver = self;
  v4.super_class = MRDHostedRoutingController;
  [(MRDHostedRoutingController *)&v4 dealloc];
}

- (NSString)debugDescription
{
  v3 = [NSString alloc];
  nativeEndpoint = [(MRDHostedRoutingController *)self nativeEndpoint];
  nativeOutputDevice = [(MRDHostedRoutingController *)self nativeOutputDevice];
  endpointContainingLocal = [(MRDHostedRoutingController *)self endpointContainingLocal];
  v7 = [(MRDRemoteControlDiscoverySession *)self->_discoverySession debugDescription];
  v8 = [v3 initWithFormat:@"<HostedRoutingController {\nNativeEndpoint=%@\nNativeOutputDevice=%@\nEndpointContainingLocal=%@\nDiscoverySession=%@\n}>", nativeEndpoint, nativeOutputDevice, endpointContainingLocal, v7];

  return v8;
}

- (id)createDiscoverySession
{
  v2 = [NSString stringWithFormat:@"%s is abstract", "[MRDHostedRoutingController createDiscoverySession]"];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (void)_onQueue_reloadEndpoints
{
  v2 = [NSString stringWithFormat:@"%s is abstract", "[MRDHostedRoutingController _onQueue_reloadEndpoints]"];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (id)_onQueue_makeExternalDeviceTransportForEndpoint:(id)endpoint designatedGroupLeader:(id)leader
{
  endpointCopy = endpoint;
  leaderCopy = leader;
  v7 = [NSString stringWithFormat:@"%s is abstract", "[MRDHostedRoutingController _onQueue_makeExternalDeviceTransportForEndpoint:designatedGroupLeader:]"];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)makeEndpointWithOutputDevices:(id)devices options:(unint64_t)options
{
  devicesCopy = devices;
  v5 = [NSString stringWithFormat:@"%s is abstract", "[MRDHostedRoutingController makeEndpointWithOutputDevices:options:]"];
  v6 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)makeEndpointWithOutputDeviceUIDs:(id)ds options:(unint64_t)options
{
  dsCopy = ds;
  availableOutputDevices = [(MRDHostedRoutingController *)self availableOutputDevices];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100118D1C;
  v15[3] = &unk_1004BC4A0;
  v16 = dsCopy;
  v8 = dsCopy;
  v9 = [availableOutputDevices indexesOfObjectsPassingTest:v15];
  v10 = [availableOutputDevices objectsAtIndexes:v9];

  v11 = [[NSSet alloc] initWithArray:v10];
  allObjects = [v11 allObjects];

  v13 = [(MRDHostedRoutingController *)self makeEndpointWithOutputDevices:allObjects options:options];

  return v13;
}

- (id)makeTransientExternalDeviceToOutputDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy && ([deviceCopy primaryID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
    primaryID = [v5 primaryID];
    [v7 setUniqueIdentifier:primaryID];

    [v7 setTransportType:{objc_msgSend(v5, "transportType")}];
    [v7 setGroupID:0];
    v9 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v7];
    v10 = [[MRConcreteEndpoint alloc] initWithDesignatedGroupLeader:v9 outputDevices:0 preferredSuffix:0 connectionType:2];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_10003512C;
    v22 = sub_100035A4C;
    v23 = 0;
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100118FA4;
    block[3] = &unk_1004B7798;
    v16 = v10;
    v17 = &v18;
    block[4] = self;
    v12 = v10;
    dispatch_sync(serialQueue, block);
    v13 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSArray)availableOutputDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003512C;
  v10 = sub_100035A4C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001190FC;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRAVEndpoint)nativeEndpoint
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003512C;
  v10 = sub_100035A4C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10011923C;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRAVOutputDevice)nativeOutputDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003512C;
  v10 = sub_100035A4C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100119340;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRAVEndpoint)endpointContainingLocal
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003512C;
  v10 = sub_100035A4C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100119444;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = self->_serialQueue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100119500;
  v10 = &unk_1004B68F0;
  selfCopy = self;
  v12 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(serialQueue, &v7);
  [(MRDHostedRoutingController *)self _processDiscoveryObserverChanges:v7];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = self->_serialQueue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001195B4;
  v10 = &unk_1004B68F0;
  selfCopy = self;
  v12 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(serialQueue, &v7);
  [(MRDHostedRoutingController *)self _processDiscoveryObserverChanges:v7];
}

- (id)externalDeviceForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [(MRDHostedExternalDeviceManager *)self->_externalDeviceManager hostedExternalDeviceForEndpointIdentifier:endpointCopy];
  if (!v5)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100119690;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
    v5 = [(MRDHostedExternalDeviceManager *)self->_externalDeviceManager hostedExternalDeviceForEndpointIdentifier:endpointCopy];
  }

  return v5;
}

- (id)_onQueue_makeHostedExternalDeviceForEndpoint:(id)endpoint didCreate:(BOOL *)create
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011975C;
  v8[3] = &unk_1004BD5C0;
  selfCopy = self;
  endpointCopy = endpoint;
  v5 = endpointCopy;
  v6 = [(MRDHostedRoutingController *)selfCopy _onQueue_makeHostedExternalDeviceForEndpoint:v5 didCreate:create factory:v8];

  return v6;
}

- (id)_onQueue_makeLocalHostedExternalDeviceForEndpoint:(id)endpoint didCreate:(BOOL *)create
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011982C;
  v9[3] = &unk_1004BD5E8;
  endpointCopy = endpoint;
  v6 = endpointCopy;
  v7 = [(MRDHostedRoutingController *)self _onQueue_makeHostedExternalDeviceForEndpoint:v6 didCreate:create factory:v9];

  return v7;
}

- (id)_onQueue_makeHostedExternalDeviceForEndpoint:(id)endpoint didCreate:(BOOL *)create factory:(id)factory
{
  endpointCopy = endpoint;
  factoryCopy = factory;
  dispatch_assert_queue_V2(self->_serialQueue);
  designatedGroupLeader = [endpointCopy designatedGroupLeader];
  v11 = 0;
  if ([endpointCopy connectionType] != 1 && designatedGroupLeader)
  {
    externalDeviceManager = self->_externalDeviceManager;
    uniqueIdentifier = [endpointCopy uniqueIdentifier];
    v11 = [(MRDHostedExternalDeviceManager *)externalDeviceManager hostedExternalDeviceForEndpointIdentifier:uniqueIdentifier];

    if (!v11)
    {
      v14 = factoryCopy[2](factoryCopy);
      if (v14)
      {
        v11 = [[MRDAVHostedExternalDevice alloc] initWithExternalDevice:v14];
        [(MRDHostedExternalDeviceManager *)self->_externalDeviceManager addHostedExternalDevice:v11 endpoint:endpointCopy];
        if (create)
        {
          *create = 1;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    externalDevice = [(MRDAVHostedExternalDevice *)v11 externalDevice];
    [endpointCopy setExternalDevice:externalDevice];
  }

  return v11;
}

- (id)_onQueue_makeExternalDeviceForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  designatedGroupLeader = [endpointCopy designatedGroupLeader];
  if ([endpointCopy connectionType] == 6 && objc_msgSend(designatedGroupLeader, "willBeLocallyHosted"))
  {
    designatedProxyGroupLeader = [endpointCopy designatedProxyGroupLeader];
    v7 = +[MRDAVOutputContextManager sharedManager];
    v8 = [v7 outputContextForOutputDevice:designatedProxyGroupLeader];

    groupContextID = [designatedProxyGroupLeader groupContextID];
    if (groupContextID)
    {
      v10 = groupContextID;
      groupContextID2 = [designatedProxyGroupLeader groupContextID];
      contextID = [v8 contextID];
      v13 = [groupContextID2 isEqualToString:contextID];

      if ((v13 & 1) == 0)
      {
        v20 = MRLogCategoryDiscovery();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          debugName = [endpointCopy debugName];
          groupContextID3 = [designatedProxyGroupLeader groupContextID];
          contextID2 = [v8 contextID];
          v24 = 138543874;
          v25 = debugName;
          v26 = 2114;
          v27 = groupContextID3;
          v28 = 2114;
          v29 = contextID2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Ignoring makeExternalDeviceForEndpoint=%{public}@ because groupContextID mismatch with contextID: %{public}@ != %{public}@", &v24, 0x20u);
        }

        v18 = 0;
        goto LABEL_17;
      }
    }

    v14 = [[MRDAVOutputContextExternalDevice alloc] initWithOutputContext:v8];
LABEL_16:
    v18 = v14;
LABEL_17:

    v8 = v18;
    goto LABEL_18;
  }

  designatedProxyGroupLeader = [(MRDHostedRoutingController *)self _onQueue_makeExternalDeviceTransportForEndpoint:endpointCopy designatedGroupLeader:designatedGroupLeader];
  if (designatedProxyGroupLeader)
  {
    if ([designatedGroupLeader isUsingJSONProtocol])
    {
      v15 = MRJSONTransportExternalDevice;
    }

    else
    {
      v15 = MRDTransportExternalDevice;
    }

    v8 = [[v15 alloc] initWithTransport:designatedProxyGroupLeader];
  }

  else
  {
    v16 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [designatedGroupLeader uid];
      v24 = 138543618;
      v25 = endpointCopy;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to create external device transport for %{public}@, group leader: %{public}@", &v24, 0x16u);
    }

    v8 = 0;
  }

  if ([endpointCopy shouldUseUGLExternalDevice])
  {
    v14 = [[MRDUGLExternalDevice alloc] initWithExternalDevice:v8 endpoint:endpointCopy];
    goto LABEL_16;
  }

LABEL_18:

  return v8;
}

- (id)determineGroupLeaderForOutputDevices:(id)devices options:(unint64_t)options
{
  devicesCopy = devices;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10003512C;
  v19 = sub_100035A4C;
  v20 = 0;
  serialQueue = self->_serialQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100119E20;
  v11[3] = &unk_1004BD610;
  v11[4] = self;
  v12 = devicesCopy;
  v13 = &v15;
  optionsCopy = options;
  v8 = devicesCopy;
  dispatch_sync(serialQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (NSArray)virtualOutputDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003512C;
  v11 = sub_100035A4C;
  v12 = +[NSMutableArray array];
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100119F7C;
  v6[3] = &unk_1004B6958;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)addVirtualOutputDevice:(id)device forClient:(id)client
{
  deviceCopy = device;
  clientCopy = client;
  if (_os_feature_enabled_impl())
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011A15C;
    block[3] = &unk_1004B69D0;
    block[4] = self;
    v10 = clientCopy;
    v11 = deviceCopy;
    dispatch_sync(serialQueue, block);
  }
}

- (void)removeVirtualOutputDevicesForClient:(id)client
{
  clientCopy = client;
  if (_os_feature_enabled_impl())
  {
    serialQueue = self->_serialQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A2F8;
    v6[3] = &unk_1004B68F0;
    v6[4] = self;
    v7 = clientCopy;
    dispatch_sync(serialQueue, v6);
  }
}

- (id)_onQueue_determineGroupLeaderForOutputDevices:(id)devices availableOutputDevices:(id)outputDevices options:(unint64_t)options
{
  devicesCopy = devices;
  outputDevicesCopy = outputDevices;
  dispatch_assert_queue_V2(self->_serialQueue);
  firstObject = [devicesCopy firstObject];
  groupID = [firstObject groupID];
  v11 = MRComputeBaseGroupID();

  selfCopy = self;
  nativeOutputDevice = [(MRDRemoteControlDiscoverySession *)self->_discoverySession nativeOutputDevice];
  v13 = [devicesCopy sortedArrayUsingComparator:&stru_1004BD650];

  selfCopy2 = self;
  if (!options)
  {
    goto LABEL_17;
  }

  v14 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 valueForKey:@"uid"];
    v16 = [v15 componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v86 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "- Selecting devices (non-default selection options) from: %{public}@", buf, 0xCu);

    selfCopy = selfCopy2;
  }

  v17 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = +[NSMutableArray array];
    v19 = v18;
    if ((options & 2) != 0)
    {
      [v18 addObject:@"ignoreExistingLeader"];
      if ((options & 4) == 0)
      {
LABEL_7:
        if ((options & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_139;
      }
    }

    else if ((options & 4) == 0)
    {
      goto LABEL_7;
    }

    [v19 addObject:@"preferExistingConnection"];
    if ((options & 8) == 0)
    {
LABEL_8:
      if ((options & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_140;
    }

LABEL_139:
    [v19 addObject:@"preferSubscription"];
    if ((options & 0x10) == 0)
    {
LABEL_9:
      if ((options & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_141;
    }

LABEL_140:
    [v19 addObject:@"preferCloudLibrary"];
    if ((options & 0x20) == 0)
    {
LABEL_10:
      if ((options & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_142;
    }

LABEL_141:
    [v19 addObject:@"preferHomePod"];
    if ((options & 0x40) == 0)
    {
LABEL_11:
      if ((options & 0x80) == 0)
      {
LABEL_13:
        v20 = v11;
        if (![v19 count])
        {
          [v19 addObject:@"none"];
        }

        v21 = [v19 componentsJoinedByString:{@", "}];
        v22 = [NSString stringWithFormat:@"{ %@ }", v21];

        v23 = v22;
        *buf = 138543362;
        v86 = v23;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "- Selection options: %{public}@", buf, 0xCu);

        v11 = v20;
        selfCopy = selfCopy2;
        goto LABEL_16;
      }

LABEL_12:
      [v19 addObject:@"ignoreExisitingHosts"];
      goto LABEL_13;
    }

LABEL_142:
    [v19 addObject:@"preferAppleTV"];
    if ((options & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_16:

LABEL_17:
  v71 = v11;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v13;
  v24 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (!v24)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_106;
  }

  v25 = v24;
  v26 = 0;
  v27 = 0;
  v76 = *v82;
  do
  {
    v28 = 0;
    v74 = v25;
    do
    {
      if (*v82 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v81 + 1) + 8 * v28);
      isAuxiliary = [v29 isAuxiliary];
      if ([v29 supportsMultiplayer])
      {
        isAuxiliary |= 0x40uLL;
      }

      if ([v29 isProxyGroupPlayer])
      {
        isAuxiliary |= 0x10uLL;
      }

      if ([v29 canRelayCommunicationChannel] && objc_msgSend(v29, "isGroupable") && !objc_msgSend(v29, "isLocalDevice"))
      {
        isAuxiliary |= 0x80uLL;
      }

      if ([v29 isRemoteControllable])
      {
        v31 = isAuxiliary | 0x100;
      }

      else
      {
        v31 = isAuxiliary;
      }

      if ((options & 4) != 0)
      {
        v32 = [v29 uid];
        if ([(MRDHostedExternalDeviceManager *)selfCopy->_externalDeviceManager isDirectConnectedToOutputDeviceUID:v32])
        {
          v31 |= 0x200uLL;
        }

        if ((options & 8) == 0)
        {
LABEL_35:
          if ((options & 0x10) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_45;
        }
      }

      else if ((options & 8) == 0)
      {
        goto LABEL_35;
      }

      if ([v29 canAccessAppleMusic])
      {
        v31 |= 0x10000uLL;
      }

      if ((options & 0x10) == 0)
      {
LABEL_36:
        if ((options & 2) != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_48;
      }

LABEL_45:
      if ([v29 canAccessiCloudMusicLibrary])
      {
        v31 |= 0x20000uLL;
      }

      if ((options & 2) != 0)
      {
LABEL_37:
        if ((options & 0x20) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

LABEL_48:
      isGroupLeader = [v29 isGroupLeader];
      if ([v29 supportsMultiplayer])
      {
        airPlayGroupID = [v29 airPlayGroupID];
        groupID2 = [v29 groupID];
        v36 = v27;
        v37 = [airPlayGroupID isEqual:groupID2];

        isGroupLeader &= v37;
        v27 = v36;
        selfCopy = selfCopy2;
        v25 = v74;
      }

      isRemoteControllable = [v29 isRemoteControllable];
      v39 = v31 | 0xFFFFFFFF80000000;
      if (!isGroupLeader)
      {
        v39 = v31;
      }

      if (isRemoteControllable)
      {
        v31 = v39;
      }

      if ((options & 0x20) == 0)
      {
        goto LABEL_59;
      }

LABEL_55:
      if ([v29 deviceType] != 1 || objc_msgSend(v29, "deviceSubtype") != 12)
      {
        goto LABEL_59;
      }

      if ([v29 isB238Device])
      {
        v31 |= 0x2400uLL;
LABEL_59:
        if ((options & 0x40) == 0)
        {
          goto LABEL_63;
        }

LABEL_60:
        if ([v29 deviceType] == 1 && objc_msgSend(v29, "deviceSubtype") == 13)
        {
          v31 |= 0x1000uLL;
        }

        goto LABEL_63;
      }

      isB620Device = [v29 isB620Device];
      v50 = 0x2000;
      if (isB620Device)
      {
        v50 = 10240;
      }

      v31 |= v50;
      if ((options & 0x40) != 0)
      {
        goto LABEL_60;
      }

LABEL_63:
      if (v31 <= v26)
      {
        goto LABEL_86;
      }

      if (options)
      {
        v40 = MRLogCategoryDiscovery();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v29 uid];
          v42 = +[NSMutableArray array];
          v43 = v42;
          if ((v31 & 0x10) != 0)
          {
            [v42 addObject:@"proxyGroupPlayer"];
            if ((v31 & 0x80) != 0)
            {
              goto LABEL_89;
            }

LABEL_68:
            if ((v31 & 0x100) == 0)
            {
              goto LABEL_69;
            }

LABEL_90:
            [v43 addObject:@"remoteControllable"];
            if ((v31 & 0x200) != 0)
            {
              goto LABEL_91;
            }

LABEL_70:
            if ((v31 & 0x10000) == 0)
            {
              goto LABEL_71;
            }

LABEL_92:
            [v43 addObject:@"appleMusicSubscription"];
            if ((v31 & 0x20000) != 0)
            {
LABEL_72:
              [v43 addObject:@"iCloudMusicLibrary"];
            }
          }

          else
          {
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_68;
            }

LABEL_89:
            [v43 addObject:@"relayable"];
            if ((v31 & 0x100) != 0)
            {
              goto LABEL_90;
            }

LABEL_69:
            if ((v31 & 0x200) == 0)
            {
              goto LABEL_70;
            }

LABEL_91:
            [v43 addObject:@"existingConnection"];
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_92;
            }

LABEL_71:
            if ((v31 & 0x20000) != 0)
            {
              goto LABEL_72;
            }
          }

          if (v31 < 0xFFFFFFFF80000000)
          {
            if ((v31 & 0x2000) == 0)
            {
              goto LABEL_75;
            }

LABEL_95:
            [v43 addObject:@"HomePod"];
            if ((v31 & 0x1000) != 0)
            {
              goto LABEL_96;
            }

LABEL_76:
            if ((v31 & 0x400) == 0)
            {
              goto LABEL_77;
            }

LABEL_97:
            [v43 addObject:@"PreferredWireless"];
            if ((v31 & 0x800) == 0)
            {
              goto LABEL_79;
            }

LABEL_78:
            [v43 addObject:@"PreferredCompute"];
            goto LABEL_79;
          }

          [v43 addObject:@"existingLeader"];
          if ((v31 & 0x2000) != 0)
          {
            goto LABEL_95;
          }

LABEL_75:
          if ((v31 & 0x1000) == 0)
          {
            goto LABEL_76;
          }

LABEL_96:
          [v43 addObject:@"AppleTV"];
          if ((v31 & 0x400) != 0)
          {
            goto LABEL_97;
          }

LABEL_77:
          if ((v31 & 0x800) != 0)
          {
            goto LABEL_78;
          }

LABEL_79:
          if (v31 >= 0xFFFFFFFF80000000)
          {
            [v43 addObject:@"existingDesignatedLeader"];
          }

          v44 = v27;
          if (![v43 count])
          {
            [v43 addObject:@"none"];
          }

          v45 = [v43 componentsJoinedByString:{@", "}];
          v46 = [NSString stringWithFormat:@"{ %@ }", v45];

          v47 = v46;
          *buf = 138543618;
          v86 = v41;
          v87 = 2114;
          v88 = v47;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "- Updating preferred group leader %{public}@ based on better criteria: %{public}@", buf, 0x16u);

          v27 = v44;
          selfCopy = selfCopy2;
          v25 = v74;
        }
      }

      v48 = v29;

      v26 = v31;
      v27 = v48;
LABEL_86:
      v28 = v28 + 1;
    }

    while (v25 != v28);
    v51 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
    v25 = v51;
  }

  while (v51);
LABEL_106:

  v52 = [obj mr_any:&stru_1004BD670];
  v53 = v27;
  v54 = v52;
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_10011AFF0;
  v77[3] = &unk_1004BD698;
  v55 = v53;
  v80 = v54;
  v78 = v55;
  optionsCopy = options;
  if ((sub_10011AFF0)(v77))
  {
    v56 = v71;
    v57 = [(NSDictionary *)selfCopy2->_hostsByGroupID objectForKeyedSubscript:v71];

    v58 = nativeOutputDevice;
    if (v57)
    {
      v59 = [(NSDictionary *)selfCopy2->_hostsByGroupID objectForKeyedSubscript:v71];

      v60 = MRLogCategoryDiscovery();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v61 = [v59 uid];
        *buf = 138543362;
        v86 = v61;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "- Updating preferred group leader because found a remote host: %{public}@", buf, 0xCu);
      }

      goto LABEL_114;
    }

    if ([v55 shouldBeLocallyHosted])
    {
      v59 = nativeOutputDevice;

      v60 = MRLogCategoryDiscovery();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "- Updating preferred group leader because locally hosting the group", buf, 2u);
      }

LABEL_114:

      v55 = v59;
    }
  }

  else
  {
    v58 = nativeOutputDevice;
    v56 = v71;
  }

  if (options)
  {
    v62 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = +[NSMutableArray array];
      v64 = v63;
      if ((v26 & 0x10) != 0)
      {
        [v63 addObject:@"proxyGroupPlayer"];
        if ((v26 & 0x80) != 0)
        {
          goto LABEL_145;
        }

LABEL_119:
        if ((v26 & 0x100) == 0)
        {
          goto LABEL_120;
        }

LABEL_146:
        [v64 addObject:@"remoteControllable"];
        if ((v26 & 0x200) != 0)
        {
          goto LABEL_147;
        }

LABEL_121:
        if ((v26 & 0x10000) == 0)
        {
          goto LABEL_122;
        }

LABEL_148:
        [v64 addObject:@"appleMusicSubscription"];
        if ((v26 & 0x20000) != 0)
        {
LABEL_123:
          [v64 addObject:@"iCloudMusicLibrary"];
        }
      }

      else
      {
        if ((v26 & 0x80) == 0)
        {
          goto LABEL_119;
        }

LABEL_145:
        [v64 addObject:@"relayable"];
        if ((v26 & 0x100) != 0)
        {
          goto LABEL_146;
        }

LABEL_120:
        if ((v26 & 0x200) == 0)
        {
          goto LABEL_121;
        }

LABEL_147:
        [v64 addObject:@"existingConnection"];
        if ((v26 & 0x10000) != 0)
        {
          goto LABEL_148;
        }

LABEL_122:
        if ((v26 & 0x20000) != 0)
        {
          goto LABEL_123;
        }
      }

      if (v26 < 0xFFFFFFFF80000000)
      {
        if ((v26 & 0x2000) == 0)
        {
          goto LABEL_126;
        }

LABEL_151:
        [v64 addObject:@"HomePod"];
        if ((v26 & 0x1000) != 0)
        {
          goto LABEL_152;
        }

LABEL_127:
        if ((v26 & 0x400) == 0)
        {
          goto LABEL_128;
        }

LABEL_153:
        [v64 addObject:@"PreferredWireless"];
        if ((v26 & 0x800) == 0)
        {
          goto LABEL_130;
        }

LABEL_129:
        [v64 addObject:@"PreferredCompute"];
        goto LABEL_130;
      }

      [v64 addObject:@"existingLeader"];
      if ((v26 & 0x2000) != 0)
      {
        goto LABEL_151;
      }

LABEL_126:
      if ((v26 & 0x1000) == 0)
      {
        goto LABEL_127;
      }

LABEL_152:
      [v64 addObject:@"AppleTV"];
      if ((v26 & 0x400) != 0)
      {
        goto LABEL_153;
      }

LABEL_128:
      if ((v26 & 0x800) != 0)
      {
        goto LABEL_129;
      }

LABEL_130:
      if (v26 >= 0xFFFFFFFF80000000)
      {
        [v64 addObject:@"existingDesignatedLeader"];
      }

      if (![v64 count])
      {
        [v64 addObject:@"none"];
      }

      v65 = [v64 componentsJoinedByString:{@", "}];
      v66 = [NSString stringWithFormat:@"{ %@ }", v65];

      v67 = v66;
      *buf = 138543618;
      v86 = v55;
      v87 = 2114;
      v88 = v67;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "-- Final preferred group leader: %{public}@ based on criteria: %{public}@", buf, 0x16u);
    }
  }

  v68 = v55;

  return v55;
}

- (void)_onQueue_reloadWithOutputDevices:(id)devices
{
  devicesCopy = devices;
  dispatch_assert_queue_V2(self->_serialQueue);
  v34 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [devicesCopy count]);
  v33 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [devicesCopy count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = devicesCopy;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = [MRAVDistantOutputDevice alloc];
        descriptor = [v10 descriptor];
        v13 = [v11 initWithDescriptor:descriptor];

        v14 = v13;
        v15 = [v14 uid];
        if ([v15 length])
        {
          groupID = [v14 groupID];
          v17 = [groupID length];

          if (v17)
          {
            [v34 addObject:v14];
            v18 = [v14 uid];
            [v33 setObject:v10 forKeyedSubscript:v18];
            goto LABEL_12;
          }
        }

        else
        {
        }

        v18 = MRLogCategoryDiscovery();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v44 = v10;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Skipping invalid output device: %{public}@", buf, 0xCu);
        }

LABEL_12:
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
  }

  unclusteredOutputDevices = [(MRDRemoteControlDiscoverySession *)self->_discoverySession unclusteredOutputDevices];
  v20 = [unclusteredOutputDevices copy];

  v21 = [v20 mr_map:&stru_1004BD6D8];
  v22 = [(MRDHostedRoutingController *)self computeHostsByGroupIDForOutputDevices:v34 unclusteredDevices:v21];
  hostsByGroupID = self->_hostsByGroupID;
  self->_hostsByGroupID = v22;

  v24 = [(MRDHostedRoutingController *)self filterOutputDevices:v34 remoteControllableOnly:0];
  objc_storeStrong(&self->_distantOutputDevices, v24);
  v25 = [v33 copy];
  availableOutputDevices = self->_availableOutputDevices;
  self->_availableOutputDevices = v25;

  nativeOutputDevice = [(MRDRemoteControlDiscoverySession *)self->_discoverySession nativeOutputDevice];
  nativeOutputDevice = self->_nativeOutputDevice;
  self->_nativeOutputDevice = nativeOutputDevice;

  allObjects = [(NSHashTable *)self->_weakObservers allObjects];
  observerCalloutQueue = self->_observerCalloutQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B46C;
  block[3] = &unk_1004B69D0;
  v36 = allObjects;
  selfCopy = self;
  v38 = v24;
  v31 = v24;
  v32 = allObjects;
  dispatch_async(observerCalloutQueue, block);
}

- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:kMRExternalDeviceConnectionStateUserInfoKey];
  unsignedIntValue = [v5 unsignedIntValue];

  if (unsignedIntValue == 3)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011B650;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (void)_handleEndpointOutputDevicesDidChangeNotification:(id)notification
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B6D0;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_handleOutputContextManagerDidReset:(id)reset
{
  resetCopy = reset;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011B770;
  v7[3] = &unk_1004B68F0;
  v8 = resetCopy;
  selfCopy = self;
  v6 = resetCopy;
  dispatch_async(serialQueue, v7);
}

- (void)hostedExternalDeviceManagerDidUpdateExternalDeviceMapping:(id)mapping
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011BA14;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(serialQueue, block);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10011BA50;
  v5[3] = &unk_1004B6D08;
  v5[4] = self;
  dispatch_async(&_dispatch_main_q, v5);
}

- (id)computeHostsByGroupIDForOutputDevices:(id)devices unclusteredDevices:(id)unclusteredDevices
{
  devicesCopy = devices;
  unclusteredDevicesCopy = unclusteredDevices;
  v8 = [devicesCopy msv_compactMap:&stru_1004BD7C0];
  v9 = [NSSet setWithArray:v8];

  v32 = devicesCopy;
  v30 = [devicesCopy msv_filter:&stru_1004BD800];
  v31 = unclusteredDevicesCopy;
  v29 = [v30 arrayByAddingObjectsFromArray:unclusteredDevicesCopy];
  v10 = [v29 msv_filter:&stru_1004BD820];
  v35 = objc_opt_new();
  groupUID = [(MRDeviceInfo *)self->_deviceInfo groupUID];
  v11 = [v10 msv_firstWhere:&stru_1004BD840];
  v12 = +[MRAVClusterController sharedController];
  LODWORD(v8) = [v12 needsCommandRedirection];

  if (v8)
  {
    v13 = +[MRAVClusterController sharedController];
    clusterLeaderUID = [v13 clusterLeaderUID];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10011BF58;
    v48[3] = &unk_1004BD868;
    v49 = clusterLeaderUID;
    v15 = clusterLeaderUID;
    v16 = [v10 msv_firstWhere:v48];

    v11 = v16;
  }

  effectiveParentGroupContainsDiscoverableGroupLeader = [(MRDeviceInfo *)self->_deviceInfo effectiveParentGroupContainsDiscoverableGroupLeader];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v9;
  v39 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v39)
  {
    v36 = v11;
    v37 = *v45;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        if ((effectiveParentGroupContainsDiscoverableGroupLeader & 1) != 0 || ![groupUID isEqual:*(*(&v44 + 1) + 8 * i)])
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v19 = v10;
          v20 = v10;
          v21 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v41;
            while (2)
            {
              for (j = 0; j != v22; j = j + 1)
              {
                if (*v41 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v40 + 1) + 8 * j);
                baseGroupID = [v25 baseGroupID];
                baseParentGroupID = [v25 baseParentGroupID];
                if (([baseParentGroupID isEqualToString:v18] & 1) == 0 && objc_msgSend(v18, "isEqualToString:", baseGroupID))
                {
                  [v35 setObject:v25 forKeyedSubscript:v18];

                  goto LABEL_22;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:

          v10 = v19;
          v11 = v36;
        }

        else
        {
          [v35 setObject:v11 forKeyedSubscript:v18];
        }
      }

      v39 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v39);
  }

  return v35;
}

- (id)resolveOutputDevices:(id)devices
{
  discoverySession = self->_discoverySession;
  devicesCopy = devices;
  [(MRDRemoteControlDiscoverySession *)discoverySession nativeOutputDevice];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011C148;
  v10 = v9[3] = &unk_1004BD8D0;
  v11 = &stru_1004BD8A8;
  v9[4] = self;
  v6 = v10;
  v7 = [devicesCopy mr_map:v9];

  return v7;
}

- (id)filterOutputDevices:(id)devices remoteControllableOnly:(BOOL)only
{
  v6 = [(MRDHostedRoutingController *)self resolveOutputDevices:devices];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10011C588;
  v41[3] = &unk_1004BD8F0;
  onlyCopy = only;
  v7 = [v6 mr_filter:v41];

  senderDefaultGroupUID = [(MRDeviceInfo *)self->_deviceInfo senderDefaultGroupUID];
  v9 = +[NSMutableSet set];
  +[NSMutableArray array];
  v32 = v31 = senderDefaultGroupUID;
  if (senderDefaultGroupUID)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11;
    v13 = *v38;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        groupID = [v15 groupID];
        parentGroupIdentifier = [v15 parentGroupIdentifier];
        if ([groupID isEqualToString:parentGroupIdentifier])
        {
          goto LABEL_13;
        }

        parentGroupIdentifier2 = [v15 parentGroupIdentifier];
        if (![parentGroupIdentifier2 isEqualToString:v31] || (objc_msgSend(v15, "isAirPlayReceiverSessionActive") & 1) == 0)
        {

LABEL_13:
          continue;
        }

        parentGroupContainsDiscoverableLeader = [v15 parentGroupContainsDiscoverableLeader];

        if ((parentGroupContainsDiscoverableLeader & 1) == 0)
        {
          groupID2 = [v15 groupID];
          [v9 addObject:groupID2];

          [v32 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v12)
      {
LABEL_16:

        v7 = v30;
        break;
      }
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v7;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        groupID3 = [v26 groupID];
        v28 = [v9 containsObject:groupID3];

        if ((v28 & 1) == 0)
        {
          [v32 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v23);
  }

  return v32;
}

- (BOOL)isOutputContextInUse:(id)use
{
  useCopy = use;
  contextID = [useCopy contextID];
  if (contextID)
  {
    availableExternalDevices = [(MRDHostedExternalDeviceManager *)self->_externalDeviceManager availableExternalDevices];
    allKeys = [availableExternalDevices allKeys];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10011C804;
    v11[3] = &unk_1004B90C8;
    v12 = useCopy;
    v8 = [allKeys msv_firstWhere:v11];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)scheduleReload
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v3 = [[MRBlockGuard alloc] initWithTimeout:@"HostedRoutingController.scheduleReload" reason:&stru_1004BD910 handler:30.0];
  }

  else
  {
    v3 = 0;
  }

  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011C9AC;
  v6[3] = &unk_1004B68F0;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_async(serialQueue, v6);
}

@end