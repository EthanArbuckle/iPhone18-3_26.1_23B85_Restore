@interface NavdMapsSuggestionsController
- (NavdMapsSuggestionsController)init;
- (NavdMapsSuggestionsController)initWithResourceDepot:(id)depot sharedRegister:(id)register;
- (void)dealloc;
- (void)startDoomIfNotStarted;
- (void)valueChangedForMapsFeature:(id)feature enabled:(BOOL)enabled;
@end

@implementation NavdMapsSuggestionsController

- (NavdMapsSuggestionsController)init
{
  v3 = [[MapsSuggestionsSelfBuildingResourceDepot alloc] initWithName:@"NavdResourceDepot"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EF0C;
  block[3] = &unk_100065BA0;
  v9 = v3;
  if (qword_100075978 != -1)
  {
    dispatch_once(&qword_100075978, block);
  }

  v4 = v9;
  v5 = qword_100075970;

  v6 = [(NavdMapsSuggestionsController *)self initWithResourceDepot:v3 sharedRegister:v5];
  return v6;
}

- (NavdMapsSuggestionsController)initWithResourceDepot:(id)depot sharedRegister:(id)register
{
  depotCopy = depot;
  registerCopy = register;
  v57.receiver = self;
  v57.super_class = NavdMapsSuggestionsController;
  v9 = [(NavdMapsSuggestionsController *)&v57 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceDepot, depot);
    v11 = objc_alloc_init(NavdRouteGeniusServer);
    routeGeniusServer = v10->_routeGeniusServer;
    v10->_routeGeniusServer = v11;

    v13 = [NavdRouteGenius alloc];
    v14 = v10->_routeGeniusServer;
    resourceDepot = v10->_resourceDepot;
    v16 = +[MapsSuggestionsNavdMapsAppLocationManager sharedLocationManager];
    v17 = [(NavdRouteGenius *)v13 initWithDelegate:v14 resourceDepot:resourceDepot locationUpdater:v16];
    routeGenius = v10->_routeGenius;
    v10->_routeGenius = v17;

    [(NavdRouteGeniusServer *)v10->_routeGeniusServer setActivatable:v10->_routeGenius];
    v19 = MapsFeaturesConfig_LocationIntelligenceMaps[1];
    v20 = dispatch_get_global_queue(21, 0);
    MapsFeature_AddDelegateListener();

    v21 = +[MapsSuggestionsDestinationdTrigger description];
    v22 = [registerCopy objectForKeyedSubscript:v21];

    if (v22)
    {
      [v22 addIgnoredClientProcess:@"GeneralMapsWidget"];
    }

    if (!v10->_venueAnnouncer)
    {
      v23 = [[NavdVenueAnnouncer alloc] initFromResourceDepot:v10->_resourceDepot sharedRegister:registerCopy];
      venueAnnouncer = v10->_venueAnnouncer;
      v10->_venueAnnouncer = v23;
    }

    if (!v10->_avocadoUpdater)
    {
      v25 = [[NavdAvocadoUpdater alloc] initFromResourceDepot:v10->_resourceDepot sharedRegister:registerCopy];
      avocadoUpdater = v10->_avocadoUpdater;
      v10->_avocadoUpdater = v25;
    }

    v27 = [[MapsSuggestionsBluetoothVehicleConnectionTrigger alloc] initFireOnConnect:1 disconnect:0 exit:0];
    v28 = [[MapsSuggestionsBluetoothVehicleConnectionTrigger alloc] initFireOnConnect:0 disconnect:1 exit:1];
    v45 = objc_alloc_init(MapsSuggestionsMapsAppVisibleChangedTrigger);
    v29 = [MapsSuggestionsCarplayDisconnectedCondition alloc];
    v30 = GEOConfigNavdCarplayDisconnectDelay[1];
    GEOConfigGetDouble();
    v44 = [v29 initWithDisconnectDelay:{v28, v27}];
    objc_initWeak(&location, v10);
    v31 = [MapsSuggestionsBlockCondition alloc];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10001DEE0;
    v54[3] = &unk_100065B50;
    objc_copyWeak(&v55, &location);
    v32 = [v31 initWithName:@"FRAuthorizationCheck" block:v54];
    v33 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001E010;
    block[3] = &unk_100065B78;
    objc_copyWeak(&v53, &location);
    v34 = v27;
    v47 = v34;
    v35 = v28;
    v48 = v35;
    v49 = registerCopy;
    v36 = v45;
    v50 = v36;
    v37 = v44;
    v51 = v37;
    v38 = v32;
    v52 = v38;
    dispatch_async(v33, block);

    v39 = [[MapsSuggestionsDOoMEngineWrapper alloc] initWithResourceDepot:depotCopy conditions:&__NSArray0__struct];
    doomEngineWrapper = v10->_doomEngineWrapper;
    v10->_doomEngineWrapper = v39;

    v41 = [[MapsSuggestionsCommuteWindowServer alloc] initWithResourceDepot:v10->_resourceDepot conditions:&__NSArray0__struct engine:v10->_doomEngineWrapper];
    commuteWindowServer = v10->_commuteWindowServer;
    v10->_commuteWindowServer = v41;

    [(NavdMapsSuggestionsController *)v10 startDoomIfNotStarted];
    objc_destroyWeak(&v53);

    objc_destroyWeak(&v55);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)valueChangedForMapsFeature:(id)feature enabled:(BOOL)enabled
{
  if (feature.var0.var0 == LODWORD(MapsFeaturesConfig_LocationIntelligenceMaps[0]) && feature.var0.var1 == MapsFeaturesConfig_LocationIntelligenceMaps[1])
  {
    if (enabled)
    {

      [(NavdMapsSuggestionsController *)self startDoomIfNotStarted];
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "LI turned off. Winding down DOoM.", v8, 2u);
      }

      doomHost = self->_doomHost;
      self->_doomHost = 0;
    }
  }
}

- (void)dealloc
{
  MapsFeature_RemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = NavdMapsSuggestionsController;
  [(NavdMapsSuggestionsController *)&v3 dealloc];
}

- (void)startDoomIfNotStarted
{
  if (self->_doomEngineWrapper)
  {
    IsEnabled_LocationIntelligenceMaps = MapsFeature_IsEnabled_LocationIntelligenceMaps();
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = @"No, not starting DOoM";
      if (IsEnabled_LocationIntelligenceMaps)
      {
        v5 = @"Yes, starting DOoM";
      }

      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "LocIntel enabled? %@", buf, 0xCu);
    }

    if (IsEnabled_LocationIntelligenceMaps)
    {
      objc_initWeak(buf, self);
      v6 = dispatch_get_global_queue(21, 0);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10001EC58;
      v8[3] = &unk_1000655F8;
      objc_copyWeak(&v9, buf);
      v8[4] = self;
      dispatch_async(v6, v8);

      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/NavdVehicleBluetooth/NavdMapsSuggestionsController.mm";
      v12 = 1024;
      v13 = 273;
      v14 = 2082;
      v15 = "[NavdMapsSuggestionsController startDoomIfNotStarted]";
      v16 = 2082;
      v17 = "_doomEngineWrapper == nil";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. This method should be called only after _doomEngineWrapper is instantiated", buf, 0x26u);
    }
  }
}

@end