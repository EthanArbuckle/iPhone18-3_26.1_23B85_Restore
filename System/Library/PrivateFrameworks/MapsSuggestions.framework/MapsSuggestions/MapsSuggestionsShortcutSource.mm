@interface MapsSuggestionsShortcutSource
- (MapsSuggestionsShortcutSource)initWithShortcutManager:(id)a3 delegate:(id)a4 name:(id)a5;
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (void)_renameDuplicateMeCardTypes:(id)a3;
- (void)_treatShortcuts:(void *)a3 error:(void *)a4 handler:;
- (void)_updateSuggestionEntriesWithHandler:(uint64_t)a1;
- (void)meCardReader:(id)a3 didUpdateMeCard:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsShortcutSource

- (void)start
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[MapsSuggestionsShortcutSource start]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
  }

  [(MapsSuggestionsShortcutManager *)self->_shortcutManager registerMeCardObserver:self];
  [(MapsSuggestionsShortcutSource *)self updateSuggestionEntriesWithHandler:0];
}

- (MapsSuggestionsShortcutSource)initWithShortcutManager:(id)a3 delegate:(id)a4 name:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10)
  {
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutSource.m";
      v30 = 1024;
      v31 = 35;
      v32 = 2082;
      v33 = "[MapsSuggestionsShortcutSource initWithShortcutManager:delegate:name:]";
      v34 = 2082;
      v35 = "nil == (delegate)";
      _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source delegate", location, 0x26u);
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutSource.m";
      v30 = 1024;
      v31 = 36;
      v32 = 2082;
      v33 = "[MapsSuggestionsShortcutSource initWithShortcutManager:delegate:name:]";
      v34 = 2082;
      v35 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name", location, 0x26u);
    }

LABEL_11:

    v23 = 0;
    goto LABEL_12;
  }

  v28.receiver = self;
  v28.super_class = MapsSuggestionsShortcutSource;
  v13 = [(MapsSuggestionsBaseSource *)&v28 initWithDelegate:v10 name:v11];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("MapsSuggestionsShortcutSourceQueue", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    objc_storeStrong(&v13->_shortcutManager, a3);
    objc_initWeak(location, v13);
    v17 = [MapsSuggestionsCanKicker alloc];
    GEOConfigGetDouble();
    v19 = v18;
    v20 = v13->_queue;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__MapsSuggestionsShortcutSource_initWithShortcutManager_delegate_name___block_invoke;
    v26[3] = &unk_1E81F53E8;
    objc_copyWeak(&v27, location);
    v21 = [(MapsSuggestionsCanKicker *)v17 initWithName:@"MapsSuggestionsShortcutSourceCanKicker" time:v20 queue:v26 block:v19];
    updateForcer = v13->_updateForcer;
    v13->_updateForcer = v21;

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  self = v13;
  v23 = self;
LABEL_12:

  return v23;
}

void __71__MapsSuggestionsShortcutSource_initWithShortcutManager_delegate_name___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Reloading because of timeout", &v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsShortcutSource *)WeakRetained _updateSuggestionEntriesWithHandler:?];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsShortcutSource.m";
      v8 = 1026;
      v9 = 52;
      v10 = 2082;
      v11 = "[MapsSuggestionsShortcutSource initWithShortcutManager:delegate:name:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (void)_updateSuggestionEntriesWithHandler:(uint64_t)a1
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[MapsSuggestionsShortcutSource _updateSuggestionEntriesWithHandler:]";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    dispatch_assert_queue_V2(*(a1 + 24));
    objc_initWeak(buf, a1);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__MapsSuggestionsShortcutSource__updateSuggestionEntriesWithHandler___block_invoke;
    v6[3] = &unk_1E81F7FF8;
    objc_copyWeak(&v8, buf);
    v7 = v3;
    [v5 readMeCardWithHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (id)initFromResourceDepot:(id)a3 name:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutSource.m";
    v18 = 1024;
    v19 = 62;
    v20 = 2082;
    v21 = "[MapsSuggestionsShortcutSource initFromResourceDepot:name:]";
    v22 = 2082;
    v23 = "nil == (resourceDepot)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    goto LABEL_12;
  }

  v8 = [v6 oneFavorites];

  if (!v8)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutSource.m";
    v18 = 1024;
    v19 = 63;
    v20 = 2082;
    v21 = "[MapsSuggestionsShortcutSource initFromResourceDepot:name:]";
    v22 = 2082;
    v23 = "nil == (resourceDepot.oneFavorites)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Favorites!";
    goto LABEL_11;
  }

  v9 = [v6 oneSourceDelegate];

  if (!v9)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutSource.m";
      v18 = 1024;
      v19 = 64;
      v20 = 2082;
      v21 = "[MapsSuggestionsShortcutSource initFromResourceDepot:name:]";
      v22 = 2082;
      v23 = "nil == (resourceDepot.oneSourceDelegate)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!";
      goto LABEL_11;
    }

LABEL_12:

    v12 = 0;
    goto LABEL_13;
  }

  v10 = [v6 oneFavorites];
  v11 = [v6 oneSourceDelegate];
  self = [(MapsSuggestionsShortcutSource *)self initWithShortcutManager:v10 delegate:v11 name:v7];

  v12 = self;
LABEL_13:

  return v12;
}

- (void)_renameDuplicateMeCardTypes:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = [*(*(&v29 + 1) + 8 * i) type];
        if (v11 == 2)
        {
          ++v7;
        }

        if (v11 == 3)
        {
          ++v8;
        }

        if (v11 == 5)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v5);
    v12 = v7 > 1;
    v13 = v8 > 1;
    v14 = v6 > 1;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v3;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        v21 = [v20 customName];

        if (!v21)
        {
          v22 = [v20 geoMapItem];

          if (v22)
          {
            if ([v20 type] == 2 && v12 || objc_msgSend(v20, "type") == 3 && v13 || objc_msgSend(v20, "type") == 5 && v14)
            {
              v23 = [v20 geoMapItem];
              v24 = MapsSuggestionsMapItemStreetName(v23);
              [v20 setCustomName:v24];
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }
}

void __63__MapsSuggestionsShortcutSource__treatShortcuts_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Treating Shortcut %@", &v9, 0xCu);
  }

  if (([v5 isHidden] & 1) == 0)
  {
    v7 = MapsSuggestionsEntryFromShortcut(v5, a3);
    if (v7)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412546;
        v10 = v5;
        v11 = 1024;
        v12 = a3;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Made Entry out of Shortcut '%@' at pos %u", &v9, 0x12u);
      }

      [*(a1 + 32) addObject:v7];
    }
  }
}

void __69__MapsSuggestionsShortcutSource__updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__MapsSuggestionsShortcutSource__updateSuggestionEntriesWithHandler___block_invoke_162;
    v11[3] = &unk_1E81F6680;
    objc_copyWeak(&v15, (a1 + 40));
    v12 = v5;
    v13 = v6;
    v14 = *(a1 + 32);
    dispatch_async(v9, v11);

    objc_destroyWeak(&v15);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsShortcutSource.m";
      v18 = 1026;
      v19 = 155;
      v20 = 2082;
      v21 = "[MapsSuggestionsShortcutSource _updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __69__MapsSuggestionsShortcutSource__updateSuggestionEntriesWithHandler___block_invoke_162(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    __69__MapsSuggestionsShortcutSource__updateSuggestionEntriesWithHandler___block_invoke_162_cold_1(a1, WeakRetained);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsShortcutSource.m";
      v6 = 1026;
      v7 = 157;
      v8 = 2082;
      v9 = "[MapsSuggestionsShortcutSource _updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)stop
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[MapsSuggestionsShortcutSource stop]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
  }

  [(MapsSuggestionsShortcutManager *)self->_shortcutManager unregisterMeCardObserver:self];
  [(MapsSuggestionsCanKicker *)self->_updateForcer cancel];
}

- (double)updateSuggestionEntriesWithHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[MapsSuggestionsShortcutSource updateSuggestionEntriesWithHandler:]";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__MapsSuggestionsShortcutSource_updateSuggestionEntriesWithHandler___block_invoke;
  v9[3] = &unk_1E81F5CB0;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  return 0.0;
}

void __68__MapsSuggestionsShortcutSource_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsShortcutSource *)WeakRetained _updateSuggestionEntriesWithHandler:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsShortcutSource.m";
      v7 = 1026;
      v8 = 196;
      v9 = 2082;
      v10 = "[MapsSuggestionsShortcutSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)meCardReader:(id)a3 didUpdateMeCard:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v6 uniqueName];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Reloading because of changes from %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MapsSuggestionsShortcutSource_meCardReader_didUpdateMeCard___block_invoke;
  v12[3] = &unk_1E81F4F48;
  objc_copyWeak(&v14, buf);
  v13 = v7;
  v11 = v7;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __62__MapsSuggestionsShortcutSource_meCardReader_didUpdateMeCard___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    __62__MapsSuggestionsShortcutSource_meCardReader_didUpdateMeCard___block_invoke_cold_1(a1, WeakRetained);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsShortcutSource.m";
      v6 = 1026;
      v7 = 224;
      v8 = 2082;
      v9 = "[MapsSuggestionsShortcutSource meCardReader:didUpdateMeCard:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_treatShortcuts:(void *)a3 error:(void *)a4 handler:
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *v20 = "[MapsSuggestionsShortcutSource _treatShortcuts:error:handler:]";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    dispatch_assert_queue_V2(*(a1 + 24));
    [*(a1 + 40) kickCanBySameTime];
    if (!v7 || v8)
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v20 = v8;
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "Error getting Shortcuts: %@", buf, 0xCu);
      }

      [a1 addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
      if (v9)
      {
        v9[2](v9);
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [v7 count];
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        v20[0] = v12;
        LOWORD(v20[1]) = 2112;
        *(&v20[1] + 2) = v7;
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "Received %u Shortcuts: %@", buf, 0x12u);
      }

      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
      [a1 _renameDuplicateMeCardTypes:v7];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __63__MapsSuggestionsShortcutSource__treatShortcuts_error_handler___block_invoke;
      v17[3] = &unk_1E81F7FD0;
      v15 = v14;
      v18 = v15;
      [v7 enumerateObjectsUsingBlock:v17];
      [a1 addOrUpdateMySuggestionEntries:v15];
      if (v9)
      {
        v9[2](v9);
      }

      objc_autoreleasePoolPop(v11);
    }
  }
}

void __69__MapsSuggestionsShortcutSource__updateSuggestionEntriesWithHandler___block_invoke_162_cold_1(id *a1, uint64_t a2)
{
  v4 = [a1[4] shortcutsForAll];
  [(MapsSuggestionsShortcutSource *)a2 _treatShortcuts:v4 error:a1[5] handler:a1[6]];
}

void __62__MapsSuggestionsShortcutSource_meCardReader_didUpdateMeCard___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) shortcutsForAll];
  [(MapsSuggestionsShortcutSource *)a2 _treatShortcuts:v3 error:0 handler:0];
}

@end