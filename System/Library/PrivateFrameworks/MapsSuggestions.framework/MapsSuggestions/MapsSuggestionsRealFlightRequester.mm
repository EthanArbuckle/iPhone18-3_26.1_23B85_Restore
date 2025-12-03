@interface MapsSuggestionsRealFlightRequester
- (BOOL)requestFlightsWithFullFlightNumber:(id)number departureDate:(id)date handler:(id)handler;
- (NSString)uniqueName;
- (id)session;
@end

@implementation MapsSuggestionsRealFlightRequester

void __45__MapsSuggestionsRealFlightRequester_session__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v0 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];

  if (![(__CFString *)v5 length])
  {

    v5 = @"1.0";
  }

  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FlightUtilities/%@", v5];
  v2 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"com.apple.flightutilities" userAgent:v1];
  v3 = [MEMORY[0x1E6998670] sharedPARSessionWithConfiguration:v2];
  v4 = _MergedGlobals_1;
  _MergedGlobals_1 = v3;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)requestFlightsWithFullFlightNumber:(id)number departureDate:(id)date handler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dateCopy = date;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealFlightRequester.m";
      *&buf[12] = 1024;
      *&buf[14] = 52;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRealFlightRequester requestFlightsWithFullFlightNumber:departureDate:handler:]";
      *&buf[28] = 2082;
      *&buf[30] = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_15;
  }

  if (![numberCopy length])
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealFlightRequester.m";
      *&buf[12] = 1024;
      *&buf[14] = 53;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRealFlightRequester requestFlightsWithFullFlightNumber:departureDate:handler:]";
      *&buf[28] = 2082;
      *&buf[30] = "0u == fullFlightNumber.length";
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a non-zero flight number", buf, 0x26u);
    }

LABEL_15:

LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  v11 = GEOFindOrCreateLog();
  v12 = v11;
  if (!dateCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealFlightRequester.m";
      *&buf[12] = 1024;
      *&buf[14] = 54;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRealFlightRequester requestFlightsWithFullFlightNumber:departureDate:handler:]";
      *&buf[28] = 2082;
      *&buf[30] = "nil == (departureDate)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a departure date", buf, 0x26u);
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = numberCopy;
    *&buf[12] = 2112;
    *&buf[14] = dateCopy;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "requestFlightsFor(%@ %@)", buf, 0x16u);
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsRealFlightRequester *)self uniqueName];
    *buf = 138412546;
    *&buf[4] = uniqueName;
    *&buf[12] = 2080;
    *&buf[14] = "requestFlightsFor";
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "requestFlightsFor", "", buf, 2u);
  }

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E6998648];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___MapsSuggestionsBundle_block_invoke_4;
  *&buf[24] = &__block_descriptor_40_e5_v8__0l;
  *&buf[32] = "RealFlightRequester";
  if (_MapsSuggestionsBundle_s_msgBundleToken_4 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_4, buf);
  }

  v17 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_4;
  bundleIdentifier = [v17 bundleIdentifier];
  v19 = [v16 flightRequestForQuery:numberCopy date:dateCopy appBundleId:bundleIdentifier];

  session = [(MapsSuggestionsRealFlightRequester *)self session];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __95__MapsSuggestionsRealFlightRequester_requestFlightsWithFullFlightNumber_departureDate_handler___block_invoke;
  v28 = &unk_1E81F6190;
  objc_copyWeak(&v31, &location);
  v30 = handlerCopy;
  v29 = numberCopy;
  v21 = [session taskWithRequest:v19 completion:&v25];

  [v21 resume];
  objc_destroyWeak(&v31);

  objc_destroyWeak(&location);
  v22 = 1;
LABEL_23:

  return v22;
}

void __95__MapsSuggestionsRealFlightRequester_requestFlightsWithFullFlightNumber_departureDate_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  *&v27[13] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = 138412290;
        v25 = v9;
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Error requesting flights: %@", &v24, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [WeakRetained uniqueName];
        v24 = 138412546;
        v25 = v13;
        v26 = 2080;
        *v27 = "requestFlightsFor";
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v24, 0x16u);
      }

      v14 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v14))
      {
        LOWORD(v24) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestFlightsFor", "", &v24, 2u);
      }

      goto LABEL_25;
    }

    v14 = [v8 flightResults];
    if (v14)
    {
      (*(*(a1 + 40) + 16))();
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [WeakRetained uniqueName];
        v24 = 138412546;
        v25 = v16;
        v26 = 2080;
        *v27 = "requestFlightsFor";
        _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v24, 0x16u);
      }

      v17 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v17))
      {
        goto LABEL_24;
      }

      LOWORD(v24) = 0;
    }

    else
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v24 = 138412290;
        v25 = v19;
        _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "No results for Flight %@", &v24, 0xCu);
      }

      v20 = *(a1 + 40);
      v21 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:@"No flight results were found"];
      (*(v20 + 16))(v20, 0, v21);

      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [WeakRetained uniqueName];
        v24 = 138412546;
        v25 = v23;
        v26 = 2080;
        *v27 = "requestFlightsFor";
        _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v24, 0x16u);
      }

      v17 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v17))
      {
        goto LABEL_24;
      }

      LOWORD(v24) = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_1C5126000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "requestFlightsFor", "", &v24, 2u);
LABEL_24:

    goto LABEL_25;
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v24 = 136446722;
    v25 = "MapsSuggestionsRealFlightRequester.m";
    v26 = 1026;
    *v27 = 67;
    v27[2] = 2082;
    *&v27[3] = "[MapsSuggestionsRealFlightRequester requestFlightsWithFullFlightNumber:departureDate:handler:]_block_invoke";
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v24, 0x1Cu);
  }

LABEL_25:
}

- (id)session
{
  if (self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__MapsSuggestionsRealFlightRequester_session__block_invoke;
    block[3] = &unk_1E81F6168;
    block[4] = self;
    if (qword_1EDC51EC0 != -1)
    {
      dispatch_once(&qword_1EDC51EC0, block);
    }

    self = _MergedGlobals_1;
    v1 = block[6];
  }

  return self;
}

@end