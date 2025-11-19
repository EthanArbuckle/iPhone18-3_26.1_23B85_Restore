@interface MapsSuggestionsVirtualGarage
- (BOOL)entriesForUnpairedVehiclesWithHandler:(id)a3;
- (MapsSuggestionsVirtualGarage)initWithConnector:(id)a3;
- (id)_q_entryForUnpairedVehicles:(uint64_t)a1;
- (id)initFromResourceDepot:(id)a3;
- (void)closeConnection;
- (void)openConnection;
- (void)registerObserver:(id)a3;
- (void)stateOfChargeForVehicleWithIdentifier:(id)a3 handler:(id)a4;
- (void)unregisterObserver:(id)a3;
- (void)virtualGarageDidUpdateUnpairedVehicles:(id)a3;
@end

@implementation MapsSuggestionsVirtualGarage

- (id)initFromResourceDepot:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVirtualGarage.m";
      v14 = 1024;
      v15 = 42;
      v16 = 2082;
      v17 = "[MapsSuggestionsVirtualGarage initFromResourceDepot:]";
      v18 = 2082;
      v19 = "nil == (resourceDepot)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x26u);
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  v6 = [v4 oneVirtualGarageConnector];

  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVirtualGarage.m";
      v14 = 1024;
      v15 = 43;
      v16 = 2082;
      v17 = "[MapsSuggestionsVirtualGarage initFromResourceDepot:]";
      v18 = 2082;
      v19 = "nil == (resourceDepot.oneVirtualGarageConnector)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires OneVirtualGarageConnector!";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v7 = [v5 oneVirtualGarageConnector];
  self = [(MapsSuggestionsVirtualGarage *)self initWithConnector:v7];

  v8 = self;
LABEL_10:

  return v8;
}

- (MapsSuggestionsVirtualGarage)initWithConnector:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v15.receiver = self;
    v15.super_class = MapsSuggestionsVirtualGarage;
    v6 = [(MapsSuggestionsVirtualGarage *)&v15 init];
    if (v6)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("MapsSuggestionsVirtualGarageQueue", v7);
      queue = v6->_queue;
      v6->_queue = v8;

      objc_storeStrong(&v6->_connector, a3);
      [(MapsSuggestionsVirtualGarageConnector *)v6->_connector setDelegate:v6];
      v10 = [[MapsSuggestionsObservers alloc] initWithCallbackQueue:v6->_queue name:@"MapsSuggestionsVirtualGarageObservers"];
      observers = v6->_observers;
      v6->_observers = v10;
    }

    self = v6;
    v12 = self;
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVirtualGarage.m";
      v18 = 1024;
      v19 = 70;
      v20 = 2082;
      v21 = "[MapsSuggestionsVirtualGarage initWithConnector:]";
      v22 = 2082;
      v23 = "nil == (connector)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an virtualGarageConnector", buf, 0x26u);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)entriesForUnpairedVehiclesWithHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVirtualGarage.m";
      *&location[12] = 1024;
      *v15 = 136;
      *&v15[4] = 2082;
      v16 = "[MapsSuggestionsVirtualGarage entriesForUnpairedVehiclesWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler!", location, 0x26u);
    }

    goto LABEL_13;
  }

  v5 = IsEVRoutingSupported();
  if (!v5 || !MapsFeature_IsEnabled_EVRouting() || (GEOConfigGetBOOL() & 1) == 0)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *location = 67109888;
      *&location[8] = 1024;
      *&location[10] = v5;
      *v15 = 1024;
      *&v15[2] = MapsFeature_IsEnabled_EVRouting();
      LOWORD(v16) = 1024;
      *(&v16 + 2) = GEOConfigGetBOOL();
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "_isEVRoutingSupported is %d because: CountrySupportsEVRouting: %d, FeatureEnabled: %d, SourceEnabled: %d", location, 0x1Au);
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *location = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "EV routing is not supported", location, 2u);
    }

    v9 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:@"No results. EV Routing is not supported"];
    v4[2](v4, MEMORY[0x1E695E0F0], v9);
LABEL_13:

    goto LABEL_14;
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__MapsSuggestionsVirtualGarage_entriesForUnpairedVehiclesWithHandler___block_invoke;
  v11[3] = &unk_1E81F5CB0;
  objc_copyWeak(&v13, location);
  v12 = v4;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);
LABEL_14:

  return v4 != 0;
}

void __70__MapsSuggestionsVirtualGarage_entriesForUnpairedVehiclesWithHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Asking VGConnector for unpaired vehicles", buf, 2u);
    }

    v5 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__MapsSuggestionsVirtualGarage_entriesForUnpairedVehiclesWithHandler___block_invoke_152;
    v7[3] = &unk_1E81F60F0;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    [v5 fetchUnpairedVehiclesWithHandler:v7];

    objc_destroyWeak(&v9);
  }

  else
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "MapsSuggestionsVirtualGarage.m";
      v12 = 1026;
      v13 = 146;
      v14 = 2082;
      v15 = "[MapsSuggestionsVirtualGarage entriesForUnpairedVehiclesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __70__MapsSuggestionsVirtualGarage_entriesForUnpairedVehiclesWithHandler___block_invoke_152(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__MapsSuggestionsVirtualGarage_entriesForUnpairedVehiclesWithHandler___block_invoke_153;
    v12[3] = &unk_1E81F60C8;
    v13 = v6;
    v14 = v5;
    v10 = *(a1 + 32);
    v15 = v8;
    v16 = v10;
    dispatch_async(v9, v12);

    v11 = v13;
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "MapsSuggestionsVirtualGarage.m";
      v19 = 1026;
      v20 = 150;
      v21 = 2082;
      v22 = "[MapsSuggestionsVirtualGarage entriesForUnpairedVehiclesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __70__MapsSuggestionsVirtualGarage_entriesForUnpairedVehiclesWithHandler___block_invoke_153(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) && (v2 = *(a1 + 40)) != 0 && [v2 count])
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Received vehicles: %@", buf, 0xCu);
    }

    v12 = [(MapsSuggestionsVirtualGarage *)*(a1 + 48) _q_entryForUnpairedVehicles:?];
    v7 = v12;
    v13 = *(a1 + 56);
    if (v12)
    {
      v14 = v12;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      (*(v13 + 16))(v13, v9, 0);
    }

    else
    {
      v9 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:@"No results. Entry is nil"];
      (*(v13 + 16))(v13, MEMORY[0x1E695E0F0], v9);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "VG returned no vehicles", buf, 2u);
    }

    v4 = *(a1 + 56);
    v5 = MEMORY[0x1E696ABC0];
    v6 = [*(a1 + 32) localizedDescription];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"No results. Number of vehicles is zero or there is some other error";
    }

    v9 = [v5 GEOErrorWithCode:-8 reason:v8];
    (*(v4 + 16))(v4, MEMORY[0x1E695E0F0], v9);
  }
}

- (void)openConnection
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MapsSuggestionsVirtualGarage_openConnection__block_invoke;
  v4[3] = &unk_1E81F53E8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __46__MapsSuggestionsVirtualGarage_openConnection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 32) & 1) == 0)
    {
      [*(WeakRetained + 1) openVGConnection];
      v2[32] = 1;
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsVirtualGarage.m";
      v6 = 1026;
      v7 = 178;
      v8 = 2082;
      v9 = "[MapsSuggestionsVirtualGarage openConnection]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)closeConnection
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__MapsSuggestionsVirtualGarage_closeConnection__block_invoke;
  v4[3] = &unk_1E81F53E8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__MapsSuggestionsVirtualGarage_closeConnection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 32) == 1)
    {
      [*(WeakRetained + 1) closeVGConnection];
      v2[32] = 0;
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsVirtualGarage.m";
      v6 = 1026;
      v7 = 190;
      v8 = 2082;
      v9 = "[MapsSuggestionsVirtualGarage closeConnection]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__MapsSuggestionsVirtualGarage_registerObserver___block_invoke;
  v6[3] = &unk_1E81F5EF0;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers registerObserver:v4 handler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__MapsSuggestionsVirtualGarage_registerObserver___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[1] startObservingVG];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsVirtualGarage.m";
        v7 = 1026;
        v8 = 203;
        v9 = 2082;
        v10 = "[MapsSuggestionsVirtualGarage registerObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MapsSuggestionsVirtualGarage_unregisterObserver___block_invoke;
  v6[3] = &unk_1E81F5EF0;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers unregisterObserver:v4 handler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __51__MapsSuggestionsVirtualGarage_unregisterObserver___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[1] stopObservingVG];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsVirtualGarage.m";
        v7 = 1026;
        v8 = 214;
        v9 = 2082;
        v10 = "[MapsSuggestionsVirtualGarage unregisterObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (void)virtualGarageDidUpdateUnpairedVehicles:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MapsSuggestionsVirtualGarage_virtualGarageDidUpdateUnpairedVehicles___block_invoke;
  block[3] = &unk_1E81F6140;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __71__MapsSuggestionsVirtualGarage_virtualGarageDidUpdateUnpairedVehicles___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = IsEVRoutingSupported();
  if (v2 && MapsFeature_IsEnabled_EVRouting() && (GEOConfigGetBOOL() & 1) != 0)
  {
    if ([*(a1 + 32) count])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v4 = WeakRetained;
      if (WeakRetained)
      {
        v10 = [(MapsSuggestionsVirtualGarage *)WeakRetained _q_entryForUnpairedVehicles:?];
        v6 = v10;
        if (!v10)
        {
          goto LABEL_10;
        }

        isa = v4[2].isa;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __71__MapsSuggestionsVirtualGarage_virtualGarageDidUpdateUnpairedVehicles___block_invoke_164;
        v12[3] = &unk_1E81F6118;
        v6 = v10;
        v13 = v6;
        [(objc_class *)isa callBlock:v12];
        v5 = v13;
      }

      else
      {
        v5 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *v15 = "MapsSuggestionsVirtualGarage.m";
          *&v15[8] = 1026;
          *v16 = 240;
          *&v16[4] = 2082;
          v17 = "[MapsSuggestionsVirtualGarage virtualGarageDidUpdateUnpairedVehicles:]_block_invoke";
          _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
        }

        v6 = v5;
      }

LABEL_10:
LABEL_22:

      return;
    }

    v8 = 1;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v15 = 0;
      *&v15[4] = 1024;
      *&v15[6] = v2;
      *v16 = 1024;
      *&v16[2] = MapsFeature_IsEnabled_EVRouting();
      LOWORD(v17) = 1024;
      *(&v17 + 2) = GEOConfigGetBOOL();
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "_isEVRoutingSupported is %d because: CountrySupportsEVRouting: %d, FeatureEnabled: %d, SourceEnabled: %d", buf, 0x1Au);
    }

    v8 = 0;
  }

  if ([*(a1 + 32) count])
  {
    if (v8)
    {
      return;
    }

    goto LABEL_20;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "Received no unpaired vehicles from VirtualGarage", buf, 2u);
  }

  if ((v8 & 1) == 0)
  {
LABEL_20:
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "EV Routing was not supported after destinationd spun", buf, 2u);
    }

    goto LABEL_22;
  }
}

void __71__MapsSuggestionsVirtualGarage_virtualGarageDidUpdateUnpairedVehicles___block_invoke_164(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 unpairedVehiclesChangedInVirtualGarage:{v4, v5, v6}];
}

- (void)stateOfChargeForVehicleWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__MapsSuggestionsVirtualGarage_stateOfChargeForVehicleWithIdentifier_handler___block_invoke;
  v11[3] = &unk_1E81F5DB0;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __78__MapsSuggestionsVirtualGarage_stateOfChargeForVehicleWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] fetchStateOfChargeForVehicleWithIdentifier:*(a1 + 32) handler:*(a1 + 40)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsVirtualGarage.m";
      v7 = 1026;
      v8 = 257;
      v9 = 2082;
      v10 = "[MapsSuggestionsVirtualGarage stateOfChargeForVehicleWithIdentifier:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (id)_q_entryForUnpairedVehicles:(uint64_t)a1
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v38;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          v12 = [v11 pairedAppIdentifier];
          v13 = [v12 length];

          if (!v13)
          {
            v29 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v34 = [v11 displayName];
              *buf = 138412290;
              v42 = v34;
              _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_ERROR, "Vehicle %@ must have a pairedAppIdentifier", buf, 0xCu);
            }

            v22 = 0;
            goto LABEL_16;
          }

          v14 = [v11 identifier];
          [v5 addObject:v14];

          v15 = [v11 pairedAppIdentifier];
          [v4 addObject:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    GEOConfigGetDouble();
    v17 = MapsSuggestionsNowWithOffset(v16);
    v18 = [v6 objectAtIndexedSubscript:0];
    v19 = [v18 manufacturer];
    v20 = [v6 objectAtIndexedSubscript:0];
    v21 = [v20 model];
    GEOConfigGetDouble();
    v36 = v17;
    v22 = [MapsSuggestionsEntry entryWithType:20 title:v19 subtitle:v21 weight:v17 expires:0 sourceSpecificInfo:?];

    [v22 setBoolean:objc_msgSend(v4 forKey:{"count") > 1, @"MapsSuggestionsVehicleSetupWithGenericIconKey"}];
    v23 = v5;
    v24 = [v4 allObjects];
    v25 = [v24 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v26 = [v23 allObjects];

    v27 = [v26 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v28 = [v25 arrayByAddingObjectsFromArray:v27];
    v29 = [v28 componentsJoinedByString:@"_"];

    v30 = [v6 objectAtIndexedSubscript:0];
    v31 = [v30 pairedAppIdentifier];
    [v22 setString:v31 forKey:@"MapsSuggestionsOriginBundleIDKey"];

    [v22 setString:v29 forKey:@"MapsSuggestionsVirtualGaragePK"];
    [v22 setString:@"MapsSuggestionsVirtualGaragePK" forKey:@"MapsSuggestionsPrimaryKey"];
    [v22 setBoolean:1 forKey:@"MapsSuggestionsIsNotADestinationKey"];
    [v22 setBoolean:0 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
    [v22 setBoolean:0 forKey:@"MapsSuggestionsNeedsDistanceTrackingKey"];
    v32 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v23 count];
      *buf = 138412546;
      v42 = v29;
      v43 = 2048;
      v44 = v33;
      _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, "Adding VehicleSetup entry with uniqueID %@ and %lu unpaired vehicles", buf, 0x16u);
    }

    v6 = v36;
LABEL_16:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end