@interface MapsSuggestionsBaseLocationUpdater
- (MapsSuggestionsBaseLocationUpdater)initWithName:(id)a3 queue:(id)a4;
- (NSString)uniqueName;
- (id).cxx_construct;
- (id)restartLocationUpdatesForDelegate:(id)a3;
- (id)startLocationUpdatesForDelegate:(id)a3;
- (void)considerMyAllowanceAsLimited:(BOOL)a3;
- (void)considerMyNewLocation:(id)a3;
- (void)considerMyNewVisit:(id)a3;
- (void)dealloc;
- (void)stopLocationUpdatesForDelegate:(id)a3;
@end

@implementation MapsSuggestionsBaseLocationUpdater

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsBaseLocationUpdater)initWithName:(id)a3 queue:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseLocationUpdater.mm";
      *&buf[12] = 1024;
      *&buf[14] = 41;
      v31 = 2082;
      v32 = "[MapsSuggestionsBaseLocationUpdater initWithName:queue:]";
      v33 = 2082;
      v34 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseLocationUpdater.mm";
      *&buf[12] = 1024;
      *&buf[14] = 42;
      v31 = 2082;
      v32 = "[MapsSuggestionsBaseLocationUpdater initWithName:queue:]";
      v33 = 2082;
      v34 = "nil == (queue)";
      _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a queue", buf, 0x26u);
    }

LABEL_11:

    v26 = 0;
    goto LABEL_12;
  }

  v29.receiver = self;
  v29.super_class = MapsSuggestionsBaseLocationUpdater;
  v9 = [(MapsSuggestionsBaseLocationUpdater *)&v29 init];
  if (v9)
  {
    v10 = [v6 copy];
    name = v9->_name;
    v9->_name = v10;

    MSg::Queue::Queue(buf, v8);
    v12 = *buf;
    *buf = 0;
    innerQueue = v9->_queue._innerQueue;
    v9->_queue._innerQueue = v12;

    v14 = *&buf[8];
    *&buf[8] = 0;
    v15 = v9->_queue._name;
    v9->_queue._name = v14;

    v16 = [MapsSuggestionsObservers alloc];
    v17 = v9->_queue._innerQueue;
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@LocationObservers", v9->_name];
    v19 = [(MapsSuggestionsObservers *)v16 initWithCallbackQueue:v17 name:v18];
    locationObservers = v9->_locationObservers;
    v9->_locationObservers = v19;

    v21 = [MapsSuggestionsObservers alloc];
    v22 = v9->_queue._innerQueue;
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@VisitObservers", v9->_name];
    v24 = [(MapsSuggestionsObservers *)v21 initWithCallbackQueue:v22 name:v23];
    visitObservers = v9->_visitObservers;
    v9->_visitObservers = v24;
  }

  self = v9;
  v26 = self;
LABEL_12:

  return v26;
}

- (void)dealloc
{
  locationObservers = self->_locationObservers;
  self->_locationObservers = 0;

  visitObservers = self->_visitObservers;
  self->_visitObservers = 0;

  v5.receiver = self;
  v5.super_class = MapsSuggestionsBaseLocationUpdater;
  [(MapsSuggestionsBaseLocationUpdater *)&v5 dealloc];
}

- (void)considerMyNewLocation:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  MapsSuggestionsSetMostRecentLocation(a3);
  v4 = MapsSuggestionsCurrentBestLocation();
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Chose best location: %@", buf, 0xCu);
    }
  }

  locationObservers = self->_locationObservers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MapsSuggestionsBaseLocationUpdater_considerMyNewLocation___block_invoke;
  v8[3] = &unk_1E81F7400;
  v7 = v4;
  v9 = v7;
  [(MapsSuggestionsObservers *)locationObservers callBlock:v8];
}

void __60__MapsSuggestionsBaseLocationUpdater_considerMyNewLocation___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 uniqueName];
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "CALLING{%@} didUpdateLocation:%@", &v7, 0x16u);
    }
  }

  [v3 didUpdateLocation:*(a1 + 32)];
}

- (void)considerMyNewVisit:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (MapsSuggestionsIsValidVisit(v4))
  {
    v5 = v4;
    v6 = v5;
    if (v5)
    {
      v7 = [v5 departureDate];
      if (v7 && ([MEMORY[0x1E695DF00] distantFuture], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToDate:", v8), v8, !v9))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseLocationUpdater.mm";
        v21 = 1024;
        v22 = 93;
        v23 = 2082;
        v24 = "_MapsSuggestionsVisitEventType _visitEventType(CLVisit *__strong)";
        v25 = 2082;
        v26 = "nil == (visit)";
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a visit", buf, 0x26u);
      }

      v10 = 0;
    }

    if (MapsSuggestionsLoggingIsVerbose())
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = "arrival";
        if (v10 == 2)
        {
          v14 = "departure";
        }

        *buf = 136315138;
        v20 = v14;
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "BaseLocationUpdater visit %s", buf, 0xCu);
      }
    }

    visitObservers = self->_visitObservers;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__MapsSuggestionsBaseLocationUpdater_considerMyNewVisit___block_invoke;
    v16[3] = &unk_1E81F7428;
    v18 = v10;
    v17 = v6;
    [(MapsSuggestionsObservers *)visitObservers callBlock:v16];
    v11 = v17;
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Dropping invalid visit: %@", buf, 0xCu);
    }
  }
}

void __57__MapsSuggestionsBaseLocationUpdater_considerMyNewVisit___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 == 2)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v3 uniqueName];
      v10 = *(a1 + 32);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      *v15 = v10;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "CALLING{%@} didLeaveVisit:%@", &v12, 0x16u);
    }

    [v3 didLeaveVisit:*(a1 + 32)];
  }

  else if (v4 == 1)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v7 = *(a1 + 32);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      *v15 = v7;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "CALLING{%@} didEnterVisit:%@", &v12, 0x16u);
    }

    [v3 didEnterVisit:*(a1 + 32)];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseLocationUpdater.mm";
      v14 = 1024;
      *v15 = 131;
      *&v15[4] = 2082;
      *&v15[6] = "[MapsSuggestionsBaseLocationUpdater considerMyNewVisit:]_block_invoke";
      v16 = 2082;
      v17 = "YES";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsVisitEventType!", &v12, 0x26u);
    }
  }
}

- (void)considerMyAllowanceAsLimited:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = MapsSuggestionsIsInCoarseLocation();
  if (v5 == v3)
  {
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "Location allowance is the same. Doing nothing.", &v13, 2u);
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(MapsSuggestionsBaseLocationUpdater *)self uniqueName];
      v9 = v8;
      v10 = "Precise";
      if (v6)
      {
        v11 = "Coarse";
      }

      else
      {
        v11 = "Precise";
      }

      v13 = 138412802;
      v14 = v8;
      v16 = v11;
      v15 = 2080;
      if (v3)
      {
        v10 = "Coarse";
      }

      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "%@ is switched from %s to %s", &v13, 0x20u);
    }

    MapsSuggestionsSetInCoarseLocation(v3);
    if (v3)
    {
      MapsSuggestionsResetCurrentLocation();
      [(MapsSuggestionsObservers *)self->_locationObservers callBlock:&__block_literal_global_22];
    }
  }
}

void __67__MapsSuggestionsBaseLocationUpdater_considerMyAllowanceAsLimited___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [v2 uniqueName];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "CALLING{%@} didLoseLocationPermission", &v5, 0xCu);
    }
  }

  [v2 didLoseLocationPermission];
}

- (id)startLocationUpdatesForDelegate:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 uniqueName];
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "BaseLocationUpdater startLocationUpdatesForDelegate:%@", buf, 0xCu);
    }

    v7 = MapsSuggestionsCurrentBestLocation();
    objc_initWeak(buf, self);
    locationObservers = self->_locationObservers;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__MapsSuggestionsBaseLocationUpdater_startLocationUpdatesForDelegate___block_invoke;
    v11[3] = &unk_1E81F55C8;
    objc_copyWeak(&v12, buf);
    [(MapsSuggestionsObservers *)locationObservers registerObserver:v4 handler:v11];
    if ([v4 conformsToProtocol:&unk_1F44788B8])
    {
      [(MapsSuggestionsObservers *)self->_visitObservers registerObserver:v4 handler:0];
    }

    [(MapsSuggestionsBaseLocationUpdater *)self considerMyNewLocation:v7];
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseLocationUpdater.mm";
      v15 = 1024;
      v16 = 172;
      v17 = 2082;
      v18 = "[MapsSuggestionsBaseLocationUpdater startLocationUpdatesForDelegate:]";
      v19 = 2082;
      v20 = "nil == (strongDelegate)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a delegate", buf, 0x26u);
    }

    v7 = 0;
  }

  return v7;
}

void __70__MapsSuggestionsBaseLocationUpdater_startLocationUpdatesForDelegate___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      dispatch_assert_queue_V2(WeakRetained[2]);
      [(dispatch_queue_t *)v3 onStartImplementation];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsBaseLocationUpdater.mm";
        v7 = 1026;
        v8 = 180;
        v9 = 2082;
        v10 = "[MapsSuggestionsBaseLocationUpdater startLocationUpdatesForDelegate:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (void)stopLocationUpdatesForDelegate:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 uniqueName];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "BaseLocationUpdater stopLocationUpdatesForDelegate:%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  locationObservers = self->_locationObservers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__MapsSuggestionsBaseLocationUpdater_stopLocationUpdatesForDelegate___block_invoke;
  v8[3] = &unk_1E81F55C8;
  objc_copyWeak(&v9, buf);
  [(MapsSuggestionsObservers *)locationObservers unregisterObserver:v4 handler:v8];
  if ([v4 conformsToProtocol:&unk_1F44788B8])
  {
    [(MapsSuggestionsObservers *)self->_visitObservers unregisterObserver:v4 handler:0];
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __69__MapsSuggestionsBaseLocationUpdater_stopLocationUpdatesForDelegate___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained onStopImplementation];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsBaseLocationUpdater.mm";
        v7 = 1026;
        v8 = 203;
        v9 = 2082;
        v10 = "[MapsSuggestionsBaseLocationUpdater stopLocationUpdatesForDelegate:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (id)restartLocationUpdatesForDelegate:(id)a3
{
  v4 = a3;
  [(MapsSuggestionsBaseLocationUpdater *)self stopLocationUpdatesForDelegate:v4];
  v5 = [(MapsSuggestionsBaseLocationUpdater *)self startLocationUpdatesForDelegate:v4];

  return v5;
}

@end