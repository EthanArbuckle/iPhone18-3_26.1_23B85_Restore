@interface MapsSuggestionsMapsSyncShortcutStorage
- (BOOL)addOrUpdateShortcuts:(id)a3 handler:(id)a4;
- (BOOL)loadAllShortcutsWithHandler:(id)a3;
- (BOOL)moveShortcut:(id)a3 afterShortcut:(id)a4 handler:(id)a5;
- (BOOL)moveShortcut:(id)a3 beforeShortcut:(id)a4 handler:(id)a5;
- (BOOL)moveShortcut:(id)a3 toIndex:(int64_t)a4 handler:(id)a5;
- (BOOL)moveShortcutToBack:(id)a3 handler:(id)a4;
- (BOOL)moveShortcutToFront:(id)a3 handler:(id)a4;
- (BOOL)removeShortcuts:(id)a3 handler:(id)a4;
- (MapsSuggestionsMapsSyncShortcutStorage)init;
- (NSString)uniqueName;
- (void)_loadAllShortcutsWithHandler:(uint64_t)a1;
- (void)setChangeHandler:(id)a3;
- (void)storeDidChange:(id)a3;
@end

@implementation MapsSuggestionsMapsSyncShortcutStorage

- (MapsSuggestionsMapsSyncShortcutStorage)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MapsSuggestionsMapsSyncShortcutStorage;
  v2 = [(MapsSuggestionsMapsSyncShortcutStorage *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MapsSuggestionsMapsSyncShortcutStorage.callbacks", v3);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v4;

    v11[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v6;

    v8 = [MEMORY[0x1E69AE100] sharedStore];
    [v8 subscribe:v2];
  }

  return v2;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)setChangeHandler:(id)a3
{
  v4 = [a3 copy];
  changeHandler = self->_changeHandler;
  self->_changeHandler = v4;
}

- (BOOL)loadAllShortcutsWithHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(MapsSuggestionsMapsSyncShortcutStorage *)self _loadAllShortcutsWithHandler:a3];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v8 = 1024;
      v9 = 84;
      v10 = 2082;
      v11 = "[MapsSuggestionsMapsSyncShortcutStorage loadAllShortcutsWithHandler:]";
      v12 = 2082;
      v13 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", &v6, 0x26u);
    }
  }

  return a3 != 0;
}

void __71__MapsSuggestionsMapsSyncShortcutStorage__loadAllShortcutsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = [MapsSuggestionsShortcut alloc];
        v15 = [(MapsSuggestionsShortcut *)v14 initWithFavoriteItem:v13, v16];
        if (MapsSuggestionsMapsSyncStorageShouldServeShortcut(v15))
        {
          [v7 addObject:v15];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)addOrUpdateShortcuts:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v18 = 1024;
      v19 = 111;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSyncShortcutStorage addOrUpdateShortcuts:handler:]";
      v22 = 2082;
      v23 = "nil == (handler)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!v6)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v18 = 1024;
      v19 = 112;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSyncShortcutStorage addOrUpdateShortcuts:handler:]";
      v22 = 2082;
      v23 = "nil == (shortcuts)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MapsSuggestionsMapsSyncShortcutStorage_addOrUpdateShortcuts_handler___block_invoke;
  block[3] = &unk_1E81F5C38;
  v15 = v7;
  dispatch_async(callbackQueue, block);
  v10 = 1;
  v11 = v15;
LABEL_10:

  return v10;
}

- (BOOL)removeShortcuts:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v18 = 1024;
      v19 = 124;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSyncShortcutStorage removeShortcuts:handler:]";
      v22 = 2082;
      v23 = "nil == (handler)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!v6)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v18 = 1024;
      v19 = 125;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSyncShortcutStorage removeShortcuts:handler:]";
      v22 = 2082;
      v23 = "nil == (shortcuts)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MapsSuggestionsMapsSyncShortcutStorage_removeShortcuts_handler___block_invoke;
  block[3] = &unk_1E81F5C38;
  v15 = v7;
  dispatch_async(callbackQueue, block);
  v10 = 1;
  v11 = v15;
LABEL_10:

  return v10;
}

- (BOOL)moveShortcut:(id)a3 toIndex:(int64_t)a4 handler:(id)a5
{
  v6 = a5;
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MapsSuggestionsMapsSyncShortcutStorage_moveShortcut_toIndex_handler___block_invoke;
  block[3] = &unk_1E81F5C38;
  v11 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);

  return 1;
}

- (BOOL)moveShortcut:(id)a3 afterShortcut:(id)a4 handler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
    v21 = 1024;
    v22 = 146;
    v23 = 2082;
    v24 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcut:afterShortcut:handler:]";
    v25 = 2082;
    v26 = "nil == (handler)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x26u);
    goto LABEL_12;
  }

  if (!v8)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
    v21 = 1024;
    v22 = 147;
    v23 = 2082;
    v24 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcut:afterShortcut:handler:]";
    v25 = 2082;
    v26 = "nil == (shortcut)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
    goto LABEL_11;
  }

  if (!v9)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v21 = 1024;
      v22 = 148;
      v23 = 2082;
      v24 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcut:afterShortcut:handler:]";
      v25 = 2082;
      v26 = "nil == (other)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
      goto LABEL_11;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MapsSuggestionsMapsSyncShortcutStorage_moveShortcut_afterShortcut_handler___block_invoke;
  block[3] = &unk_1E81F5C38;
  v18 = v10;
  dispatch_async(callbackQueue, block);
  v13 = 1;
  v14 = v18;
LABEL_13:

  return v13;
}

- (BOOL)moveShortcut:(id)a3 beforeShortcut:(id)a4 handler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
    v21 = 1024;
    v22 = 160;
    v23 = 2082;
    v24 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcut:beforeShortcut:handler:]";
    v25 = 2082;
    v26 = "nil == (handler)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x26u);
    goto LABEL_12;
  }

  if (!v8)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
    v21 = 1024;
    v22 = 161;
    v23 = 2082;
    v24 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcut:beforeShortcut:handler:]";
    v25 = 2082;
    v26 = "nil == (shortcut)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
    goto LABEL_11;
  }

  if (!v9)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v21 = 1024;
      v22 = 162;
      v23 = 2082;
      v24 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcut:beforeShortcut:handler:]";
      v25 = 2082;
      v26 = "nil == (other)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
      goto LABEL_11;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__MapsSuggestionsMapsSyncShortcutStorage_moveShortcut_beforeShortcut_handler___block_invoke;
  block[3] = &unk_1E81F5C38;
  v18 = v10;
  dispatch_async(callbackQueue, block);
  v13 = 1;
  v14 = v18;
LABEL_13:

  return v13;
}

- (BOOL)moveShortcutToBack:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v18 = 1024;
      v19 = 174;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcutToBack:handler:]";
      v22 = 2082;
      v23 = "nil == (handler)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!v6)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v18 = 1024;
      v19 = 175;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcutToBack:handler:]";
      v22 = 2082;
      v23 = "nil == (shortcut)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MapsSuggestionsMapsSyncShortcutStorage_moveShortcutToBack_handler___block_invoke;
  block[3] = &unk_1E81F5C38;
  v15 = v7;
  dispatch_async(callbackQueue, block);
  v10 = 1;
  v11 = v15;
LABEL_10:

  return v10;
}

- (BOOL)moveShortcutToFront:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v18 = 1024;
      v19 = 187;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcutToFront:handler:]";
      v22 = 2082;
      v23 = "nil == (handler)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!v6)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncShortcutStorage.m";
      v18 = 1024;
      v19 = 188;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSyncShortcutStorage moveShortcutToFront:handler:]";
      v22 = 2082;
      v23 = "nil == (shortcut)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MapsSuggestionsMapsSyncShortcutStorage_moveShortcutToFront_handler___block_invoke;
  block[3] = &unk_1E81F5C38;
  v15 = v7;
  dispatch_async(callbackQueue, block);
  v10 = 1;
  v11 = v15;
LABEL_10:

  return v10;
}

- (void)storeDidChange:(id)a3
{
  objc_initWeak(&location, self);
  callbackQueue = self->_callbackQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MapsSuggestionsMapsSyncShortcutStorage_storeDidChange___block_invoke;
  v5[3] = &unk_1E81F53E8;
  objc_copyWeak(&v6, &location);
  dispatch_async(callbackQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__MapsSuggestionsMapsSyncShortcutStorage_storeDidChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 1);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsMapsSyncShortcutStorage.m";
      v7 = 1026;
      v8 = 202;
      v9 = 2082;
      v10 = "[MapsSuggestionsMapsSyncShortcutStorage storeDidChange:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)_loadAllShortcutsWithHandler:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [objc_alloc(MEMORY[0x1E69AE0F8]) initWithOffset:0 limit:100];
    v5 = [MEMORY[0x1E69AE110] queryPredicateWithFormat:@"version < 2" argumentArray:0];
    v6 = [objc_alloc(MEMORY[0x1E69AE108]) initWithPredicate:v5 sortDescriptors:0 range:v4];
    v7 = objc_alloc_init(MEMORY[0x1E69AE0B0]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__MapsSuggestionsMapsSyncShortcutStorage__loadAllShortcutsWithHandler___block_invoke;
    v8[3] = &unk_1E81F5230;
    v9 = v3;
    [v7 fetchWithOptions:v6 completionHandler:v8];
  }
}

@end