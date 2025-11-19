@interface NavdVenueAnnouncer
- (NSString)uniqueName;
- (char)_airportMapItemForEntry:(id)a3 completion:(id)a4;
- (char)_terminalMapItemForEntry:(id)a3 completion:(id)a4;
- (id)_shouldTreatArrivalAirport:(id)a3 over:(id)a4;
- (id)initFromResourceDepot:(id)a3 sharedRegister:(id)a4;
- (void)_cleanup;
- (void)_fireNotificationIfAtEntry:(id)a3;
- (void)_logStateForStep:(id)a3 stopReason:(id)a4;
- (void)_processEntries:(id)a3;
- (void)_setupOfflineDownloadNotificationCircuitForEntry:(id)a3;
- (void)_startStreamersWithNotificationName:(id)a3 resourceDepot:(id)a4;
- (void)_startTrackingLeavingTheAirport:(id)a3;
- (void)_trackArrivalAirportForEntry:(id)a3;
- (void)_treatAirportEntry:(id)a3;
- (void)_treatGateEntry:(id)a3;
- (void)_treatTerminalEntry:(id)a3;
- (void)cleanupAirportArrival;
- (void)engineRunner:(id)a3 startedBecauseOfTrigger:(id)a4;
- (void)engineRunner:(id)a3 step:(id)a4 jsonDict:(id)a5;
- (void)engineRunner:(id)a3 stoppedWithEntries:(id)a4;
@end

@implementation NavdVenueAnnouncer

- (id)initFromResourceDepot:(id)a3 sharedRegister:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v68 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v73 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/VenueAnnouncer/NavdVenueAnnouncer.mm";
      v74 = 1024;
      v75 = 262;
      v76 = 2082;
      v77 = "[NavdVenueAnnouncer initFromResourceDepot:sharedRegister:]";
      v78 = 2082;
      v79 = "nil == (resourceDepot)";
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot", buf, 0x26u);
    }

    goto LABEL_17;
  }

  v8 = [v6 oneNetworkRequester];

  if (!v8)
  {
    v68 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v73 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/VenueAnnouncer/NavdVenueAnnouncer.mm";
      v74 = 1024;
      v75 = 263;
      v76 = 2082;
      v77 = "[NavdVenueAnnouncer initFromResourceDepot:sharedRegister:]";
      v78 = 2082;
      v79 = "nil == (resourceDepot.oneNetworkRequester)";
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a network requester", buf, 0x26u);
    }

    goto LABEL_17;
  }

  v9 = GEOConfigNavdVenueAnnouncerEnabled[1];
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v68 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "NavdVenueAnnouncer is Disabled", buf, 2u);
    }

LABEL_17:

    v67 = 0;
    goto LABEL_18;
  }

  v71.receiver = self;
  v71.super_class = NavdVenueAnnouncer;
  v10 = [(NavdVenueAnnouncer *)&v71 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("NavdVenueAnnouncerQueue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v14 = [v6 oneNetworkRequester];
    network = v10->_network;
    v10->_network = v14;

    v16 = objc_alloc_init(MapsSuggestionsShortcutFilter);
    v70 = [NSSet setWithObjects:v16, 0];

    v17 = objc_alloc_init(MapsSuggestionsExpiredFilter);
    v18 = [NSSet setWithObjects:v17, 0];

    v19 = +[MapsSuggestionsEngineBuilder forDevice];
    v20 = [v19 withResourceDepot:v6];

    v21 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
    v22 = [v20 withLocationUpdater:v21];

    v23 = [v22 withPreFilters:v70];

    v24 = [v23 withoutPreFilters:v18];

    v25 = [v24 withoutTracker];

    v26 = [MapsSuggestionsEngineRunner alloc];
    v27 = GEOConfigNavdVenueAnnouncerMinRunTime[1];
    GEOConfigGetDouble();
    v29 = v28;
    v30 = GEOConfigNavdVenueAnnouncerMaxRunTime[1];
    GEOConfigGetDouble();
    v32 = v31;
    v33 = GEOConfigNavdVenueAnnouncerMinSleepTime[1];
    GEOConfigGetDouble();
    v35 = v34;
    v36 = GEOConfigNavdVenueAnnouncerRunTimeLeeway[1];
    GEOConfigGetDouble();
    v38 = v37;
    v39 = GEOConfigNavdVenueAnnouncerSleepTimeLeeway[1];
    GEOConfigGetDouble();
    v40 = GEOConfigNavdVenueAnnouncerEngineRunnerMaxEntries[1];
    v42 = [v26 initWithEngineBuilder:v25 name:@"NavdVenueAnnouncerRunner" minRunTime:GEOConfigGetInteger() maxRunTime:1 minSleepTime:v29 runTimeLeeway:v32 sleepTimeLeeway:v35 maxEntries:v38 nilledWhenAsleep:v41];
    engineRunner = v10->_engineRunner;
    v10->_engineRunner = v42;

    [(MapsSuggestionsEngineRunner *)v10->_engineRunner registerObserver:v10];
    objc_storeStrong(&v10->_lastEngineRunnerState, a4);
    v44 = objc_alloc_init(MapsSuggestionsAirportArrivalBudget);
    v45 = *&v10->_state.triggerLocation.currentSession;
    *&v10->_state.triggerLocation.currentSession = v44;

    v46 = objc_alloc_init(MapsSuggestionsDefaultLocationUpdater);
    lastEtaRequestTime = v10->_state._lastEtaRequestTime;
    v10->_state._lastEtaRequestTime = v46;

    v48 = [[MapsSuggestionsDarwinNotificationTrigger alloc] initWithNotificationName:{objc_msgSend(@"AirportAnnouncerNotification", "UTF8String")}];
    [(MapsSuggestionsEngineRunner *)v10->_engineRunner addTrigger:v48];
    v49 = objc_alloc_init(NavdVenueNavigationSessionTrigger);
    origin = v10->_state.origin;
    v10->_state.origin = v49;

    [(MapsSuggestionsEngineRunner *)v10->_engineRunner addCondition:v10->_state.origin];
    v51 = v10->_engineRunner;
    lastEngineRunnerState = v10->_lastEngineRunnerState;
    v53 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v54 = [(NSDictionary *)lastEngineRunnerState objectForKeyedSubscript:v53];
    [(MapsSuggestionsEngineRunner *)v51 addCondition:v54];

    v55 = v10->_engineRunner;
    v56 = v10->_lastEngineRunnerState;
    v57 = +[MapsSuggestionsSiri isEnabledCondition];
    v58 = [v57 uniqueName];
    v59 = [(NSDictionary *)v56 objectForKeyedSubscript:v58];
    [(MapsSuggestionsEngineRunner *)v55 addCondition:v59];

    v60 = v10->_engineRunner;
    v61 = v10->_lastEngineRunnerState;
    v62 = +[MapsSuggestionsFirstUnlockTrigger description];
    v63 = [(NSDictionary *)v61 objectForKeyedSubscript:v62];
    [(MapsSuggestionsEngineRunner *)v60 addCondition:v63];

    v64 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000679C8];
    [(MapsSuggestionsEngineRunner *)v10->_engineRunner addPostFilter:v64];
    v65 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000679E8];
    [(MapsSuggestionsEngineRunner *)v10->_engineRunner addPostFilter:v65];
    [(MapsSuggestionsEngineRunner *)v10->_engineRunner runASAP];
    [(NavdVenueAnnouncer *)v10 _startStreamersWithNotificationName:@"AirportAnnouncerNotification" resourceDepot:v6];
    v66 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "initialized", buf, 2u);
    }

    [(NavdVenueAnnouncer *)v10 _logStateForStep:@"featureInitialized"];
  }

  self = v10;
  v67 = self;
LABEL_18:

  return v67;
}

- (void)_startStreamersWithNotificationName:(id)a3 resourceDepot:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [MapsSuggestionsBlockAction alloc];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10003804C;
  v28[3] = &unk_100065F88;
  objc_copyWeak(&v31, &location);
  v9 = v7;
  v29 = v9;
  v10 = v6;
  v30 = v10;
  v11 = [v8 initWithName:@"startStreamerAction" block:v28];
  if (!self->_state.locations)
  {
    v12 = [MapsSuggestionsLocationChangedTrigger alloc];
    v13 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
    v14 = [v12 initWithLocationUpdater:v13 forcingLocationUpdater:self->_state._lastEtaRequestTime];
    locations = self->_state.locations;
    self->_state.locations = v14;
  }

  v16 = [MapsSuggestionsActionCircuit alloc];
  v33 = self->_state.locations;
  v17 = [NSArray arrayWithObjects:&v33 count:1];
  v18 = [v16 initWithTriggers:v17 action:v11];
  v19 = self->_state.triggerLocation.location;
  self->_state.triggerLocation.location = v18;

  v20 = self->_state.locations;
  v21 = GEOConfigNavdVenueAnnouncerLocationForceTime[1];
  GEOConfigGetDouble();
  v23 = v22;
  v24 = GEOConfigNavdVenueAnnouncerMinimumDistanceTriggerThreshold[1];
  GEOConfigGetDouble();
  [(NSMutableArray *)v20 startWithMinimumUpdateTime:v23 minimumDistance:v25];
  v26 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "_startStreamersActionCircut started. Once we get a location, we should start the streamers.", v27, 2u);
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)_cleanup
{
  self->_state.queue._innerQueue = 0;
  +[NavdVenueNotification hide];
  [(NavdRouteGeniusRoute *)self->_state.route stop];
  routes = self->_state.routes;
  self->_state.routes = 0;

  if (self->_state.startTime)
  {
    [(MapsSuggestionsEngineRunner *)self->_engineRunner removeCondition:?];
    startTime = self->_state.startTime;
    self->_state.startTime = 0;
  }
}

- (void)engineRunner:(id)a3 stoppedWithEntries:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038400;
  block[3] = &unk_1000655F8;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_processEntries:(id)a3
{
  v52 = a3;
  v51 = MapsSuggestionsCurrentBestLocation();
  if (v51)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [v51 coordinate];
      v6 = v5;
      [v51 coordinate];
      *buf = 134218240;
      v63 = v6;
      v64 = 2048;
      v65 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "current location : %f %f", buf, 0x16u);
    }

    [(NavdVenueAnnouncer *)self _cleanup];
    lastKnownLocation = self->_state.lastKnownLocation;
    location = &self->_state.lastKnownLocation;
    if (lastKnownLocation)
    {
      v9 = [(CLLocation *)lastKnownLocation dateForKey:@"MapsSuggestionsFlightDepartureTimeKey"];
      v10 = MapsSuggestionsNowWithOffset(86400.0);
      v11 = [v9 compare:v10] == 1;

      if (v11)
      {
        [(NavdVenueAnnouncer *)self cleanupAirportArrival];
        v12 = *location;
        *location = 0;
      }
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v52;
    v13 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (!v13)
    {
      v53 = 0;
      v54 = 0;
      goto LABEL_46;
    }

    v53 = 0;
    v54 = 0;
    v14 = *v58;
    while (1)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v57 + 1) + 8 * i);
        if ([v16 type] != 15)
        {
          [(NavdVenueAnnouncer *)self _logStateForStep:@"entrySkipped" stopReason:@"not a Flight!"];
          continue;
        }

        v17 = [(NavdVenueAnnouncer *)self _shouldTreatArrivalAirport:v16 over:self->_state.lastKnownLocation];
        if (*location != v17)
        {
          objc_storeStrong(location, v17);
          v53 = 1;
        }

        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "receiving Flight entry", buf, 2u);
        }

        v19 = [v16 geoMapItem];
        IsVenue = MapsSuggestionsMapItemIsVenue();

        if (IsVenue)
        {
          v21 = v54;
          v22 = v16;
          v23 = v22;
          if (v21)
          {
            if (v22)
            {
              v24 = MapsSuggestionsLocationForEntry();
              v25 = MapsSuggestionsLocationForEntry();
              if (v24 | v25)
              {
                v27 = MapsSuggestionsCurrentBestLocation();
                v28 = v27;
                if (v27)
                {
                  [v27 distanceFromLocation:v24];
                  v30 = v29;
                  [v28 distanceFromLocation:v25];
                  if (v30 <= v31)
                  {
                    v32 = v21;
                  }

                  else
                  {
                    v32 = v23;
                  }

                  v54 = v32;
                }

                else
                {
                  v54 = 0;
                }
              }

              else
              {
                v54 = 0;
              }

              goto LABEL_35;
            }

            v26 = v21;
          }

          else
          {
            v26 = v22;
          }

          v54 = v26;
LABEL_35:

          goto LABEL_36;
        }

        [(NavdVenueAnnouncer *)self _logStateForStep:@"entrySkipped" stopReason:@"not a Venue!"];
LABEL_36:
      }

      v13 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (!v13)
      {
LABEL_46:

        v44 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "About to check for Airport Arrival Announcer", buf, 2u);
        }

        if (v53)
        {
          [(NavdVenueAnnouncer *)self _trackArrivalAirportForEntry:self->_state.lastKnownLocation];
        }

        if (v54)
        {
          [(NavdVenueAnnouncer *)self _logStateForStep:@"entriesProcessed" stopReason:@"Found a flight at a Venue!"];
          v45 = [v54 geoMapItem];
          IsAirport = MapsSuggestionsMapItemIsAirport();

          if (IsAirport)
          {
            [(NavdVenueAnnouncer *)self _treatAirportEntry:v54];
          }

          else
          {
            v47 = [v54 geoMapItem];
            IsTerminal = MapsSuggestionsMapItemIsTerminal();

            if (IsTerminal)
            {
              [(NavdVenueAnnouncer *)self _treatTerminalEntry:v54];
            }

            else
            {
              v49 = [v54 geoMapItem];
              IsGate = MapsSuggestionsMapItemIsGate();

              if (IsGate)
              {
                [(NavdVenueAnnouncer *)self _treatGateEntry:v54];
              }
            }
          }
        }

        else
        {
          [(NavdVenueAnnouncer *)self _logStateForStep:@"entriesProcessed" stopReason:@"no flight at a Venue!"];
        }

        goto LABEL_59;
      }
    }
  }

  v33 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "current location is nil, nothing we can do now!", buf, 2u);
  }

  route = self->_state.route;
  if (!route)
  {
    v35 = [MapsSuggestionsLocationChangedTrigger alloc];
    v36 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
    v37 = [v35 initWithLocationUpdater:v36 forcingLocationUpdater:self->_state._lastEtaRequestTime];
    v38 = self->_state.route;
    self->_state.route = v37;

    [(MapsSuggestionsEngineRunner *)self->_engineRunner addTrigger:self->_state.route];
    route = self->_state.route;
  }

  v39 = GEOConfigNavdVenueAnnouncerLocationForceTime[1];
  GEOConfigGetDouble();
  v41 = v40;
  v42 = GEOConfigNavdVenueAnnouncerMinimumDistanceTriggerThreshold[1];
  GEOConfigGetDouble();
  [(NavdRouteGeniusRoute *)route startWithMinimumUpdateTime:v41 minimumDistance:v43];
LABEL_59:
}

- (id)_shouldTreatArrivalAirport:(id)a3 over:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stringForKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];

  if (v8)
  {
    if ([*&self->_state.triggerLocation.currentSession hasBudgetLeft])
    {
      v9 = [v7 dateForKey:@"MapsSuggestionsFlightDepartureTimeKey"];
      if (!v7)
      {
        v17 = v6;
        goto LABEL_16;
      }

      v10 = [v6 dateForKey:@"MapsSuggestionsFlightDepartureTimeKey"];
      v11 = [v9 compare:v10];
      if (v11 == -1)
      {
        v21 = [v7 stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
        v22 = [v6 stringForKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
        v23 = [v21 isEqualToString:v22];

        v12 = v7;
        if (v23)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v12 = v7;
        if (v11 != 1)
        {
          goto LABEL_8;
        }

        v13 = [v7 stringForKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
        v14 = [v6 stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
        v15 = [v13 isEqualToString:v14];

        v12 = v7;
        if ((v15 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      routeCoordinate = self->_state.routeCoordinate;
      self->_state.routeCoordinate = 0;

      v12 = v6;
LABEL_8:
      v17 = v12;

LABEL_16:
      goto LABEL_17;
    }

    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "No budget left for arrival airport", v24, 2u);
    }

    v17 = 0;
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "No arrival airport, sticking with what we have", buf, 2u);
    }

    v17 = v7;
  }

LABEL_17:

  return v17;
}

- (void)_startTrackingLeavingTheAirport:(id)a3
{
  v4 = a3;
  v5 = [v4 numberForKey:@"MapsSuggestionsFlightArrivalAirportLatitudeKey"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 numberForKey:@"MapsSuggestionsFlightArrivalAirportLongitudeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v4 departingAirportCode];
    *buf = 138412290;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Start tracking Leaving Airport:%@", buf, 0xCu);
  }

  v13 = [[CLLocation alloc] initWithLatitude:v7 longitude:v10];
  v14 = [MapsSuggestionsRangeTrigger alloc];
  v15 = GEOConfigNavdAirportArrivalAnnouncerInsideAirportThreshold[1];
  GEOConfigGetDouble();
  v17 = v16;
  v18 = GEOConfigNavdVenueAnnouncerAirportArrivalLocationForceTime[1];
  GEOConfigGetDouble();
  v20 = v19;
  v21 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
  v22 = [v14 initWithLocation:v13 radius:0 onEnter:v21 minUpdateTime:self->_state._lastEtaRequestTime locationUpdater:v17 forcingLocationUpdater:v20];

  objc_initWeak(buf, self);
  v23 = [MapsSuggestionsBlockAction alloc];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10003930C;
  v30[3] = &unk_100065FB0;
  objc_copyWeak(&v32, buf);
  v24 = v4;
  v31 = v24;
  v25 = [v23 initWithName:@"departureAction" block:v30];
  v26 = [MapsSuggestionsActionCircuit alloc];
  v33 = v22;
  v27 = [NSArray arrayWithObjects:&v33 count:1];
  v28 = [v26 initWithTriggers:v27 conditions:&__NSArray0__struct action:v25];
  etaCanKicker = self->_state.etaCanKicker;
  self->_state.etaCanKicker = v28;

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

- (void)cleanupAirportArrival
{
  routeCoordinate = self->_state.routeCoordinate;
  self->_state.routeCoordinate = 0;

  etaCanKicker = self->_state.etaCanKicker;
  self->_state.etaCanKicker = 0;

  sessionState = self->_state.sessionState;
  self->_state.sessionState = 0;

  v6 = *&self->_state.skipScoring;
  *&self->_state.skipScoring = 0;
}

- (void)_setupOfflineDownloadNotificationCircuitForEntry:(id)a3
{
  v41 = a3;
  if (self->_state.locationHistory)
  {
    objc_initWeak(location, self);
    v4 = [MapsSuggestionsOfflineDownloadNotificationAction alloc];
    v5 = *&self->_state.triggerLocation.currentSession;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100039B00;
    v42[3] = &unk_100065548;
    objc_copyWeak(&v43, location);
    v40 = [(MapsSuggestionsOfflineDownloadNotificationAction *)v4 initWithEntry:v41 budget:v5 completion:v42];
    lastEngineRunnerState = self->_lastEngineRunnerState;
    v37 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v7 = [(NSDictionary *)lastEngineRunnerState objectForKeyedSubscript:?];
    v45[0] = v7;
    v8 = self->_lastEngineRunnerState;
    v9 = +[MapsSuggestionsFirstUnlockTrigger description];
    v10 = [(NSDictionary *)v8 objectForKeyedSubscript:v9];
    v45[1] = v10;
    v11 = self->_lastEngineRunnerState;
    v12 = +[MapsSuggestionsDestinationdTrigger description];
    v13 = [(NSDictionary *)v11 objectForKeyedSubscript:v12];
    v45[2] = v13;
    v14 = self->_lastEngineRunnerState;
    v15 = +[MapsSuggestionsEventKitChangedTrigger description];
    v16 = [(NSDictionary *)v14 objectForKeyedSubscript:v15];
    v45[3] = v16;
    v17 = self->_lastEngineRunnerState;
    v18 = +[MapsSuggestionsNetworkReachableTrigger description];
    v19 = [(NSDictionary *)v17 objectForKeyedSubscript:v18];
    locationHistory = self->_state.locationHistory;
    v45[4] = v19;
    v45[5] = locationHistory;
    v39 = [NSArray arrayWithObjects:v45 count:6];

    v21 = self->_lastEngineRunnerState;
    v38 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v22 = [(NSDictionary *)v21 objectForKeyedSubscript:v38];
    v44[0] = v22;
    v23 = self->_lastEngineRunnerState;
    v24 = +[MapsSuggestionsNoCellularDataCondition description];
    v25 = [(NSDictionary *)v23 objectForKeyedSubscript:v24];
    v44[1] = v25;
    v26 = self->_lastEngineRunnerState;
    v27 = +[MapsSuggestionsSiri isEnabledCondition];
    v28 = [v27 uniqueName];
    v29 = [(NSDictionary *)v26 objectForKeyedSubscript:v28];
    v44[2] = v29;
    v30 = self->_lastEngineRunnerState;
    v31 = +[MapsSuggestionsFirstUnlockTrigger description];
    v32 = [(NSDictionary *)v30 objectForKeyedSubscript:v31];
    v44[3] = v32;
    v33 = [NSArray arrayWithObjects:v44 count:4];

    v34 = [[MapsSuggestionsActionCircuit alloc] initWithTriggers:v39 conditions:v33 action:v40];
    sessionState = self->_state.sessionState;
    self->_state.sessionState = v34;

    objc_destroyWeak(&v43);
    objc_destroyWeak(location);
  }

  else
  {
    v36 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/VenueAnnouncer/NavdVenueAnnouncer.mm";
      v47 = 1024;
      v48 = 572;
      v49 = 2082;
      v50 = "[NavdVenueAnnouncer _setupOfflineDownloadNotificationCircuitForEntry:]";
      v51 = 2082;
      v52 = "nil == (_simpleTrigger)";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. SimpleTrigger should not be nil", location, 0x26u);
    }
  }
}

- (void)_trackArrivalAirportForEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 numberForKey:@"MapsSuggestionsFlightArrivalAirportLatitudeKey"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 numberForKey:@"MapsSuggestionsFlightArrivalAirportLongitudeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v4 arrivingAirportCode];
    *buf = 138412290;
    v48 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Start tracking arriving at Airport:%@", buf, 0xCu);
  }

  v13 = [[CLLocation alloc] initWithLatitude:v7 longitude:v10];
  v14 = [MapsSuggestionsRangeTrigger alloc];
  v15 = GEOConfigNavdVenueAnnouncerArrivalRadius[1];
  GEOConfigGetDouble();
  v17 = v16;
  v18 = GEOConfigNavdVenueAnnouncerAirportArrivalLocationForceTime[1];
  GEOConfigGetDouble();
  v20 = v19;
  v21 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
  v22 = [v14 initWithLocation:v13 radius:1 onEnter:v21 minUpdateTime:self->_state._lastEtaRequestTime locationUpdater:v17 forcingLocationUpdater:v20];

  if (!self->_state.locationHistory)
  {
    v23 = [[MapsSuggestionsSimpleTrigger alloc] initWithName:@"AirportArrivalSimpleTrigger"];
    locationHistory = self->_state.locationHistory;
    self->_state.locationHistory = v23;
  }

  objc_initWeak(buf, self);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10003A138;
  v43[3] = &unk_100065FB0;
  objc_copyWeak(&v45, buf);
  v25 = v4;
  v44 = v25;
  v26 = v43;
  v27 = [[MapsSuggestionsBlockAction alloc] initWithName:@"NavdVenueAnnouncerAirportArrivalAction" block:v26];

  v28 = [MapsSuggestionsGCDTimer alloc];
  queue = self->_queue;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10003A32C;
  v40[3] = &unk_1000655F8;
  objc_copyWeak(&v42, buf);
  v30 = v25;
  v41 = v30;
  v31 = [v28 initWithName:@"AirportArrivalTimer" queue:queue block:v40];
  v32 = *&self->_state.skipScoring;
  *&self->_state.skipScoring = v31;

  v33 = *&self->_state.skipScoring;
  v34 = GEOConfigNavdVenueAnnouncerArrivalAirportMaxAge[1];
  GEOConfigGetDouble();
  [v33 scheduleWithInterval:(v35 * 1000000000.0) leeway:60000000000];
  v36 = [MapsSuggestionsActionCircuit alloc];
  v46 = v22;
  v37 = [NSArray arrayWithObjects:&v46 count:1];
  v38 = [v36 initWithTriggers:v37 conditions:&__NSArray0__struct action:v27];
  routeCoordinate = self->_state.routeCoordinate;
  self->_state.routeCoordinate = v38;

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v45);
  objc_destroyWeak(buf);
}

- (void)_treatAirportEntry:(id)a3
{
  v4 = a3;
  [(NavdVenueAnnouncer *)self _logStateForStep:@"got Airport" stopReason:0];
  v5 = [v4 geoMapItem];
  v6 = [v5 _browseCategories];
  v7 = [v6 count];

  if (v7)
  {
    [(NavdVenueAnnouncer *)self _fireNotificationIfAtEntry:v4];
  }

  else
  {
    [(NavdVenueAnnouncer *)self _logStateForStep:@"Airport has no browse categories" stopReason:0];
    v8 = [v4 stringForKey:@"MapsSuggestionsFlightTerminalSearchKey"];

    if (v8)
    {
      objc_initWeak(&location, self);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10003A69C;
      v9[3] = &unk_100065670;
      objc_copyWeak(&v12, &location);
      v10 = v4;
      v11 = self;
      [(NavdVenueAnnouncer *)self _terminalMapItemForEntry:v10 completion:v9];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      [(NavdVenueAnnouncer *)self _logStateForStep:@"no Terminal name to search for" stopReason:0];
    }
  }
}

- (void)_treatTerminalEntry:(id)a3
{
  v4 = a3;
  [(NavdVenueAnnouncer *)self _logStateForStep:@"got Terminal" stopReason:0];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003A980;
  v6[3] = &unk_100067A10;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(NavdVenueAnnouncer *)self _airportMapItemForEntry:v5 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_treatGateEntry:(id)a3
{
  v4 = a3;
  [(NavdVenueAnnouncer *)self _logStateForStep:@"got Gate" stopReason:0];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003AD30;
  v6[3] = &unk_100067A10;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(NavdVenueAnnouncer *)self _airportMapItemForEntry:v5 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (char)_airportMapItemForEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Looking for airport with code %@", buf, 0xCu);
  }

  network = self->_network;
  v12 = v7;
  objc_copyWeak(&v13, &location);
  LOBYTE(network) = MapsSuggestionsSearchAirport();
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return network;
}

- (char)_terminalMapItemForEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 stringForKey:@"MapsSuggestionsFlightTerminalSearchKey"];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Looking for terminal name '%@'", buf, 0xCu);
  }

  network = self->_network;
  v12 = v7;
  objc_copyWeak(&v13, &location);
  LOBYTE(network) = MapsSuggestionsSearchTerminal();
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return network;
}

- (void)_fireNotificationIfAtEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 geoMapItem];

  if (!v5)
  {
    v76 = [[NSString alloc] initWithFormat:@"There is no mapItem?!"];
    v77 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v137 = v76;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Aborted location check: %@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v6 = [v4 geoMapItem];
  IsVenue = MapsSuggestionsMapItemIsVenue();

  if ((IsVenue & 1) == 0)
  {
    v78 = [NSString alloc];
    v79 = [v4 geoMapItem];
    v76 = [v78 initWithFormat:@"'%@' is not a not an Venue!", v79];

    v77 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v137 = v76;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Aborted location check: %@", buf, 0xCu);
    }

LABEL_31:

    [(NavdVenueAnnouncer *)self _logStateForStep:@"locationSkipped" stopReason:v76];
LABEL_61:

    goto LABEL_62;
  }

  v8 = [v4 geoMapItem];
  v9 = [v8 _browseCategories];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v4 stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];

    if (v11)
    {
      v12 = [v4 geoMapItem];
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "VBB:-- Start Venue BoundingBox --", buf, 2u);
      }

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [v12 _venueInfo];
        v16 = [v15 venueIdentifier];
        *buf = 138412290;
        v137 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "VBB:VenueIdentifier: %@", buf, 0xCu);
      }

      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v12 name];
        *buf = 138412290;
        v137 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "VBB:Venue name: %@", buf, 0xCu);
      }

      v19 = [v12 geoFenceMapRegion];
      if ([v19 hasEastLng])
      {
        v20 = [v12 geoFenceMapRegion];
        if ([v20 hasWestLng])
        {
          v21 = [v12 geoFenceMapRegion];
          if ([v21 hasNorthLat])
          {
            v22 = [v12 geoFenceMapRegion];
            v23 = [v22 hasSouthLat];

            if (v23)
            {
              v24 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v25 = [v12 geoFenceMapRegion];
                [v25 centerLat];
                v27 = v26;
                v28 = [v12 geoFenceMapRegion];
                [v28 centerLng];
                *buf = 134218240;
                v137 = v27;
                v138 = 2048;
                v139 = v29;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "VBB:Venue center <%.6f,%.6f>", buf, 0x16u);
              }

              v30 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v31 = [v12 geoFenceMapRegion];
                [v31 northLat];
                v33 = v32;
                v34 = [v12 geoFenceMapRegion];
                [v34 westLng];
                *buf = 134218240;
                v137 = v33;
                v138 = 2048;
                v139 = v35;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "VBB:Venue topLeft <%.6f,%.6f>", buf, 0x16u);
              }

              v36 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                v37 = [v12 geoFenceMapRegion];
                [v37 northLat];
                v39 = v38;
                v40 = [v12 geoFenceMapRegion];
                [v40 eastLng];
                *buf = 134218240;
                v137 = v39;
                v138 = 2048;
                v139 = v41;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "VBB:Venue topRight <%.6f,%.6f>", buf, 0x16u);
              }

              v42 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v43 = [v12 geoFenceMapRegion];
                [v43 southLat];
                v45 = v44;
                v46 = [v12 geoFenceMapRegion];
                [v46 westLng];
                *buf = 134218240;
                v137 = v45;
                v138 = 2048;
                v139 = v47;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "VBB:Venue bottomLeft <%.6f,%.6f>", buf, 0x16u);
              }

              v48 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v49 = [v12 geoFenceMapRegion];
                [v49 southLat];
                v51 = v50;
                v52 = [v12 geoFenceMapRegion];
                [v52 eastLng];
                *buf = 134218240;
                v137 = v51;
                v138 = 2048;
                v139 = v53;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "VBB:Venue bottomRight <%.6f,%.6f>", buf, 0x16u);
              }

              v54 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                v135 = [v12 geoFenceMapRegion];
                [v135 northLat];
                v56 = v55;
                v134 = [v12 geoFenceMapRegion];
                [v134 westLng];
                v58 = v57;
                v133 = [v12 geoFenceMapRegion];
                [v133 northLat];
                v60 = v59;
                v61 = [v12 geoFenceMapRegion];
                [v61 eastLng];
                v63 = v62;
                v64 = [v12 geoFenceMapRegion];
                [v64 southLat];
                v66 = v65;
                v67 = [v12 geoFenceMapRegion];
                [v67 eastLng];
                v69 = v68;
                v70 = [v12 geoFenceMapRegion];
                [v70 southLat];
                v72 = v71;
                v73 = [v12 geoFenceMapRegion];
                [v73 westLng];
                *buf = 134219776;
                v137 = v56;
                v138 = 2048;
                v139 = v58;
                v140 = 2048;
                v141 = v60;
                v142 = 2048;
                v143 = v63;
                v144 = 2048;
                v145 = v66;
                v146 = 2048;
                v147 = v69;
                v148 = 2048;
                v149 = v72;
                v150 = 2048;
                v151 = v74;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "\n#polygon 0\n%.6f,%.6f\n%.6f,%.6f\n%.6f,%.6f\n%.6f,%.6f\n", buf, 0x52u);
              }

              v75 = GEOFindOrCreateLog();
              if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_46;
              }

              *buf = 0;
LABEL_45:
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "VBB:-- End Venue BoundingBox --", buf, 2u);
LABEL_46:

              v76 = MapsSuggestionsCurrentBestLocation();
              [v76 coordinate];
              v83 = v82;
              [v76 coordinate];
              v85 = v84;
              [(NavdVenueAnnouncer *)self _logStateForStep:@"checkLocation" stopReason:0];
              v86 = [v4 geoMapItem];
              v87 = [v86 geoFenceMapRegion];
              v88 = [v87 containsCoordinate:{v83, v85}];

              if (v88)
              {
                v89 = self;
                objc_sync_enter(v89);
                [(NavdVenueAnnouncer *)v89 _logStateForStep:@"showNotification" stopReason:0];
                v90 = [v4 geoMapItem];
                v91 = [v90 _venueInfo];
                v92 = [v91 venueIdentifier];
                v89->_state.queue._innerQueue = [v92 venueID];

                v93 = [MapsSuggestionsBudget alloc];
                v94 = [v4 stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
                v95 = [v93 initWithDelegate:v89 name:v94];
                v96 = *&v89->_state.active;
                *&v89->_state.active = v95;

                v97 = *&v89->_state.active;
                v98 = GEOConfigNavdVenueAnnouncerNotificationFrequencyShortWindow[1];
                Integer = GEOConfigGetInteger();
                v100 = GEOConfigNavdVenueAnnouncerNotificationFrequencyShortWindowDuration[1];
                GEOConfigGetDouble();
                [v97 addRollingWindowOfCount:Integer perTimeInterval:@"shortWindow" name:?];
                v101 = *&v89->_state.active;
                v102 = GEOConfigNavdVenueAnnouncerNotificationFrequencyLongWindow[1];
                v103 = GEOConfigGetInteger();
                v104 = GEOConfigNavdVenueAnnouncerNotificationFrequencyLongWindowDuration[1];
                GEOConfigGetDouble();
                [v101 addRollingWindowOfCount:v103 perTimeInterval:@"longWindow" name:?];
                if ([*&v89->_state.active hasBudgetLeft])
                {
                  v105 = [v4 geoMapItem];
                  v106 = [v4 stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
                  [NavdVenueNotification showWithMapItem:v105 airport:v106];

                  v107 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEBUG, "Spending Bugdet", buf, 2u);
                  }

                  [*&v89->_state.active spendNow];
                }

                else
                {
                  v127 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEBUG, "No Budget left", buf, 2u);
                  }
                }

                v128 = [MapsSuggestionsOutsideOfMapItemFenceCondition alloc];
                v129 = [v4 geoMapItem];
                v130 = GEOConfigNavdVenueAnnouncerDepartureRadius[1];
                GEOConfigGetDouble();
                v131 = [v128 initWithMapItem:v129 radius:?];
                startTime = v89->_state.startTime;
                v89->_state.startTime = v131;

                [(MapsSuggestionsEngineRunner *)v89->_engineRunner addCondition:v89->_state.startTime];
                [(NavdRouteGeniusRoute *)v89->_state.route stop];
                objc_sync_exit(v89);
              }

              else
              {
                v108 = [v4 geoMapItem];
                v89 = MapsSuggestionsLocationForMapItem();

                if (!self->_state.routes)
                {
                  lastEngineRunnerState = self->_lastEngineRunnerState;
                  v110 = +[MapsSuggestionsNetworkReachableTrigger description];
                  v111 = [(NSDictionary *)lastEngineRunnerState objectForKeyedSubscript:v110];
                  routes = self->_state.routes;
                  self->_state.routes = v111;

                  [(MapsSuggestionsEngineRunner *)self->_engineRunner addTrigger:self->_state.routes];
                }

                route = self->_state.route;
                if (!route)
                {
                  v114 = [MapsSuggestionsLocationChangedTrigger alloc];
                  v115 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
                  v116 = [v114 initWithLocationUpdater:v115 forcingLocationUpdater:self->_state._lastEtaRequestTime];
                  v117 = self->_state.route;
                  self->_state.route = v116;

                  [(MapsSuggestionsEngineRunner *)self->_engineRunner addTrigger:self->_state.route];
                  route = self->_state.route;
                }

                [v76 distanceFromLocation:v89];
                v119 = v118;
                v120 = GEOConfigNavdVenueAnnouncerSpeed[1];
                GEOConfigGetDouble();
                v122 = v121;
                [v76 distanceFromLocation:v89];
                v124 = v123;
                v125 = GEOConfigNavdVenueAnnouncerDistanceFraction[1];
                GEOConfigGetDouble();
                [(NavdRouteGeniusRoute *)route startWithMinimumUpdateTime:v119 / v122 minimumDistance:v126 * v124];
              }

              goto LABEL_61;
            }

LABEL_41:
            v81 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "VBB:Venue missing lat/long", buf, 2u);
            }

            v75 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_46;
            }

            *buf = 0;
            goto LABEL_45;
          }
        }
      }

      goto LABEL_41;
    }

    v80 = @"No departure airport code";
  }

  else
  {
    v80 = @"No browse categories";
  }

  [(NavdVenueAnnouncer *)self _logStateForStep:@"locationSkipped" stopReason:v80];
LABEL_62:
}

- (void)engineRunner:(id)a3 startedBecauseOfTrigger:(id)a4
{
  v5 = a4;
  [(NavdRouteGeniusRoute *)self->_state.route stop];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 uniqueName];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Triggered by %@", &v8, 0xCu);
  }

  [(NavdVenueAnnouncer *)self _logStateForStep:@"didStart" stopReason:0];
}

- (void)engineRunner:(id)a3 step:(id)a4 jsonDict:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v7 copy];
  name = v8->_state.queue._name;
  v8->_state.queue._name = v9;

  objc_sync_exit(v8);
  [(NavdVenueAnnouncer *)v8 _logStateForStep:v11];
}

- (void)_logStateForStep:(id)a3 stopReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v20[0] = @"step";
  v9 = MSg::jsonFor();
  v21[0] = v9;
  v20[1] = @"stopReason";
  v10 = MSg::jsonFor();
  v21[1] = v10;
  v20[2] = @"engineRunner";
  name = v8->_state.queue._name;
  v12 = MSg::jsonFor();
  v21[2] = v12;
  v20[3] = @"feature";
  v22 = @"displayedMapItem";
  v13 = [NSNumber numberWithUnsignedLongLong:v8->_state.queue._innerQueue];
  v14 = MSg::jsonFor();
  *v19 = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:&v22 count:1];

  v21[3] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  v17 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = NSStringFromMapsSuggestionsJSON();
    *v19 = 138412290;
    *&v19[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "EVAL{Welcome}=%@", v19, 0xCu);
  }

  objc_sync_exit(v8);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end