@interface MapsSuggestionsRealBiomeConnector
- (BOOL)getFindMyStreamsWithHandler:(id)handler;
- (BOOL)getSmartRepliesStreamsWithHandler:(id)handler;
- (BOOL)registerForFindMyUpdatesWithHandler:(id)handler;
- (BOOL)registerForSmartRepliesUpdatesWithHandler:(id)handler;
- (MapsSuggestionsRealBiomeConnector)init;
- (void)unregisterFindMyUpdates;
- (void)unregisterSmartRepliesUpdates;
@end

@implementation MapsSuggestionsRealBiomeConnector

- (MapsSuggestionsRealBiomeConnector)init
{
  v12.receiver = self;
  v12.super_class = MapsSuggestionsRealBiomeConnector;
  v2 = [(MapsSuggestionsRealBiomeConnector *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MapsSuggestionsRealBiomeConnector", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    GEOConfigGetDouble();
    v2->_lookbackDuration = v6;
    v2->_maxEvents = GEOConfigGetInteger();
    v7 = [objc_alloc(MEMORY[0x1E698F258]) initWithIdentifier:@"com.apple.maps.destinationd_smartReplies" targetQueue:v2->_queue];
    smartRepliesScheduler = v2->_smartRepliesScheduler;
    v2->_smartRepliesScheduler = v7;

    v9 = [objc_alloc(MEMORY[0x1E698F258]) initWithIdentifier:@"com.apple.maps.destinationd_findMy" targetQueue:v2->_queue];
    findMyScheduler = v2->_findMyScheduler;
    v2->_findMyScheduler = v9;
  }

  return v2;
}

- (BOOL)getSmartRepliesStreamsWithHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (handlerCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Querying Biome+SmartReplies for events", buf, 2u);
    }

    v7 = MapsSuggestionsNowWithOffset(-self->_lookbackDuration);
    v8 = MapsSuggestionsNow();
    v9 = self->_maxEvents & ~(self->_maxEvents >> 63);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__11;
    *&buf[32] = __Block_byref_object_dispose__11;
    v20 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__MapsSuggestionsRealBiomeConnector_getSmartRepliesStreamsWithHandler___block_invoke;
    block[3] = &unk_1E81F7160;
    v14 = v7;
    v15 = v8;
    v17 = buf;
    v18 = v9;
    v16 = handlerCopy;
    v11 = v8;
    v6 = v7;
    dispatch_async(queue, block);

    _Block_object_dispose(buf, 8);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealBiomeConnector.m";
    *&buf[12] = 1024;
    *&buf[14] = 69;
    *&buf[18] = 2082;
    *&buf[20] = "[MapsSuggestionsRealBiomeConnector getSmartRepliesStreamsWithHandler:]";
    *&buf[28] = 2082;
    *&buf[30] = "nil == (handler)";
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Handler cannot be nil", buf, 0x26u);
  }

  return handlerCopy != 0;
}

void __71__MapsSuggestionsRealBiomeConnector_getSmartRepliesStreamsWithHandler___block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = BiomeLibrary();
  v3 = [v2 Maps];
  v4 = [v3 Suggestions];
  v5 = [v4 RecentConversationsIntent];

  v6 = [objc_alloc(MEMORY[0x1E698F2D0]) initWithStartDate:a1[4] endDate:a1[5] maxEvents:a1[8] lastN:0 reversed:0];
  v7 = [v5 publisherWithOptions:v6];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v7 filterWithIsIncluded:&__block_literal_global_20];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__MapsSuggestionsRealBiomeConnector_getSmartRepliesStreamsWithHandler___block_invoke_3;
  v21[3] = &unk_1E81F7110;
  v21[4] = a1[7];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __71__MapsSuggestionsRealBiomeConnector_getSmartRepliesStreamsWithHandler___block_invoke_19;
  v19 = &unk_1E81F7138;
  v10 = v8;
  v20 = v10;
  v11 = [v9 sinkWithCompletion:v21 receiveInput:&v16];

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v10 count];
    *buf = 134217984;
    v23 = v13;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_INFO, "Sending %lu SmartReplies Streams", buf, 0xCu);
  }

  v14 = a1[6];
  v15 = [v10 copy];
  (*(v14 + 16))(v14, v15, *(*(a1[7] + 8) + 40));
}

BOOL __71__MapsSuggestionsRealBiomeConnector_getSmartRepliesStreamsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 actionType] == 18;

  return v3;
}

void __71__MapsSuggestionsRealBiomeConnector_getSmartRepliesStreamsWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 32) + 8) + 40);
    }

    v8 = [v3 error];
    v9 = [v8 copy];
    [v4 addObject:v9];

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 error];
      v12 = [v11 localizedDescription];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Error while processing Stream: %@", &v13, 0xCu);
    }
  }
}

void __71__MapsSuggestionsRealBiomeConnector_getSmartRepliesStreamsWithHandler___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v3 = v8;
    if (isKindOfClass)
    {
      v6 = *(a1 + 32);
      v7 = [v8 eventBody];
      [v6 addObject:v7];

      v3 = v8;
    }
  }
}

- (BOOL)registerForSmartRepliesUpdatesWithHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = BiomeLibrary();
    maps = [v5 Maps];
    suggestions = [maps Suggestions];
    recentConversationsIntent = [suggestions RecentConversationsIntent];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__11;
    *&buf[32] = __Block_byref_object_dispose__11;
    v19 = 0;
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__MapsSuggestionsRealBiomeConnector_registerForSmartRepliesUpdatesWithHandler___block_invoke;
    block[3] = &unk_1E81F71B0;
    objc_copyWeak(&v16, &location);
    v13 = recentConversationsIntent;
    v14 = handlerCopy;
    v15 = buf;
    v10 = recentConversationsIntent;
    dispatch_async(queue, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealBiomeConnector.m";
      *&buf[12] = 1024;
      *&buf[14] = 110;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRealBiomeConnector registerForSmartRepliesUpdatesWithHandler:]";
      *&buf[28] = 2082;
      *&buf[30] = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Handler cannot be nil", buf, 0x26u);
    }
  }

  return handlerCopy != 0;
}

void __79__MapsSuggestionsRealBiomeConnector_registerForSmartRepliesUpdatesWithHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 40) copy];
    v4 = WeakRetained[7];
    WeakRetained[7] = v3;

    if (!WeakRetained[6])
    {
      v5 = [*(a1 + 32) DSLPublisher];
      v6 = [v5 subscribeOn:WeakRetained[5]];
      v7 = [v6 filterWithIsIncluded:&__block_literal_global_24_0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __79__MapsSuggestionsRealBiomeConnector_registerForSmartRepliesUpdatesWithHandler___block_invoke_2;
      v13[3] = &unk_1E81F7110;
      v13[4] = *(a1 + 48);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __79__MapsSuggestionsRealBiomeConnector_registerForSmartRepliesUpdatesWithHandler___block_invoke_25;
      v11[3] = &unk_1E81F7188;
      objc_copyWeak(&v12, (a1 + 56));
      v11[4] = *(a1 + 48);
      v8 = [v7 sinkWithCompletion:v13 receiveInput:v11];
      v9 = WeakRetained[6];
      WeakRetained[6] = v8;

      objc_destroyWeak(&v12);
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "MapsSuggestionsRealBiomeConnector.m";
      v16 = 1026;
      v17 = 117;
      v18 = 2082;
      v19 = "[MapsSuggestionsRealBiomeConnector registerForSmartRepliesUpdatesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

BOOL __79__MapsSuggestionsRealBiomeConnector_registerForSmartRepliesUpdatesWithHandler___block_invoke_22(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 actionType] == 18;

  return v3;
}

void __79__MapsSuggestionsRealBiomeConnector_registerForSmartRepliesUpdatesWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 32) + 8) + 40);
    }

    v8 = [v3 error];
    v9 = [v8 copy];
    [v4 addObject:v9];

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 error];
      v12 = [v11 localizedDescription];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Error while processing Stream: %@", &v13, 0xCu);
    }
  }
}

void __79__MapsSuggestionsRealBiomeConnector_registerForSmartRepliesUpdatesWithHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsRealBiomeConnector.m";
      v13 = 1026;
      v14 = 128;
      v15 = 2082;
      v16 = "[MapsSuggestionsRealBiomeConnector registerForSmartRepliesUpdatesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }

    v8 = v9;
    goto LABEL_8;
  }

  if (v3)
  {
    v5 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = WeakRetained[7];
      v8 = [v3 eventBody];
      v10 = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      (*(v7 + 16))(v7, v9, *(*(*(a1 + 32) + 8) + 40));
LABEL_8:
    }
  }
}

- (void)unregisterSmartRepliesUpdates
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MapsSuggestionsRealBiomeConnector_unregisterSmartRepliesUpdates__block_invoke;
  block[3] = &unk_1E81F6168;
  block[4] = self;
  dispatch_sync(queue, block);
}

void *__66__MapsSuggestionsRealBiomeConnector_unregisterSmartRepliesUpdates__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

- (BOOL)getFindMyStreamsWithHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = MapsSuggestionsNowWithOffset(-self->_lookbackDuration);
    v6 = MapsSuggestionsNow();
    maxEvents = self->_maxEvents;
    *v21 = 0;
    *&v21[8] = v21;
    *&v21[16] = 0x3032000000;
    *&v21[24] = __Block_byref_object_copy__11;
    *&v21[32] = __Block_byref_object_dispose__11;
    v22 = 0;
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Querying Biome+FindMy for events", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__MapsSuggestionsRealBiomeConnector_getFindMyStreamsWithHandler___block_invoke;
    block[3] = &unk_1E81F7160;
    v15 = v5;
    v16 = v6;
    v18 = v21;
    v19 = maxEvents & ~(maxEvents >> 63);
    v17 = handlerCopy;
    v10 = v6;
    v11 = v5;
    dispatch_async(queue, block);

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v21 = 136446978;
      *&v21[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealBiomeConnector.m";
      *&v21[12] = 1024;
      *&v21[14] = 151;
      *&v21[18] = 2082;
      *&v21[20] = "[MapsSuggestionsRealBiomeConnector getFindMyStreamsWithHandler:]";
      *&v21[28] = 2082;
      *&v21[30] = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Handler cannot be nil", v21, 0x26u);
    }
  }

  return handlerCopy != 0;
}

void __65__MapsSuggestionsRealBiomeConnector_getFindMyStreamsWithHandler___block_invoke(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = BiomeLibrary();
  v3 = [v2 FindMy];
  v4 = [v3 ContactActivity];

  v5 = [objc_alloc(MEMORY[0x1E698F2D0]) initWithStartDate:a1[4] endDate:a1[5] maxEvents:a1[8] lastN:0 reversed:0];
  v6 = [v4 publisherWithOptions:v5];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [v6 filterWithIsIncluded:&__block_literal_global_28_0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__MapsSuggestionsRealBiomeConnector_getFindMyStreamsWithHandler___block_invoke_3;
  v20[3] = &unk_1E81F7110;
  v20[4] = a1[7];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __65__MapsSuggestionsRealBiomeConnector_getFindMyStreamsWithHandler___block_invoke_30;
  v18 = &unk_1E81F7138;
  v9 = v7;
  v19 = v9;
  v10 = [v8 sinkWithCompletion:v20 receiveInput:&v15];

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v9 count];
    *buf = 134217984;
    v22 = v12;
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_INFO, "Sending %lu FindMy Streams", buf, 0xCu);
  }

  v13 = a1[6];
  v14 = [v9 copy];
  (*(v13 + 16))(v13, v14, *(*(a1[7] + 8) + 40));
}

BOOL __65__MapsSuggestionsRealBiomeConnector_getFindMyStreamsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 actionType] != 0;

  return v3;
}

void __65__MapsSuggestionsRealBiomeConnector_getFindMyStreamsWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 32) + 8) + 40);
    }

    v8 = [v3 error];
    v9 = [v8 copy];
    [v4 addObject:v9];

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 error];
      v12 = [v11 localizedDescription];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Error while processing Stream: %@", &v13, 0xCu);
    }
  }
}

void __65__MapsSuggestionsRealBiomeConnector_getFindMyStreamsWithHandler___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v3 = v8;
    if (isKindOfClass)
    {
      v6 = *(a1 + 32);
      v7 = [v8 eventBody];
      [v6 addObject:v7];

      v3 = v8;
    }
  }
}

- (BOOL)registerForFindMyUpdatesWithHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = BiomeLibrary();
    findMy = [v5 FindMy];
    contactActivity = [findMy ContactActivity];

    objc_initWeak(location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MapsSuggestionsRealBiomeConnector_registerForFindMyUpdatesWithHandler___block_invoke;
    block[3] = &unk_1E81F6A90;
    objc_copyWeak(&v15, location);
    v13 = contactActivity;
    v14 = handlerCopy;
    v9 = contactActivity;
    dispatch_async(queue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealBiomeConnector.m";
      v17 = 1024;
      v18 = 192;
      v19 = 2082;
      v20 = "[MapsSuggestionsRealBiomeConnector registerForFindMyUpdatesWithHandler:]";
      v21 = 2082;
      v22 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Handler cannot be nil", location, 0x26u);
    }
  }

  return handlerCopy != 0;
}

void __73__MapsSuggestionsRealBiomeConnector_registerForFindMyUpdatesWithHandler___block_invoke(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[5] copy];
    v4 = WeakRetained[11];
    WeakRetained[11] = v3;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__11;
    v14 = __Block_byref_object_dispose__11;
    v15 = 0;
    if (!WeakRetained[10])
    {
      v5 = [a1[4] DSLPublisher];
      v6 = [v5 subscribeOn:WeakRetained[9]];
      v7 = [v6 filterWithIsIncluded:&__block_literal_global_33];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__MapsSuggestionsRealBiomeConnector_registerForFindMyUpdatesWithHandler___block_invoke_2;
      v12[3] = &unk_1E81F7110;
      v12[4] = buf;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __73__MapsSuggestionsRealBiomeConnector_registerForFindMyUpdatesWithHandler___block_invoke_34;
      v11[3] = &unk_1E81F71D8;
      v11[4] = WeakRetained;
      v11[5] = buf;
      v8 = [v7 sinkWithCompletion:v12 receiveInput:v11];
      v9 = WeakRetained[10];
      WeakRetained[10] = v8;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsRealBiomeConnector.m";
      *&buf[12] = 1026;
      *&buf[14] = 198;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRealBiomeConnector registerForFindMyUpdatesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

BOOL __73__MapsSuggestionsRealBiomeConnector_registerForFindMyUpdatesWithHandler___block_invoke_31(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 actionType] != 0;

  return v3;
}

void __73__MapsSuggestionsRealBiomeConnector_registerForFindMyUpdatesWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 32) + 8) + 40);
    }

    v8 = [v3 error];
    v9 = [v8 copy];
    [v4 addObject:v9];

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 error];
      v12 = [v11 localizedDescription];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Error while processing Stream: %@", &v13, 0xCu);
    }
  }
}

void __73__MapsSuggestionsRealBiomeConnector_registerForFindMyUpdatesWithHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = *(*(a1 + 32) + 88);
      v8 = [v4 eventBody];
      v10[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      (*(v7 + 16))(v7, v9, *(*(*(a1 + 40) + 8) + 40));
    }
  }
}

- (void)unregisterFindMyUpdates
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MapsSuggestionsRealBiomeConnector_unregisterFindMyUpdates__block_invoke;
  block[3] = &unk_1E81F6168;
  block[4] = self;
  dispatch_sync(queue, block);
}

void *__60__MapsSuggestionsRealBiomeConnector_unregisterFindMyUpdates__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

@end