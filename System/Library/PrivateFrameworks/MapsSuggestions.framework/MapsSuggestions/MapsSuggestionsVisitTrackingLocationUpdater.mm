@interface MapsSuggestionsVisitTrackingLocationUpdater
+ (BOOL)_isDefinitelyOutsideOfVisit:(id)visit location:(id)location allowingBuffer:(double)buffer;
- (NSString)uniqueName;
- (id).cxx_construct;
- (id)initDecoratingLocationUpdater:(id)updater;
- (id)restartLocationUpdatesForDelegate:(id)delegate;
- (id)startLocationUpdatesForDelegate:(id)delegate;
- (void)dealloc;
- (void)didEnterVisit:(id)visit;
- (void)didLeaveVisit:(id)visit;
- (void)didLoseLocationPermission;
- (void)didUpdateLocation:(id)location;
- (void)stopLocationUpdatesForDelegate:(id)delegate;
@end

@implementation MapsSuggestionsVisitTrackingLocationUpdater

- (id)initDecoratingLocationUpdater:(id)updater
{
  updaterCopy = updater;
  v25.receiver = self;
  v25.super_class = MapsSuggestionsVisitTrackingLocationUpdater;
  v6 = [(MapsSuggestionsVisitTrackingLocationUpdater *)&v25 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&v23, @"MapsSuggestionsVisitTrackingLocationUpdaterQueue", v7);
    v8 = v23;
    v23 = 0;
    innerQueue = v6->_queue._innerQueue;
    v6->_queue._innerQueue = v8;

    v10 = v24;
    v24 = 0;
    name = v6->_queue._name;
    v6->_queue._name = v10;

    objc_storeStrong(&v6->_wrappedLocationUpdater, updater);
    currentVisit = v6->_currentVisit;
    v6->_currentVisit = 0;

    v13 = [MapsSuggestionsObservers alloc];
    v14 = v6->_queue._innerQueue;
    v15 = [(MapsSuggestionsObservers *)v13 initWithCallbackQueue:v14 name:@"MapsSuggestionsVisitTrackingLocationUpdaterLocationObservers"];
    locationObservers = v6->_locationObservers;
    v6->_locationObservers = v15;

    v17 = [MapsSuggestionsObservers alloc];
    v18 = v6->_queue._innerQueue;
    v19 = [(MapsSuggestionsObservers *)v17 initWithCallbackQueue:v18 name:@"MapsSuggestionsVisitTrackingLocationUpdaterVisitObservers"];
    visitObservers = v6->_visitObservers;
    v6->_visitObservers = v19;

    GEOConfigGetDouble();
    v6->_distanceBuffer = v21;
  }

  return v6;
}

- (void)dealloc
{
  locationObservers = self->_locationObservers;
  self->_locationObservers = 0;

  visitObservers = self->_visitObservers;
  self->_visitObservers = 0;

  innerQueue = self->_queue._innerQueue;
  self->_queue._innerQueue = 0;

  name = self->_queue._name;
  self->_queue._name = 0;

  v7.receiver = self;
  v7.super_class = MapsSuggestionsVisitTrackingLocationUpdater;
  [(MapsSuggestionsVisitTrackingLocationUpdater *)&v7 dealloc];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id)restartLocationUpdatesForDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(MapsSuggestionsVisitTrackingLocationUpdater *)self stopLocationUpdatesForDelegate:delegateCopy];
  v5 = [(MapsSuggestionsVisitTrackingLocationUpdater *)self startLocationUpdatesForDelegate:delegateCopy];

  return v5;
}

- (id)startLocationUpdatesForDelegate:(id)delegate
{
  v21 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [delegateCopy uniqueName];
      *buf = 138412290;
      v14 = uniqueName;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "VisitTrackingLocationUpdater startLocationUpdatesForDelegate:%@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__MapsSuggestionsVisitTrackingLocationUpdater_startLocationUpdatesForDelegate___block_invoke;
    v10[3] = &unk_1E81F7D58;
    v10[4] = self;
    v11 = delegateCopy;
    objc_copyWeak(&v12, buf);
    v7 = MSg::Queue::sync<CLLocation * {__strong}>(&self->_queue, v10);
    objc_destroyWeak(&v12);

    objc_destroyWeak(buf);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVisitTrackingLocationUpdater.mm";
      v15 = 1024;
      v16 = 107;
      v17 = 2082;
      v18 = "[MapsSuggestionsVisitTrackingLocationUpdater startLocationUpdatesForDelegate:]";
      v19 = 2082;
      v20 = "nil == (delegate)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a delegate", buf, 0x26u);
    }

    v7 = 0;
  }

  return v7;
}

void *__79__MapsSuggestionsVisitTrackingLocationUpdater_startLocationUpdatesForDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__MapsSuggestionsVisitTrackingLocationUpdater_startLocationUpdatesForDelegate___block_invoke_2;
  v7[3] = &unk_1E81F55C8;
  objc_copyWeak(&v8, (a1 + 48));
  [v3 registerObserver:v2 handler:v7];
  if ([*(a1 + 40) conformsToProtocol:&unk_1F44788B8])
  {
    [*(*(a1 + 32) + 56) registerObserver:*(a1 + 40) handler:0];
  }

  v4 = *(*(a1 + 32) + 32);
  v5 = v4;
  objc_destroyWeak(&v8);
  return v4;
}

void __79__MapsSuggestionsVisitTrackingLocationUpdater_startLocationUpdatesForDelegate___block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = [*(WeakRetained + 3) startLocationUpdatesForDelegate:WeakRetained];
      v6 = v4[4];
      v4[4] = v5;
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsVisitTrackingLocationUpdater.mm";
      v10 = 1026;
      v11 = 115;
      v12 = 2082;
      v13 = "[MapsSuggestionsVisitTrackingLocationUpdater startLocationUpdatesForDelegate:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (void)stopLocationUpdatesForDelegate:(id)delegate
{
  v14 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [delegateCopy uniqueName];
    *buf = 138412290;
    v13 = uniqueName;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "VisitTrackingLocationUpdater stopLocationUpdatesForDelegate:%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__MapsSuggestionsVisitTrackingLocationUpdater_stopLocationUpdatesForDelegate___block_invoke;
  v9[3] = &unk_1E81F5970;
  objc_copyWeak(&v11, buf);
  v10 = delegateCopy;
  innerQueue = self->_queue._innerQueue;
  v8 = delegateCopy;
  dispatch_async(innerQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __78__MapsSuggestionsVisitTrackingLocationUpdater_stopLocationUpdatesForDelegate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[6];
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__MapsSuggestionsVisitTrackingLocationUpdater_stopLocationUpdatesForDelegate___block_invoke_77;
    v7[3] = &unk_1E81F55C8;
    objc_copyWeak(&v8, (a1 + 40));
    [v4 unregisterObserver:v5 handler:v7];
    if ([*(a1 + 32) conformsToProtocol:&unk_1F44788B8])
    {
      [v3[7] unregisterObserver:*(a1 + 32) handler:0];
    }

    objc_destroyWeak(&v8);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "MapsSuggestionsVisitTrackingLocationUpdater.mm";
      v11 = 1026;
      v12 = 135;
      v13 = 2082;
      v14 = "[MapsSuggestionsVisitTrackingLocationUpdater stopLocationUpdatesForDelegate:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __78__MapsSuggestionsVisitTrackingLocationUpdater_stopLocationUpdatesForDelegate___block_invoke_77(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained[3] stopLocationUpdatesForDelegate:WeakRetained];
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsVisitTrackingLocationUpdater.mm";
      v8 = 1026;
      v9 = 137;
      v10 = 2082;
      v11 = "[MapsSuggestionsVisitTrackingLocationUpdater stopLocationUpdatesForDelegate:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (void)didUpdateLocation:(id)location
{
  locationCopy = location;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MapsSuggestionsVisitTrackingLocationUpdater_didUpdateLocation___block_invoke;
  block[3] = &unk_1E81F5970;
  objc_copyWeak(&v9, &location);
  v8 = locationCopy;
  innerQueue = self->_queue._innerQueue;
  v6 = locationCopy;
  dispatch_async(innerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__MapsSuggestionsVisitTrackingLocationUpdater_didUpdateLocation___block_invoke(uint64_t a1)
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) copy];
    v4 = WeakRetained[4];
    WeakRetained[4] = v3;

    v5 = WeakRetained[6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__MapsSuggestionsVisitTrackingLocationUpdater_didUpdateLocation___block_invoke_79;
    v11[3] = &unk_1E81F7400;
    v12 = *(a1 + 32);
    [v5 callBlock:v11];
    v6 = WeakRetained[5];
    if (v6 && [MapsSuggestionsVisitTrackingLocationUpdater _isDefinitelyOutsideOfVisit:v6 location:*(a1 + 32) allowingBuffer:*(WeakRetained + 8)])
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = WeakRetained[5];
        v9 = *(a1 + 32);
        *buf = 138412546;
        v14 = v8;
        v15 = 2112;
        *v16 = v9;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_INFO, "DETECTED EXIT (visit=%@ location=%@)", buf, 0x16u);
      }

      [WeakRetained didLeaveVisit:WeakRetained[5]];
    }

    v10 = v12;
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsVisitTrackingLocationUpdater.mm";
      v15 = 1026;
      *v16 = 155;
      v16[2] = 2082;
      *&v16[3] = "[MapsSuggestionsVisitTrackingLocationUpdater didUpdateLocation:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __65__MapsSuggestionsVisitTrackingLocationUpdater_didUpdateLocation___block_invoke_79(uint64_t a1, void *a2)
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

- (void)didLoseLocationPermission
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__MapsSuggestionsVisitTrackingLocationUpdater_didLoseLocationPermission__block_invoke;
  v3[3] = &unk_1E81F5208;
  objc_copyWeak(&v4, &location);
  dispatch_async(self->_queue._innerQueue, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __72__MapsSuggestionsVisitTrackingLocationUpdater_didLoseLocationPermission__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Wiping latest location", &v5, 2u);
    }

    v3 = *(WeakRetained + 4);
    *(WeakRetained + 4) = 0;

    [*(WeakRetained + 7) callBlock:&__block_literal_global_27];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsVisitTrackingLocationUpdater.mm";
      v7 = 1026;
      v8 = 180;
      v9 = 2082;
      v10 = "[MapsSuggestionsVisitTrackingLocationUpdater didLoseLocationPermission]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void __72__MapsSuggestionsVisitTrackingLocationUpdater_didLoseLocationPermission__block_invoke_82(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [v2 uniqueName];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "CALLING{%@} didLoseLocationPermission", &v5, 0xCu);
  }

  [v2 didLoseLocationPermission];
}

- (void)didEnterVisit:(id)visit
{
  visitCopy = visit;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MapsSuggestionsVisitTrackingLocationUpdater_didEnterVisit___block_invoke;
  block[3] = &unk_1E81F5970;
  objc_copyWeak(&v9, &location);
  v8 = visitCopy;
  innerQueue = self->_queue._innerQueue;
  v6 = visitCopy;
  dispatch_async(innerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__MapsSuggestionsVisitTrackingLocationUpdater_didEnterVisit___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[5])
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVisitTrackingLocationUpdater.mm";
        v12 = 1024;
        v13 = 197;
        v14 = 2082;
        v15 = "[MapsSuggestionsVisitTrackingLocationUpdater didEnterVisit:]_block_invoke";
        v16 = 2082;
        v17 = "nil != strongSelf->_currentVisit";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. We were already in a Visit! CoreRoutine says that is not possible!", buf, 0x26u);
      }
    }

    else
    {
      v5 = [*(a1 + 32) copy];
      v6 = v3[5];
      v3[5] = v5;

      v7 = v3[7];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__MapsSuggestionsVisitTrackingLocationUpdater_didEnterVisit___block_invoke_85;
      v8[3] = &unk_1E81F7DA0;
      v9 = *(a1 + 32);
      [v7 callBlock:v8];
      v4 = v9;
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "MapsSuggestionsVisitTrackingLocationUpdater.mm";
      v12 = 1026;
      v13 = 196;
      v14 = 2082;
      v15 = "[MapsSuggestionsVisitTrackingLocationUpdater didEnterVisit:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __61__MapsSuggestionsVisitTrackingLocationUpdater_didEnterVisit___block_invoke_85(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 uniqueName];
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "CALLING{%@} didEnterVisit:%@", &v7, 0x16u);
  }

  [v3 didEnterVisit:*(a1 + 32)];
}

- (void)didLeaveVisit:(id)visit
{
  visitCopy = visit;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MapsSuggestionsVisitTrackingLocationUpdater_didLeaveVisit___block_invoke;
  block[3] = &unk_1E81F5970;
  objc_copyWeak(&v9, &location);
  v8 = visitCopy;
  innerQueue = self->_queue._innerQueue;
  v6 = visitCopy;
  dispatch_async(innerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__MapsSuggestionsVisitTrackingLocationUpdater_didLeaveVisit___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[5];
    if (v4)
    {
      WeakRetained[5] = 0;

      v5 = v3[7];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__MapsSuggestionsVisitTrackingLocationUpdater_didLeaveVisit___block_invoke_86;
      v8[3] = &unk_1E81F7DA0;
      v9 = *(a1 + 32);
      [v5 callBlock:v8];
      v6 = v9;
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_INFO, "IGNORED LATE EXIT (visit=%@)", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "MapsSuggestionsVisitTrackingLocationUpdater.mm";
      v12 = 1026;
      v13 = 213;
      v14 = 2082;
      v15 = "[MapsSuggestionsVisitTrackingLocationUpdater didLeaveVisit:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __61__MapsSuggestionsVisitTrackingLocationUpdater_didLeaveVisit___block_invoke_86(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 uniqueName];
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "CALLING{%@} didLeaveVisit:%@", &v7, 0x16u);
  }

  [v3 didLeaveVisit:*(a1 + 32)];
}

+ (BOOL)_isDefinitelyOutsideOfVisit:(id)visit location:(id)location allowingBuffer:(double)buffer
{
  v24 = *MEMORY[0x1E69E9840];
  visitCopy = visit;
  locationCopy = location;
  if (!MapsSuggestionsIsValidVisit(visitCopy))
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = visitCopy;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "Cannot use invalid visit: %@", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (!MapsSuggestionsIsValidLocation(locationCopy))
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = locationCopy;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "Cannot use invalid location: %@", &buf, 0xCu);
    }

LABEL_9:

    v18 = 0;
    goto LABEL_10;
  }

  [visitCopy coordinate];
  *&buf = v9;
  *(&buf + 1) = v10;
  [locationCopy coordinate];
  v21 = v11;
  v22 = v12;
  CLLocationCoordinate2DGetDistanceFrom();
  v14 = v13;
  [locationCopy horizontalAccuracy];
  v16 = v15;
  [visitCopy horizontalAccuracy];
  v18 = v14 > v16 + v17 + buffer;
LABEL_10:

  return v18;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end