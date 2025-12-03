@interface MapsSuggestionsCommute
- (BOOL)_authorizedForFamiliarRoutes;
- (BOOL)_openConnectionIfNecessary;
- (BOOL)isDeviceInCommuteWindow:(id)window;
- (MapsSuggestionsCommute)initWithResourceDepot:(id)depot triggers:(id)triggers conditions:(id)conditions callbackQueue:(id)queue;
- (NSString)uniqueName;
- (void)_closeConnection;
- (void)_initCloseTimerIfNecessary;
- (void)_scheduleCloseConnection;
- (void)_unscheduleCloseConnection;
- (void)dealloc;
@end

@implementation MapsSuggestionsCommute

- (MapsSuggestionsCommute)initWithResourceDepot:(id)depot triggers:(id)triggers conditions:(id)conditions callbackQueue:(id)queue
{
  v31 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  queueCopy = queue;
  oneRoutine = [depotCopy oneRoutine];

  if (!oneRoutine)
  {
    v19 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446978;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsCommute.m";
    v25 = 1024;
    v26 = 61;
    v27 = 2082;
    v28 = "[MapsSuggestionsCommute initWithResourceDepot:triggers:conditions:callbackQueue:]";
    v29 = 2082;
    v30 = "nil == (resourceDepot.oneRoutine)";
    v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a routine from resourceDepot";
LABEL_18:
    _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x26u);
    goto LABEL_19;
  }

  oneNetworkRequester = [depotCopy oneNetworkRequester];

  if (!oneNetworkRequester)
  {
    v19 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446978;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsCommute.m";
    v25 = 1024;
    v26 = 62;
    v27 = 2082;
    v28 = "[MapsSuggestionsCommute initWithResourceDepot:triggers:conditions:callbackQueue:]";
    v29 = 2082;
    v30 = "nil == (resourceDepot.oneNetworkRequester)";
    v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a networkRequester from resourceDepot";
    goto LABEL_18;
  }

  if (!triggers)
  {
    v19 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446978;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsCommute.m";
    v25 = 1024;
    v26 = 63;
    v27 = 2082;
    v28 = "[MapsSuggestionsCommute initWithResourceDepot:triggers:conditions:callbackQueue:]";
    v29 = 2082;
    v30 = "nil == (triggers)";
    v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a valid list of triggers";
    goto LABEL_18;
  }

  if (!conditions)
  {
    v19 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446978;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsCommute.m";
    v25 = 1024;
    v26 = 64;
    v27 = 2082;
    v28 = "[MapsSuggestionsCommute initWithResourceDepot:triggers:conditions:callbackQueue:]";
    v29 = 2082;
    v30 = "nil == (conditions)";
    v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a valid list of conditions";
    goto LABEL_18;
  }

  if (!queueCopy)
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsCommute.m";
      v25 = 1024;
      v26 = 65;
      v27 = 2082;
      v28 = "[MapsSuggestionsCommute initWithResourceDepot:triggers:conditions:callbackQueue:]";
      v29 = 2082;
      v30 = "nil == (callbackQueue)";
      v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a callbackQueue";
      goto LABEL_18;
    }

LABEL_19:

    v14 = 0;
    goto LABEL_20;
  }

  v22.receiver = self;
  v22.super_class = MapsSuggestionsCommute;
  v14 = [(MapsSuggestionsCommute *)&v22 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("MapsSuggestionsCommuteQueue", v15);
    v17 = *(v14 + 1);
    *(v14 + 1) = v16;

    objc_storeStrong(v14 + 2, queue);
    v18 = *(v14 + 5);
    *(v14 + 5) = 0;

    self = *(v14 + 4);
    *(v14 + 4) = 0;
LABEL_20:
  }

  return v14;
}

- (void)dealloc
{
  [(MapsSuggestionsCommute *)self _unscheduleCloseConnection];
  [(MapsSuggestionsCommute *)self _closeConnection];
  queue = self->_queue;
  self->_queue = 0;

  v4.receiver = self;
  v4.super_class = MapsSuggestionsCommute;
  [(MapsSuggestionsCommute *)&v4 dealloc];
}

- (BOOL)_authorizedForFamiliarRoutes
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v2 = [MEMORY[0x1E69B3730] isAuthorizedForPurpose:2];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Authorized for Familiar Routes? %@", &v6, 0xCu);
  }

  return v2;
}

- (BOOL)isDeviceInCommuteWindow:(id)window
{
  v20 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (windowCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "isDeviceInCommuteWindow?", buf, 2u);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__MapsSuggestionsCommute_isDeviceInCommuteWindow___block_invoke;
    v9[3] = &unk_1E81F5CB0;
    objc_copyWeak(&v11, buf);
    v10 = windowCopy;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsCommute.m";
      v14 = 1024;
      v15 = 108;
      v16 = 2082;
      v17 = "[MapsSuggestionsCommute isDeviceInCommuteWindow:]";
      v18 = 2082;
      v19 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Commute handler cannnot be nil", buf, 0x26u);
    }
  }

  return windowCopy != 0;
}

void __50__MapsSuggestionsCommute_isDeviceInCommuteWindow___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _authorizedForFamiliarRoutes])
    {
      [v3 _openConnectionIfNecessary];
      v4 = [*(v3 + 4) remoteObjectProxy];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __50__MapsSuggestionsCommute_isDeviceInCommuteWindow___block_invoke_2;
      v7[3] = &unk_1E81F5C88;
      objc_copyWeak(&v9, (a1 + 40));
      v8 = *(a1 + 32);
      [v4 commuteStatusFromDOoMEngine:v7];

      [v3 _scheduleCloseConnection];
      objc_destroyWeak(&v9);
    }

    else
    {
      v6 = *(v3 + 2);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__MapsSuggestionsCommute_isDeviceInCommuteWindow___block_invoke_627;
      block[3] = &unk_1E81F5C38;
      v11 = *(a1 + 32);
      dispatch_async(v6, block);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsCommute.m";
      v14 = 1026;
      v15 = 114;
      v16 = 2082;
      v17 = "[MapsSuggestionsCommute isDeviceInCommuteWindow:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __50__MapsSuggestionsCommute_isDeviceInCommuteWindow___block_invoke_627(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  BOOL = GEOConfigGetBOOL();
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A250];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"User not authorized for familiar routes";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [v3 errorWithDomain:v4 code:0 userInfo:v5];
  (*(v1 + 16))(v1, BOOL, 0, 0, v6, 0);
}

void __50__MapsSuggestionsCommute_isDeviceInCommuteWindow___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, double a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = WeakRetained[2];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50__MapsSuggestionsCommute_isDeviceInCommuteWindow___block_invoke_634;
    v19[3] = &unk_1E81F5C60;
    v20 = v11;
    v21 = v12;
    v24[1] = *&a6;
    objc_copyWeak(v24, (a1 + 40));
    v23 = *(a1 + 32);
    v22 = v14;
    dispatch_async(v17, v19);

    objc_destroyWeak(v24);
    v18 = v20;
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v26 = "MapsSuggestionsCommute.m";
      v27 = 1026;
      v28 = 133;
      v29 = 2082;
      v30 = "[MapsSuggestionsCommute isDeviceInCommuteWindow:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __50__MapsSuggestionsCommute_isDeviceInCommuteWindow___block_invoke_634(uint64_t a1)
{
  *&v23[13] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A1B08];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "===================================", &v20, 2u);
  }

  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) startDate];
    v6 = NSStringFromMapsSuggestionsEventTime(v5);
    v7 = [*(a1 + 32) endDate];
    v8 = NSStringFromMapsSuggestionsEventTime(v7);
    v20 = 138412546;
    v21 = *&v6;
    v22 = 2112;
    *v23 = v8;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Commute Window: %@ - %@", &v20, 0x16u);
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 40) preferredName];
    v20 = 138412290;
    v21 = *&v10;
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "Next Destination: %@", &v20, 0xCu);
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 72) / 60.0;
    v20 = 134217984;
    v21 = v12;
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "Travel time: %.0f min", &v20, 0xCu);
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "===================================", &v20, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = COERCE_DOUBLE("MapsSuggestionsCommute.m");
      v22 = 1026;
      *v23 = 140;
      v23[2] = 2082;
      *&v23[3] = "[MapsSuggestionsCommute isDeviceInCommuteWindow:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", &v20, 0x1Cu);
    }

    goto LABEL_19;
  }

  v15 = *(a1 + 56);
  BOOL = GEOConfigGetBOOL();
  if (BOOL)
  {
    v17 = 1;
  }

  else
  {
    v18 = *(a1 + 32);
    v2 = MapsSuggestionsNow();
    v17 = [v18 containsDate:v2];
  }

  v19 = [*(a1 + 40) predictedStartDate];
  (*(v15 + 16))(v15, v17, v19, *(a1 + 40), 0, *(a1 + 48));

  if ((BOOL & 1) == 0)
  {
LABEL_19:
  }
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)_openConnectionIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.navd.commutewindow" options:0];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F448E498];
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    [v4 setClasses:v5 forSelector:sel_commuteStatusFromDOoMEngine_ argumentIndex:0 ofReply:1];

    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    [v4 setClasses:v6 forSelector:sel_commuteStatusFromDOoMEngine_ argumentIndex:1 ofReply:1];

    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    [v4 setClasses:v7 forSelector:sel_commuteStatusFromDOoMEngine_ argumentIndex:3 ofReply:1];

    v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    [v4 setClasses:v8 forSelector:sel_commuteStatusFromDOoMEngine_ argumentIndex:4 ofReply:1];

    [v3 setRemoteObjectInterface:v4];
    [v3 setExportedObject:self];
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke;
    v15[3] = &unk_1E81F53E8;
    objc_copyWeak(&v16, &location);
    [v3 setInvalidationHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_641;
    v13[3] = &unk_1E81F53E8;
    objc_copyWeak(&v14, &location);
    [v3 setInterruptionHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_643;
    v11[3] = &unk_1E81F5438;
    objc_copyWeak(&v12, &location);
    v9 = [v3 remoteObjectProxyWithErrorHandler:v11];
    objc_storeStrong(&self->_connection, v3);
    [v3 resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_640;
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
      v9 = "MapsSuggestionsCommute.m";
      v10 = 1026;
      v11 = 178;
      v12 = 2082;
      v13 = "[MapsSuggestionsCommute _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_640(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = WeakRetained[4];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "XPC connection {%@} became invalid", &v7, 0xCu);
    }

    v5 = WeakRetained[4];
    WeakRetained[4] = 0;

    [WeakRetained _unscheduleCloseConnection];
  }

  else
  {
    v6 = v2;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsCommute.m";
      v9 = 1026;
      v10 = 180;
      v11 = 2082;
      v12 = "[MapsSuggestionsCommute _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_641(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_642;
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
      v9 = "MapsSuggestionsCommute.m";
      v10 = 1026;
      v11 = 188;
      v12 = 2082;
      v13 = "[MapsSuggestionsCommute _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_642(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = WeakRetained[4];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "XPC connection {%@} got interrupted", &v6, 0xCu);
    }

    [WeakRetained _closeConnection];
  }

  else
  {
    v5 = v2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsCommute.m";
      v8 = 1026;
      v9 = 190;
      v10 = 2082;
      v11 = "[MapsSuggestionsCommute _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_643(uint64_t a1, void *a2)
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
    v8[2] = __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_644;
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
      v12 = "MapsSuggestionsCommute.m";
      v13 = 1026;
      v14 = 197;
      v15 = 2082;
      v16 = "[MapsSuggestionsCommute _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsCommute__openConnectionIfNecessary__block_invoke_644(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = WeakRetained[4];
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      *v11 = v6;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "XPC connection {%@} got error: %@", &v8, 0x16u);
    }

    [WeakRetained _closeConnection];
  }

  else
  {
    v7 = v3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsCommute.m";
      v10 = 1026;
      *v11 = 199;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsCommute _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (void)_closeConnection
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsCommute *)self uniqueName];
    v11 = 138412546;
    v12 = uniqueName;
    v13 = 2080;
    v14 = "_closeConnection";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", &v11, 0x16u);
  }

  v5 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_closeConnection", "", &v11, 2u);
  }

  connection = self->_connection;
  if (connection)
  {
    self->_connection = 0;
    v7 = connection;

    [(NSXPCConnection *)v7 setInterruptionHandler:0];
    [(NSXPCConnection *)v7 setInvalidationHandler:0];
    [(NSXPCConnection *)v7 invalidate];
  }

  [(MapsSuggestionsCommute *)self _unscheduleCloseConnection];
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uniqueName2 = [(MapsSuggestionsCommute *)self uniqueName];
    v11 = 138412546;
    v12 = uniqueName2;
    v13 = 2080;
    v14 = "_closeConnection";
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v11, 0x16u);
  }

  v10 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_closeConnection", "", &v11, 2u);
  }
}

- (void)_initCloseTimerIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_closeTimer)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Re-initializing the _closeTimer", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    closeTimer = self->_closeTimer;
    self->_closeTimer = v4;

    dispatch_source_set_timer(self->_closeTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = self->_closeTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __52__MapsSuggestionsCommute__initCloseTimerIfNecessary__block_invoke;
    handler[3] = &unk_1E81F53E8;
    objc_copyWeak(&v8, buf);
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(self->_closeTimer);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __52__MapsSuggestionsCommute__initCloseTimerIfNecessary__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _closeConnection];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsCommute.m";
      v6 = 1026;
      v7 = 250;
      v8 = 2082;
      v9 = "[MapsSuggestionsCommute _initCloseTimerIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_scheduleCloseConnection
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "_scheduleCloseConnection", v10, 2u);
  }

  [(MapsSuggestionsCommute *)self _initCloseTimerIfNecessary];
  GEOConfigGetDouble();
  v5 = v4;
  GEOConfigGetDouble();
  v7 = v6;
  closeTimer = self->_closeTimer;
  v9 = dispatch_time(0, (v5 * 1000000000.0));
  dispatch_source_set_timer(closeTimer, v9, 0xFFFFFFFFFFFFFFFFLL, (v7 * 1000000000.0));
}

- (void)_unscheduleCloseConnection
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "_unscheduleCloseConnection", v6, 2u);
  }

  closeTimer = self->_closeTimer;
  if (closeTimer)
  {
    dispatch_source_set_timer(closeTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_cancel(self->_closeTimer);
    v5 = self->_closeTimer;
    self->_closeTimer = 0;
  }
}

@end