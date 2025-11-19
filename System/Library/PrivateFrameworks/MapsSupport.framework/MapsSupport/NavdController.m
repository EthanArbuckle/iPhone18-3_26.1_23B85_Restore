@interface NavdController
- (void)_clearNavTracesDirectory;
- (void)_main;
- (void)_migrate;
- (void)_startListeningToMemoryPressureEvents;
- (void)_startMapsSuggestionsControllerIfUnlocked;
- (void)_stopMonitoringSignificantLocationChanges;
- (void)_turnOffCoreRoutineMonitoringOn3DTouchDevices;
- (void)_updateNavdDirectoryProtectionClass;
- (void)dealloc;
- (void)protectedDataDidBecomeAvailable:(id)a3;
- (void)start;
@end

@implementation NavdController

- (void)_main
{
  [(NavdController *)self _updateNavdDirectoryProtectionClass];
  v3 = objc_alloc_init(GEONavdServer);
  navigationServer = self->_navigationServer;
  self->_navigationServer = v3;

  v5 = objc_alloc_init(NAVDaemonServer);
  predictionsTTLServer = self->_predictionsTTLServer;
  self->_predictionsTTLServer = v5;

  v7 = +[MNNavigationServer sharedServer];
  navServer = self->_navServer;
  self->_navServer = v7;

  v9 = +[GEOPlatform sharedPlatform];
  v10 = [v9 hardwareIdentifier];

  v11 = +[GEOMapService sharedService];
  [v11 setDefaultTraitsHardwareIdentifier:v10];

  v12 = +[GEOPlatform sharedPlatform];
  [v12 setClientCapabilitiesHardwareIdentifier:v10];

  [GEOUserSession setInitialShareSessionWithMaps:1];
  v13 = objc_alloc_init(NavdRecentLocationsServer);
  recentLocationsServer = self->_recentLocationsServer;
  self->_recentLocationsServer = v13;

  v15 = objc_alloc_init(MNCommuteRouteServer);
  commuteRouteServer = self->_commuteRouteServer;
  self->_commuteRouteServer = v15;

  [(NavdController *)self _startMapsSuggestionsControllerIfUnlocked];
  notify_post("com.apple.navd.wakeUpForHypothesisUpdate");
  notify_post("com.apple.navd.restarted");
  v17 = sub_10000DDB8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "navd: will start hosting virtual garage server", v19, 2u);
  }

  objc_opt_class();
  if (GEOConfigGetBOOL())
  {
    objc_opt_class();
  }

  v18 = objc_opt_new();
  startHostingVirtualGarageServiceWithPersister();

  [(NavdController *)self _startListeningToMemoryPressureEvents];
}

- (void)_turnOffCoreRoutineMonitoringOn3DTouchDevices
{
  v3 = +[GEOPlatform sharedPlatform];
  v4 = [v3 supportsForceTouch];

  if (v4)
  {
    v5 = [[RTRoutineManager alloc] initWithRestorationIdentifier:@"com.apple.navd.routine"];
    routineManager = self->_routineManager;
    self->_routineManager = v5;

    v7 = self->_routineManager;

    [(RTRoutineManager *)v7 stopMonitoringNextPredictedLocationsOfInterest];
  }
}

- (void)_stopMonitoringSignificantLocationChanges
{
  v2 = [CLLocationManager alloc];
  v3 = +[CLLocationManager navdLocationBundleSource];
  v4 = [NSBundle bundleWithPath:v3];
  v5 = [v2 initWithEffectiveBundle:v4];

  [v5 stopMonitoringSignificantLocationChanges];
}

- (void)_updateNavdDirectoryProtectionClass
{
  global_queue = geo_get_global_queue();
  dispatch_async(global_queue, &stru_100067770);
}

- (void)_clearNavTracesDirectory
{
  v2 = +[GEOPlatform sharedPlatform];
  v3 = [v2 isInternalInstall];

  if ((v3 & 1) == 0)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = +[MNFilePaths navTracesDirectoryPath];
    v10 = 0;
    v6 = [v4 removeItemAtPath:v5 error:&v10];
    v7 = v10;

    if (v6)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Successfully removed traces directory.", buf, 2u);
      }
    }

    if (v7)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error removing traces directory: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_migrate
{
  v3 = +[MNFilePaths navdCacheDirectoryPath];
  v9 = [v3 stringByAppendingPathComponent:@"migration.plist"];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v9];

  if (!v5 || ([NSMutableDictionary dictionaryWithContentsOfFile:v9], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = +[NSMutableDictionary dictionary];
  }

  v7 = [v6 objectForKeyedSubscript:@"MigrationVersion"];
  v8 = [v7 integerValue];

  if (v8 != 1)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    [(NavdController *)self _stopMonitoringSignificantLocationChanges];
    [(NavdController *)self _turnOffCoreRoutineMonitoringOn3DTouchDevices];
    [v6 setObject:&off_10006B008 forKeyedSubscript:@"MigrationVersion"];
    [v6 writeToFile:v9 atomically:1];
  }

  [(NavdController *)self _clearNavTracesDirectory];
  [v6 setObject:&off_10006B020 forKeyedSubscript:@"MigrationVersion"];
  [v6 writeToFile:v9 atomically:1];
LABEL_8:
}

- (void)_startMapsSuggestionsControllerIfUnlocked
{
  v3 = +[GEOKeyBagNotification sharedObject];
  v4 = [v3 addDataDidBecomeAvailableAfterFirstUnlockObserver:self];

  if (v4)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 0;
      v6 = "Unable to access protected files, waiting for first unlock.";
      v7 = &v10;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v6, v7, 2u);
    }
  }

  else
  {
    if (!self->_mapsSuggestionsController)
    {
      v8 = objc_alloc_init(NavdMapsSuggestionsController);
      mapsSuggestionsController = self->_mapsSuggestionsController;
      self->_mapsSuggestionsController = v8;
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = "first unlock, starting MapsSuggestionsController";
      v7 = buf;
      goto LABEL_8;
    }
  }
}

- (void)protectedDataDidBecomeAvailable:(id)a3
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "First unlock received, launching MSg features ...", v5, 2u);
  }

  [(NavdController *)self _startMapsSuggestionsControllerIfUnlocked];
}

- (void)start
{
  [(NavdController *)self _migrate];

  [(NavdController *)self _main];
}

- (void)dealloc
{
  dispatch_source_cancel(self->_systemMemoryPressureWarningSource);
  dispatch_source_cancel(self->_systemMemoryPressureCriticalSource);
  dispatch_source_cancel(self->_processMemoryPressureWarningSource);
  dispatch_source_cancel(self->_processMemoryPressureCriticalSource);
  v3.receiver = self;
  v3.super_class = NavdController;
  [(NavdController *)&v3 dealloc];
}

- (void)_startListeningToMemoryPressureEvents
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.navd.memoryPresure", v3);

  v4 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 2uLL, queue);
  dispatch_source_set_event_handler(v4, &stru_100067790);
  systemMemoryPressureWarningSource = self->_systemMemoryPressureWarningSource;
  self->_systemMemoryPressureWarningSource = v4;
  v6 = v4;

  v7 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 4uLL, queue);
  dispatch_source_set_event_handler(v7, &stru_1000677B0);
  systemMemoryPressureCriticalSource = self->_systemMemoryPressureCriticalSource;
  self->_systemMemoryPressureCriticalSource = v7;
  v9 = v7;

  v10 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 0x10uLL, queue);
  dispatch_source_set_event_handler(v10, &stru_1000677D0);
  processMemoryPressureWarningSource = self->_processMemoryPressureWarningSource;
  self->_processMemoryPressureWarningSource = v10;
  v12 = v10;

  v13 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 0x20uLL, queue);
  dispatch_source_set_event_handler(v13, &stru_1000677F0);
  processMemoryPressureCriticalSource = self->_processMemoryPressureCriticalSource;
  self->_processMemoryPressureCriticalSource = v13;
  v15 = v13;

  dispatch_activate(v6);
  dispatch_activate(v9);

  dispatch_activate(v12);
  dispatch_activate(v15);
}

@end