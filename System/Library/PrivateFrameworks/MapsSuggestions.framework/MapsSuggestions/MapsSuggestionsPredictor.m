@interface MapsSuggestionsPredictor
+ (id)sharedPredictor;
- (BOOL)_openConnectionIfNecessary;
- (BOOL)predictedTransportModeForDestinationEntry:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5;
- (BOOL)predictedTransportModeForDestinationMapItem:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5;
- (MapsSuggestionsPredictor)init;
- (NSString)uniqueName;
- (__CFString)_modelVersionFromModelInformation:(__CFString *)a1;
- (uint64_t)_modelNameFromModelInformation:(uint64_t)a1;
- (void)_closeConnection;
- (void)_initCloseTimerIfNecessary;
- (void)_overrideTempPredictedTransportModeForCarPlay:(void *)a1;
- (void)_scheduleCloseConnection;
- (void)_unscheduleCloseConnection;
- (void)cancelCapturingAnalytics;
- (void)captureActualTransportationMode:(int)a3 originMapItem:(id)a4 destinationMapItem:(id)a5;
- (void)capturePredictedTransportationMode:(int)a3;
- (void)dealloc;
- (void)storeSignalPack:(id)a3 forMapItem:(id)a4 andEntry:(id)a5;
@end

@implementation MapsSuggestionsPredictor

- (MapsSuggestionsPredictor)init
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MapsSuggestionsPredictor;
  v2 = [(MapsSuggestionsPredictor *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MapsSuggestionsPredictorQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    closeTimer = v2->_closeTimer;
    v2->_closeTimer = 0;

    connection = v2->_connection;
    v2->_connection = 0;

    v8 = objc_alloc_init(MapsSuggestionsSignalPackCache);
    signalPackCache = v2->_signalPackCache;
    v2->_signalPackCache = v8;

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      BOOL = GEOConfigGetBOOL();
      v12 = @"NO";
      if (BOOL)
      {
        v12 = @"YES";
      }

      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Are we collecting CarPlay Analytics? %@", buf, 0xCu);
    }
  }

  return v2;
}

+ (id)sharedPredictor
{
  if (sharedPredictor_s_onceToken != -1)
  {
    +[MapsSuggestionsPredictor sharedPredictor];
  }

  v3 = sharedPredictor_s_sharedPredictor;

  return v3;
}

void __43__MapsSuggestionsPredictor_sharedPredictor__block_invoke()
{
  v0 = objc_alloc_init(MapsSuggestionsPredictor);
  v1 = sharedPredictor_s_sharedPredictor;
  sharedPredictor_s_sharedPredictor = v0;
}

- (void)dealloc
{
  [(MapsSuggestionsPredictor *)self _unscheduleCloseConnection];
  [(MapsSuggestionsPredictor *)self _closeConnection];
  queue = self->_queue;
  self->_queue = 0;

  v4.receiver = self;
  v4.super_class = MapsSuggestionsPredictor;
  [(MapsSuggestionsPredictor *)&v4 dealloc];
}

- (BOOL)predictedTransportModeForDestinationEntry:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPredictor.m";
      v27 = 1024;
      *v28 = 83;
      *&v28[4] = 2082;
      *&v28[6] = "[MapsSuggestionsPredictor predictedTransportModeForDestinationEntry:originCoordinate:handler:]";
      v29 = 2082;
      v30 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", buf, 0x26u);
    }

    goto LABEL_16;
  }

  v11 = GEOFindOrCreateLog();
  v12 = v11;
  if (!v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPredictor.m";
      v27 = 1024;
      *v28 = 84;
      *&v28[4] = 2082;
      *&v28[6] = "[MapsSuggestionsPredictor predictedTransportModeForDestinationEntry:originCoordinate:handler:]";
      v29 = 2082;
      v30 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an MSg entry", buf, 0x26u);
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(MapsSuggestionsPredictor *)self uniqueName];
    *buf = 138412546;
    v26 = v13;
    v27 = 2080;
    *v28 = "predictedTransportModeForDestinationEntry";
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v14 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "predictedTransportModeForDestinationEntry", "", buf, 2u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v9 uniqueIdentifier];
    *buf = 138412290;
    v26 = v16;
    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "Predicting transport type for Entry %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__MapsSuggestionsPredictor_predictedTransportModeForDestinationEntry_originCoordinate_handler___block_invoke;
  block[3] = &unk_1E81F6E98;
  objc_copyWeak(v24, buf);
  v22 = v9;
  v24[1] = *&latitude;
  v24[2] = *&longitude;
  v23 = v10;
  dispatch_async(queue, block);

  objc_destroyWeak(v24);
  objc_destroyWeak(buf);
  v18 = 1;
LABEL_17:

  return v18;
}

void __95__MapsSuggestionsPredictor_predictedTransportModeForDestinationEntry_originCoordinate_handler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsPredictor *)WeakRetained _openConnectionIfNecessary];
    v4 = [v3[2] remoteObjectProxy];
    v5 = [*(a1 + 32) data];
    v6 = NSDataFromCLLocationCoordinate(*(a1 + 56), *(a1 + 64));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __95__MapsSuggestionsPredictor_predictedTransportModeForDestinationEntry_originCoordinate_handler___block_invoke_50;
    v8[3] = &unk_1E81F6E70;
    objc_copyWeak(&v11, (a1 + 48));
    v10 = *(a1 + 40);
    v9 = *(a1 + 32);
    [v4 predictedTransportModeForDestinationEntryData:v5 originCoordinateData:v6 handler:v8];

    [(MapsSuggestionsPredictor *)v3 _scheduleCloseConnection];
    objc_destroyWeak(&v11);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsPredictor.m";
      v14 = 1026;
      v15 = 91;
      v16 = 2082;
      v17 = "[MapsSuggestionsPredictor predictedTransportModeForDestinationEntry:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (BOOL)_openConnectionIfNecessary
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (!*(a1 + 16))
    {
      v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F448E5B8];
      v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v3 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:0 ofReply:1];

      v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v4 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:1 ofReply:1];

      v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v5 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:2 ofReply:1];

      v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v6 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:3 ofReply:1];

      v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v7 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:0 ofReply:0];

      v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v8 forSelector:sel_predictedTransportModeForDestinationEntryData_originCoordinateData_handler_ argumentIndex:1 ofReply:0];

      v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v9 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:0 ofReply:1];

      v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v10 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:1 ofReply:1];

      v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v11 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:2 ofReply:1];

      v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v12 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:3 ofReply:1];

      v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v13 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:0 ofReply:0];

      v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v2 setClasses:v14 forSelector:sel_predictedTransportModeForDestinationMapItemData_originCoordinateData_handler_ argumentIndex:1 ofReply:0];

      v15 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.maps.destinationd.predictions" options:0];
      [v15 setRemoteObjectInterface:v2];
      objc_initWeak(&location, a1);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke;
      v22[3] = &unk_1E81F53E8;
      objc_copyWeak(&v23, &location);
      [v15 setInvalidationHandler:v22];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_78;
      v20[3] = &unk_1E81F53E8;
      objc_copyWeak(&v21, &location);
      [v15 setInterruptionHandler:v20];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_80;
      v18[3] = &unk_1E81F5438;
      objc_copyWeak(&v19, &location);
      v16 = [v15 remoteObjectProxyWithErrorHandler:v18];
      objc_storeStrong((a1 + 16), v15);
      [v15 resume];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  return a1 != 0;
}

void __95__MapsSuggestionsPredictor_predictedTransportModeForDestinationEntry_originCoordinate_handler___block_invoke_50(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  *&v30[13] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v9 && !v12)
    {
      v26 = 0;
      v14 = NSDataToMapsSuggestionsTransportModes(v9, &v26);
      v15 = v26;
      if (v15)
      {
        (*(*(a1 + 40) + 16))();
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [WeakRetained uniqueName];
          *buf = 138412546;
          v28 = v17;
          v29 = 2080;
          *v30 = "predictedTransportModeForDestinationEntry";
          _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
        }

        v18 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v18))
        {
          goto LABEL_23;
        }

        *buf = 0;
      }

      else
      {
        v22 = [MapsSuggestionsSignalPack signalPackFromData:v10];
        v23 = [*(a1 + 32) geoMapItem];
        [WeakRetained storeSignalPack:v22 forMapItem:v23 andEntry:*(a1 + 32)];

        (*(*(a1 + 40) + 16))();
        v24 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = [WeakRetained uniqueName];
          *buf = 138412546;
          v28 = v25;
          v29 = 2080;
          *v30 = "predictedTransportModeForDestinationEntry";
          _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
        }

        v18 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v18))
        {
          goto LABEL_23;
        }

        *buf = 0;
      }

      _os_signpost_emit_with_name_impl(&dword_1C5126000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "predictedTransportModeForDestinationEntry", "", buf, 2u);
LABEL_23:

      goto LABEL_24;
    }

    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "Error when predicting TransportType for Entry: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [WeakRetained uniqueName];
      *buf = 138412546;
      v28 = v21;
      v29 = 2080;
      *v30 = "predictedTransportModeForDestinationEntry";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
    }

    v15 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "predictedTransportModeForDestinationEntry", "", buf, 2u);
    }
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "MapsSuggestionsPredictor.m";
      v29 = 1026;
      *v30 = 95;
      v30[2] = 2082;
      *&v30[3] = "[MapsSuggestionsPredictor predictedTransportModeForDestinationEntry:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }

LABEL_24:
}

- (void)storeSignalPack:(id)a3 forMapItem:(id)a4 andEntry:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MapsSuggestionsPredictor_storeSignalPack_forMapItem_andEntry___block_invoke;
  block[3] = &unk_1E81F6EC0;
  objc_copyWeak(&v19, &location);
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __64__MapsSuggestionsPredictor_storeSignalPack_forMapItem_andEntry___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      [WeakRetained[4] insertMapItem:v4 signalPack:*(a1 + 40) entry:*(a1 + 48)];
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsPredictor.m";
      v8 = 1026;
      v9 = 132;
      v10 = 2082;
      v11 = "[MapsSuggestionsPredictor storeSignalPack:forMapItem:andEntry:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (BOOL)predictedTransportModeForDestinationMapItem:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPredictor.m";
      v30 = 1024;
      *v31 = 145;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsPredictor predictedTransportModeForDestinationMapItem:originCoordinate:handler:]";
      v32 = 2082;
      v33 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", buf, 0x26u);
    }

    goto LABEL_16;
  }

  v11 = GEOFindOrCreateLog();
  v12 = v11;
  if (!v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPredictor.m";
      v30 = 1024;
      *v31 = 146;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsPredictor predictedTransportModeForDestinationMapItem:originCoordinate:handler:]";
      v32 = 2082;
      v33 = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", buf, 0x26u);
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(MapsSuggestionsPredictor *)self uniqueName];
    *buf = 138412546;
    v29 = v13;
    v30 = 2080;
    *v31 = "predictedTransportModeForDestinationMapItem";
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v14 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "predictedTransportModeForDestinationMapItem", "", buf, 2u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [v9 coordinate];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v16, v17];
    v19 = [v9 addressDictionary];
    *buf = 138412546;
    v29 = v18;
    v30 = 2112;
    *v31 = v19;
    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "Predicting transport type for mapItem %@, %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__MapsSuggestionsPredictor_predictedTransportModeForDestinationMapItem_originCoordinate_handler___block_invoke;
  block[3] = &unk_1E81F6E98;
  objc_copyWeak(v27, buf);
  v25 = v9;
  v27[1] = *&latitude;
  v27[2] = *&longitude;
  v26 = v10;
  dispatch_async(queue, block);

  objc_destroyWeak(v27);
  objc_destroyWeak(buf);
  v21 = 1;
LABEL_17:

  return v21;
}

void __97__MapsSuggestionsPredictor_predictedTransportModeForDestinationMapItem_originCoordinate_handler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsPredictor *)WeakRetained _openConnectionIfNecessary];
    v4 = [v3[2] remoteObjectProxy];
    v5 = [*(a1 + 32) data];
    v6 = NSDataFromCLLocationCoordinate(*(a1 + 56), *(a1 + 64));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__MapsSuggestionsPredictor_predictedTransportModeForDestinationMapItem_originCoordinate_handler___block_invoke_55;
    v8[3] = &unk_1E81F6E70;
    objc_copyWeak(&v11, (a1 + 48));
    v10 = *(a1 + 40);
    v9 = *(a1 + 32);
    [v4 predictedTransportModeForDestinationMapItemData:v5 originCoordinateData:v6 handler:v8];

    [(MapsSuggestionsPredictor *)v3 _scheduleCloseConnection];
    objc_destroyWeak(&v11);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsPredictor.m";
      v14 = 1026;
      v15 = 153;
      v16 = 2082;
      v17 = "[MapsSuggestionsPredictor predictedTransportModeForDestinationMapItem:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __97__MapsSuggestionsPredictor_predictedTransportModeForDestinationMapItem_originCoordinate_handler___block_invoke_55(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  *&v29[13] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v9 && !v12)
    {
      v25 = 0;
      v14 = NSDataToMapsSuggestionsTransportModes(v9, &v25);
      v15 = v25;
      if (v15)
      {
        (*(*(a1 + 40) + 16))();
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [WeakRetained uniqueName];
          *buf = 138412546;
          v27 = v17;
          v28 = 2080;
          *v29 = "predictedTransportModeForDestinationMapItem";
          _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
        }

        v18 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v18))
        {
          goto LABEL_23;
        }

        *buf = 0;
      }

      else
      {
        v22 = [MapsSuggestionsSignalPack signalPackFromData:v10];
        [WeakRetained storeSignalPack:v22 forMapItem:*(a1 + 32) andEntry:0];

        (*(*(a1 + 40) + 16))();
        v23 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [WeakRetained uniqueName];
          *buf = 138412546;
          v27 = v24;
          v28 = 2080;
          *v29 = "predictedTransportModeForDestinationMapItem";
          _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
        }

        v18 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v18))
        {
          goto LABEL_23;
        }

        *buf = 0;
      }

      _os_signpost_emit_with_name_impl(&dword_1C5126000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "predictedTransportModeForDestinationMapItem", "", buf, 2u);
LABEL_23:

      goto LABEL_24;
    }

    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "Error when predicting TransportType for Entry: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [WeakRetained uniqueName];
      *buf = 138412546;
      v27 = v21;
      v28 = 2080;
      *v29 = "predictedTransportModeForDestinationMapItem";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
    }

    v15 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "predictedTransportModeForDestinationMapItem", "", buf, 2u);
    }
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v27 = "MapsSuggestionsPredictor.m";
      v28 = 1026;
      *v29 = 163;
      v29[2] = 2082;
      *&v29[3] = "[MapsSuggestionsPredictor predictedTransportModeForDestinationMapItem:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }

LABEL_24:
}

void __74__MapsSuggestionsPredictor__overrideTempPredictedTransportModeForCarPlay___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsPredictor.m";
      v9 = 1026;
      v10 = 201;
      v11 = 2082;
      v12 = "[MapsSuggestionsPredictor _overrideTempPredictedTransportModeForCarPlay:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }

    goto LABEL_13;
  }

  if ([*(a1 + 32) hasType:20])
  {
    [*(a1 + 32) valueForSignalType:20];
    if (v3 != 0.0)
    {
      if (WeakRetained[10])
      {
        v4 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = MapsSuggestionsLocalizedStringFromGEOTransportType(WeakRetained[10]);
          v7 = 138412290;
          v8 = v5;
          _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "_tempPredictedTransportMode is not GEOTransportType_AUTOMOBILE. It is %@. Fixing it.", &v7, 0xCu);
        }
      }

      WeakRetained[10] = 0;
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Forcing _tempPredictedTransportMode to be GEOTransportType_AUTOMOBILE", &v7, 2u);
      }

LABEL_13:
    }
  }
}

- (void)captureActualTransportationMode:(int)a3 originMapItem:(id)a4 destinationMapItem:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPredictor.m";
      v21 = 1024;
      v22 = 239;
      v23 = 2082;
      v24 = "[MapsSuggestionsPredictor captureActualTransportationMode:originMapItem:destinationMapItem:]";
      v25 = 2082;
      v26 = "nil == (destinationMapItem)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. destinationMapItem cannot be nil";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, v13, location, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v8)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPredictor.m";
      v21 = 1024;
      v22 = 240;
      v23 = 2082;
      v24 = "[MapsSuggestionsPredictor captureActualTransportationMode:originMapItem:destinationMapItem:]";
      v25 = 2082;
      v26 = "nil == (originMapItem)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. originMapItem cannot be nil";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__MapsSuggestionsPredictor_captureActualTransportationMode_originMapItem_destinationMapItem___block_invoke;
  block[3] = &unk_1E81F6F38;
  objc_copyWeak(&v18, location);
  v15 = v9;
  v11 = v8;
  v19 = a3;
  v16 = v11;
  v17 = self;
  dispatch_async(queue, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
LABEL_10:
}

void __93__MapsSuggestionsPredictor_captureActualTransportationMode_originMapItem_destinationMapItem___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__9;
    v36 = __Block_byref_object_dispose__9;
    v4 = [WeakRetained[4] signalPackForMapItem:*(a1 + 32)];
    v37 = [v4 mutableCopy];

    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    v5 = dispatch_group_create();
    v6 = CLLocationCoordinate2DFromGEOLocationCoordinate2D([*(a1 + 40) coordinate]);
    v8 = NSDataFromCLLocationCoordinate(v6, v7);
    dispatch_group_enter(v5);
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__9;
    v31[4] = __Block_byref_object_dispose__9;
    v32 = 0;
    [(MapsSuggestionsPredictor *)v3 _openConnectionIfNecessary];
    v9 = [*(v3 + 16) remoteObjectProxy];
    v10 = [*(a1 + 32) data];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __93__MapsSuggestionsPredictor_captureActualTransportationMode_originMapItem_destinationMapItem___block_invoke_58;
    v25[3] = &unk_1E81F6EE8;
    objc_copyWeak(&v30, (a1 + 56));
    v27 = v33;
    v11 = v5;
    v26 = v11;
    v28 = buf;
    v29 = v31;
    [v9 predictedTransportModeForDestinationMapItemData:v10 originCoordinateData:v8 handler:v25];

    v12 = *(v3 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__MapsSuggestionsPredictor_captureActualTransportationMode_originMapItem_destinationMapItem___block_invoke_61;
    block[3] = &unk_1E81F6F10;
    objc_copyWeak(&v23, (a1 + 56));
    v20 = v33;
    v13 = *(a1 + 32);
    v24 = *(a1 + 64);
    v14 = *(a1 + 48);
    v17 = v13;
    v18 = v14;
    v21 = v31;
    v22 = buf;
    v19 = v3;
    dispatch_group_notify(v11, v12, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v30);
    _Block_object_dispose(v31, 8);

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsPredictor.m";
      *&buf[12] = 1026;
      *&buf[14] = 244;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsPredictor captureActualTransportationMode:originMapItem:destinationMapItem:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __93__MapsSuggestionsPredictor_captureActualTransportationMode_originMapItem_destinationMapItem___block_invoke_58(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v14 = [(MapsSuggestionsSignalPack *)MapsSuggestionsMutableSignalPack signalPackFromData:v10];
    v15 = [v14 mutableCopy];

    if (!v12 && v15)
    {
      v17 = *(*(*(a1 + 48) + 8) + 40);
      if (!v17 || __93__MapsSuggestionsPredictor_captureActualTransportationMode_originMapItem_destinationMapItem___block_invoke_58_cold_1(v15, v17, a1 + 48))
      {
        v18 = [v15 mutableCopy];
        v19 = *(*(a1 + 48) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        v21 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_DEBUG, "Made a copy of incomingSignalpack and assigned to signalPack", buf, 2u);
        }
      }

      if (v11)
      {
        v27 = 0;
        v23 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:&v27];
        v22 = v27;
        v24 = *(*(a1 + 56) + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;

        if (v22)
        {
          v26 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v22;
            _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_ERROR, "Failed to unwrap modelInformation : %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v22 = 0;
      }

      [(MapsSuggestionsPredictor *)WeakRetained _overrideTempPredictedTransportModeForCarPlay:?];
      dispatch_group_leave(*(a1 + 32));
    }

    else
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v12;
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "Could not submit analytics because either the incomingSignalPack is nil for this mapItem OR because of this error: %@", buf, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      dispatch_group_leave(*(a1 + 32));
    }
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "MapsSuggestionsPredictor.m";
      v30 = 1026;
      v31 = 266;
      v32 = 2082;
      v33 = "[MapsSuggestionsPredictor captureActualTransportationMode:originMapItem:destinationMapItem:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __93__MapsSuggestionsPredictor_captureActualTransportationMode_originMapItem_destinationMapItem___block_invoke_61(uint64_t a1)
{
  v143 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [*(a1 + 32) shortAddress];
        v6 = v5;
        if (!v5)
        {
          [*(a1 + 32) coordinate];
          v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v7, v8];
        }

        *buf = 138412290;
        v140 = v6;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error generating a signalPack for mapItem %@", buf, 0xCu);
        if (!v5)
        {
        }
      }
    }

    else
    {
      if (*(WeakRetained + 10) == 4)
      {
        v9 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [*(a1 + 32) shortAddress];
          v11 = v10;
          if (!v10)
          {
            [*(a1 + 32) coordinate];
            v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v12, v13];
          }

          *buf = 138412290;
          v140 = v11;
          _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Predicted transport mode is UNKNOWN. %@", buf, 0xCu);
          if (!v10)
          {
          }
        }
      }

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = MapsSuggestionsLocalizedStringFromGEOTransportType(*(a1 + 88));
        *buf = 138412290;
        v140 = v15;
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Captured the Actual Transportation Mode %@", buf, 0xCu);
      }

      v16 = MapsSuggestionsCurrentBestLocation();
      [v16 coordinate];
      v18 = v17;
      v20 = v19;

      v4 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithLatitude:v18 longitude:v20];
      v21 = [(MapsSuggestionsPredictor *)*(a1 + 40) _modelNameFromModelInformation:?];
      v138 = [(MapsSuggestionsPredictor *)*(a1 + 40) _modelVersionFromModelInformation:?];
      v22 = MEMORY[0x1E69A1598];
      v23 = *(*(*(a1 + 72) + 8) + 40);
      if ([v23 hasType:7])
      {
        [v23 valueForSignalType:7];
        MapsSuggestionsBucketizedValueForType(7, v24);
        v137 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v137 = 0;
      }

      v25 = *(*(*(a1 + 72) + 8) + 40);
      if ([v25 hasType:8])
      {
        [v25 valueForSignalType:8];
        MapsSuggestionsBucketizedValueForType(8, v26);
        v136 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v136 = 0;
      }

      v27 = *(*(*(a1 + 72) + 8) + 40);
      if ([v27 hasType:9])
      {
        [v27 valueForSignalType:9];
        MapsSuggestionsBucketizedValueForType(9, v28);
        v135 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v135 = 0;
      }

      v29 = *(*(*(a1 + 72) + 8) + 40);
      if ([v29 hasType:5])
      {
        [v29 valueForSignalType:5];
        MapsSuggestionsBucketizedValueForType(5, v30);
        v134 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v134 = 0;
      }

      v31 = *(*(*(a1 + 72) + 8) + 40);
      if ([v31 hasType:3])
      {
        [v31 valueForSignalType:3];
        MapsSuggestionsBucketizedValueForType(3, v32);
        v133 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v133 = 0;
      }

      v33 = *(*(*(a1 + 72) + 8) + 40);
      if ([v33 hasType:2])
      {
        [v33 valueForSignalType:2];
        MapsSuggestionsBucketizedValueForType(2, v34);
        v132 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v132 = 0;
      }

      v35 = *(*(*(a1 + 72) + 8) + 40);
      if ([v35 hasType:4])
      {
        [v35 valueForSignalType:4];
        MapsSuggestionsBucketizedValueForType(4, v36);
        v131 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v131 = 0;
      }

      v37 = *(*(*(a1 + 72) + 8) + 40);
      if ([v37 hasType:6])
      {
        [v37 valueForSignalType:6];
        MapsSuggestionsBucketizedValueForType(6, v38);
        v130 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v130 = 0;
      }

      v39 = *(*(*(a1 + 72) + 8) + 40);
      if ([v39 hasType:10])
      {
        [v39 valueForSignalType:10];
        MapsSuggestionsBucketizedValueForType(10, v40);
        v129 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v129 = 0;
      }

      v41 = *(*(*(a1 + 72) + 8) + 40);
      v128 = v22;
      if ([v41 hasType:23])
      {
        [v41 valueForSignalType:23];
        MapsSuggestionsBucketizedValueForType(23, v42);
        v126 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v126 = 0;
      }

      v120 = GEOTransportModeFromGEOTransportType(*(a1 + 88));
      v43 = *(*(*(a1 + 72) + 8) + 40);
      if ([v43 hasType:11])
      {
        [v43 valueForSignalType:11];
        MapsSuggestionsBucketizedValueForType(11, v44);
        v125 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v125 = 0;
      }

      v45 = *(*(*(a1 + 72) + 8) + 40);
      if ([v45 hasType:16])
      {
        [v45 valueForSignalType:16];
        MapsSuggestionsBucketizedValueForType(16, v46);
        v47 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v47 = 0;
      }

      [v47 floatValue];
      v49 = v48;
      v50 = *(*(*(a1 + 72) + 8) + 40);
      if ([v50 hasType:14])
      {
        [v50 valueForSignalType:14];
        MapsSuggestionsBucketizedValueForType(14, v51);
        v52 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v52 = 0;
      }

      [v52 floatValue];
      v54 = v53;
      v55 = *(*(*(a1 + 72) + 8) + 40);
      if ([v55 hasType:18])
      {
        [v55 valueForSignalType:18];
        MapsSuggestionsBucketizedValueForType(18, v56);
        v57 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v57 = 0;
      }

      v122 = v57;
      [v57 floatValue];
      v59 = v58;
      v60 = *(*(*(a1 + 72) + 8) + 40);
      if ([v60 hasType:17])
      {
        [v60 valueForSignalType:17];
        MapsSuggestionsBucketizedValueForType(17, v61);
        v62 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v62 = 0;
      }

      [v62 floatValue];
      v64 = v63;
      v65 = *(*(*(a1 + 72) + 8) + 40);
      if ([v65 hasType:13])
      {
        [v65 valueForSignalType:13];
        MapsSuggestionsBucketizedValueForType(13, v66);
        v67 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v67 = 0;
      }

      v121 = v67;
      [v67 floatValue];
      v69 = v68;
      v70 = *(*(*(a1 + 72) + 8) + 40);
      if ([v70 hasType:15])
      {
        [v70 valueForSignalType:15];
        MapsSuggestionsBucketizedValueForType(15, v71);
        v72 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v72 = 0;
      }

      [v72 floatValue];
      v74 = v73;
      v75 = *(*(*(a1 + 72) + 8) + 40);
      if ([v75 hasType:1])
      {
        [v75 valueForSignalType:1];
        MapsSuggestionsBucketizedValueForType(1, v76);
        v77 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v77 = 0;
      }

      v118 = v77;
      v78 = [v77 intValue];
      v79 = *(*(*(a1 + 72) + 8) + 40);
      v117 = v78;
      if ([v79 hasType:27])
      {
        [v79 valueForSignalType:27];
        MapsSuggestionsBucketizedValueForType(27, v80);
        v81 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v81 = 0;
      }

      v116 = v81;
      v115 = [v81 intValue];
      v82 = *(*(*(a1 + 72) + 8) + 40);
      v127 = v21;
      v119 = v72;
      if ([v82 hasType:21])
      {
        [v82 valueForSignalType:21];
        MapsSuggestionsBucketizedValueForType(21, v83);
        v84 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v84 = 0;
      }

      v85 = [v84 intValue];
      v86 = GEOTransportModeFromGEOTransportType(*(*(a1 + 48) + 40));
      v87 = GEOGetUserTransportTypePreference();
      v113 = GEOTransportModeForTransportTypePreference(v87);
      v88 = *(*(*(a1 + 72) + 8) + 40);
      v114 = v86;
      if ([v88 hasType:12])
      {
        [v88 valueForSignalType:12];
        MapsSuggestionsBucketizedValueForType(12, v89);
        v112 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v112 = 0;
      }

      v90 = *(*(*(a1 + 72) + 8) + 40);
      v124 = v47;
      if ([v90 hasType:20])
      {
        [v90 valueForSignalType:20];
        MapsSuggestionsBucketizedValueForType(20, v91);
        v111 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v111 = 0;
      }

      v92 = *(*(*(a1 + 72) + 8) + 40);
      v123 = v52;
      v110 = v85;
      if ([v92 hasType:39])
      {
        [v92 valueForSignalType:39];
        MapsSuggestionsBucketizedValueForType(39, v93);
        v94 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v94 = 0;
      }

      v95 = *(*(*(a1 + 72) + 8) + 40);
      if ([v95 hasType:38])
      {
        [v95 valueForSignalType:38];
        MapsSuggestionsBucketizedValueForType(38, v96);
        v97 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      }

      else
      {
        v97 = 0;
      }

      v98 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:@"TrainingDate"];
      v99 = v98;
      v100 = @"No TrainingDate";
      if (v98)
      {
        v100 = v98;
      }

      LODWORD(v109) = v127;
      LODWORD(v108) = v113;
      LODWORD(v107) = v120;
      [v128 capturePredExTrainingWithChanceOfPrecipitation:v137 chanceOfRain:v136 chanceOfSnow:v135 endTime:v134 durationUntilEventEnd:v133 durationUntilEventStart:v132 startTime:v131 temperature:v130 timeOfDay:v129 timeSinceBackgrounded:v126 actualTransportMode:v107 dayOfWeek:v125 distanceFromHereToHome:__PAIR64__(v54 distanceFromHereToOrigin:v49) distanceFromHereToParkedCar:__PAIR64__(v64 distanceFromHereToWork:v59) distanceFromHere:__PAIR64__(v74 distanceFromOriginToDestination:v69) entryType:__PAIR64__(v115 weatherType:v117) mapType:__PAIR64__(v114 predictedTransportMode:v110) preferredTransportMode:v108 isTourist:v112 isCarplayConnected:v111 isTransitPossible:0 userLocation:v4 isVehicleBluetoothConnected:v94 weatherAqi:v97 modelName:v109 modelVersion:v138 modelTrainedDate:v100];

      v101 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v102 = *(*(*(a1 + 72) + 8) + 40);
        v103 = [*(a1 + 32) shortAddress];
        [*(a1 + 32) coordinate];
        v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v104, v105];
        *buf = 138412802;
        v140 = v102;
        v141 = 2112;
        *v142 = v103;
        *&v142[8] = 2112;
        *&v142[10] = v106;
        _os_log_impl(&dword_1C5126000, v101, OS_LOG_TYPE_INFO, "Submitted analytics for Transport Mode Prediction %@ to %@ at %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v140 = "MapsSuggestionsPredictor.m";
      v141 = 1026;
      *v142 = 310;
      *&v142[4] = 2082;
      *&v142[6] = "[MapsSuggestionsPredictor captureActualTransportationMode:originMapItem:destinationMapItem:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (uint64_t)_modelNameFromModelInformation:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [v3 objectForKeyedSubscript:@"version"];
    if (v6 && (v7 = v6, [v4 objectForKeyedSubscript:@"version"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"0"), v8, v7, (v9 & 1) != 0))
    {
      v5 = 1;
    }

    else
    {
      v10 = [v4 objectForKeyedSubscript:@"com.github.apple.coremltools.source"];
      v11 = [v10 containsString:@"xgboost"];

      if (v11)
      {
        v5 = 2;
      }

      else
      {
        v12 = [v4 objectForKeyedSubscript:@"com.github.apple.coremltools.source"];
        v13 = [v12 containsString:@"deepLearning"];

        if (v13)
        {
          v5 = 3;
        }

        else
        {
          v14 = [v4 objectForKeyedSubscript:@"com.github.apple.coremltools.source"];
          v15 = [v14 containsString:@"TransferLearning"];

          if (v15)
          {
            v5 = 4;
          }

          else
          {
            v16 = [v4 objectForKeyedSubscript:@"com.github.apple.coremltools.source"];
            v17 = [v16 containsString:@"PFL"];

            if (v17)
            {
              v5 = 5;
            }

            else
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  return v5;
}

- (void)capturePredictedTransportationMode:(int)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MapsSuggestionsPredictor_capturePredictedTransportationMode___block_invoke;
  block[3] = &unk_1E81F6F60;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __63__MapsSuggestionsPredictor_capturePredictedTransportationMode___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = MapsSuggestionsLocalizedStringFromGEOTransportType(*(a1 + 40));
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Captured the Predicted Transportation Mode %@", &v7, 0xCu);
    }

    WeakRetained[10] = *(a1 + 40);
  }

  else
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsPredictor.m";
      v9 = 1026;
      v10 = 408;
      v11 = 2082;
      v12 = "[MapsSuggestionsPredictor capturePredictedTransportationMode:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (void)cancelCapturingAnalytics
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__MapsSuggestionsPredictor_cancelCapturingAnalytics__block_invoke;
  v4[3] = &unk_1E81F53E8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __52__MapsSuggestionsPredictor_cancelCapturingAnalytics__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Cancelled capturing analytics for PTM", &v5, 2u);
    }

    WeakRetained[10] = 4;
  }

  else
  {
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsPredictor.m";
      v7 = 1026;
      v8 = 418;
      v9 = 2082;
      v10 = "[MapsSuggestionsPredictor cancelCapturingAnalytics]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

void __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_77;
    block[3] = &unk_1E81F53E8;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "MapsSuggestionsPredictor.m";
      v10 = 1026;
      v11 = 451;
      v12 = 2082;
      v13 = "[MapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_77(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  if (WeakRetained)
  {
    __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_77_cold_1(v2, WeakRetained);
  }

  else
  {
    v3 = v2;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsPredictor.m";
      v6 = 1026;
      v7 = 453;
      v8 = 2082;
      v9 = "[MapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_78(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_79;
    block[3] = &unk_1E81F53E8;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "MapsSuggestionsPredictor.m";
      v10 = 1026;
      v11 = 461;
      v12 = 2082;
      v13 = "[MapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_79(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  if (WeakRetained)
  {
    __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_79_cold_1(v2, WeakRetained);
  }

  else
  {
    v3 = v2;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsPredictor.m";
      v6 = 1026;
      v7 = 463;
      v8 = 2082;
      v9 = "[MapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_80(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_81;
    v8[3] = &unk_1E81F4F48;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v3;
    dispatch_async(v6, v8);

    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsPredictor.m";
      v13 = 1026;
      v14 = 470;
      v15 = 2082;
      v16 = "[MapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_81(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = GEOFindOrCreateLog();
  if (WeakRetained)
  {
    __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_81_cold_1(v2, WeakRetained);
  }

  else
  {
    v3 = v2;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsPredictor.m";
      v6 = 1026;
      v7 = 472;
      v8 = 2082;
      v9 = "[MapsSuggestionsPredictor _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __54__MapsSuggestionsPredictor__initCloseTimerIfNecessary__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsPredictor *)WeakRetained _closeConnection];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsPredictor.m";
      v6 = 1026;
      v7 = 523;
      v8 = 2082;
      v9 = "[MapsSuggestionsPredictor _initCloseTimerIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_unscheduleCloseConnection
{
  if (a1)
  {
    v3 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_17(v3))
    {
      OUTLINED_FUNCTION_0_0();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      dispatch_source_set_timer(v9, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_source_cancel(*(a1 + 24));
      v10 = *(a1 + 24);
      *(a1 + 24) = 0;
    }
  }
}

- (void)_closeConnection
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [a1 uniqueName];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_2_0(&dword_1C5126000, v4, v5, "{MSgDebug} OBJECT{%@} %s BEGIN", v6, v7, v8, v9, v22[0]);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_closeConnection", "", v22, 2u);
    }

    v11 = a1[2];
    if (v11)
    {
      a1[2] = 0;
      v12 = v11;

      [v12 setInterruptionHandler:0];
      [v12 setInvalidationHandler:0];
      [v12 invalidate];
    }

    [(MapsSuggestionsPredictor *)a1 _unscheduleCloseConnection];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [a1 uniqueName];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_2_0(&dword_1C5126000, v15, v16, "{MSgDebug} OBJECT{%@} %s END", v17, v18, v19, v20, v22[0]);
    }

    v21 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v21))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_closeConnection", "", v22, 2u);
    }
  }
}

- (void)_scheduleCloseConnection
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v3 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_17(v3))
    {
      OUTLINED_FUNCTION_0_0();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }

    [(MapsSuggestionsPredictor *)a1 _initCloseTimerIfNecessary];
    GEOConfigGetDouble();
    v10 = v9;
    GEOConfigGetDouble();
    v12 = v11;
    v13 = a1[3];
    v14 = dispatch_time(0, (v10 * 1000000000.0));
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, (v12 * 1000000000.0));
  }
}

- (void)_overrideTempPredictedTransportModeForCarPlay:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v5 = a1[1];
    OUTLINED_FUNCTION_1_3();
    v7 = 3221225472;
    v8 = __74__MapsSuggestionsPredictor__overrideTempPredictedTransportModeForCarPlay___block_invoke;
    v9 = &unk_1E81F4F48;
    objc_copyWeak((v2 + 40), &location);
    v10 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak((v2 + 40));
    objc_destroyWeak(&location);
  }
}

- (__CFString)_modelVersionFromModelInformation:(__CFString *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = @"version";
    v6 = [v3 objectForKeyedSubscript:@"version"];

    if (v6 || (v5 = @"MLModelVersionStringKey", [v4 objectForKeyedSubscript:@"MLModelVersionStringKey"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      a1 = [v4 objectForKeyedSubscript:v5];
    }

    else
    {
      a1 = @"No version";
    }
  }

  return a1;
}

- (void)_initCloseTimerIfNecessary
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    if (!a1[3])
    {
      v4 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_17(v4))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1C5126000, v1, OS_LOG_TYPE_DEBUG, "Re-initializing the _closeTimer", buf, 2u);
      }

      objc_initWeak(buf, a1);
      v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a1[1]);
      v6 = a1[3];
      a1[3] = v5;

      dispatch_source_set_timer(a1[3], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v7 = a1[3];
      OUTLINED_FUNCTION_1_3();
      v9 = 3221225472;
      v10 = __54__MapsSuggestionsPredictor__initCloseTimerIfNecessary__block_invoke;
      v11 = &unk_1E81F53E8;
      objc_copyWeak((v2 + 32), buf);
      dispatch_source_set_event_handler(v7, handler);
      dispatch_resume(a1[3]);
      objc_destroyWeak((v2 + 32));
      objc_destroyWeak(buf);
    }
  }
}

BOOL __93__MapsSuggestionsPredictor_captureActualTransportationMode_originMapItem_destinationMapItem___block_invoke_58_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 mergeIntoSignalPack:a2];
  v5 = GEOFindOrCreateLog();
  if (OUTLINED_FUNCTION_17(v5))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
  }

  return *(*(*a3 + 8) + 40) == 0;
}

void __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_77_cold_1(NSObject *a1, uint64_t a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *(a2 + 16);
  *(a2 + 16) = 0;

  [(MapsSuggestionsPredictor *)a2 _unscheduleCloseConnection];
}

void __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_79_cold_1(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  [(MapsSuggestionsPredictor *)a2 _closeConnection];
}

void __54__MapsSuggestionsPredictor__openConnectionIfNecessary__block_invoke_81_cold_1(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  [(MapsSuggestionsPredictor *)a2 _closeConnection];
}

@end