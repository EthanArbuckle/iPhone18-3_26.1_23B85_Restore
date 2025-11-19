@interface MRDHostedRoutingController
- (BOOL)isOutputContextInUse:(id)a3;
- (MRAVEndpoint)endpointContainingLocal;
- (MRAVEndpoint)nativeEndpoint;
- (MRAVOutputDevice)nativeOutputDevice;
- (MRDHostedRoutingController)initWithDiscoverySession:(id)a3;
- (NSArray)availableDistantEndpoints;
- (NSArray)availableDistantOutputDevices;
- (NSArray)availableEndpoints;
- (NSArray)availableOutputDevices;
- (NSArray)resolvedAvailableEndpoints;
- (NSArray)virtualOutputDevices;
- (NSString)debugDescription;
- (id)_onQueue_determineGroupLeaderForOutputDevices:(id)a3 availableOutputDevices:(id)a4 options:(unint64_t)a5;
- (id)_onQueue_makeExternalDeviceForEndpoint:(id)a3;
- (id)_onQueue_makeExternalDeviceTransportForEndpoint:(id)a3 designatedGroupLeader:(id)a4;
- (id)_onQueue_makeHostedExternalDeviceForEndpoint:(id)a3 didCreate:(BOOL *)a4;
- (id)_onQueue_makeHostedExternalDeviceForEndpoint:(id)a3 didCreate:(BOOL *)a4 factory:(id)a5;
- (id)_onQueue_makeLocalHostedExternalDeviceForEndpoint:(id)a3 didCreate:(BOOL *)a4;
- (id)computeHostsByGroupIDForOutputDevices:(id)a3 unclusteredDevices:(id)a4;
- (id)createDiscoverySession;
- (id)determineGroupLeaderForOutputDevices:(id)a3 options:(unint64_t)a4;
- (id)externalDeviceForEndpoint:(id)a3;
- (id)filterOutputDevices:(id)a3 remoteControllableOnly:(BOOL)a4;
- (id)makeEndpointWithOutputDeviceUIDs:(id)a3 options:(unint64_t)a4;
- (id)makeEndpointWithOutputDevices:(id)a3 options:(unint64_t)a4;
- (id)makeTransientExternalDeviceToOutputDevice:(id)a3;
- (id)resolveOutputDevices:(id)a3;
- (void)_handleEndpointOutputDevicesDidChangeNotification:(id)a3;
- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)a3;
- (void)_handleOutputContextManagerDidReset:(id)a3;
- (void)_onQueue_reloadEndpoints;
- (void)_onQueue_reloadOutputDevices;
- (void)_onQueue_reloadWithOutputDevices:(id)a3;
- (void)_processDiscoveryObserverChanges;
- (void)addObserver:(id)a3;
- (void)addVirtualOutputDevice:(id)a3 forClient:(id)a4;
- (void)dealloc;
- (void)hostedExternalDeviceManagerDidUpdateExternalDeviceMapping:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeVirtualOutputDevicesForClient:(id)a3;
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
  v3 = [(MRDHostedRoutingController *)self discoverySession];
  v4 = [v3 deviceInfo];
  deviceInfo = self->_deviceInfo;
  self->_deviceInfo = v4;

  v7 = [(MRDHostedRoutingController *)self discoverySession];
  v6 = [v7 availableOutputDevices];
  [(MRDHostedRoutingController *)self _onQueue_reloadWithOutputDevices:v6];
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
  v2 = [(MRDHostedRoutingController *)self availableDistantEndpoints];
  v3 = [v2 msv_map:&stru_1004BD598];

  return v3;
}

- (MRDHostedRoutingController)initWithDiscoverySession:(id)a3
{
  v4 = a3;
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
    if (v4)
    {
      v24 = v4;
    }

    else
    {
      v24 = objc_alloc_init(MRDRemoteControlDiscoverySession);
    }

    discoverySession = v5->_discoverySession;
    v5->_discoverySession = v24;

    objc_initWeak(&location, v5);
    v26 = [(MRDHostedRoutingController *)v5 discoverySession];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_10011885C;
    v33 = &unk_1004B9B48;
    objc_copyWeak(&v34, &location);
    v27 = [v26 addOutputDevicesChangedCallback:&v30];
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
  v3 = [(MRDHostedRoutingController *)self discoverySession];
  [v3 removeOutputDevicesChangedCallback:self->_discoverySessionOutputDevicesToken];

  v4.receiver = self;
  v4.super_class = MRDHostedRoutingController;
  [(MRDHostedRoutingController *)&v4 dealloc];
}

- (NSString)debugDescription
{
  v3 = [NSString alloc];
  v4 = [(MRDHostedRoutingController *)self nativeEndpoint];
  v5 = [(MRDHostedRoutingController *)self nativeOutputDevice];
  v6 = [(MRDHostedRoutingController *)self endpointContainingLocal];
  v7 = [(MRDRemoteControlDiscoverySession *)self->_discoverySession debugDescription];
  v8 = [v3 initWithFormat:@"<HostedRoutingController {\nNativeEndpoint=%@\nNativeOutputDevice=%@\nEndpointContainingLocal=%@\nDiscoverySession=%@\n}>", v4, v5, v6, v7];

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

- (id)_onQueue_makeExternalDeviceTransportForEndpoint:(id)a3 designatedGroupLeader:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%s is abstract", "[MRDHostedRoutingController _onQueue_makeExternalDeviceTransportForEndpoint:designatedGroupLeader:]"];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)makeEndpointWithOutputDevices:(id)a3 options:(unint64_t)a4
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s is abstract", "[MRDHostedRoutingController makeEndpointWithOutputDevices:options:]"];
  v6 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)makeEndpointWithOutputDeviceUIDs:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MRDHostedRoutingController *)self availableOutputDevices];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100118D1C;
  v15[3] = &unk_1004BC4A0;
  v16 = v6;
  v8 = v6;
  v9 = [v7 indexesOfObjectsPassingTest:v15];
  v10 = [v7 objectsAtIndexes:v9];

  v11 = [[NSSet alloc] initWithArray:v10];
  v12 = [v11 allObjects];

  v13 = [(MRDHostedRoutingController *)self makeEndpointWithOutputDevices:v12 options:a4];

  return v13;
}

- (id)makeTransientExternalDeviceToOutputDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 primaryID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
    v8 = [v5 primaryID];
    [v7 setUniqueIdentifier:v8];

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

- (void)addObserver:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100119500;
  v10 = &unk_1004B68F0;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, &v7);
  [(MRDHostedRoutingController *)self _processDiscoveryObserverChanges:v7];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001195B4;
  v10 = &unk_1004B68F0;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, &v7);
  [(MRDHostedRoutingController *)self _processDiscoveryObserverChanges:v7];
}

- (id)externalDeviceForEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(MRDHostedExternalDeviceManager *)self->_externalDeviceManager hostedExternalDeviceForEndpointIdentifier:v4];
  if (!v5)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100119690;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
    v5 = [(MRDHostedExternalDeviceManager *)self->_externalDeviceManager hostedExternalDeviceForEndpointIdentifier:v4];
  }

  return v5;
}

- (id)_onQueue_makeHostedExternalDeviceForEndpoint:(id)a3 didCreate:(BOOL *)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011975C;
  v8[3] = &unk_1004BD5C0;
  v9 = self;
  v10 = a3;
  v5 = v10;
  v6 = [(MRDHostedRoutingController *)v9 _onQueue_makeHostedExternalDeviceForEndpoint:v5 didCreate:a4 factory:v8];

  return v6;
}

- (id)_onQueue_makeLocalHostedExternalDeviceForEndpoint:(id)a3 didCreate:(BOOL *)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011982C;
  v9[3] = &unk_1004BD5E8;
  v10 = a3;
  v6 = v10;
  v7 = [(MRDHostedRoutingController *)self _onQueue_makeHostedExternalDeviceForEndpoint:v6 didCreate:a4 factory:v9];

  return v7;
}

- (id)_onQueue_makeHostedExternalDeviceForEndpoint:(id)a3 didCreate:(BOOL *)a4 factory:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_serialQueue);
  v10 = [v8 designatedGroupLeader];
  v11 = 0;
  if ([v8 connectionType] != 1 && v10)
  {
    externalDeviceManager = self->_externalDeviceManager;
    v13 = [v8 uniqueIdentifier];
    v11 = [(MRDHostedExternalDeviceManager *)externalDeviceManager hostedExternalDeviceForEndpointIdentifier:v13];

    if (!v11)
    {
      v14 = v9[2](v9);
      if (v14)
      {
        v11 = [[MRDAVHostedExternalDevice alloc] initWithExternalDevice:v14];
        [(MRDHostedExternalDeviceManager *)self->_externalDeviceManager addHostedExternalDevice:v11 endpoint:v8];
        if (a4)
        {
          *a4 = 1;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    v15 = [(MRDAVHostedExternalDevice *)v11 externalDevice];
    [v8 setExternalDevice:v15];
  }

  return v11;
}

- (id)_onQueue_makeExternalDeviceForEndpoint:(id)a3
{
  v4 = a3;
  v5 = [v4 designatedGroupLeader];
  if ([v4 connectionType] == 6 && objc_msgSend(v5, "willBeLocallyHosted"))
  {
    v6 = [v4 designatedProxyGroupLeader];
    v7 = +[MRDAVOutputContextManager sharedManager];
    v8 = [v7 outputContextForOutputDevice:v6];

    v9 = [v6 groupContextID];
    if (v9)
    {
      v10 = v9;
      v11 = [v6 groupContextID];
      v12 = [v8 contextID];
      v13 = [v11 isEqualToString:v12];

      if ((v13 & 1) == 0)
      {
        v20 = MRLogCategoryDiscovery();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v4 debugName];
          v22 = [v6 groupContextID];
          v23 = [v8 contextID];
          v24 = 138543874;
          v25 = v21;
          v26 = 2114;
          v27 = v22;
          v28 = 2114;
          v29 = v23;
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

  v6 = [(MRDHostedRoutingController *)self _onQueue_makeExternalDeviceTransportForEndpoint:v4 designatedGroupLeader:v5];
  if (v6)
  {
    if ([v5 isUsingJSONProtocol])
    {
      v15 = MRJSONTransportExternalDevice;
    }

    else
    {
      v15 = MRDTransportExternalDevice;
    }

    v8 = [[v15 alloc] initWithTransport:v6];
  }

  else
  {
    v16 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 uid];
      v24 = 138543618;
      v25 = v4;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to create external device transport for %{public}@, group leader: %{public}@", &v24, 0x16u);
    }

    v8 = 0;
  }

  if ([v4 shouldUseUGLExternalDevice])
  {
    v14 = [[MRDUGLExternalDevice alloc] initWithExternalDevice:v8 endpoint:v4];
    goto LABEL_16;
  }

LABEL_18:

  return v8;
}

- (id)determineGroupLeaderForOutputDevices:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
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
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
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

- (void)addVirtualOutputDevice:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011A15C;
    block[3] = &unk_1004B69D0;
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_sync(serialQueue, block);
  }
}

- (void)removeVirtualOutputDevicesForClient:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    serialQueue = self->_serialQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A2F8;
    v6[3] = &unk_1004B68F0;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(serialQueue, v6);
  }
}

- (id)_onQueue_determineGroupLeaderForOutputDevices:(id)a3 availableOutputDevices:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v72 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  v9 = [v8 firstObject];
  v10 = [v9 groupID];
  v11 = MRComputeBaseGroupID();

  v12 = self;
  v70 = [(MRDRemoteControlDiscoverySession *)self->_discoverySession nativeOutputDevice];
  v13 = [v8 sortedArrayUsingComparator:&stru_1004BD650];

  v73 = self;
  if (!a5)
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

    v12 = v73;
  }

  v17 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = +[NSMutableArray array];
    v19 = v18;
    if ((a5 & 2) != 0)
    {
      [v18 addObject:@"ignoreExistingLeader"];
      if ((a5 & 4) == 0)
      {
LABEL_7:
        if ((a5 & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_139;
      }
    }

    else if ((a5 & 4) == 0)
    {
      goto LABEL_7;
    }

    [v19 addObject:@"preferExistingConnection"];
    if ((a5 & 8) == 0)
    {
LABEL_8:
      if ((a5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_140;
    }

LABEL_139:
    [v19 addObject:@"preferSubscription"];
    if ((a5 & 0x10) == 0)
    {
LABEL_9:
      if ((a5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_141;
    }

LABEL_140:
    [v19 addObject:@"preferCloudLibrary"];
    if ((a5 & 0x20) == 0)
    {
LABEL_10:
      if ((a5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_142;
    }

LABEL_141:
    [v19 addObject:@"preferHomePod"];
    if ((a5 & 0x40) == 0)
    {
LABEL_11:
      if ((a5 & 0x80) == 0)
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
        v12 = v73;
        goto LABEL_16;
      }

LABEL_12:
      [v19 addObject:@"ignoreExisitingHosts"];
      goto LABEL_13;
    }

LABEL_142:
    [v19 addObject:@"preferAppleTV"];
    if ((a5 & 0x80) == 0)
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
      v30 = [v29 isAuxiliary];
      if ([v29 supportsMultiplayer])
      {
        v30 |= 0x40uLL;
      }

      if ([v29 isProxyGroupPlayer])
      {
        v30 |= 0x10uLL;
      }

      if ([v29 canRelayCommunicationChannel] && objc_msgSend(v29, "isGroupable") && !objc_msgSend(v29, "isLocalDevice"))
      {
        v30 |= 0x80uLL;
      }

      if ([v29 isRemoteControllable])
      {
        v31 = v30 | 0x100;
      }

      else
      {
        v31 = v30;
      }

      if ((a5 & 4) != 0)
      {
        v32 = [v29 uid];
        if ([(MRDHostedExternalDeviceManager *)v12->_externalDeviceManager isDirectConnectedToOutputDeviceUID:v32])
        {
          v31 |= 0x200uLL;
        }

        if ((a5 & 8) == 0)
        {
LABEL_35:
          if ((a5 & 0x10) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_45;
        }
      }

      else if ((a5 & 8) == 0)
      {
        goto LABEL_35;
      }

      if ([v29 canAccessAppleMusic])
      {
        v31 |= 0x10000uLL;
      }

      if ((a5 & 0x10) == 0)
      {
LABEL_36:
        if ((a5 & 2) != 0)
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

      if ((a5 & 2) != 0)
      {
LABEL_37:
        if ((a5 & 0x20) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

LABEL_48:
      v33 = [v29 isGroupLeader];
      if ([v29 supportsMultiplayer])
      {
        v34 = [v29 airPlayGroupID];
        v35 = [v29 groupID];
        v36 = v27;
        v37 = [v34 isEqual:v35];

        v33 &= v37;
        v27 = v36;
        v12 = v73;
        v25 = v74;
      }

      v38 = [v29 isRemoteControllable];
      v39 = v31 | 0xFFFFFFFF80000000;
      if (!v33)
      {
        v39 = v31;
      }

      if (v38)
      {
        v31 = v39;
      }

      if ((a5 & 0x20) == 0)
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
        if ((a5 & 0x40) == 0)
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

      v49 = [v29 isB620Device];
      v50 = 0x2000;
      if (v49)
      {
        v50 = 10240;
      }

      v31 |= v50;
      if ((a5 & 0x40) != 0)
      {
        goto LABEL_60;
      }

LABEL_63:
      if (v31 <= v26)
      {
        goto LABEL_86;
      }

      if (a5)
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
          v12 = v73;
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
  v79 = a5;
  if ((sub_10011AFF0)(v77))
  {
    v56 = v71;
    v57 = [(NSDictionary *)v73->_hostsByGroupID objectForKeyedSubscript:v71];

    v58 = v70;
    if (v57)
    {
      v59 = [(NSDictionary *)v73->_hostsByGroupID objectForKeyedSubscript:v71];

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
      v59 = v70;

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
    v58 = v70;
    v56 = v71;
  }

  if (a5)
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

- (void)_onQueue_reloadWithOutputDevices:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v34 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v33 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = v4;
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
        v12 = [v10 descriptor];
        v13 = [v11 initWithDescriptor:v12];

        v14 = v13;
        v15 = [v14 uid];
        if ([v15 length])
        {
          v16 = [v14 groupID];
          v17 = [v16 length];

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

  v19 = [(MRDRemoteControlDiscoverySession *)self->_discoverySession unclusteredOutputDevices];
  v20 = [v19 copy];

  v21 = [v20 mr_map:&stru_1004BD6D8];
  v22 = [(MRDHostedRoutingController *)self computeHostsByGroupIDForOutputDevices:v34 unclusteredDevices:v21];
  hostsByGroupID = self->_hostsByGroupID;
  self->_hostsByGroupID = v22;

  v24 = [(MRDHostedRoutingController *)self filterOutputDevices:v34 remoteControllableOnly:0];
  objc_storeStrong(&self->_distantOutputDevices, v24);
  v25 = [v33 copy];
  availableOutputDevices = self->_availableOutputDevices;
  self->_availableOutputDevices = v25;

  v27 = [(MRDRemoteControlDiscoverySession *)self->_discoverySession nativeOutputDevice];
  nativeOutputDevice = self->_nativeOutputDevice;
  self->_nativeOutputDevice = v27;

  v29 = [(NSHashTable *)self->_weakObservers allObjects];
  observerCalloutQueue = self->_observerCalloutQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B46C;
  block[3] = &unk_1004B69D0;
  v36 = v29;
  v37 = self;
  v38 = v24;
  v31 = v24;
  v32 = v29;
  dispatch_async(observerCalloutQueue, block);
}

- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:kMRExternalDeviceConnectionStateUserInfoKey];
  v6 = [v5 unsignedIntValue];

  if (v6 == 3)
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

- (void)_handleEndpointOutputDevicesDidChangeNotification:(id)a3
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B6D0;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_handleOutputContextManagerDidReset:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011B770;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)hostedExternalDeviceManagerDidUpdateExternalDeviceMapping:(id)a3
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

- (id)computeHostsByGroupIDForOutputDevices:(id)a3 unclusteredDevices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 msv_compactMap:&stru_1004BD7C0];
  v9 = [NSSet setWithArray:v8];

  v32 = v6;
  v30 = [v6 msv_filter:&stru_1004BD800];
  v31 = v7;
  v29 = [v30 arrayByAddingObjectsFromArray:v7];
  v10 = [v29 msv_filter:&stru_1004BD820];
  v35 = objc_opt_new();
  v33 = [(MRDeviceInfo *)self->_deviceInfo groupUID];
  v11 = [v10 msv_firstWhere:&stru_1004BD840];
  v12 = +[MRAVClusterController sharedController];
  LODWORD(v8) = [v12 needsCommandRedirection];

  if (v8)
  {
    v13 = +[MRAVClusterController sharedController];
    v14 = [v13 clusterLeaderUID];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10011BF58;
    v48[3] = &unk_1004BD868;
    v49 = v14;
    v15 = v14;
    v16 = [v10 msv_firstWhere:v48];

    v11 = v16;
  }

  v38 = [(MRDeviceInfo *)self->_deviceInfo effectiveParentGroupContainsDiscoverableGroupLeader];
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
        if ((v38 & 1) != 0 || ![v33 isEqual:*(*(&v44 + 1) + 8 * i)])
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
                v26 = [v25 baseGroupID];
                v27 = [v25 baseParentGroupID];
                if (([v27 isEqualToString:v18] & 1) == 0 && objc_msgSend(v18, "isEqualToString:", v26))
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

- (id)resolveOutputDevices:(id)a3
{
  discoverySession = self->_discoverySession;
  v5 = a3;
  [(MRDRemoteControlDiscoverySession *)discoverySession nativeOutputDevice];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011C148;
  v10 = v9[3] = &unk_1004BD8D0;
  v11 = &stru_1004BD8A8;
  v9[4] = self;
  v6 = v10;
  v7 = [v5 mr_map:v9];

  return v7;
}

- (id)filterOutputDevices:(id)a3 remoteControllableOnly:(BOOL)a4
{
  v6 = [(MRDHostedRoutingController *)self resolveOutputDevices:a3];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10011C588;
  v41[3] = &unk_1004BD8F0;
  v42 = a4;
  v7 = [v6 mr_filter:v41];

  v8 = [(MRDeviceInfo *)self->_deviceInfo senderDefaultGroupUID];
  v9 = +[NSMutableSet set];
  +[NSMutableArray array];
  v32 = v31 = v8;
  if (v8)
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
        v16 = [v15 groupID];
        v17 = [v15 parentGroupIdentifier];
        if ([v16 isEqualToString:v17])
        {
          goto LABEL_13;
        }

        v18 = [v15 parentGroupIdentifier];
        if (![v18 isEqualToString:v31] || (objc_msgSend(v15, "isAirPlayReceiverSessionActive") & 1) == 0)
        {

LABEL_13:
          continue;
        }

        v19 = [v15 parentGroupContainsDiscoverableLeader];

        if ((v19 & 1) == 0)
        {
          v20 = [v15 groupID];
          [v9 addObject:v20];

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
        v27 = [v26 groupID];
        v28 = [v9 containsObject:v27];

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

- (BOOL)isOutputContextInUse:(id)a3
{
  v4 = a3;
  v5 = [v4 contextID];
  if (v5)
  {
    v6 = [(MRDHostedExternalDeviceManager *)self->_externalDeviceManager availableExternalDevices];
    v7 = [v6 allKeys];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10011C804;
    v11[3] = &unk_1004B90C8;
    v12 = v4;
    v8 = [v7 msv_firstWhere:v11];
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
  v8 = self;
  v5 = v3;
  dispatch_async(serialQueue, v6);
}

@end