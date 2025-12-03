@interface NMCServer
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NMCServer)init;
- (id)_locationManagerForBundleIdentifier:(id)identifier;
- (id)_locationManagerForEffectiveBundleIdentifier:(id)identifier;
- (void)_checkinWithSubscriptionStateSummary;
- (void)_debug_fetchDiagnosticsString:(id)string;
- (void)_debug_fetchServerConfiguration:(id)configuration;
- (void)_enumerateMapsPeerConnectionsUnderAssertionNamed:(id)named usingBlock:(id)block;
- (void)_forgetConnection:(id)connection reason:(id)reason;
- (void)_loadDataFromURL:(id)l completionHandler:(id)handler;
- (void)_openURL:(id)l forMessage:(id)message withRouteContext:(id)context underAssertionNamed:(id)named;
- (void)_performServiceRequest:(id)request traits:(id)traits requestType:(int)type auditToken:(id)token completionHandler:(id)handler;
- (void)_registerMessageObservers;
- (void)_registerXPCRoutes;
- (void)_sendTileGroupDidChange;
- (void)_syncConfigStore;
- (void)_syncConfigStore:(id)store;
- (void)_syncManager:(id)manager didUpdateDroppedPin:(id)pin;
- (void)_syncSubscriptionInfoIfNecessaryWithExistingHash:(id)hash;
- (void)_updateManifestConfiguration;
- (void)_updatePairedDeviceConfiguration;
- (void)checkinForNavigationControl;
- (void)checkinWithCurrentTileGroupIdentifier:(id)identifier;
- (void)connection:(id)connection didChangeDeviceConnectivity:(BOOL)connectivity;
- (void)connectionNeedsStateSynchronization:(id)synchronization;
- (void)dealloc;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)experimentConfigurationDidChange:(id)change;
- (void)fetchTilesForMessage:(id)message;
- (void)setDroppedPin:(id)pin;
- (void)setLocationDidUpdate:(id)update;
- (void)startOrStopDownloadForSubscriptionIdentifiers:(id)identifiers;
- (void)syncManager:(id)manager didRequestInitialSync:(id)sync;
- (void)syncManagerDidUpdate:(id)update;
- (void)updateObservedStateSubscriptionIdentifiers;
@end

@implementation NMCServer

- (NMCServer)init
{
  v47.receiver = self;
  v47.super_class = NMCServer;
  v2 = [(NMCServer *)&v47 init];
  if (v2)
  {
    v3 = [[NMCSyncManager alloc] initWithDelegate:v2];
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    v5 = objc_alloc_init(NSMutableArray);
    mapsPeerConnections = v2->_mapsPeerConnections;
    v2->_mapsPeerConnections = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.geo.NMCServer", v7);
    tileLoaderQueue = v2->_tileLoaderQueue;
    v2->_tileLoaderQueue = v8;

    v10 = objc_alloc_init(NMCRoutePlanningController);
    routePlanningController = v2->_routePlanningController;
    v2->_routePlanningController = v10;

    v12 = objc_alloc_init(NSLock);
    requestIdentifierToPendingTileLoaderLock = v2->_requestIdentifierToPendingTileLoaderLock;
    v2->_requestIdentifierToPendingTileLoaderLock = v12;

    v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v15 = [NSURLSession sessionWithConfiguration:v14];
    urlSession = v2->_urlSession;
    v2->_urlSession = v15;

    [(NMCServer *)v2 _registerXPCRoutes];
    v17 = +[GEOExperimentConfiguration sharedConfiguration];
    v18 = dispatch_get_global_queue(0, 0);
    [v17 addExperimentObserver:v2 queue:v18];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v2 selector:"_syncConfigStore" name:GEOConfigNeedsWatchSyncNotification object:0];

    objc_initWeak(&location, v2);
    v20 = GEOConfigNeedsWatchSyncDarwinNotification;
    v21 = dispatch_get_global_queue(17, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10004CF78;
    handler[3] = &unk_100086438;
    objc_copyWeak(&v45, &location);
    notify_register_dispatch(v20, &v2->_configStoreNeedsSyncToken, v21, handler);

    v22 = GEOMapDataSubscriptionManagerFullyDownloadedSubscriptionsDidChangeDarwinNotification;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10004CFB8;
    v42[3] = &unk_100086438;
    objc_copyWeak(&v43, &location);
    notify_register_dispatch(v22, &v2->_subscriptionsChangedToken, v21, v42);

    v23 = +[NRPairedDeviceRegistry sharedInstance];
    registry = v2->_registry;
    v2->_registry = v23;

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v2 selector:"_updateManifestConfiguration" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v2 selector:"_updateManifestConfiguration" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

    [(NMCServer *)v2 _updateManifestConfiguration];
    v27 = objc_alloc_init(NSMutableDictionary);
    locationManagers = v2->_locationManagers;
    v2->_locationManagers = v27;

    v29 = objc_alloc_init(NSLock);
    locationManagersLock = v2->_locationManagersLock;
    v2->_locationManagersLock = v29;

    v31 = objc_alloc_init(NMMessageQueue);
    [(NMMessageQueue *)v31 setMaximumInFlightMessagesCount:GEOConfigGetUInteger()];
    [(NMMessageQueue *)v31 setMaximumPendingMessagesCount:GEOConfigGetUInteger()];
    v32 = +[NMCGizmoConnection sharedInstance];
    [v32 setMessageQueue:v31 forType:202];

    v33 = objc_alloc_init(NMTileMessageQueue);
    tileMessageQueue = v2->_tileMessageQueue;
    v2->_tileMessageQueue = v33;

    [(NMMessageQueue *)v2->_tileMessageQueue setMaximumInFlightMessagesSize:GEOConfigGetUInteger()];
    v35 = +[NMCGizmoConnection sharedInstance];
    [v35 setMessageQueue:v2->_tileMessageQueue forType:4];

    v36 = +[NMCGizmoConnection sharedInstance];
    [v36 setMessageQueue:v2->_tileMessageQueue forType:1];

    v37 = objc_alloc_init(NMMessageQueue);
    [(NMMessageQueue *)v37 setMaximumInFlightMessagesSize:0x200000];
    v38 = +[NMCGizmoConnection sharedInstance];
    [v38 setMessageQueue:v37 forType:103];

    [(NMCServer *)v2 _registerMessageObservers];
    v39 = +[NMCGizmoConnection sharedInstance];
    [v39 addConnectionObserver:v2];

    v40 = sub_10001418C();
    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  activeDevice = self->_activeDevice;
  if (activeDevice)
  {
    v7[0] = NRDevicePropertySystemVersion;
    v7[1] = NRDevicePropertySystemBuildVersion;
    v4 = [NSArray arrayWithObjects:v7 count:2];
    [(NRDevice *)activeDevice removePropertyObserver:self forPropertyChanges:v4];
  }

  v5 = +[NMCGizmoConnection sharedInstance];
  [v5 removeConnectionObserver:self];

  [(GEOResourceManifestManager *)self->_manifestManager removeTileGroupObserver:self];
  v6.receiver = self;
  v6.super_class = NMCServer;
  [(NMCServer *)&v6 dealloc];
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D194;
  block[3] = &unk_100084E80;
  block[4] = self;
  if (qword_10009E878 != -1)
  {
    dispatch_once(&qword_10009E878, block);
  }

  v2 = qword_10009E870;

  return v2;
}

- (void)_registerMessageObservers
{
  objc_initWeak(location, self);
  v3 = +[NMCGizmoConnection sharedInstance];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10004DB3C;
  v72[3] = &unk_100084F38;
  objc_copyWeak(&v73, location);
  v4 = [v3 addMessageObserverForType:1 callback:v72];

  v5 = +[NMCGizmoConnection sharedInstance];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10004DBA0;
  v70[3] = &unk_100084F38;
  objc_copyWeak(&v71, location);
  v6 = [v5 addMessageObserverForType:2 callback:v70];

  v7 = +[NMCGizmoConnection sharedInstance];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10004DCF0;
  v68[3] = &unk_100084F38;
  objc_copyWeak(&v69, location);
  v8 = [v7 addMessageObserverForType:3 callback:v68];

  v9 = +[NMCGizmoConnection sharedInstance];
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10004DDB0;
  v66[3] = &unk_100084F38;
  objc_copyWeak(&v67, location);
  v10 = [v9 addMessageObserverForType:100 callback:v66];

  v11 = +[NMCGizmoConnection sharedInstance];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10004DE44;
  v64[3] = &unk_100084F38;
  objc_copyWeak(&v65, location);
  v12 = [v11 addMessageObserverForType:101 callback:v64];

  v13 = +[NMCGizmoConnection sharedInstance];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10004DFCC;
  v62[3] = &unk_100084F38;
  objc_copyWeak(&v63, location);
  v14 = [v13 addMessageObserverForType:200 callback:v62];

  v15 = +[NMCGizmoConnection sharedInstance];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10004E070;
  v60[3] = &unk_100084F38;
  objc_copyWeak(&v61, location);
  v16 = [v15 addMessageObserverForType:201 callback:v60];

  v17 = +[NMCGizmoConnection sharedInstance];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_10004E114;
  v59[3] = &unk_100086928;
  v59[4] = self;
  v18 = [v17 addMessageObserverForType:302 callback:v59];

  v19 = +[NMCGizmoConnection sharedInstance];
  v20 = [v19 addMessageObserverForType:303 callback:&stru_100086948];

  v21 = +[NMCGizmoConnection sharedInstance];
  v22 = [v21 addMessageObserverForType:313 callback:&stru_100086968];

  v23 = +[NMCGizmoConnection sharedInstance];
  v24 = [v23 addMessageObserverForType:314 callback:&stru_100086988];

  v25 = +[NMCGizmoConnection sharedInstance];
  v26 = [v25 addMessageObserverForType:500 callback:&stru_1000869A8];

  v27 = +[NMCGizmoConnection sharedInstance];
  v28 = [v27 addMessageObserverForType:501 callback:&stru_1000869F0];

  v29 = +[NMCGizmoConnection sharedInstance];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_10004EC3C;
  v57[3] = &unk_100084F38;
  objc_copyWeak(&v58, location);
  v30 = [v29 addMessageObserverForType:502 callback:v57];

  v31 = +[NMCGizmoConnection sharedInstance];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10004EFD4;
  v55[3] = &unk_100086A40;
  v55[4] = self;
  objc_copyWeak(&v56, location);
  v32 = [v31 addMessageObserverForType:103 callback:v55];

  v33 = +[NMCGizmoConnection sharedInstance];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10004F518;
  v54[3] = &unk_100086928;
  v54[4] = self;
  v34 = [v33 addMessageObserverForType:401 callback:v54];

  v35 = +[NMCGizmoConnection sharedInstance];
  v36 = [v35 addMessageObserverForType:51 callback:&stru_100086A60];

  v37 = +[NMCGizmoConnection sharedInstance];
  v38 = [v37 addMessageObserverForType:52 callback:&stru_100086AA8];

  v39 = +[NMCGizmoConnection sharedInstance];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100055CE8;
  v52[3] = &unk_100084F38;
  objc_copyWeak(&v53, location);
  v40 = [v39 addMessageObserverForType:57 callback:v52];

  v41 = +[NMCGizmoConnection sharedInstance];
  v42 = [v41 addMessageObserverForType:58 callback:&stru_100086AC8];

  v43 = +[NMCGizmoConnection sharedInstance];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10004FD10;
  v51[3] = &unk_100086928;
  v51[4] = self;
  v44 = [v43 addMessageObserverForType:59 callback:v51];

  v45 = +[NMCGizmoConnection sharedInstance];
  v46 = [v45 addMessageObserverForType:63 callback:&stru_100086AE8];

  v47 = +[NMCGizmoConnection sharedInstance];
  v48 = [v47 addMessageObserverForType:66 callback:&stru_100086B28];

  v49 = +[NMCGizmoConnection sharedInstance];
  v50 = [v49 addMessageObserverForType:67 callback:&stru_100086B68];

  objc_destroyWeak(&v53);
  objc_destroyWeak(&v56);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&v63);
  objc_destroyWeak(&v65);
  objc_destroyWeak(&v67);
  objc_destroyWeak(&v69);
  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(location);
}

- (void)_updatePairedDeviceConfiguration
{
  getActivePairedDevice = [(NRPairedDeviceRegistry *)self->_registry getActivePairedDevice];
  activeDevice = self->_activeDevice;
  if (getActivePairedDevice != activeDevice)
  {
    v5 = NRDevicePropertySystemVersion;
    v6 = NRDevicePropertySystemBuildVersion;
    v10[0] = NRDevicePropertySystemVersion;
    v10[1] = NRDevicePropertySystemBuildVersion;
    v7 = [NSArray arrayWithObjects:v10 count:2];
    [(NRDevice *)activeDevice removePropertyObserver:self forPropertyChanges:v7];

    v9[0] = v5;
    v9[1] = v6;
    v8 = [NSArray arrayWithObjects:v9 count:2];
    [(NRDevice *)getActivePairedDevice addPropertyObserver:self forPropertyChanges:v8];

    objc_storeStrong(&self->_activeDevice, getActivePairedDevice);
  }
}

- (void)_updateManifestConfiguration
{
  v3 = self->_registry;
  objc_sync_enter(v3);
  [(NMCServer *)self _updatePairedDeviceConfiguration];
  if (self->_activeDevice)
  {
    v4 = [GEOResourceManifestConfiguration configurationWithPairedDevice:?];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  v5 = [(GEOResourceManifestConfiguration *)self->_manifestConfiguration isEqual:v4];
  objc_storeStrong(&self->_manifestConfiguration, v4);
  if ((v5 & 1) == 0)
  {
    manifestManager = self->_manifestManager;
    if (manifestManager)
    {
      [(GEOResourceManifestManager *)manifestManager removeTileGroupObserver:self];
    }

    tileLoader = self->_tileLoader;
    self->_tileLoader = 0;

    v8 = self->_manifestManager;
    self->_manifestManager = 0;

    if (v4)
    {
      v9 = [GEOResourceManifestManager modernManagerForConfiguration:self->_manifestConfiguration];
      v10 = self->_manifestManager;
      self->_manifestManager = v9;

      [(GEOResourceManifestManager *)self->_manifestManager addTileGroupObserver:self queue:&_dispatch_main_q];
      v11 = [GEOTileLoader modernLoaderForResourceManifestConfiguration:self->_manifestConfiguration locale:0];
      v12 = self->_tileLoader;
      self->_tileLoader = v11;

      [(GEOResourceManifestManager *)self->_manifestManager openServerConnection];
      v13 = self->_manifestManager;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000502A0;
      v14[3] = &unk_100086278;
      v14[4] = self;
      [(GEOResourceManifestManager *)v13 updateManifestIfNecessary:v14];
    }
  }
}

- (void)_performServiceRequest:(id)request traits:(id)traits requestType:(int)type auditToken:(id)token completionHandler:(id)handler
{
  requestCopy = request;
  traitsCopy = traits;
  tokenCopy = token;
  handlerCopy = handler;
  if (type > 2)
  {
    if (type == 3)
    {
      v16 = objc_alloc_init(GEOLocationShifter);
      [v16 _fetchSerializedCachedShiftFunctionResponseForRequest:requestCopy callbackQueue:self->_connectionQueue completionHandler:handlerCopy];
      goto LABEL_13;
    }

    if (type == 4)
    {
      v16 = [[GEODirectionsRequest alloc] initWithData:requestCopy];
      v20 = +[GEODirectionsRequester sharedRequester];
      connectionQueue = self->_connectionQueue;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100050764;
      v27[3] = &unk_100086C08;
      v28 = handlerCopy;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000507C8;
      v25[3] = &unk_100086C30;
      v26 = v28;
      [v20 startRequest:v16 traits:traitsCopy auditToken:tokenCopy callbackQueue:connectionQueue finished:v27 networkActivity:0 error:v25];

      v19 = v28;
      goto LABEL_8;
    }
  }

  else
  {
    if (type == 1)
    {
      v22 = [[GEOPDPlaceRequest alloc] initWithData:requestCopy];
      v23 = +[GEOPlaceCardRequester sharedRequester];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10005066C;
      v33[3] = &unk_100086B90;
      v34 = handlerCopy;
      v24 = [v23 performPlaceDataRequest:v22 traits:traitsCopy cachePolicy:0 timeout:tokenCopy auditToken:0 throttleToken:0 networkActivity:0.0 requesterHandler:v33];

      goto LABEL_11;
    }

    if (type == 2)
    {
      v16 = [[GEOETARequest alloc] initWithData:requestCopy];
      v17 = +[GEOETARequester sharedRequester];
      v18 = self->_connectionQueue;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000506E8;
      v31[3] = &unk_100086BB8;
      v32 = handlerCopy;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10005074C;
      v29[3] = &unk_100086BE0;
      v30 = v32;
      [v17 startSimpleETARequest:v16 auditToken:tokenCopy throttleToken:0 traits:traitsCopy callbackQueue:v18 finished:v31 networkActivity:0 error:v29];

      v19 = v32;
LABEL_8:

LABEL_13:
      goto LABEL_14;
    }
  }

  v22 = [NSError GEOErrorWithCode:-6];
  (*(handlerCopy + 2))(handlerCopy, 0, v22);
LABEL_11:

LABEL_14:
}

- (void)_syncConfigStore
{
  v3 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050884;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_syncConfigStore:(id)store
{
  v8 = 0;
  v3 = [NSPropertyListSerialization dataWithPropertyList:store format:200 options:0 error:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = objc_alloc_init(NMMessage);
    [(NMMessage *)v5 setType:56];
    v6 = objc_alloc_init(NMArgument);
    [(NMArgument *)v6 setTag:1];
    [(NMArgument *)v6 setDataValue:v3];
    [(NMMessage *)v5 addArgument:v6];
    v7 = +[NMCGizmoConnection sharedInstance];
    [v7 sendMessage:v5 options:0];
  }

  else
  {
    v5 = sub_10005318C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to serialize config store for sync: %{public}@", buf, 0xCu);
    }
  }
}

- (void)_enumerateMapsPeerConnectionsUnderAssertionNamed:(id)named usingBlock:(id)block
{
  connectionQueue = self->_connectionQueue;
  blockCopy = block;
  namedCopy = named;
  dispatch_assert_queue_V2(connectionQueue);
  v9 = [(NSMutableArray *)self->_mapsPeerConnections copy];
  sub_100013B60(v9, namedCopy, blockCopy);
}

- (void)_openURL:(id)l forMessage:(id)message withRouteContext:(id)context underAssertionNamed:(id)named
{
  lCopy = l;
  messageCopy = message;
  contextCopy = context;
  v11 = objc_alloc_init(NMReply);
  if (lCopy)
  {
    v12 = +[MapsCompanionDaemonIPCInterface sharedInterface];
    v13 = objc_alloc_init(IPCLoadDirectionsMessage);
    [(IPCLoadDirectionsMessage *)v13 setUrl:lCopy];
    [(IPCLoadDirectionsMessage *)v13 setOriginIsWatch:1];
    [(IPCLoadDirectionsMessage *)v13 setRouteContextData:contextCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100050C74;
    v15[3] = &unk_1000851A0;
    v16 = v11;
    v17 = messageCopy;
    [v12 loadDirections:v13 completion:v15];
  }

  else
  {
    v12 = [NSError errorWithDomain:@"NMCServerDomain" code:1 userInfo:0];
    v13 = [[NMArgument alloc] _nm_initWithErrorValue:v12 tag:3];
    [(NMReply *)v11 addArgument:v13];
    v14 = +[NMCGizmoConnection sharedInstance];
    [v14 sendReply:v11 forMessage:messageCopy options:0];
  }
}

- (id)_locationManagerForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(NSLock *)self->_locationManagersLock lock];
    v5 = [(NSMutableDictionary *)self->_locationManagers objectForKey:identifierCopy];
    if (!v5)
    {
      v5 = [[NMCLocationManager alloc] initWithBundleIdentifier:identifierCopy];
      [(NMCLocationManager *)v5 setLocationDidUpdate:self->_locationDidUpdate];
      [(NSMutableDictionary *)self->_locationManagers setObject:v5 forKey:identifierCopy];
    }

    [(NSLock *)self->_locationManagersLock unlock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_locationManagerForEffectiveBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(NSLock *)self->_locationManagersLock lock];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allValues = [(NSMutableDictionary *)self->_locationManagers allValues];
    v6 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        effectiveBundleIdentifier = [v10 effectiveBundleIdentifier];
        v12 = [effectiveBundleIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v13 = v10;

      if (v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }

    v13 = [[NMCLocationManager alloc] initWithEffectiveBundleIdentifier:identifierCopy];
    [(NMCLocationManager *)v13 setLocationDidUpdate:self->_locationDidUpdate];
    locationManagers = self->_locationManagers;
    bundleIdentifier = [(NMCLocationManager *)v13 bundleIdentifier];
    [(NSMutableDictionary *)locationManagers setObject:v13 forKey:bundleIdentifier];

LABEL_13:
    [(NSLock *)self->_locationManagersLock unlock];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setLocationDidUpdate:(id)update
{
  updateCopy = update;
  v5 = [updateCopy copy];
  locationDidUpdate = self->_locationDidUpdate;
  self->_locationDidUpdate = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_locationManagers allValues];
  v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v12 + 1) + 8 * v11) setLocationDidUpdate:updateCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)connection:(id)connection didChangeDeviceConnectivity:(BOOL)connectivity
{
  if (!connectivity)
  {
    [(NSLock *)self->_locationManagersLock lock];
    v5 = [(NSMutableDictionary *)self->_locationManagers copy];
    [(NSMutableDictionary *)self->_locationManagers removeAllObjects];
    [(NSLock *)self->_locationManagersLock unlock];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v6 objectForKey:{*(*(&v12 + 1) + 8 * v10), v12}];
          [v11 reset];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)connectionNeedsStateSynchronization:(id)synchronization
{
  if ([synchronization isNearbyAndUsable])
  {
    [(NMCSyncManager *)self->_syncManager synchronizePreferences];
    [(NMCRoutePlanningController *)self->_routePlanningController sendPreviewRoutesIfAvailable];
    [(NMCServer *)self updateObservedStateSubscriptionIdentifiers];

    [(NMCServer *)self _checkinWithSubscriptionStateSummary];
  }

  else
  {
    v4 = sub_100053324();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Connection needs sync but it's not nearby and usable; ignoring", v5, 2u);
    }
  }
}

- (void)experimentConfigurationDidChange:(id)change
{
  v4 = objc_alloc_init(NMMessage);
  [(NMMessage *)v4 setType:53];
  v3 = +[NMCGizmoConnection sharedInstance];
  [v3 sendMessage:v4 options:0];
}

- (void)fetchTilesForMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy argumentForTag:102];
  tileRequestValues = [v5 tileRequestValues];

  if ([tileRequestValues count])
  {
    v7 = [messageCopy argumentForTag:103];
    stringValue = [v7 stringValue];

    if (stringValue)
    {
      [(NSLock *)self->_requestIdentifierToPendingTileLoaderLock lock];
      requestIdentifierToPendingTileLoader = self->_requestIdentifierToPendingTileLoader;
      if (!requestIdentifierToPendingTileLoader)
      {
        v10 = objc_alloc_init(NSMutableDictionary);
        v11 = self->_requestIdentifierToPendingTileLoader;
        self->_requestIdentifierToPendingTileLoader = v10;

        requestIdentifierToPendingTileLoader = self->_requestIdentifierToPendingTileLoader;
      }

      v12 = [(NSMutableDictionary *)requestIdentifierToPendingTileLoader objectForKey:stringValue];

      if (v12)
      {
        [(NSLock *)self->_requestIdentifierToPendingTileLoaderLock unlock];
        NSLog(@"Tile request identifier %@ is already in-progress. Ignoring subsequent request to start", stringValue);
      }

      else
      {
        v13 = [messageCopy argumentForTag:4];
        stringValue2 = [v13 stringValue];

        if (stringValue2)
        {
          v15 = [[GEOApplicationAuditToken alloc] initWithProxiedExternalApplicationBundleId:stringValue2];
        }

        else
        {
          v15 = 0;
        }

        v16 = [messageCopy argumentForTag:7];
        stringValue3 = [v16 stringValue];

        if ([stringValue3 length])
        {
          v18 = [v15 overrideTokenWithOfflineCohortId:stringValue3];

          v15 = v18;
        }

        v19 = [[NMCTileLoader alloc] initWithRequestIdentifier:stringValue manifestConfiguration:self->_manifestConfiguration tileRequests:tileRequestValues auditToken:v15];
        [(NSMutableDictionary *)self->_requestIdentifierToPendingTileLoader setObject:v19 forKey:stringValue];
        [(NSLock *)self->_requestIdentifierToPendingTileLoaderLock unlock];
        objc_initWeak(&location, self);
        tileLoaderQueue = self->_tileLoaderQueue;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100051884;
        v21[3] = &unk_100086D08;
        v22 = messageCopy;
        objc_copyWeak(&v24, &location);
        v23 = stringValue;
        [(NMCTileLoader *)v19 startWithCallbackQueue:tileLoaderQueue tileHandler:&stru_100086CE0 completionHandler:v21];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)checkinWithCurrentTileGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activeTileGroup = [(GEOResourceManifestManager *)self->_manifestManager activeTileGroup];
  uniqueIdentifier = [activeTileGroup uniqueIdentifier];
  if (uniqueIdentifier)
  {
    v7 = uniqueIdentifier;
    activeTileGroup2 = [(GEOResourceManifestManager *)self->_manifestManager activeTileGroup];
    uniqueIdentifier2 = [activeTileGroup2 uniqueIdentifier];
    v10 = [identifierCopy isEqualToString:uniqueIdentifier2];

    if ((v10 & 1) == 0)
    {
      [(NMCServer *)self _sendTileGroupDidChange];
      goto LABEL_8;
    }
  }

  else
  {
  }

  activeTileGroup3 = [(GEOResourceManifestManager *)self->_manifestManager activeTileGroup];

  if (!identifierCopy || !activeTileGroup3)
  {
    [(GEOResourceManifestManager *)self->_manifestManager openServerConnection];
    manifestManager = self->_manifestManager;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100051AD0;
    v13[3] = &unk_100086278;
    v13[4] = self;
    [(GEOResourceManifestManager *)manifestManager updateManifest:v13];
  }

LABEL_8:
}

- (void)_sendTileGroupDidChange
{
  activeTileGroup = [(GEOResourceManifestManager *)self->_manifestManager activeTileGroup];
  v2 = objc_alloc_init(NMMessage);
  [(NMMessage *)v2 setType:102];
  v3 = objc_alloc_init(NMArgument);
  [(NMArgument *)v3 setTag:1];
  data = [activeTileGroup data];
  [(NMArgument *)v3 setDataValue:data];

  [(NMMessage *)v2 addArgument:v3];
  v5 = +[NMCGizmoConnection sharedInstance];
  [v5 sendMessage:v2 options:0];
}

- (void)checkinForNavigationControl
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = sub_10005318C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "checkinForNavigationControl on connection %@", &v6, 0xCu);
  }

  companionControllerConnection = self->_companionControllerConnection;
  self->_companionControllerConnection = v3;
}

- (void)setDroppedPin:(id)pin
{
  if (pin)
  {
    pinCopy = pin;
    v7 = objc_alloc_init(MSPPinStorage);
    [v7 setType:1];
    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];
    [v7 setIdentifier:uUIDString];

    [v7 setDroppedPin:pinCopy];
  }

  else
  {
    v7 = 0;
  }

  [(NMCSyncManager *)self->_syncManager setDroppedPin:v7];
}

- (void)_debug_fetchServerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_alloc_init(NMMessage);
  [(NMMessage *)v4 setType:1500];
  v5 = +[NMCGizmoConnection sharedInstance];
  v10 = @"NMSendMessageOptionReplyTimeout";
  v11 = &off_10008C810;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100051E8C;
  v8[3] = &unk_100086D30;
  v9 = configurationCopy;
  v7 = configurationCopy;
  [v5 sendMessage:v4 options:v6 withReply:v8];
}

- (void)_debug_fetchDiagnosticsString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NMMessage);
  [(NMMessage *)v4 setType:1501];
  v5 = +[NMCGizmoConnection sharedInstance];
  v10 = @"NMSendMessageOptionReplyTimeout";
  v11 = &off_10008C810;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100052094;
  v8[3] = &unk_100086D30;
  v9 = stringCopy;
  v7 = stringCopy;
  [v5 sendMessage:v4 options:v6 withReply:v8];
}

- (void)syncManagerDidUpdate:(id)update
{
  updateCopy = update;
  pins = [updateCopy pins];
  firstObject = [pins firstObject];
  droppedPin = [firstObject droppedPin];
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052248;
  block[3] = &unk_100085E38;
  block[4] = self;
  v12 = updateCopy;
  v13 = droppedPin;
  v9 = droppedPin;
  v10 = updateCopy;
  dispatch_async(connectionQueue, block);
}

- (void)_syncManager:(id)manager didUpdateDroppedPin:(id)pin
{
  pinCopy = pin;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v6 = [(NSMutableArray *)self->_mapsPeerConnections copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        remoteObjectProxy = [*(*(&v13 + 1) + 8 * v11) remoteObjectProxy];
        [remoteObjectProxy updateDroppedPin:pinCopy];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)syncManager:(id)manager didRequestInitialSync:(id)sync
{
  syncCopy = sync;
  v5 = objc_alloc_init(NMMessage);
  [(NMMessage *)v5 setType:50];
  v6 = +[NMCGizmoConnection sharedInstance];
  v12 = @"NMSendMessageOptionReplyTimeout";
  GEOConfigGetDouble();
  v7 = [NSNumber numberWithDouble:?];
  v13 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000524F0;
  v10[3] = &unk_100086D30;
  v11 = syncCopy;
  v9 = syncCopy;
  [v6 sendMessage:v5 options:v8 withReply:v10];
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  changeCopy = change;
  if (([changeCopy isEqualToString:NRDevicePropertySystemVersion] & 1) != 0 || objc_msgSend(changeCopy, "isEqualToString:", NRDevicePropertySystemBuildVersion))
  {
    [(NMCServer *)self _updateManifestConfiguration];
  }
}

- (void)_registerXPCRoutes
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.Maps.NMCServer.XPC", v3);
  connectionQueue = self->_connectionQueue;
  self->_connectionQueue = v4;

  v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanomaps.xpc.Maps"];
  listener = self->_listener;
  self->_listener = v6;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener _setQueue:self->_connectionQueue];
  [(NSXPCListener *)self->_listener resume];
  v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanomaps.xpc.GeoServices"];
  geoListener = self->_geoListener;
  self->_geoListener = v8;

  [(NSXPCListener *)self->_geoListener setDelegate:self];
  [(NSXPCListener *)self->_geoListener _setQueue:self->_connectionQueue];
  v10 = self->_geoListener;

  [(NSXPCListener *)v10 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_connectionQueue);
  if (self->_geoListener == listenerCopy)
  {
    v11 = [connectionCopy valueForEntitlement:@"com.apple.nanomapscd.spi"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 BOOLValue])
    {
      v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEONMCXPCInterface];
      [connectionCopy setExportedInterface:v12];

      [connectionCopy setExportedObject:self];
      [connectionCopy _setQueue:self->_connectionQueue];
      [connectionCopy resume];
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCDaemonControlling];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCAppControlling];
    [connectionCopy setRemoteObjectInterface:v9];

    [connectionCopy _setQueue:self->_connectionQueue];
    objc_initWeak(&location, self);
    objc_initWeak(&from, connectionCopy);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000529DC;
    v20[3] = &unk_100085720;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    [connectionCopy setInvalidationHandler:v20];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100052A48;
    v17 = &unk_100085720;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    [connectionCopy setInterruptionHandler:&v14];
    [(NSMutableArray *)self->_mapsPeerConnections addObject:connectionCopy, v14, v15, v16, v17];
    [connectionCopy resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    v10 = 1;
  }

  return v10;
}

- (void)_forgetConnection:(id)connection reason:(id)reason
{
  connectionCopy = connection;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_connectionQueue);
  if (connectionCopy)
  {
    if (self->_companionControllerConnection == connectionCopy)
    {
      v9 = sub_100001B24();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

      if (v10)
      {
        v8 = @"NanoCompanionController";
      }

      else
      {
        v8 = 0;
      }

      companionControllerConnection = self->_companionControllerConnection;
      self->_companionControllerConnection = 0;

      [(NMCRoutePlanningController *)self->_routePlanningController clearPreviewRoutesIfNeeded];
    }

    else
    {
      v8 = 0;
    }

    [(NSMutableArray *)self->_mapsPeerConnections removeObject:connectionCopy];
    v12 = sub_10005318C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      if (!v8)
      {
        v8 = @"Other";
      }

      v13 = [(NSMutableArray *)self->_mapsPeerConnections count];
      v14 = 138413058;
      v15 = reasonCopy;
      v16 = 2112;
      v17 = v8;
      v18 = 2048;
      v19 = v13;
      v20 = 2112;
      v21 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ XPC connection %@ (%lu remaining peers) %@", &v14, 0x2Au);
    }
  }
}

- (void)startOrStopDownloadForSubscriptionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(NMMessage);
  [(NMMessage *)v6 setType:64];
  v4 = objc_alloc_init(NMArgument);
  [(NMArgument *)v4 setDataValue:identifiersCopy];

  [(NMArgument *)v4 setTag:1];
  [(NMMessage *)v6 addArgument:v4];
  v5 = +[NMCGizmoConnection sharedInstance];
  [v5 sendMessage:v6 options:0 withReply:&stru_100086D90];
}

- (void)_loadDataFromURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (l && handlerCopy)
  {
    urlSession = self->_urlSession;
    sub_100052E18();
    v11 = 3221225472;
    v12 = sub_1000507E0;
    v13 = &unk_100086C58;
    v14 = v7;
    v9 = [(NSURLSession *)urlSession dataTaskWithURL:l completionHandler:v10];
    [v9 resume];
  }
}

- (void)_syncSubscriptionInfoIfNecessaryWithExistingHash:(id)hash
{
  hashCopy = hash;
  activeDevice = self->_activeDevice;
  if (activeDevice)
  {
    v6 = activeDevice;
    v7 = objc_alloc_init(GEOMapDataSubscriptionManager);
    connectionQueue = self->_connectionQueue;
    sub_100052E18();
    v10 = 3221225472;
    v11 = sub_100055FD8;
    v12 = &unk_100086C80;
    v13 = hashCopy;
    [v7 _fetchSubscriptionsForSyncToWatch:v6 callbackQueue:connectionQueue completionHandler:v9];
  }
}

- (void)_checkinWithSubscriptionStateSummary
{
  v3 = GeoOfflineConfig_SubscriptionIDSMessagesMode[1];
  if (GEOConfigGetUInteger() != 2)
  {
    v4 = objc_alloc_init(GEOMapDataSubscriptionManager);
    [v4 _fetchSerializedPairedDeviceSubscriptionsSummaryWithCallbackQueue:self->_connectionQueue completionHandler:&stru_100086CC0];
  }
}

- (void)updateObservedStateSubscriptionIdentifiers
{
  v3 = GeoOfflineConfig_SubscriptionIDSMessagesMode[1];
  if (GEOConfigGetUInteger() != 2)
  {
    v4 = objc_alloc_init(GEOMapDataSubscriptionManager);
    [v4 _fetchSerializedPairedDeviceSubscriptionIdentifiersToObserveWithCallbackQueue:self->_connectionQueue completionHandler:&stru_100086D50];
  }
}

@end