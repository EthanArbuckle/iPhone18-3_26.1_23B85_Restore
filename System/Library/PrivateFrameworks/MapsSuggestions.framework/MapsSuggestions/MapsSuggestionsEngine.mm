@interface MapsSuggestionsEngine
- (BOOL)loadStorageFromFile:(id)file;
- (BOOL)loadStorageFromFile:(id)file callback:(id)callback callbackQueue:(id)queue;
- (BOOL)oneShotTopSuggestionsForSink:(id)sink count:(unint64_t)count transportType:(int)type callback:(id)callback onQueue:(id)queue;
- (BOOL)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler;
- (BOOL)saveStorageToFile:(id)file callback:(id)callback;
- (BOOL)topSuggestionsFromStorageFile:(id)file sink:(id)sink count:(unint64_t)count transportType:(int)type callback:(id)callback onQueue:(id)queue;
- (MapsSuggestionsEngine)initWithEntryManager:(id)manager resourceDepot:(id)depot;
- (NSString)uniqueName;
- (id)topSuggestionsForSink:(id)sink count:(unint64_t)count transportType:(int)type;
- (id)topSuggestionsFromStorageFile:(id)file sink:(id)sink count:(unint64_t)count transportType:(int)type;
- (void)addAdditionalFilter:(id)filter forSink:(id)sink;
- (void)feedbackForContact:(id)contact action:(int64_t)action;
- (void)feedbackForEntry:(id)entry action:(int64_t)action;
- (void)feedbackForMapItem:(id)item action:(int64_t)action;
- (void)removeAdditionalFilter:(id)filter forSink:(id)sink;
- (void)setAutomobileOptions:(id)options;
- (void)setMapType:(int)type;
@end

@implementation MapsSuggestionsEngine

- (MapsSuggestionsEngine)initWithEntryManager:(id)manager resourceDepot:(id)depot
{
  v26 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  depotCopy = depot;
  if (!depotCopy)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v20 = 1024;
      v21 = 52;
      v22 = 2082;
      v23 = "[MapsSuggestionsEngine initWithEntryManager:resourceDepot:]";
      v24 = 2082;
      v25 = "nil == (resourceDepot)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x26u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  if (!managerCopy)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v20 = 1024;
      v21 = 53;
      v22 = 2082;
      v23 = "[MapsSuggestionsEngine initWithEntryManager:resourceDepot:]";
      v24 = 2082;
      v25 = "nil == (entryManager)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an EntryManager";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v17.receiver = self;
  v17.super_class = MapsSuggestionsEngine;
  v9 = [(MapsSuggestionsEngine *)&v17 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.Maps.SuggestionsEngine", v10);
    optionsSerialQueue = v9->_optionsSerialQueue;
    v9->_optionsSerialQueue = v11;

    objc_storeStrong(&v9->_resourceDepot, depot);
    objc_storeStrong(&v9->_entryManager, manager);
    v9->_mapType = 0;
  }

  self = v9;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id)topSuggestionsForSink:(id)sink count:(unint64_t)count transportType:(int)type
{
  v5 = *&type;
  v39 = *MEMORY[0x1E69E9840];
  sinkCopy = sink;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("MapsSuggestionsEngineSynced1", v10);

  v12 = dispatch_group_create();
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4;
  v33 = __Block_byref_object_dispose__4;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4;
  v27 = __Block_byref_object_dispose__4;
  v28 = 0;
  dispatch_group_enter(v12);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__MapsSuggestionsEngine_topSuggestionsForSink_count_transportType___block_invoke;
  v19[3] = &unk_1E81F6028;
  v21 = &v29;
  v22 = &v23;
  v13 = v12;
  v20 = v13;
  [(MapsSuggestionsEngine *)self topSuggestionsForSink:sinkCopy count:count transportType:v5 callback:v19 onQueue:v11];
  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  if (v24[5])
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = v30[5];
      *buf = 138412546;
      v36 = v15;
      v37 = 2112;
      v38 = v16;
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%@ received error: %@", buf, 0x16u);
    }
  }

  v17 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v17;
}

void __67__MapsSuggestionsEngine_topSuggestionsForSink_count_transportType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)topSuggestionsFromStorageFile:(id)file sink:(id)sink count:(unint64_t)count transportType:(int)type callback:(id)callback onQueue:(id)queue
{
  v40 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  sinkCopy = sink;
  callbackCopy = callback;
  queueCopy = queue;
  v18 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngine *)self uniqueName];
    *buf = 138412546;
    v37 = uniqueName;
    v38 = 2080;
    v39 = "topSuggestionsFromStorageFileWithCallback";
    _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v20 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsFromStorageFileWithCallback", "", buf, 2u);
  }

  if (!fileCopy)
  {
    if (_defaultCachePath_s_onceToken != -1)
    {
      [MapsSuggestionsEngine topSuggestionsFromStorageFile:sink:count:transportType:callback:onQueue:];
    }

    fileCopy = _defaultCachePath_s_path;
  }

  objc_initWeak(buf, self);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __97__MapsSuggestionsEngine_topSuggestionsFromStorageFile_sink_count_transportType_callback_onQueue___block_invoke;
  v28[3] = &unk_1E81F6050;
  objc_copyWeak(v34, buf);
  v21 = fileCopy;
  v29 = v21;
  v22 = sinkCopy;
  v34[1] = count;
  typeCopy = type;
  v30 = v22;
  selfCopy = self;
  v23 = callbackCopy;
  v33 = v23;
  v24 = queueCopy;
  v32 = v24;
  v25 = dispatch_get_global_queue(0, 0);
  v26 = [(MapsSuggestionsEngine *)self loadStorageFromFile:v21 callback:v28 callbackQueue:v25];

  objc_destroyWeak(v34);
  objc_destroyWeak(buf);

  return v26;
}

void __97__MapsSuggestionsEngine_topSuggestionsFromStorageFile_sink_count_transportType_callback_onQueue___block_invoke(uint64_t a1, char a2)
{
  *&v24[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "MapsSuggestionsEngine.m";
      v23 = 1026;
      *v24 = 141;
      v24[2] = 2082;
      *&v24[3] = "[MapsSuggestionsEngine topSuggestionsFromStorageFile:sink:count:transportType:callback:onQueue:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_19;
  }

  if ((a2 & 1) == 0)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "Could not read from %@", buf, 0xCu);
    }

    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [WeakRetained uniqueName];
      *buf = 138412546;
      v22 = v18;
      v23 = 2080;
      *v24 = "topSuggestionsFromStorageFileWithCallback";
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
    }

    v14 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsFromStorageFileWithCallback", "", buf, 2u);
    }

LABEL_19:

    goto LABEL_20;
  }

  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__MapsSuggestionsEngine_topSuggestionsFromStorageFile_sink_count_transportType_callback_onQueue___block_invoke_147;
  v19[3] = &unk_1E81F5280;
  v7 = *(a1 + 40);
  v19[4] = *(a1 + 48);
  v20 = *(a1 + 64);
  if (([WeakRetained topSuggestionsForSink:v7 count:v5 transportType:v6 callback:v19 onQueue:*(a1 + 56)] & 1) == 0)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [*(a1 + 40) uniqueName];
    v10 = [v8 initWithFormat:@"Could not call topSuggestionsForSink:%@", v9];

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:v10];
      (*(v12 + 16))(v12, 0, v13);
    }
  }

LABEL_20:
}

void __97__MapsSuggestionsEngine_topSuggestionsFromStorageFile_sink_count_transportType_callback_onQueue___block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) uniqueName];
    v11 = 138412546;
    v12 = v8;
    v13 = 2080;
    v14 = "topSuggestionsFromStorageFileWithCallback";
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v11, 0x16u);
  }

  v9 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v9))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsFromStorageFileWithCallback", "", &v11, 2u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (id)topSuggestionsFromStorageFile:(id)file sink:(id)sink count:(unint64_t)count transportType:(int)type
{
  v6 = *&type;
  v45 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  objc_initWeak(&location, sink);
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngine *)self uniqueName];
    *buf = 138412546;
    *&buf[4] = uniqueName;
    *&buf[12] = 2080;
    *&buf[14] = "topSuggestionsFromStorageFile";
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v14 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsFromStorageFile", "", buf, 2u);
  }

  if (!fileCopy)
  {
    if (_defaultCachePath_s_onceToken != -1)
    {
      [MapsSuggestionsEngine topSuggestionsFromStorageFile:sink:count:transportType:callback:onQueue:];
    }

    fileCopy = _defaultCachePath_s_path;
  }

  if ([(MapsSuggestionsEngine *)self loadStorageFromFile:fileCopy])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__4;
    v43 = __Block_byref_object_dispose__4;
    v44 = 0;
    v15 = dispatch_semaphore_create(0);
    v16 = objc_loadWeakRetained(&location);
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __80__MapsSuggestionsEngine_topSuggestionsFromStorageFile_sink_count_transportType___block_invoke;
    v32 = &unk_1E81F6078;
    v35 = a2;
    v17 = v15;
    v33 = v17;
    v34 = buf;
    v18 = dispatch_get_global_queue(17, 0);
    [(MapsSuggestionsEngine *)self topSuggestionsForSink:v16 count:count transportType:v6 callback:&v29 onQueue:v18];

    v19 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v17, v19);
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(MapsSuggestionsEngine *)self uniqueName:v29];
      *v37 = 138412546;
      v38 = v21;
      v39 = 2080;
      v40 = "topSuggestionsFromStorageFile";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", v37, 0x16u);
    }

    v22 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v22))
    {
      *v37 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsFromStorageFile", "", v37, 2u);
    }

    v23 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = fileCopy;
      _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_ERROR, "Could not read from %@", buf, 0xCu);
    }

    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      uniqueName2 = [(MapsSuggestionsEngine *)self uniqueName];
      *buf = 138412546;
      *&buf[4] = uniqueName2;
      *&buf[12] = 2080;
      *&buf[14] = "topSuggestionsFromStorageFile";
      _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
    }

    v27 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsFromStorageFile", "", buf, 2u);
    }

    v23 = 0;
  }

  objc_destroyWeak(&location);

  return v23;
}

void __80__MapsSuggestionsEngine_topSuggestionsFromStorageFile_sink_count_transportType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%@ returned with error: %@", &v12, 0x16u);
    }
  }

  else if (v5)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)oneShotTopSuggestionsForSink:(id)sink count:(unint64_t)count transportType:(int)type callback:(id)callback onQueue:(id)queue
{
  v9 = *&type;
  v28 = *MEMORY[0x1E69E9840];
  sinkCopy = sink;
  callbackCopy = callback;
  queueCopy = queue;
  v15 = queueCopy;
  if (!callbackCopy)
  {
    v17 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v20 = 136446978;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
    v22 = 1024;
    v23 = 221;
    v24 = 2082;
    v25 = "[MapsSuggestionsEngine oneShotTopSuggestionsForSink:count:transportType:callback:onQueue:]";
    v26 = 2082;
    v27 = "nil == (callback)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion callback";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, v18, &v20, 0x26u);
    goto LABEL_12;
  }

  if (!queueCopy)
  {
    v17 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v20 = 136446978;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
    v22 = 1024;
    v23 = 222;
    v24 = 2082;
    v25 = "[MapsSuggestionsEngine oneShotTopSuggestionsForSink:count:transportType:callback:onQueue:]";
    v26 = 2082;
    v27 = "nil == (callbackQueue)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a queue to call back on";
    goto LABEL_11;
  }

  if (!sinkCopy)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v22 = 1024;
      v23 = 223;
      v24 = 2082;
      v25 = "[MapsSuggestionsEngine oneShotTopSuggestionsForSink:count:transportType:callback:onQueue:]";
      v26 = 2082;
      v27 = "nil == (sink)";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a sink delegate";
      goto LABEL_11;
    }

LABEL_12:

    v16 = 0;
    goto LABEL_13;
  }

  v16 = [(MapsSuggestionsManager *)self->_entryManager oneShotTopSuggestionsForSink:sinkCopy count:count transportType:v9 callback:callbackCopy onQueue:queueCopy];
LABEL_13:

  return v16;
}

- (void)addAdditionalFilter:(id)filter forSink:(id)sink
{
  v21 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  sinkCopy = sink;
  v8 = sinkCopy;
  if (!filterCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v15 = 1024;
      v16 = 234;
      v17 = 2082;
      v18 = "[MapsSuggestionsEngine addAdditionalFilter:forSink:]";
      v19 = 2082;
      v20 = "nil == (filter)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires filter to add";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, &v13, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!sinkCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v15 = 1024;
      v16 = 235;
      v17 = 2082;
      v18 = "[MapsSuggestionsEngine addAdditionalFilter:forSink:]";
      v19 = 2082;
      v20 = "nil == (sink)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sink to add it for";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  entryManager = self->_entryManager;
  uniqueName = [sinkCopy uniqueName];
  [(MapsSuggestionsManager *)entryManager addAdditionalFilter:filterCopy forSink:uniqueName];

LABEL_10:
}

- (void)removeAdditionalFilter:(id)filter forSink:(id)sink
{
  v21 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  sinkCopy = sink;
  v8 = sinkCopy;
  if (!filterCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v15 = 1024;
      v16 = 241;
      v17 = 2082;
      v18 = "[MapsSuggestionsEngine removeAdditionalFilter:forSink:]";
      v19 = 2082;
      v20 = "nil == (filter)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires filter to remove";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, &v13, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!sinkCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v15 = 1024;
      v16 = 242;
      v17 = 2082;
      v18 = "[MapsSuggestionsEngine removeAdditionalFilter:forSink:]";
      v19 = 2082;
      v20 = "nil == (sink)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sink to remove it for";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  entryManager = self->_entryManager;
  uniqueName = [sinkCopy uniqueName];
  [(MapsSuggestionsManager *)entryManager removeAdditionalFilter:filterCopy forSink:uniqueName];

LABEL_10:
}

- (void)setMapType:(int)type
{
  optionsSerialQueue = self->_optionsSerialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__MapsSuggestionsEngine_setMapType___block_invoke;
  v4[3] = &unk_1E81F5100;
  v4[4] = self;
  typeCopy = type;
  dispatch_sync(optionsSerialQueue, v4);
}

uint64_t __36__MapsSuggestionsEngine_setMapType___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 32) != v2)
  {
    *(v1 + 32) = v2;
    return [*(*(result + 32) + 16) setMapType:*(*(result + 32) + 32)];
  }

  return result;
}

- (void)setAutomobileOptions:(id)options
{
  optionsCopy = options;
  optionsSerialQueue = self->_optionsSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MapsSuggestionsEngine_setAutomobileOptions___block_invoke;
  v7[3] = &unk_1E81F60A0;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_sync(optionsSerialQueue, v7);
}

id *__46__MapsSuggestionsEngine_setAutomobileOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 40);
  result = (v2 + 40);
  if (v5 != v3)
  {
    objc_storeStrong(result, v3);
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 16);

    return [v7 setAutomobileOptions:v6];
  }

  return result;
}

- (BOOL)saveStorageToFile:(id)file callback:(id)callback
{
  fileCopy = file;
  callbackCopy = callback;
  if (!fileCopy)
  {
    if (_defaultCachePath_s_onceToken != -1)
    {
      [MapsSuggestionsEngine saveStorageToFile:callback:];
    }

    fileCopy = _defaultCachePath_s_path;
  }

  v8 = [(MapsSuggestionsManager *)self->_entryManager saveStorageToFile:fileCopy callback:callbackCopy];

  return v8;
}

- (BOOL)loadStorageFromFile:(id)file
{
  fileCopy = file;
  if (!fileCopy)
  {
    if (_defaultCachePath_s_onceToken != -1)
    {
      [MapsSuggestionsEngine saveStorageToFile:callback:];
    }

    fileCopy = _defaultCachePath_s_path;
  }

  v5 = [(MapsSuggestionsManager *)self->_entryManager loadStorageFromFile:fileCopy];

  return v5;
}

- (BOOL)loadStorageFromFile:(id)file callback:(id)callback callbackQueue:(id)queue
{
  fileCopy = file;
  callbackCopy = callback;
  queueCopy = queue;
  if (!fileCopy)
  {
    if (_defaultCachePath_s_onceToken != -1)
    {
      [MapsSuggestionsEngine saveStorageToFile:callback:];
    }

    fileCopy = _defaultCachePath_s_path;
  }

  v11 = [(MapsSuggestionsManager *)self->_entryManager loadStorageFromFile:fileCopy callback:callbackCopy callbackQueue:queueCopy];

  return v11;
}

- (BOOL)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  if (entry)
  {
    [(MapsSuggestionsManager *)self->_entryManager removeEntry:entry behavior:behavior handler:handler];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v10 = 1024;
      v11 = 315;
      v12 = 2082;
      v13 = "[MapsSuggestionsEngine removeEntry:behavior:handler:]";
      v14 = 2082;
      v15 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", &v8, 0x26u);
    }
  }

  return entry != 0;
}

- (void)feedbackForEntry:(id)entry action:(int64_t)action
{
  v14 = *MEMORY[0x1E69E9840];
  if (entry)
  {
    entryManager = self->_entryManager;

    [MapsSuggestionsManager feedbackForEntry:"feedbackForEntry:action:" action:?];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v8 = 1024;
      v9 = 326;
      v10 = 2082;
      v11 = "[MapsSuggestionsEngine feedbackForEntry:action:]";
      v12 = 2082;
      v13 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", &v6, 0x26u);
    }
  }
}

- (void)feedbackForMapItem:(id)item action:(int64_t)action
{
  v14 = *MEMORY[0x1E69E9840];
  if (item)
  {
    entryManager = self->_entryManager;

    [MapsSuggestionsManager feedbackForMapItem:"feedbackForMapItem:action:" action:?];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v8 = 1024;
      v9 = 333;
      v10 = 2082;
      v11 = "[MapsSuggestionsEngine feedbackForMapItem:action:]";
      v12 = 2082;
      v13 = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires mapItem", &v6, 0x26u);
    }
  }
}

- (void)feedbackForContact:(id)contact action:(int64_t)action
{
  v14 = *MEMORY[0x1E69E9840];
  if (contact)
  {
    entryManager = self->_entryManager;

    [MapsSuggestionsManager feedbackForContact:"feedbackForContact:action:" action:?];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngine.m";
      v8 = 1024;
      v9 = 341;
      v10 = 2082;
      v11 = "[MapsSuggestionsEngine feedbackForContact:action:]";
      v12 = 2082;
      v13 = "nil == (contact)";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires contact", &v6, 0x26u);
    }
  }
}

@end