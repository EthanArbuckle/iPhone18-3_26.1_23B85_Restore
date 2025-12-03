@interface MapsSuggestionsRemoteSource
- (BOOL)_q_openConnectionIfNecessary;
- (BOOL)canProduceEntriesOfType:(int64_t)type;
- (BOOL)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler;
- (double)updateSuggestionEntriesOfType:(int64_t)type handler:(id)handler;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)Debug_updateGraph;
- (void)_q_closeConnection;
- (void)addOrUpdateSuggestionEntriesData:(id)data sourceNameData:(id)nameData handler:(id)handler;
- (void)dealloc;
- (void)feedbackForContact:(id)contact action:(int64_t)action;
- (void)feedbackForEntry:(id)entry action:(int64_t)action;
- (void)feedbackForMapItem:(id)item action:(int64_t)action;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsRemoteSource

- (void)start
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v19 = uniqueName;
    v20 = 2080;
    v21 = "start";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v5 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "start", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = self->_queue;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__MapsSuggestionsRemoteSource_start__block_invoke;
  aBlock[3] = &unk_1E81F6A68;
  v7 = v6;
  v16 = v7;
  objc_copyWeak(&v17, buf);
  v8 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MapsSuggestionsRemoteSource_start__block_invoke_219;
  block[3] = &unk_1E81F6A90;
  objc_copyWeak(&v14, buf);
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(v10, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);

  objc_destroyWeak(buf);
}

- (BOOL)_q_openConnectionIfNecessary
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 32));
    if (!*(self + 24))
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        uniqueName = [self uniqueName];
        *buf = 138412546;
        v23 = uniqueName;
        v24 = 2080;
        v25 = "openingConnection";
        _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v4 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "openingConnection", "", buf, 2u);
      }

      v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F448E558];
      v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v5 setClasses:v6 forSelector:sel_feedbackForMapItem_action_ argumentIndex:0 ofReply:0];

      v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v5 setClasses:v7 forSelector:sel_feedbackForContact_action_ argumentIndex:0 ofReply:0];

      v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4478C48];
      v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v8 setClasses:v9 forSelector:sel_addOrUpdateSuggestionEntriesData_sourceNameData_handler_ argumentIndex:0 ofReply:0];

      v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      [v8 setClasses:v10 forSelector:sel_addOrUpdateSuggestionEntriesData_sourceNameData_handler_ argumentIndex:1 ofReply:0];

      v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.maps.destinationd.sources" options:0];
      v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F448E558];
      [v11 setRemoteObjectInterface:v12];

      [v11 setExportedInterface:v8];
      [v11 setExportedObject:self];
      objc_initWeak(&location, self);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __59__MapsSuggestionsRemoteSource__q_openConnectionIfNecessary__block_invoke;
      v19[3] = &unk_1E81F53E8;
      objc_copyWeak(&v20, &location);
      [v11 setInvalidationHandler:v19];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59__MapsSuggestionsRemoteSource__q_openConnectionIfNecessary__block_invoke_205;
      v17[3] = &unk_1E81F53E8;
      objc_copyWeak(&v18, &location);
      [v11 setInterruptionHandler:v17];
      objc_storeStrong((self + 24), v11);
      [v11 resume];
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        uniqueName2 = [self uniqueName];
        *buf = 138412546;
        v23 = uniqueName2;
        v24 = 2080;
        v25 = "openingConnection";
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v15 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "openingConnection", "", buf, 2u);
      }

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  return self != 0;
}

- (void)dealloc
{
  [(MapsSuggestionsRemoteSource *)self _q_closeConnection];
  connection = self->_connection;
  self->_connection = 0;

  queue = self->_queue;
  self->_queue = 0;

  v5.receiver = self;
  v5.super_class = MapsSuggestionsRemoteSource;
  [(MapsSuggestionsRemoteSource *)&v5 dealloc];
}

- (void)_q_closeConnection
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [self uniqueName];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_2_0(&dword_1C5126000, v4, v5, "{MSgDebug} OBJECT{%@} %s BEGIN", v6, v7, v8, v9, v21[0]);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_q_closeConnection", "", v21, 2u);
    }

    [*(self + 24) setInterruptionHandler:0];
    [*(self + 24) setInvalidationHandler:0];
    [*(self + 24) invalidate];
    v11 = *(self + 24);
    *(self + 24) = 0;

    *(self + 40) = 0;
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      uniqueName2 = [self uniqueName];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_2_0(&dword_1C5126000, v14, v15, "{MSgDebug} OBJECT{%@} %s END", v16, v17, v18, v19, v21[0]);
    }

    v20 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v20))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_closeConnection", "", v21, 2u);
    }
  }
}

void __59__MapsSuggestionsRemoteSource__q_openConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MapsSuggestionsRemoteSource__q_openConnectionIfNecessary__block_invoke_203;
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
      v9 = "MapsSuggestionsRemoteSource.m";
      v10 = 1026;
      v11 = 88;
      v12 = 2082;
      v13 = "[MapsSuggestionsRemoteSource _q_openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __59__MapsSuggestionsRemoteSource__q_openConnectionIfNecessary__block_invoke_203(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = WeakRetained[3];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "XPC connection {%@} became invalid", &v7, 0xCu);
    }

    v5 = WeakRetained[3];
    WeakRetained[3] = 0;

    *(WeakRetained + 40) = 0;
  }

  else
  {
    v6 = v2;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsRemoteSource.m";
      v9 = 1026;
      v10 = 90;
      v11 = 2082;
      v12 = "[MapsSuggestionsRemoteSource _q_openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void __59__MapsSuggestionsRemoteSource__q_openConnectionIfNecessary__block_invoke_205(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MapsSuggestionsRemoteSource__q_openConnectionIfNecessary__block_invoke_206;
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
      v9 = "MapsSuggestionsRemoteSource.m";
      v10 = 1026;
      v11 = 98;
      v12 = 2082;
      v13 = "[MapsSuggestionsRemoteSource _q_openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __59__MapsSuggestionsRemoteSource__q_openConnectionIfNecessary__block_invoke_206(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v5 = WeakRetained[3];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "XPC connection {%@} got interrupted", &v6, 0xCu);
    }

    [(MapsSuggestionsRemoteSource *)WeakRetained _q_closeConnection];
  }

  else
  {
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsRemoteSource.m";
      v8 = 1026;
      v9 = 100;
      v10 = 2082;
      v11 = "[MapsSuggestionsRemoteSource _q_openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRemoteSource.m";
      v21 = 1024;
      v22 = 147;
      v23 = 2082;
      v24 = "[MapsSuggestionsRemoteSource initFromResourceDepot:name:]";
      v25 = 2082;
      v26 = "nil == (resourceDepot)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x26u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRemoteSource.m";
      v21 = 1024;
      v22 = 148;
      v23 = 2082;
      v24 = "[MapsSuggestionsRemoteSource initFromResourceDepot:name:]";
      v25 = 2082;
      v26 = "nil == (resourceDepot.oneSourceDelegate)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  oneSourceDelegate2 = [depotCopy oneSourceDelegate];
  v18.receiver = self;
  v18.super_class = MapsSuggestionsRemoteSource;
  v10 = [(MapsSuggestionsBaseSource *)&v18 initWithDelegate:oneSourceDelegate2 name:nameCopy];

  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MapsSuggestionsXPCSourceQueue", v11);
    queue = v10->_queue;
    v10->_queue = v12;
  }

  self = v10;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

void __36__MapsSuggestionsRemoteSource_start__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "start failed with error: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MapsSuggestionsRemoteSource_start__block_invoke_216;
  block[3] = &unk_1E81F53E8;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(v5, block);
  objc_destroyWeak(&v7);
}

void __36__MapsSuggestionsRemoteSource_start__block_invoke_216(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained uniqueName];
      v8 = 138412546;
      v9 = v4;
      v10 = 2080;
      *v11 = "QoS";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v8, 0x16u);
    }

    v5 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v5))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "QoS", "", &v8, 2u);
    }

    v6 = *(WeakRetained + 3);
    *(WeakRetained + 3) = 0;

    *(WeakRetained + 40) = 0;
  }

  else
  {
    v7 = v2;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRemoteSource.m";
      v10 = 1026;
      *v11 = 176;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsRemoteSource start]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfErrorHandler went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void __36__MapsSuggestionsRemoteSource_start__block_invoke_219(uint64_t a1)
{
  *&v21[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRemoteSource *)WeakRetained _q_openConnectionIfNecessary];
    if (*(v3 + 40) == 1)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "WARNING: already started. Doing it again from the same XPC peer might confuse the daemon.", buf, 2u);
      }
    }

    else
    {
      *(v3 + 40) = 1;
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [v3 uniqueName];
        *buf = 138412546;
        v19 = v6;
        v20 = 2080;
        *v21 = "QoS";
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v7 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "QoS", "", buf, 2u);
      }

      v8 = [*(v3 + 3) remoteObjectProxyWithErrorHandler:*(a1 + 40)];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __36__MapsSuggestionsRemoteSource_start__block_invoke_220;
      v15 = &unk_1E81F6140;
      v16 = *(a1 + 32);
      objc_copyWeak(&v17, (a1 + 48));
      [v8 startMonitoringWithHandler:&v12];

      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v3 uniqueName];
        *buf = 138412546;
        v19 = v10;
        v20 = 2080;
        *v21 = "start";
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v11 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "start", "", buf, 2u);
      }

      objc_destroyWeak(&v17);
      v4 = v16;
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsRemoteSource.m";
      v20 = 1026;
      *v21 = 184;
      v21[2] = 2082;
      *&v21[3] = "[MapsSuggestionsRemoteSource start]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __36__MapsSuggestionsRemoteSource_start__block_invoke_220(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MapsSuggestionsRemoteSource_start__block_invoke_2;
  block[3] = &unk_1E81F53E8;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __36__MapsSuggestionsRemoteSource_start__block_invoke_2(uint64_t a1)
{
  *&v9[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRemoteSource *)WeakRetained _q_closeConnection];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v2 uniqueName];
      v6 = 138412546;
      v7 = v5;
      v8 = 2080;
      *v9 = "QoS";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v6, 0x16u);
    }

    v3 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v3))
    {
      LOWORD(v6) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "QoS", "", &v6, 2u);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsRemoteSource.m";
      v8 = 1026;
      *v9 = 201;
      v9[2] = 2082;
      *&v9[3] = "[MapsSuggestionsRemoteSource start]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v10 = uniqueName;
    v11 = 2080;
    v12 = "stop";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v5 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "stop", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MapsSuggestionsRemoteSource_stop__block_invoke;
  block[3] = &unk_1E81F53E8;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __35__MapsSuggestionsRemoteSource_stop__block_invoke(uint64_t a1)
{
  *&v18[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[5])
    {
      *(WeakRetained + 40) = 0;
      [(MapsSuggestionsRemoteSource *)WeakRetained _q_openConnectionIfNecessary];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __35__MapsSuggestionsRemoteSource_stop__block_invoke_222;
      aBlock[3] = &unk_1E81F5438;
      objc_copyWeak(&v14, (a1 + 32));
      v4 = _Block_copy(aBlock);
      v5 = [v3[3] remoteObjectProxyWithErrorHandler:v4];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __35__MapsSuggestionsRemoteSource_stop__block_invoke_223;
      v11[3] = &unk_1E81F53E8;
      objc_copyWeak(&v12, (a1 + 32));
      [v5 stopMonitoringWithHandler:v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "WARNING: already stopped.", buf, 2u);
      }

      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v3 uniqueName];
        *buf = 138412546;
        v16 = v9;
        v17 = 2080;
        *v18 = "stop";
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v10 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "stop", "", buf, 2u);
      }
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "MapsSuggestionsRemoteSource.m";
      v17 = 1026;
      *v18 = 216;
      v18[2] = 2082;
      *&v18[3] = "[MapsSuggestionsRemoteSource stop]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __35__MapsSuggestionsRemoteSource_stop__block_invoke_222(uint64_t a1, void *a2)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "stop failed with error: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = GEOFindOrCreateLog();
  v7 = v6;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [WeakRetained uniqueName];
      v10 = 138412546;
      v11 = v8;
      v12 = 2080;
      *v13 = "stop";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v10, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "stop", "", &v10, 2u);
    }
  }

  else
  {
    v9 = v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRemoteSource.m";
      v12 = 1026;
      *v13 = 230;
      v13[2] = 2082;
      *&v13[3] = "[MapsSuggestionsRemoteSource stop]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfErrorHandler went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

void __35__MapsSuggestionsRemoteSource_stop__block_invoke_223(uint64_t a1)
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
      *v9 = "stop";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v6, 0x16u);
    }

    v5 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v5))
    {
      LOWORD(v6) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "stop", "", &v6, 2u);
    }
  }

  else
  {
    v5 = v2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsRemoteSource.m";
      v8 = 1026;
      *v9 = 235;
      v9[2] = 2082;
      *&v9[3] = "[MapsSuggestionsRemoteSource stop]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MapsSuggestionsRemoteSource_updateSuggestionEntriesWithHandler___block_invoke;
  v9[3] = &unk_1E81F5CB0;
  objc_copyWeak(&v11, &location);
  v5 = handlerCopy;
  v10 = v5;
  [(MapsSuggestionsRemoteSource *)self updateSuggestionEntriesOfType:0 handler:v9];
  v7 = v6;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __66__MapsSuggestionsRemoteSource_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__MapsSuggestionsRemoteSource_updateSuggestionEntriesWithHandler___block_invoke_224;
    block[3] = &unk_1E81F5C38;
    v7 = *(a1 + 32);
    dispatch_async(v4, block);
    v5 = v7;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "MapsSuggestionsRemoteSource.m";
      v10 = 1026;
      v11 = 248;
      v12 = 2082;
      v13 = "[MapsSuggestionsRemoteSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

uint64_t __66__MapsSuggestionsRemoteSource_updateSuggestionEntriesWithHandler___block_invoke_224(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (double)updateSuggestionEntriesOfType:(int64_t)type handler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (type && ![(MapsSuggestionsRemoteSource *)self canProduceEntriesOfType:type])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v7 = NSStringFromMapsSuggestionsEntryType(type);
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
      *buf = 138412546;
      v19 = uniqueName;
      v20 = 2080;
      v21 = "updateSuggestionEntriesOfType:";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesOfType:", "", buf, 2u);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__MapsSuggestionsRemoteSource_updateSuggestionEntriesOfType_handler___block_invoke;
    v14[3] = &unk_1E81F6AB8;
    objc_copyWeak(v17, buf);
    v15 = v7;
    v16 = handlerCopy;
    v17[1] = type;
    v12 = v7;
    dispatch_async(queue, v14);

    objc_destroyWeak(v17);
    objc_destroyWeak(buf);
  }

  return 0.0;
}

void __69__MapsSuggestionsRemoteSource_updateSuggestionEntriesOfType_handler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 40);
    v5 = GEOFindOrCreateLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = [v3 uniqueName];
        v8 = *(a1 + 32);
        v9 = NSStringFromMapsSuggestionsCurrentBestLocation();
        *buf = 138412802;
        v25 = v7;
        v26 = 2112;
        *v27 = v8;
        *&v27[8] = 2112;
        *&v27[10] = v9;
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
      }

      [(MapsSuggestionsRemoteSource *)v3 _q_openConnectionIfNecessary];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__MapsSuggestionsRemoteSource_updateSuggestionEntriesOfType_handler___block_invoke_226;
      aBlock[3] = &unk_1E81F4F70;
      objc_copyWeak(&v23, (a1 + 48));
      v22 = *(a1 + 40);
      v10 = _Block_copy(aBlock);
      v11 = [v3[3] remoteObjectProxyWithErrorHandler:v10];
      v12 = *(a1 + 56);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69__MapsSuggestionsRemoteSource_updateSuggestionEntriesOfType_handler___block_invoke_227;
      v18[3] = &unk_1E81F5CB0;
      objc_copyWeak(&v20, (a1 + 48));
      v19 = *(a1 + 40);
      [v11 forceEarlyUpdateForType:v12 handler:v18];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v23);
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "Cannot update if we haven't been started.", buf, 2u);
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        (*(v14 + 16))();
      }

      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v3 uniqueName];
        *buf = 138412546;
        v25 = v16;
        v26 = 2080;
        *v27 = "updateSuggestionEntriesOfType:";
        _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v17 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesOfType:", "", buf, 2u);
      }
    }
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "MapsSuggestionsRemoteSource.m";
      v26 = 1026;
      *v27 = 269;
      *&v27[4] = 2082;
      *&v27[6] = "[MapsSuggestionsRemoteSource updateSuggestionEntriesOfType:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __69__MapsSuggestionsRemoteSource_updateSuggestionEntriesOfType_handler___block_invoke_226(uint64_t a1, void *a2)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "updateSuggestionEntriesOfType: failed with error: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))();
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [WeakRetained uniqueName];
      v10 = 138412546;
      v11 = v8;
      v12 = 2080;
      *v13 = "updateSuggestionEntriesOfType:";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v10, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesOfType:", "", &v10, 2u);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRemoteSource.m";
      v12 = 1026;
      *v13 = 282;
      v13[2] = 2082;
      *&v13[3] = "[MapsSuggestionsRemoteSource updateSuggestionEntriesOfType:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfErrorHandler went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

void __69__MapsSuggestionsRemoteSource_updateSuggestionEntriesOfType_handler___block_invoke_227(uint64_t a1)
{
  *&v10[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }

    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v7 = 138412546;
      v8 = v5;
      v9 = 2080;
      *v10 = "updateSuggestionEntriesOfType:";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v7, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesOfType:", "", &v7, 2u);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsRemoteSource.m";
      v9 = 1026;
      *v10 = 288;
      v10[2] = 2082;
      *&v10[3] = "[MapsSuggestionsRemoteSource updateSuggestionEntriesOfType:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (BOOL)canProduceEntriesOfType:(int64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  if (type >= 0x1A)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRemoteSource.m";
      v8 = 1024;
      v9 = 343;
      v10 = 2082;
      v11 = "[MapsSuggestionsRemoteSource canProduceEntriesOfType:]";
      v12 = 2082;
      v13 = "YES";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", &v6, 0x26u);
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x3FFFDBEu >> type;
  }

  return v3 & 1;
}

- (BOOL)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  handlerCopy = handler;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v22 = uniqueName;
    v23 = 2080;
    v24 = "removeEntry:behavior:";
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v12 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "removeEntry:behavior:", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__MapsSuggestionsRemoteSource_removeEntry_behavior_handler___block_invoke;
  v17[3] = &unk_1E81F6B08;
  objc_copyWeak(v20, buf);
  v18 = entryCopy;
  v19 = handlerCopy;
  v20[1] = behavior;
  v14 = handlerCopy;
  v15 = entryCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v20);
  objc_destroyWeak(buf);
  return 1;
}

void __60__MapsSuggestionsRemoteSource_removeEntry_behavior_handler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[5] & 1) == 0)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Cannot removeEntry if we haven't been started. Still continuing.", buf, 2u);
      }
    }

    [(MapsSuggestionsRemoteSource *)v3 _q_openConnectionIfNecessary];
    v5 = [*(a1 + 32) data];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__MapsSuggestionsRemoteSource_removeEntry_behavior_handler___block_invoke_230;
    aBlock[3] = &unk_1E81F4F70;
    objc_copyWeak(&v14, (a1 + 48));
    v13 = *(a1 + 40);
    v6 = _Block_copy(aBlock);
    v7 = [v3[3] remoteObjectProxyWithErrorHandler:v6];
    v8 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__MapsSuggestionsRemoteSource_removeEntry_behavior_handler___block_invoke_231;
    v9[3] = &unk_1E81F6AE0;
    v10 = *(a1 + 40);
    objc_copyWeak(&v11, (a1 + 48));
    [v7 removeEntryData:v5 behavior:v8 handler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v14);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "MapsSuggestionsRemoteSource.m";
      v17 = 1026;
      v18 = 354;
      v19 = 2082;
      v20 = "[MapsSuggestionsRemoteSource removeEntry:behavior:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __60__MapsSuggestionsRemoteSource_removeEntry_behavior_handler___block_invoke_230(uint64_t a1, void *a2)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "removeEntry:behavior: failed with error: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))();
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [WeakRetained uniqueName];
      v10 = 138412546;
      v11 = v8;
      v12 = 2080;
      *v13 = "removeEntry:behavior:";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v10, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "removeEntry:behavior:", "", &v10, 2u);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRemoteSource.m";
      v12 = 1026;
      *v13 = 363;
      v13[2] = 2082;
      *&v13[3] = "[MapsSuggestionsRemoteSource removeEntry:behavior:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfErrorHandler went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

void __60__MapsSuggestionsRemoteSource_removeEntry_behavior_handler___block_invoke_231(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = GEOFindOrCreateLog();
  v5 = v4;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [WeakRetained uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "removeEntry:behavior:";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "removeEntry:behavior:", "", &v8, 2u);
    }
  }

  else
  {
    v7 = v4;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRemoteSource.m";
      v10 = 1026;
      *v11 = 370;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsRemoteSource removeEntry:behavior:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (void)feedbackForEntry:(id)entry action:(int64_t)action
{
  v19 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v16 = uniqueName;
    v17 = 2080;
    v18 = "feedbackForEntryData";
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v9 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "feedbackForEntryData", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MapsSuggestionsRemoteSource_feedbackForEntry_action___block_invoke;
  block[3] = &unk_1E81F6B30;
  objc_copyWeak(v14, buf);
  v13 = entryCopy;
  v14[1] = action;
  v11 = entryCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

void __55__MapsSuggestionsRemoteSource_feedbackForEntry_action___block_invoke(uint64_t a1)
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[5] & 1) == 0)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "We haven't been started, but processing feedbackForEntry", buf, 2u);
      }
    }

    [(MapsSuggestionsRemoteSource *)v3 _q_openConnectionIfNecessary];
    v5 = [*(a1 + 32) data];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__MapsSuggestionsRemoteSource_feedbackForEntry_action___block_invoke_233;
    aBlock[3] = &unk_1E81F5438;
    objc_copyWeak(&v12, (a1 + 40));
    v6 = _Block_copy(aBlock);
    v7 = [v3[3] remoteObjectProxyWithErrorHandler:v6];
    [v7 feedbackForEntryData:v5 action:*(a1 + 48)];

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v3 uniqueName];
      *buf = 138412546;
      v14 = v9;
      v15 = 2080;
      *v16 = "feedbackForEntryData";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "feedbackForEntryData", "", buf, 2u);
    }

    objc_destroyWeak(&v12);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsRemoteSource.m";
      v15 = 1026;
      *v16 = 384;
      v16[2] = 2082;
      *&v16[3] = "[MapsSuggestionsRemoteSource feedbackForEntry:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __55__MapsSuggestionsRemoteSource_feedbackForEntry_action___block_invoke_233(uint64_t a1, void *a2)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "feedbackForEntryData failed with error: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = GEOFindOrCreateLog();
  v7 = v6;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [WeakRetained uniqueName];
      v10 = 138412546;
      v11 = v8;
      v12 = 2080;
      *v13 = "feedbackForEntryData";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v10, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "feedbackForEntryData", "", &v10, 2u);
    }
  }

  else
  {
    v9 = v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRemoteSource.m";
      v12 = 1026;
      *v13 = 393;
      v13[2] = 2082;
      *&v13[3] = "[MapsSuggestionsRemoteSource feedbackForEntry:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfErrorHandler went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (void)feedbackForMapItem:(id)item action:(int64_t)action
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v16 = uniqueName;
    v17 = 2080;
    v18 = "feedbackForMapItem";
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v9 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "feedbackForMapItem", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MapsSuggestionsRemoteSource_feedbackForMapItem_action___block_invoke;
  block[3] = &unk_1E81F6B30;
  objc_copyWeak(v14, buf);
  v13 = itemCopy;
  v14[1] = action;
  v11 = itemCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

void __57__MapsSuggestionsRemoteSource_feedbackForMapItem_action___block_invoke(uint64_t a1)
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[5] & 1) == 0)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "We haven't been started, but processing feedbackForMapItem", buf, 2u);
      }
    }

    [(MapsSuggestionsRemoteSource *)v3 _q_openConnectionIfNecessary];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__MapsSuggestionsRemoteSource_feedbackForMapItem_action___block_invoke_235;
    aBlock[3] = &unk_1E81F5438;
    objc_copyWeak(&v12, (a1 + 40));
    v5 = _Block_copy(aBlock);
    v6 = [v3[3] remoteObjectProxyWithErrorHandler:v5];
    [v6 feedbackForMapItem:*(a1 + 32) action:*(a1 + 48)];

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v3 uniqueName];
      *buf = 138412546;
      v14 = v8;
      v15 = 2080;
      *v16 = "feedbackForMapItem";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "feedbackForMapItem", "", buf, 2u);
    }

    objc_destroyWeak(&v12);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsRemoteSource.m";
      v15 = 1026;
      *v16 = 409;
      v16[2] = 2082;
      *&v16[3] = "[MapsSuggestionsRemoteSource feedbackForMapItem:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __57__MapsSuggestionsRemoteSource_feedbackForMapItem_action___block_invoke_235(uint64_t a1, void *a2)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "feedbackForMapItem failed with error: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = GEOFindOrCreateLog();
  v7 = v6;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [WeakRetained uniqueName];
      v10 = 138412546;
      v11 = v8;
      v12 = 2080;
      *v13 = "feedbackForMapItem";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v10, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "feedbackForMapItem", "", &v10, 2u);
    }
  }

  else
  {
    v9 = v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRemoteSource.m";
      v12 = 1026;
      *v13 = 417;
      v13[2] = 2082;
      *&v13[3] = "[MapsSuggestionsRemoteSource feedbackForMapItem:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfErrorHandler went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (void)feedbackForContact:(id)contact action:(int64_t)action
{
  v19 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v16 = uniqueName;
    v17 = 2080;
    v18 = "feedbackForContact";
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v9 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "feedbackForContact", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MapsSuggestionsRemoteSource_feedbackForContact_action___block_invoke;
  block[3] = &unk_1E81F6B30;
  objc_copyWeak(v14, buf);
  v13 = contactCopy;
  v14[1] = action;
  v11 = contactCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

void __57__MapsSuggestionsRemoteSource_feedbackForContact_action___block_invoke(uint64_t a1)
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[5] & 1) == 0)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "We haven't been started, but processing feedbackForContact", buf, 2u);
      }
    }

    [(MapsSuggestionsRemoteSource *)v3 _q_openConnectionIfNecessary];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__MapsSuggestionsRemoteSource_feedbackForContact_action___block_invoke_237;
    aBlock[3] = &unk_1E81F5438;
    objc_copyWeak(&v12, (a1 + 40));
    v5 = _Block_copy(aBlock);
    v6 = [v3[3] remoteObjectProxyWithErrorHandler:v5];
    [v6 feedbackForContact:*(a1 + 32) action:*(a1 + 48)];

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v3 uniqueName];
      *buf = 138412546;
      v14 = v8;
      v15 = 2080;
      *v16 = "feedbackForContact";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "feedbackForContact", "", buf, 2u);
    }

    objc_destroyWeak(&v12);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsRemoteSource.m";
      v15 = 1026;
      *v16 = 433;
      v16[2] = 2082;
      *&v16[3] = "[MapsSuggestionsRemoteSource feedbackForContact:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __57__MapsSuggestionsRemoteSource_feedbackForContact_action___block_invoke_237(uint64_t a1, void *a2)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "feedbackForContact failed with error: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = GEOFindOrCreateLog();
  v7 = v6;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [WeakRetained uniqueName];
      v10 = 138412546;
      v11 = v8;
      v12 = 2080;
      *v13 = "feedbackForContact";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v10, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "feedbackForContact", "", &v10, 2u);
    }
  }

  else
  {
    v9 = v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRemoteSource.m";
      v12 = 1026;
      *v13 = 441;
      v13[2] = 2082;
      *&v13[3] = "[MapsSuggestionsRemoteSource feedbackForContact:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfErrorHandler went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (void)Debug_updateGraph
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v10 = uniqueName;
    v11 = 2080;
    v12 = "Debug_updateGraph";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v5 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Debug_updateGraph", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MapsSuggestionsRemoteSource_Debug_updateGraph__block_invoke;
  block[3] = &unk_1E81F53E8;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __48__MapsSuggestionsRemoteSource_Debug_updateGraph__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRemoteSource *)WeakRetained _q_openConnectionIfNecessary];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__MapsSuggestionsRemoteSource_Debug_updateGraph__block_invoke_239;
    aBlock[3] = &unk_1E81F5438;
    objc_copyWeak(&v10, (a1 + 32));
    v4 = _Block_copy(aBlock);
    v5 = [v3[3] remoteObjectProxyWithErrorHandler:v4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MapsSuggestionsRemoteSource_Debug_updateGraph__block_invoke_240;
    v7[3] = &unk_1E81F5EF0;
    objc_copyWeak(&v8, (a1 + 32));
    [v5 updateGraphWithHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsRemoteSource.m";
      v13 = 1026;
      v14 = 456;
      v15 = 2082;
      v16 = "[MapsSuggestionsRemoteSource Debug_updateGraph]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __48__MapsSuggestionsRemoteSource_Debug_updateGraph__block_invoke_239(uint64_t a1, void *a2)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Debug_updateGraph failed with error: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = GEOFindOrCreateLog();
  v7 = v6;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [WeakRetained uniqueName];
      v10 = 138412546;
      v11 = v8;
      v12 = 2080;
      *v13 = "Debug_updateGraph";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v10, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Debug_updateGraph", "", &v10, 2u);
    }
  }

  else
  {
    v9 = v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRemoteSource.m";
      v12 = 1026;
      *v13 = 461;
      v13[2] = 2082;
      *&v13[3] = "[MapsSuggestionsRemoteSource Debug_updateGraph]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfErrorHandler went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

void __48__MapsSuggestionsRemoteSource_Debug_updateGraph__block_invoke_240(uint64_t a1, char a2)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = GEOFindOrCreateLog();
  v5 = v4;
  if (WeakRetained)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (a2)
    {
      if (v6)
      {
        v7 = [WeakRetained uniqueName];
        v10 = 138412546;
        v11 = v7;
        v12 = 2080;
        *v13 = "Debug_updateGraph";
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v10, 0x16u);
      }

      v8 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v8))
      {
        LOWORD(v10) = 0;
LABEL_14:
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Debug_updateGraph", "", &v10, 2u);
      }
    }

    else
    {
      if (v6)
      {
        v9 = [WeakRetained uniqueName];
        v10 = 138412546;
        v11 = v9;
        v12 = 2080;
        *v13 = "Debug_updateGraph";
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v10, 0x16u);
      }

      v8 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v8))
      {
        LOWORD(v10) = 0;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v8 = v4;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRemoteSource.m";
      v12 = 1026;
      *v13 = 466;
      v13[2] = 2082;
      *&v13[3] = "[MapsSuggestionsRemoteSource Debug_updateGraph]_block_invoke";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (void)addOrUpdateSuggestionEntriesData:(id)data sourceNameData:(id)nameData handler:(id)handler
{
  location[4] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  nameDataCopy = nameData;
  handlerCopy = handler;
  objc_initWeak(location, self);
  v11 = MapsSuggestionsEntriesFromNSData(dataCopy);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__MapsSuggestionsRemoteSource_addOrUpdateSuggestionEntriesData_sourceNameData_handler___block_invoke;
  block[3] = &unk_1E81F5410;
  objc_copyWeak(&v20, location);
  v18 = nameDataCopy;
  v19 = v11;
  v13 = v11;
  dispatch_async(queue, block);

  objc_destroyWeak(&v20);
  if (handlerCopy)
  {
    v14 = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__MapsSuggestionsRemoteSource_addOrUpdateSuggestionEntriesData_sourceNameData_handler___block_invoke_243;
    v15[3] = &unk_1E81F5C38;
    v16 = handlerCopy;
    dispatch_async(v14, v15);
  }

  objc_destroyWeak(location);
}

void __87__MapsSuggestionsRemoteSource_addOrUpdateSuggestionEntriesData_sourceNameData_handler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:*(a1 + 32) encoding:4];
    v4 = [WeakRetained delegate];
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    [v4 addOrUpdateSuggestionEntries:v6 source:v3];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRemoteSource.m";
      v10 = 1026;
      v11 = 488;
      v12 = 2082;
      v13 = "[MapsSuggestionsRemoteSource addOrUpdateSuggestionEntriesData:sourceNameData:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

@end