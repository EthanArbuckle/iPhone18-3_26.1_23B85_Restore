@interface MapsSuggestionsDonater
- (BOOL)_openConnectionIfNecessary;
- (BOOL)donateETA:(id)a3 entry:(id)a4;
- (BOOL)donateFlightLookupWithFlightNumber:(id)a3 departureAirportCode:(id)a4 departureTime:(id)a5;
- (BOOL)donateSignalPack:(id)a3;
- (MapsSuggestionsDonater)init;
- (NSString)uniqueName;
- (void)_closeConnection;
- (void)_initCloseTimerIfNecessary;
- (void)_scheduleCloseConnection;
- (void)_unscheduleCloseConnection;
- (void)dealloc;
@end

@implementation MapsSuggestionsDonater

- (MapsSuggestionsDonater)init
{
  v9.receiver = self;
  v9.super_class = MapsSuggestionsDonater;
  v2 = [(MapsSuggestionsDonater *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MapsSuggestionsDonaterQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    closeTimer = v2->_closeTimer;
    v2->_closeTimer = 0;

    connection = v2->_connection;
    v2->_connection = 0;
  }

  return v2;
}

- (BOOL)_openConnectionIfNecessary
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (!*(a1 + 16))
    {
      v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.maps.destinationd.donations" options:0];
      v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F448E438];
      [v2 setRemoteObjectInterface:v3];

      [v2 setExportedObject:a1];
      objc_initWeak(&location, a1);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke;
      v13[3] = &unk_1E81F53E8;
      objc_copyWeak(&v14, &location);
      [v2 setInvalidationHandler:v13];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_206;
      v11[3] = &unk_1E81F53E8;
      objc_copyWeak(&v12, &location);
      [v2 setInterruptionHandler:v11];
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_208;
      v9 = &unk_1E81F5438;
      objc_copyWeak(&v10, &location);
      v4 = [v2 remoteObjectProxyWithErrorHandler:&v6];
      objc_storeStrong((a1 + 16), v2);
      [v2 resume];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  return a1 != 0;
}

- (void)_scheduleCloseConnection
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_0_0();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }

    [(MapsSuggestionsDonater *)a1 _initCloseTimerIfNecessary];
    GEOConfigGetDouble();
    v9 = v8;
    GEOConfigGetDouble();
    v11 = v10;
    v12 = a1[3];
    v13 = dispatch_time(0, (v9 * 1000000000.0));
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, (v11 * 1000000000.0));
  }
}

- (void)_initCloseTimerIfNecessary
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    if (!a1[3])
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Re-initializing the _closeTimer", buf, 2u);
      }

      objc_initWeak(buf, a1);
      v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a1[1]);
      v4 = a1[3];
      a1[3] = v3;

      dispatch_source_set_timer(a1[3], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v5 = a1[3];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __52__MapsSuggestionsDonater__initCloseTimerIfNecessary__block_invoke;
      handler[3] = &unk_1E81F53E8;
      objc_copyWeak(&v7, buf);
      dispatch_source_set_event_handler(v5, handler);
      dispatch_resume(a1[3]);
      objc_destroyWeak(&v7);
      objc_destroyWeak(buf);
    }
  }
}

- (void)dealloc
{
  [(MapsSuggestionsDonater *)self _unscheduleCloseConnection];
  [(MapsSuggestionsDonater *)self _closeConnection];
  queue = self->_queue;
  self->_queue = 0;

  v4.receiver = self;
  v4.super_class = MapsSuggestionsDonater;
  [(MapsSuggestionsDonater *)&v4 dealloc];
}

- (BOOL)donateETA:(id)a3 entry:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDonater.m";
      v26 = 1024;
      *v27 = 82;
      *&v27[4] = 2082;
      *&v27[6] = "[MapsSuggestionsDonater donateETA:entry:]";
      v28 = 2082;
      v29 = "nil == (eta)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA", buf, 0x26u);
    }

    goto LABEL_16;
  }

  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDonater.m";
      v26 = 1024;
      *v27 = 83;
      *&v27[4] = 2082;
      *&v27[6] = "[MapsSuggestionsDonater donateETA:entry:]";
      v28 = 2082;
      v29 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestions entry", buf, 0x26u);
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(MapsSuggestionsDonater *)self uniqueName];
    *buf = 138412546;
    v25 = v10;
    v26 = 2080;
    *v27 = "donateETA:entry:";
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v11 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "donateETA:entry:", "", buf, 2u);
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v7 uniqueIdentifier];
    *buf = 138412546;
    v25 = v6;
    v26 = 2112;
    *v27 = v13;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "Donating ETA %@ for Entry %@", buf, 0x16u);
  }

  v14 = [v6 data];
  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MapsSuggestionsDonater_donateETA_entry___block_invoke;
  block[3] = &unk_1E81F5410;
  objc_copyWeak(&v23, buf);
  v21 = v14;
  v22 = v7;
  v16 = v14;
  dispatch_async(queue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
  v17 = 1;
LABEL_17:

  return v17;
}

void __42__MapsSuggestionsDonater_donateETA_entry___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsDonater *)WeakRetained _openConnectionIfNecessary];
    v4 = [v3[2] remoteObjectProxy];
    v5 = *(a1 + 32);
    v6 = MapsSuggestionsDestinationKey(*(a1 + 40));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__MapsSuggestionsDonater_donateETA_entry___block_invoke_135;
    v8[3] = &unk_1E81F53E8;
    objc_copyWeak(&v9, (a1 + 48));
    [v4 donateETAData:v5 destinationKey:v6 handler:v8];

    [(MapsSuggestionsDonater *)v3 _scheduleCloseConnection];
    objc_destroyWeak(&v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "MapsSuggestionsDonater.m";
      v12 = 1026;
      v13 = 92;
      v14 = 2082;
      v15 = "[MapsSuggestionsDonater donateETA:entry:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __42__MapsSuggestionsDonater_donateETA_entry___block_invoke_135(uint64_t a1)
{
  *&v9[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained uniqueName];
      v6 = 138412546;
      v7 = v4;
      v8 = 2080;
      *v9 = "donateETA:entry:";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v6, 0x16u);
    }

    v5 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v5))
    {
      LOWORD(v6) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "donateETA:entry:", "", &v6, 2u);
    }
  }

  else
  {
    v5 = v2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsDonater.m";
      v8 = 1026;
      *v9 = 97;
      v9[2] = 2082;
      *&v9[3] = "[MapsSuggestionsDonater donateETA:entry:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (BOOL)donateSignalPack:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(MapsSuggestionsDonater *)self uniqueName];
      *buf = 138412546;
      v18 = v7;
      v19 = 2080;
      *v20 = "donateSignalPack";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "donateSignalPack", "", buf, 2u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "Donating SignalPack %@", buf, 0xCu);
    }

    v10 = [v4 data];
    objc_initWeak(buf, self);
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __43__MapsSuggestionsDonater_donateSignalPack___block_invoke;
    v14[3] = &unk_1E81F4F48;
    objc_copyWeak(&v16, buf);
    v15 = v10;
    v12 = v10;
    dispatch_async(queue, v14);

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDonater.m";
      v19 = 1024;
      *v20 = 107;
      *&v20[4] = 2082;
      *&v20[6] = "[MapsSuggestionsDonater donateSignalPack:]";
      v21 = 2082;
      v22 = "nil == (signalPack)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. signalPack should not be nil", buf, 0x26u);
    }
  }

  return v4 != 0;
}

void __43__MapsSuggestionsDonater_donateSignalPack___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsDonater *)WeakRetained _openConnectionIfNecessary];
    v4 = [v3[2] remoteObjectProxy];
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MapsSuggestionsDonater_donateSignalPack___block_invoke_139;
    v7[3] = &unk_1E81F53E8;
    objc_copyWeak(&v8, (a1 + 40));
    [v4 donateSignalPackData:v5 handler:v7];

    [(MapsSuggestionsDonater *)v3 _scheduleCloseConnection];
    objc_destroyWeak(&v8);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "MapsSuggestionsDonater.m";
      v11 = 1026;
      v12 = 116;
      v13 = 2082;
      v14 = "[MapsSuggestionsDonater donateSignalPack:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __43__MapsSuggestionsDonater_donateSignalPack___block_invoke_139(uint64_t a1)
{
  *&v9[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained uniqueName];
      v6 = 138412546;
      v7 = v4;
      v8 = 2080;
      *v9 = "donateSignalPack";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v6, 0x16u);
    }

    v5 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v5))
    {
      LOWORD(v6) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "donateSignalPack", "", &v6, 2u);
    }
  }

  else
  {
    v5 = v2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsDonater.m";
      v8 = 1026;
      *v9 = 120;
      v9[2] = 2082;
      *&v9[3] = "[MapsSuggestionsDonater donateSignalPack:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (BOOL)donateFlightLookupWithFlightNumber:(id)a3 departureAirportCode:(id)a4 departureTime:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446978;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDonater.m";
    v27 = 1024;
    v28 = 133;
    v29 = 2082;
    v30 = "[MapsSuggestionsDonater donateFlightLookupWithFlightNumber:departureAirportCode:departureTime:]";
    v31 = 2082;
    v32 = "nil == (fullFlightNumber)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a full flight number";
LABEL_14:
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v18, buf, 0x26u);
    goto LABEL_15;
  }

  if (!v8)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446978;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDonater.m";
    v27 = 1024;
    v28 = 134;
    v29 = 2082;
    v30 = "[MapsSuggestionsDonater donateFlightLookupWithFlightNumber:departureAirportCode:departureTime:]";
    v31 = 2082;
    v32 = "nil == (departureAirportCode)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a departure airport IATA code";
    goto LABEL_14;
  }

  if (!v9)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDonater.m";
      v27 = 1024;
      v28 = 135;
      v29 = 2082;
      v30 = "[MapsSuggestionsDonater donateFlightLookupWithFlightNumber:departureAirportCode:departureTime:]";
      v31 = 2082;
      v32 = "nil == (departureTime)";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a scheduled departure time";
      goto LABEL_14;
    }

LABEL_15:
    v19 = 0;
    goto LABEL_21;
  }

  v23[0] = @"fullFlightNumber";
  v23[1] = @"departureAirportCode";
  v24[0] = v7;
  v24[1] = v8;
  v23[2] = @"departureTimeSince1970";
  v11 = MEMORY[0x1E696AD98];
  [v9 timeIntervalSince1970];
  v12 = [v11 numberWithDouble:?];
  v24[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v22 = 0;
    v15 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:0 error:&v22];
    v16 = v22;
    if (v16 || !v15)
    {
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "Failed to encode to JSON: %@", buf, 0xCu);
      }

      v17 = &stru_1F444C108;
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
    }

    *buf = 138412290;
    v26 = v17;
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Donated: %@", buf, 0xCu);
  }

  v19 = 1;
LABEL_21:

  return v19;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

void __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_205;
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
      v9 = "MapsSuggestionsDonater.m";
      v10 = 1026;
      v11 = 176;
      v12 = 2082;
      v13 = "[MapsSuggestionsDonater _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_205(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  if (WeakRetained)
  {
    __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_205_cold_1(v2, WeakRetained);
  }

  else
  {
    v3 = v2;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsDonater.m";
      v6 = 1026;
      v7 = 178;
      v8 = 2082;
      v9 = "[MapsSuggestionsDonater _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_206(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_207;
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
      v9 = "MapsSuggestionsDonater.m";
      v10 = 1026;
      v11 = 186;
      v12 = 2082;
      v13 = "[MapsSuggestionsDonater _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_207(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  if (WeakRetained)
  {
    __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_207_cold_1(v2, WeakRetained);
  }

  else
  {
    v3 = v2;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsDonater.m";
      v6 = 1026;
      v7 = 188;
      v8 = 2082;
      v9 = "[MapsSuggestionsDonater _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_208(uint64_t a1, void *a2)
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
    v8[2] = __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_209;
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
      v12 = "MapsSuggestionsDonater.m";
      v13 = 1026;
      v14 = 195;
      v15 = 2082;
      v16 = "[MapsSuggestionsDonater _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_209(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = GEOFindOrCreateLog();
  if (WeakRetained)
  {
    __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_209_cold_1(v2, WeakRetained);
  }

  else
  {
    v3 = v2;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsDonater.m";
      v6 = 1026;
      v7 = 197;
      v8 = 2082;
      v9 = "[MapsSuggestionsDonater _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsDonater__initCloseTimerIfNecessary__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsDonater *)WeakRetained _closeConnection];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsDonater.m";
      v6 = 1026;
      v7 = 248;
      v8 = 2082;
      v9 = "[MapsSuggestionsDonater _initCloseTimerIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_unscheduleCloseConnection
{
  if (a1)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_0_0();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      dispatch_source_set_timer(v8, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_source_cancel(*(a1 + 24));
      v9 = *(a1 + 24);
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

    [(MapsSuggestionsDonater *)a1 _unscheduleCloseConnection];
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

void __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_205_cold_1(NSObject *a1, uint64_t a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *(a2 + 16);
  *(a2 + 16) = 0;

  [(MapsSuggestionsDonater *)a2 _unscheduleCloseConnection];
}

void __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_207_cold_1(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  [(MapsSuggestionsDonater *)a2 _closeConnection];
}

void __52__MapsSuggestionsDonater__openConnectionIfNecessary__block_invoke_209_cold_1(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  [(MapsSuggestionsDonater *)a2 _closeConnection];
}

@end