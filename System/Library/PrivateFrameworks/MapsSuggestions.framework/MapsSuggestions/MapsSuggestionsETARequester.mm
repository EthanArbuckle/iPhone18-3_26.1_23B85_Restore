@interface MapsSuggestionsETARequester
- (BOOL)ETAsFromLocation:(id)a3 toEntries:(id)a4 completion:(id)a5;
- (BOOL)_requestWaypointForCurrentLocation:(uint64_t)a1;
- (BOOL)transportTypeFromLocation:(id)a3 toEntry:(id)a4 completion:(id)a5;
- (MapsSuggestionsETARequester)initWithNetworkRequester:(id)a3 transportModePredictor:(id)a4 requirements:(id)a5;
- (NSString)uniqueName;
- (uint64_t)_determineTransportTypeFromOrigin:(void *)a3 toEntry:(void *)a4 completion:;
- (uint64_t)_keepExistingWaypointsForEntries:(uint64_t)a1;
- (uint64_t)_requestETAsToEntries:(void *)a3 completion:;
- (uint64_t)_requestWaypointsForEntries:(uint64_t)a1;
- (void)forceTransportType:(int)a3;
- (void)setAutomobileOptions:(id)a3;
@end

@implementation MapsSuggestionsETARequester

- (MapsSuggestionsETARequester)initWithNetworkRequester:(id)a3 transportModePredictor:(id)a4 requirements:(id)a5
{
  v9 = a3;
  objc_initWeak(&location, a4);
  v10 = a5;
  v28.receiver = self;
  v28.super_class = MapsSuggestionsETARequester;
  v11 = [(MapsSuggestionsETARequester *)&v28 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("MapsSuggestionsETARequester", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    v11->_forcedTransportMode = 4;
    objc_storeStrong(&v11->_networkRequester, a3);
    objc_storeStrong(&v11->_etaRequirements, a5);
    v15 = objc_alloc_init(MEMORY[0x1E696AD10]);
    waypointsLock = v11->_waypointsLock;
    v11->_waypointsLock = v15;

    if (MapsSuggestionsIsFeelerPipelineTransportModePredictionEnabled())
    {
      v17 = objc_loadWeakRetained(&location);
      transportModePredictor = v11->_transportModePredictor;
      v11->_transportModePredictor = v17;
    }

    v19 = objc_alloc_init(MEMORY[0x1E69A1B90]);
    automobileOptions = v11->_automobileOptions;
    v11->_automobileOptions = v19;

    v21 = v11->_automobileOptions;
    v22 = [MEMORY[0x1E696AC08] defaultManager];
    v23 = [v22 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
    v24 = [v23 path];
    AppBooleanValueWithContainer = _CFPreferencesGetAppBooleanValueWithContainer();

    if (AppBooleanValueWithContainer)
    {
      v26 = 1;
    }

    else
    {
      v26 = 3;
    }

    [(GEOAutomobileOptions *)v21 setTrafficType:v26];
  }

  objc_destroyWeak(&location);
  return v11;
}

- (void)setAutomobileOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MapsSuggestionsETARequester_setAutomobileOptions___block_invoke;
  block[3] = &unk_1E81F4F48;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__MapsSuggestionsETARequester_setAutomobileOptions___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) copy];
    v4 = WeakRetained[10];
    WeakRetained[10] = v3;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsETARequester.m";
      v8 = 1026;
      v9 = 105;
      v10 = 2082;
      v11 = "[MapsSuggestionsETARequester setAutomobileOptions:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (BOOL)ETAsFromLocation:(id)a3 toEntries:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETARequester.m";
      v33 = 1024;
      *v34 = 114;
      *&v34[4] = 2082;
      *&v34[6] = "[MapsSuggestionsETARequester ETAsFromLocation:toEntries:completion:]";
      v35 = 2082;
      v36 = "nil == (completion)";
      v23 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_13:
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x26u);
    }

LABEL_14:

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  if (!v8)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETARequester.m";
      v33 = 1024;
      *v34 = 115;
      *&v34[4] = 2082;
      *&v34[6] = "[MapsSuggestionsETARequester ETAsFromLocation:toEntries:completion:]";
      v35 = 2082;
      v36 = "nil == (location)";
      v23 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a current location";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = [v9 count];
  v12 = GEOFindOrCreateLog();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETARequester.m";
      v33 = 1024;
      *v34 = 116;
      *&v34[4] = 2082;
      *&v34[6] = "[MapsSuggestionsETARequester ETAsFromLocation:toEntries:completion:]";
      v35 = 2082;
      v36 = "0u == [entries count]";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a least one suggestions entry", buf, 0x26u);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(MapsSuggestionsETARequester *)self uniqueName];
    *buf = 138412546;
    v32 = v14;
    v33 = 2080;
    *v34 = "ETAsFromLocation";
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ETAsFromLocation", "", buf, 2u);
  }

  v16 = [v8 copy];
  v17 = [v9 copy];
  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MapsSuggestionsETARequester_ETAsFromLocation_toEntries_completion___block_invoke;
  block[3] = &unk_1E81F4F98;
  objc_copyWeak(&v30, buf);
  v26 = v16;
  v28 = self;
  v29 = v10;
  v27 = v17;
  v19 = v17;
  v20 = v16;
  dispatch_async(queue, block);

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
  v21 = 1;
LABEL_16:

  return v21;
}

void __69__MapsSuggestionsETARequester_ETAsFromLocation_toEntries_completion___block_invoke(void **a1)
{
  *&v19[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsETARequester.m";
      v18 = 1026;
      *v19 = 126;
      v19[2] = 2082;
      *&v19[3] = "[MapsSuggestionsETARequester ETAsFromLocation:toEntries:completion:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_5;
  }

  if (![(MapsSuggestionsETARequester *)WeakRetained _requestWaypointForCurrentLocation:?])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not make waypoint for location: %@", a1[4]];
    v6 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:v5];
LABEL_8:
    v7 = v6;
    (*(a1[7] + 2))();

    goto LABEL_5;
  }

  if ([(MapsSuggestionsETARequester *)v3 _keepExistingWaypointsForEntries:?]&& ([(MapsSuggestionsETARequester *)v3 _requestWaypointsForEntries:?]& 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not make waypoints for all Entries: %@", a1[5]];
    v6 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-19 reason:v5];
    goto LABEL_8;
  }

  v8 = a1[5];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__MapsSuggestionsETARequester_ETAsFromLocation_toEntries_completion___block_invoke_147;
  v13[3] = &unk_1E81F4F70;
  objc_copyWeak(&v15, a1 + 8);
  v14 = a1[7];
  if (([(MapsSuggestionsETARequester *)v3 _requestETAsToEntries:v8 completion:v13]& 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [a1[6] uniqueName];
      *buf = 138412546;
      v17 = v10;
      v18 = 2080;
      *v19 = "ETAsFromLocation";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ETAsFromLocation", "", buf, 2u);
    }

    v12 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-10 reason:@"Could not request ETA for this Entry"];
    (*(a1[7] + 2))();
  }

  objc_destroyWeak(&v15);
LABEL_5:
}

- (uint64_t)_requestWaypointsForEntries:(uint64_t)a1
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v27 = v3;
  if (a1)
  {
    if (v3)
    {
      dispatch_assert_queue_V2(*(a1 + 8));
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = [a1 uniqueName];
        *buf = 138412546;
        *&buf[4] = v5;
        v41 = 2080;
        v42 = "_requestWaypointsForEntries";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v6 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_requestWaypointsForEntries", "", buf, 2u);
      }

      group = dispatch_group_create();
      objc_initWeak(&location, a1);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v27;
      v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v7)
      {
        v8 = *v35;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v35 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v34 + 1) + 8 * i);
            if ([v10 BOOLeanForKey:@"MapsSuggestionsNeedsETATrackingKey"])
            {
              v11 = MapsSuggestionsDestinationKey(v10);
              [*(a1 + 64) lock];
              v12 = [*(a1 + 56) objectForKeyedSubscript:v11];
              [*(a1 + 64) unlock];
              if (!v12)
              {
                dispatch_group_enter(group);
                v13 = *(a1 + 16);
                v30[0] = MEMORY[0x1E69E9820];
                v30[1] = 3221225472;
                v30[2] = __59__MapsSuggestionsETARequester__requestWaypointsForEntries___block_invoke;
                v30[3] = &unk_1E81F4FC0;
                v14 = group;
                v31 = v14;
                objc_copyWeak(&v33, &location);
                v32 = v11;
                if ((GEOComposedWaypointFromMapsSuggestionsEntry(v10, v13, v30) & 1) == 0)
                {
                  v15 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315138;
                    *&buf[4] = "[MapsSuggestionsETARequester _requestWaypointsForEntries:]";
                    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "%s will not call back", buf, 0xCu);
                  }

                  dispatch_group_leave(v14);
                }

                objc_destroyWeak(&v33);
              }
            }
          }

          v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v7);
      }

      GEOConfigGetDouble();
      v17 = dispatch_time(0, (v16 * 1000000000.0));
      v18 = dispatch_group_wait(group, v17);
      v19 = v18 == 0;
      if (v18)
      {
        v20 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "Timeout on getting waypoints", buf, 2u);
        }

        v21 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = [a1 uniqueName];
          *buf = 138412546;
          *&buf[4] = v22;
          v41 = 2080;
          v42 = "_requestWaypointsForEntries";
          _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
        }
      }

      else
      {
        v21 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v24 = [a1 uniqueName];
          *buf = 138412546;
          *&buf[4] = v24;
          v41 = 2080;
          v42 = "_requestWaypointsForEntries";
          _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
        }
      }

      v25 = GEOFindOrCreateLog();
      [(MapsSuggestionsETARequester *)v25 _requestWaypointsForEntries:buf];

      objc_destroyWeak(&location);
      v23 = group;
    }

    else
    {
      [(MapsSuggestionsETARequester *)buf _requestWaypointsForEntries:?];
      v23 = *buf;
      v19 = location;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __69__MapsSuggestionsETARequester_ETAsFromLocation_toEntries_completion___block_invoke_147(uint64_t a1, void *a2)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = [WeakRetained uniqueName];
      v10 = 138412546;
      v11 = v7;
      v12 = 2080;
      *v13 = "ETAsFromLocation";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v10, 0x16u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v8))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ETAsFromLocation", "", &v10, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = v5;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsETARequester.m";
      v12 = 1026;
      *v13 = 150;
      v13[2] = 2082;
      *&v13[3] = "[MapsSuggestionsETARequester ETAsFromLocation:toEntries:completion:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (uint64_t)_requestETAsToEntries:(void *)a3 completion:
{
  v65 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v5 = a3;
  v37 = v5;
  if (a1)
  {
    if (v5)
    {
      dispatch_assert_queue_V2(*(a1 + 8));
      v6 = objc_alloc(MEMORY[0x1E69A1B90]);
      v7 = [*(a1 + 80) data];
      v39 = [v6 initWithData:v7];

      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [a1 uniqueName];
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "_requestETAs";
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v10 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_requestETAs", "", buf, 2u);
      }

      if (*(a1 + 48))
      {
        [*(a1 + 64) lock];
        v11 = [*(a1 + 56) count];
        [*(a1 + 64) unlock];
        if (v11)
        {
          objc_initWeak(&location, a1);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v62 = __Block_byref_object_copy_;
          v63 = __Block_byref_object_dispose_;
          v64 = 0;
          v12 = dispatch_group_create();
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          obj = v36;
          v13 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v13)
          {
            v14 = *v52;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v52 != v14)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v51 + 1) + 8 * i);
                [*(a1 + 64) lock];
                v17 = *(a1 + 56);
                v18 = MapsSuggestionsDestinationKey(v16);
                v19 = [v17 objectForKeyedSubscript:v18];

                [*(a1 + 64) unlock];
                if (v19)
                {
                  dispatch_group_enter(v12);
                  v20 = *(a1 + 40);
                  v44[0] = MEMORY[0x1E69E9820];
                  v44[1] = 3221225472;
                  v44[2] = __64__MapsSuggestionsETARequester__requestETAsToEntries_completion___block_invoke;
                  v44[3] = &unk_1E81F50B0;
                  v49 = buf;
                  v21 = v12;
                  v45 = v21;
                  objc_copyWeak(&v50, &location);
                  v46 = v19;
                  v47 = v39;
                  v48 = v16;
                  if (([(MapsSuggestionsETARequester *)a1 _determineTransportTypeFromOrigin:v20 toEntry:v16 completion:v44]& 1) == 0)
                  {
                    v22 = GEOFindOrCreateLog();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      v23 = *(a1 + 40);
                      *v56 = 138412546;
                      v57 = v23;
                      v58 = 2112;
                      v59 = v16;
                      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "Could not determine transportType for input: %@, %@", v56, 0x16u);
                    }

                    dispatch_group_leave(v21);
                  }

                  objc_destroyWeak(&v50);
                }
              }

              v13 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v13);
          }

          v24 = *(a1 + 8);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __64__MapsSuggestionsETARequester__requestETAsToEntries_completion___block_invoke_178;
          block[3] = &unk_1E81F50D8;
          objc_copyWeak(&v43, &location);
          v41 = v37;
          v42 = buf;
          dispatch_group_notify(v12, v24, block);

          objc_destroyWeak(&v43);
          _Block_object_dispose(buf, 8);

          objc_destroyWeak(&location);
        }

        else
        {
          v31 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-10 reason:@"Had no Waypoints at all"];
          (v37)[2](v37, v31);
          v32 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = [a1 uniqueName];
            *buf = 138412546;
            *&buf[4] = v33;
            *&buf[12] = 2080;
            *&buf[14] = "_requestETAs";
            _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
          }

          v34 = GEOFindOrCreateLog();
          if (os_signpost_enabled(v34))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C5126000, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_requestETAs", "", buf, 2u);
          }
        }

        v26 = 1;
      }

      else
      {
        v27 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_DEBUG, "CurrentLocation was nil", buf, 2u);
        }

        v28 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = [a1 uniqueName];
          *buf = 138412546;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = "_requestETAs";
          _os_log_impl(&dword_1C5126000, v28, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
        }

        v30 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v30))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5126000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_requestETAs", "", buf, 2u);
        }

        v26 = 0;
      }

      v25 = v39;
    }

    else
    {
      [MapsSuggestionsETARequester _requestETAsToEntries:buf completion:v56];
      v25 = *buf;
      v26 = v56[0];
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

void __59__MapsSuggestionsETARequester__requestWaypointsForEntries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Error fetching waypoint: %@", &v11, 0xCu);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[8] lock];
      [v9[7] setObject:v5 forKeyedSubscript:*(a1 + 40)];
      [v9[8] unlock];
      dispatch_group_leave(*(a1 + 32));
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446722;
        v12 = "MapsSuggestionsETARequester.m";
        v13 = 1026;
        v14 = 275;
        v15 = 2082;
        v16 = "[MapsSuggestionsETARequester _requestWaypointsForEntries:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v11, 0x1Cu);
      }
    }
  }
}

- (BOOL)transportTypeFromLocation:(id)a3 toEntry:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
        v13 = [(MapsSuggestionsETARequester *)self _determineTransportTypeFromOrigin:v8 toEntry:v9 completion:v10];
        goto LABEL_12;
      }

      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446978;
        v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETARequester.m";
        v17 = 1024;
        v18 = 306;
        v19 = 2082;
        v20 = "[MapsSuggestionsETARequester transportTypeFromLocation:toEntry:completion:]";
        v21 = 2082;
        v22 = "nil == (entry)";
        v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destinationd entry";
LABEL_10:
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, &v15, 0x26u);
      }
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446978;
        v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETARequester.m";
        v17 = 1024;
        v18 = 305;
        v19 = 2082;
        v20 = "[MapsSuggestionsETARequester transportTypeFromLocation:toEntry:completion:]";
        v21 = 2082;
        v22 = "nil == (location)";
        v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a current location";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETARequester.m";
      v17 = 1024;
      v18 = 304;
      v19 = 2082;
      v20 = "[MapsSuggestionsETARequester transportTypeFromLocation:toEntry:completion:]";
      v21 = 2082;
      v22 = "nil == (completion)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

void __84__MapsSuggestionsETARequester__determineTransportTypeFromOrigin_toEntry_completion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 4;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 4;
    v4 = GEOTransportTypeFromGEOTransportTypePreference([MEMORY[0x1E69A1DF8] idealTransportTypeForOrigin:objc_msgSend(WeakRetained destination:"mapType") mapType:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}]);
    *(v29 + 6) = v4;
    if (MapsSuggestionsIsFeelerPipelineTransportModePredictionEnabled())
    {
      dispatch_group_enter(*(a1 + 40));
      v5 = v3[3];
      v6 = *(a1 + 32);
      [*(a1 + 48) coordinate];
      v8 = v7;
      v10 = v9;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __84__MapsSuggestionsETARequester__determineTransportTypeFromOrigin_toEntry_completion___block_invoke_163;
      v24[3] = &unk_1E81F5010;
      objc_copyWeak(&v27, (a1 + 64));
      v25 = *(a1 + 40);
      v26 = buf;
      [v5 predictedTransportModeForDestinationEntry:v6 originCoordinate:v24 handler:{v8, v10}];
      v11 = v3[1];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __84__MapsSuggestionsETARequester__determineTransportTypeFromOrigin_toEntry_completion___block_invoke_166;
      v19[3] = &unk_1E81F5038;
      v22 = buf;
      v23 = &v28;
      v19[4] = v3;
      v12 = *(a1 + 40);
      v20 = *(a1 + 32);
      v21 = *(a1 + 56);
      dispatch_group_notify(v12, v11, v19);

      objc_destroyWeak(&v27);
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = [MEMORY[0x1E696AD98] numberWithInt:*(v29 + 6)];
      [v14 setNumber:v15 forKey:@"MapsSuggestionsTransportTypeKey"];

      (*(*(a1 + 56) + 16))();
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v3 uniqueName];
        *v32 = 138412546;
        v33 = v17;
        v34 = 2080;
        v35 = "_determineTransportTypeFromOrigin";
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", v32, 0x16u);
      }

      v18 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v18))
      {
        *v32 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_determineTransportTypeFromOrigin", "", v32, 2u);
      }
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsETARequester.m";
      *&buf[12] = 1026;
      *&buf[14] = 373;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsETARequester _determineTransportTypeFromOrigin:toEntry:completion:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __84__MapsSuggestionsETARequester__determineTransportTypeFromOrigin_toEntry_completion___block_invoke_163(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__MapsSuggestionsETARequester__determineTransportTypeFromOrigin_toEntry_completion___block_invoke_164;
    v13[3] = &unk_1E81F4FE8;
    v14 = v6;
    v15 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v16 = v10;
    v17 = v11;
    dispatch_async(v9, v13);

    v12 = v14;
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsETARequester.m";
      v20 = 1026;
      v21 = 395;
      v22 = 2082;
      v23 = "[MapsSuggestionsETARequester _determineTransportTypeFromOrigin:toEntry:completion:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __84__MapsSuggestionsETARequester__determineTransportTypeFromOrigin_toEntry_completion___block_invoke_164(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || ![*(a1 + 40) count])
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 32) localizedDescription];
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Could not predict transport mode. Error: %@", &v10, 0xCu);
    }

LABEL_4:

    dispatch_group_leave(*(a1 + 48));
    return;
  }

  v4 = [*(a1 + 40) objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) objectAtIndexedSubscript:0];
      v10 = 138412290;
      v11 = objc_opt_class();
      v9 = v11;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Unexpected class type for predicted transport mode. Error: %@", &v10, 0xCu);
    }

    goto LABEL_4;
  }

  v6 = [*(a1 + 40) objectAtIndexedSubscript:0];
  *(*(*(a1 + 56) + 8) + 24) = [v6 intValue];

  v7 = *(a1 + 48);

  dispatch_group_leave(v7);
}

void __84__MapsSuggestionsETARequester__determineTransportTypeFromOrigin_toEntry_completion___block_invoke_166(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  v3 = *(*(*(a1 + 64) + 8) + 24);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  MapsSuggestionsLogPredictedTransportModeForEntry(v2, v3, v5, *(a1 + 40));

  if (MapsSuggestionsGetTransportationModeDebugPanelSetting())
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[MapsSuggestionsETARequester _determineTransportTypeFromOrigin:toEntry:completion:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Using MSg PTM in %s", &v14, 0xCu);
    }

    v7 = *(*(*(a1 + 56) + 8) + 24);
    if (v7 == 4)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Could not set predicted transport mode.", &v14, 2u);
      }

      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      v7 = *(*(*(a1 + 56) + 8) + 24);
    }

    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    [v9 setNumber:v10 forKey:@"MapsSuggestionsTransportTypeKey"];

    *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
  }

  (*(*(a1 + 48) + 16))();
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [*(a1 + 32) uniqueName];
    v14 = 138412546;
    v15 = v12;
    v16 = 2080;
    v17 = "_determineTransportTypeFromOrigin";
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v14, 0x16u);
  }

  v13 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v13))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_determineTransportTypeFromOrigin", "", &v14, 2u);
  }
}

void __64__MapsSuggestionsETARequester__requestETAsToEntries_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Could not determine transportType: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v9 = GEOFindOrCreateLog();
    v10 = v9;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(WeakRetained + 5);
        *buf = 138412290;
        v26 = v11;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Sending ETA Request (current location: %@)", buf, 0xCu);
      }

      v12 = *(WeakRetained + 6);
      v13 = [*(WeakRetained + 5) copy];
      v14 = *(WeakRetained + 2);
      v16 = *(a1 + 40);
      v15 = *(a1 + 48);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __64__MapsSuggestionsETARequester__requestETAsToEntries_completion___block_invoke_171;
      v19[3] = &unk_1E81F5088;
      objc_copyWeak(&v23, (a1 + 72));
      v17 = *(a1 + 64);
      v19[4] = *(a1 + 56);
      v22 = v17;
      v20 = *(a1 + 32);
      v24 = a2;
      v18 = v13;
      v21 = v18;
      [v14 ETAFromWaypoint:v12 toWaypoint:v16 transportType:a2 automobileOptions:v15 completion:v19];

      objc_destroyWeak(&v23);
    }

    else
    {
      v18 = v9;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v26 = "MapsSuggestionsETARequester.m";
        v27 = 1026;
        v28 = 496;
        v29 = 2082;
        v30 = "[MapsSuggestionsETARequester _requestETAsToEntries:completion:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }

      v12 = v18;
    }
  }
}

void __64__MapsSuggestionsETARequester__requestETAsToEntries_completion___block_invoke_171(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      if ([v6 code] == -8 && (objc_msgSend(v6, "domain"), v14 = objc_claimAutoreleasedReturnValue(), GEOErrorDomain(), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v16))
      {
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_INFO, "No ETA/Route available", &v24, 2u);
        }

        [*(a1 + 32) setBoolean:1 forKey:@"MapsSuggestionsRoutingNotAvailableKey"];
        [*(a1 + 32) setBoolean:0 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
      }

      else
      {
        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v24 = 138412290;
          v25 = v6;
          _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "ETA request failed: %@", &v24, 0xCu);
        }
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    }

    else if ([*(a1 + 32) containsKey:@"MapsSuggestionsNeedsETATrackingKey"] && objc_msgSend(*(a1 + 32), "BOOLeanForKey:", @"MapsSuggestionsNeedsETATrackingKey"))
    {
      if ([v5 isSuccess])
      {
        v8 = [MapsSuggestionsETA alloc];
        v9 = *(a1 + 72);
        v10 = *(a1 + 48);
        v11 = MapsSuggestionsNow();
        v12 = [(MapsSuggestionsETA *)v8 initWithTrafficAndETAResult:v5 transportType:v9 location:v10 time:v11];

        [*(a1 + 32) setETA:v12 forKey:@"MapsSuggestionsETAKey"];
      }

      else
      {
        v19 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a1 + 32);
          v24 = 138412290;
          v25 = v20;
          _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "ETA Request failed specificantly for %@", &v24, 0xCu);
        }

        [*(a1 + 32) setETA:0 forKey:@"MapsSuggestionsETAKey"];
        v21 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-11 reason:@"Failed significantly in the result"];
        v22 = *(*(a1 + 56) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446722;
      v25 = "MapsSuggestionsETARequester.m";
      v26 = 1026;
      v27 = 508;
      v28 = 2082;
      v29 = "[MapsSuggestionsETARequester _requestETAsToEntries:completion:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v24, 0x1Cu);
    }
  }
}

void __64__MapsSuggestionsETARequester__requestETAsToEntries_completion___block_invoke_178(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v8 = 138412546;
      v9 = v5;
      v10 = 2080;
      *v11 = "_requestETAs";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_requestETAs", "", &v8, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = v3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsETARequester.m";
      v10 = 1026;
      *v11 = 558;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsETARequester _requestETAsToEntries:completion:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (void)forceTransportType:(int)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MapsSuggestionsETARequester_forceTransportType___block_invoke;
  v4[3] = &unk_1E81F5100;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

- (BOOL)_requestWaypointForCurrentLocation:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_13;
  }

  if (!v3)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 136446978;
      OUTLINED_FUNCTION_4();
      *(&v17[3] + 2) = 214;
      OUTLINED_FUNCTION_3();
      v18 = "nil == (location)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location", v17, 0x26u);
    }

    goto LABEL_13;
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  if (*(a1 + 48) && ([v4 isEqual:*(a1 + 40)] & 1) != 0)
  {
    v5 = 1;
    goto LABEL_14;
  }

  [v4 coordinate];
  if (!CLLocationCoordinate2DIsValid(v20))
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  [v4 coordinate];
  v7 = v6;
  [v4 coordinate];
  v9 = v8;
  v10 = [v4 copy];
  v11 = *(a1 + 40);
  *(a1 + 40) = v10;

  v12 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:{v7, v9}];
  v5 = v12 != 0;
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:v12 isCurrentLocation:1];
    v14 = *(a1 + 48);
    *(a1 + 48) = v13;
  }

LABEL_14:
  return v5;
}

- (uint64_t)_keepExistingWaypointsForEntries:(uint64_t)a1
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v22 = v3;
  if (a1)
  {
    v4 = v3;
    [*(a1 + 64) lock];
    v5 = *(a1 + 56);
    v21 = a1;
    [*(a1 + 64) unlock];
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v26;
      v23 = v6;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if ([v12 containsKey:@"MapsSuggestionsNeedsETATrackingKey"] && objc_msgSend(v12, "BOOLeanForKey:", @"MapsSuggestionsNeedsETATrackingKey"))
          {
            v13 = MapsSuggestionsDestinationKey(v12);
            v14 = [v5 objectForKeyedSubscript:v13];
            if (v14)
            {
              [v24 setObject:v14 forKeyedSubscript:v13];
            }

            else
            {
              v15 = v5;
              v16 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v17 = [v15 allKeys];
                *buf = 138412546;
                v30 = v12;
                v31 = 2112;
                v32 = v17;
                _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "No existing waypoint for entry: %@. Existing waypoint identifiers: %@", buf, 0x16u);
              }

              v9 = 1;
              v5 = v15;
              v6 = v23;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    [*(v21 + 64) lock];
    v18 = *(v21 + 56);
    *(v21 + 56) = v24;
    v19 = v24;

    [*(v21 + 64) unlock];
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (uint64_t)_determineTransportTypeFromOrigin:(void *)a3 toEntry:(void *)a4 completion:
{
  v127 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_28;
  }

  v10 = GEOFindOrCreateLog();
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v120 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsETARequester.m";
      v121 = 1024;
      v122 = 319;
      v123 = 2082;
      v124 = "[MapsSuggestionsETARequester _determineTransportTypeFromOrigin:toEntry:completion:]";
      v125 = 2082;
      v126 = "nil == (completion)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [a1 uniqueName];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
  }

  v18 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    OUTLINED_FUNCTION_2();
    _os_signpost_emit_with_name_impl(v19, v18, OS_SIGNPOST_INTERVAL_BEGIN, v20, v21, v22, buf, 2u);
  }

  if (!v7 || !v8)
  {
    v29 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_5_0(v29))
    {
      v30 = [a1 uniqueName];
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_0();
      _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    }

    v36 = GEOFindOrCreateLog();
    if (!os_signpost_enabled(v36))
    {
      goto LABEL_27;
    }

    *buf = 0;
    goto LABEL_26;
  }

  if ([v8 type] != 11)
  {
    if (*(a1 + 72) != 4)
    {
      v59 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v8 setNumber:v59 forKey:@"MapsSuggestionsTransportTypeKey"];

      v60 = OUTLINED_FUNCTION_6_0();
      v61(v60);
      v62 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_5_0(v62))
      {
        v63 = *(a1 + 72);
        *buf = 67109120;
        LODWORD(v120) = v63;
        OUTLINED_FUNCTION_1_0();
        _os_log_impl(v64, v65, v66, v67, v68, 8u);
      }

      v69 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_5_0(v69))
      {
        v70 = [a1 uniqueName];
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_0();
        _os_log_impl(v71, v72, v73, v74, v75, 0x16u);
      }

      v25 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v25))
      {
        *buf = 0;
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_7_1(v76, v77, v78, v79, v80, v81, v82, v83, v105, block, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, buf[0]);
      }

      goto LABEL_17;
    }

    [v7 coordinate];
    v47 = v46;
    [v7 coordinate];
    if (fabs(v48) > 180.0 || fabs(v47) > 90.0)
    {
      v84 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_5_0(v84))
      {
        v85 = [a1 uniqueName];
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_0();
        _os_log_impl(v86, v87, v88, v89, v90, 0x16u);
      }

      v36 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v36))
      {
        goto LABEL_27;
      }

      *buf = 0;
    }

    else
    {
      v49 = *&v48;
      if ([v8 containsKey:@"MapsSuggestionsLatitudeKey"] && (objc_msgSend(v8, "containsKey:", @"MapsSuggestionsLongitudeKey") & 1) != 0)
      {
        v50 = [v8 numberForKey:@"MapsSuggestionsLatitudeKey"];
        [v50 doubleValue];
        v52 = v51;
        v53 = [v8 numberForKey:@"MapsSuggestionsLongitudeKey"];
        [v53 doubleValue];
        v55 = v54;

        if (fabs(v55) <= 180.0 && fabs(v52) <= 90.0)
        {
          v56 = dispatch_group_create();
          objc_initWeak(buf, a1);
          v57 = *(a1 + 8);
          block = MEMORY[0x1E69E9820];
          v107 = 3221225472;
          v108 = __84__MapsSuggestionsETARequester__determineTransportTypeFromOrigin_toEntry_completion___block_invoke;
          v109 = &unk_1E81F5060;
          objc_copyWeak(&v114, buf);
          v115 = *&v47;
          v116 = v49;
          v117 = *&v52;
          v118 = *&v55;
          v110 = v8;
          v113 = v9;
          v111 = v56;
          v112 = v7;
          v58 = v56;
          dispatch_async(v57, &block);

          objc_destroyWeak(&v114);
          objc_destroyWeak(buf);
          goto LABEL_18;
        }

        v98 = GEOFindOrCreateLog();
        if (OUTLINED_FUNCTION_5_0(v98))
        {
          v99 = [a1 uniqueName];
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_1_0();
          _os_log_impl(v100, v101, v102, v103, v104, 0x16u);
        }

        v36 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v36))
        {
          goto LABEL_27;
        }

        *buf = 0;
      }

      else
      {
        v91 = GEOFindOrCreateLog();
        if (OUTLINED_FUNCTION_5_0(v91))
        {
          v92 = [a1 uniqueName];
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_1_0();
          _os_log_impl(v93, v94, v95, v96, v97, 0x16u);
        }

        v36 = GEOFindOrCreateLog();
        if (!os_signpost_enabled(v36))
        {
          goto LABEL_27;
        }

        *buf = 0;
      }
    }

LABEL_26:
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_7_1(v37, v38, v39, v40, v41, v42, v43, v44, v105, block, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, buf[0]);
LABEL_27:

LABEL_28:
    v28 = 0;
    goto LABEL_29;
  }

  if (([v8 containsKey:@"MapsSuggestionsTransportTypeKey"] & 1) == 0)
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "Resume Route should always have a transport type key, falling back to Automobile", buf, 2u);
    }

    [v8 setNumber:&unk_1F4470E10 forKey:@"MapsSuggestionsTransportTypeKey"];
  }

  v24 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_DEBUG, "Entry type is resume route, using the transport type key.", buf, 2u);
  }

  v25 = [v8 numberForKey:@"MapsSuggestionsTransportTypeKey"];
  [v25 intValue];
  v26 = OUTLINED_FUNCTION_6_0();
  v27(v26);
LABEL_17:

LABEL_18:
  v28 = 1;
LABEL_29:

  return v28;
}

- (void)_requestWaypointsForEntries:(NSObject *)a1 .cold.1(NSObject *a1, NSObject **a2)
{
  if (os_signpost_enabled(a1))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_8_0(v4, v5, v6, v7, v8, v9, v10, v11, 0);
  }

  *a2 = a1;
}

- (void)_requestWaypointsForEntries:(NSObject *)a1 .cold.3(NSObject **a1, _BYTE *a2)
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v5, v6, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestions entries", v7, v8, v9, v10, 2u);
  }

  *a2 = 0;
  *a1 = v4;
}

- (void)_requestETAsToEntries:(NSObject *)a1 completion:(_BYTE *)a2 .cold.1(NSObject **a1, _BYTE *a2)
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v5, v6, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", v7, v8, v9, v10, 2u);
  }

  *a2 = 0;
  *a1 = v4;
}

@end