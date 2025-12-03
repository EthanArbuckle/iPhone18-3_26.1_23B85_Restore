@interface MapsSuggestionsVisitMonitor
- (BOOL)isInVisit;
- (CLVisit)latestVisit;
- (MapsSuggestionsVisitMonitor)initWithLocationUpdater:(id)updater startInVisit:(BOOL)visit;
- (NSString)uniqueName;
- (void)didEnterVisit:(id)visit;
- (void)didLeaveVisit:(id)visit;
- (void)didLoseLocationPermission;
- (void)didUpdateLocation:(id)location;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation MapsSuggestionsVisitMonitor

- (MapsSuggestionsVisitMonitor)initWithLocationUpdater:(id)updater startInVisit:(BOOL)visit
{
  v30 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  if (updaterCopy)
  {
    v22.receiver = self;
    v22.super_class = MapsSuggestionsVisitMonitor;
    v8 = [(MapsSuggestionsVisitMonitor *)&v22 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_locationUpdater, updater);
      latestVisit = v9->_latestVisit;
      v9->_latestVisit = 0;

      v9->_isInVisit = visit;
      objc_initWeak(location, v9);
      v11 = [[MapsSuggestionsSimpleTrigger alloc] initWithName:@"onVisitEnter"];
      onEnterTrigger = v9->_onEnterTrigger;
      v9->_onEnterTrigger = v11;

      v13 = [[MapsSuggestionsSimpleTrigger alloc] initWithName:@"onVisitExit"];
      onExitTrigger = v9->_onExitTrigger;
      v9->_onExitTrigger = v13;

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__MapsSuggestionsVisitMonitor_initWithLocationUpdater_startInVisit___block_invoke;
      v20[3] = &unk_1E81F69C8;
      objc_copyWeak(&v21, location);
      v15 = MapsSuggestionsCondition(@"isInVisit", v20);
      isInVisitCondition = v9->_isInVisitCondition;
      v9->_isInVisitCondition = v15;

      objc_destroyWeak(&v21);
      objc_destroyWeak(location);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVisitMonitor.m";
      v24 = 1024;
      v25 = 40;
      v26 = 2082;
      v27 = "[MapsSuggestionsVisitMonitor initWithLocationUpdater:startInVisit:]";
      v28 = 2082;
      v29 = "nil == (locationUpdater)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location updater", location, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

uint64_t __68__MapsSuggestionsVisitMonitor_initWithLocationUpdater_startInVisit___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained isInVisit];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsVisitMonitor.m";
      v8 = 1026;
      v9 = 53;
      v10 = 2082;
      v11 = "[MapsSuggestionsVisitMonitor initWithLocationUpdater:startInVisit:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }

    v3 = 0;
  }

  return v3;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (CLVisit)latestVisit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_latestVisit;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)startMonitoring
{
  v2 = [(MapsSuggestionsLocationUpdater *)self->_locationUpdater startLocationUpdatesForDelegate:self];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Started visit monitoring", v4, 2u);
  }
}

- (void)stopMonitoring
{
  [(MapsSuggestionsLocationUpdater *)self->_locationUpdater stopLocationUpdatesForDelegate:self];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Stopped visit monitoring", v3, 2u);
  }
}

- (BOOL)isInVisit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isInVisit = selfCopy->_isInVisit;
  objc_sync_exit(selfCopy);

  return isInVisit;
}

- (void)didEnterVisit:(id)visit
{
  v16 = *MEMORY[0x1E69E9840];
  visitCopy = visit;
  hasArrivalDate = [visitCopy hasArrivalDate];
  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if (hasArrivalDate)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[MapsSuggestionsVisitMonitor didEnterVisit:]";
      v12 = 2112;
      *v13 = visitCopy;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "%s %@", &v10, 0x16u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_latestVisit, visit);
    selfCopy->_isInVisit = 1;
    objc_sync_exit(selfCopy);

    [(MapsSuggestionsSimpleTrigger *)selfCopy->_onEnterTrigger fire];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVisitMonitor.m";
      v12 = 1024;
      *v13 = 97;
      *&v13[4] = 2082;
      *&v13[6] = "[MapsSuggestionsVisitMonitor didEnterVisit:]";
      v14 = 2082;
      v15 = "!visit.hasArrivalDate";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. An Enter CLVisit must have an arrival date", &v10, 0x26u);
    }
  }
}

- (void)didLeaveVisit:(id)visit
{
  v17 = *MEMORY[0x1E69E9840];
  visitCopy = visit;
  if (([visitCopy hasArrivalDate] & 1) == 0)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVisitMonitor.m";
      v13 = 1024;
      *v14 = 110;
      *&v14[4] = 2082;
      *&v14[6] = "[MapsSuggestionsVisitMonitor didLeaveVisit:]";
      v15 = 2082;
      v16 = "!visit.hasArrivalDate";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. An Exit CLVisit must have an arrival date";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, v10, &v11, 0x26u);
    }

LABEL_11:

    goto LABEL_12;
  }

  hasDepartureDate = [visitCopy hasDepartureDate];
  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if ((hasDepartureDate & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVisitMonitor.m";
      v13 = 1024;
      *v14 = 111;
      *&v14[4] = 2082;
      *&v14[6] = "[MapsSuggestionsVisitMonitor didLeaveVisit:]";
      v15 = 2082;
      v16 = "!visit.hasDepartureDate";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. An Exit CLVisit must have a departure date";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315394;
    v12 = "[MapsSuggestionsVisitMonitor didLeaveVisit:]";
    v13 = 2112;
    *v14 = visitCopy;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "%s %@", &v11, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_latestVisit, visit);
  selfCopy->_isInVisit = 0;
  objc_sync_exit(selfCopy);

  [(MapsSuggestionsSimpleTrigger *)selfCopy->_onExitTrigger fire];
LABEL_12:
}

- (void)didLoseLocationPermission
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Lost our permission to have locations; wiping what we know.", v6, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  latestVisit = selfCopy->_latestVisit;
  selfCopy->_latestVisit = 0;

  selfCopy->_isInVisit = 0;
  objc_sync_exit(selfCopy);
}

- (void)didUpdateLocation:(id)location
{
  v9 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "[MapsSuggestionsVisitMonitor didUpdateLocation:]";
      v7 = 2112;
      v8 = locationCopy;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "%s %@", &v5, 0x16u);
    }
  }
}

@end