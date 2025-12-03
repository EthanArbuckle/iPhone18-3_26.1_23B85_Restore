@interface MapsSuggestionsAllShortcutsMatcher
- (id)_getShortcuts;
@end

@implementation MapsSuggestionsAllShortcutsMatcher

- (id)_getShortcuts
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->super._hasLoadedShortcuts)
  {
    v3 = [(NSArray *)selfCopy->super._shortcuts copy];
  }

  else
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    objc_initWeak(&location, selfCopy);
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Calling out to MapsSync to fetch all shortcuts", buf, 2u);
    }

    mapsSync = selfCopy->super._mapsSync;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__MapsSuggestionsAllShortcutsMatcher__getShortcuts__block_invoke;
    v11[3] = &unk_1E81F5720;
    objc_copyWeak(&v13, &location);
    v7 = v4;
    v12 = v7;
    if (([(MapsSuggestionsMapsSync *)mapsSync shortcutsFromFavoritesWithHandler:v11]& 1) == 0)
    {
      dispatch_group_leave(v7);
    }

    objc_destroyWeak(&v13);
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(NSArray *)selfCopy->super._shortcuts count];
      *buf = 134217984;
      v16 = v9;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Finished loading %lu shortcuts", buf, 0xCu);
    }

    v3 = [(NSArray *)selfCopy->super._shortcuts copy];
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

void __51__MapsSuggestionsAllShortcutsMatcher__getShortcuts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 24) = 1;
    if (!v7)
    {
      objc_storeStrong(WeakRetained + 1, a2);
      dispatch_group_leave(*(a1 + 32));
      goto LABEL_10;
    }

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Error loading shortcuts: %@", &v11, 0xCu);
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446722;
      v12 = "MapsSuggestionsShortcutMatcher.m";
      v13 = 1026;
      v14 = 124;
      v15 = 2082;
      v16 = "[MapsSuggestionsAllShortcutsMatcher _getShortcuts]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v11, 0x1Cu);
    }
  }

LABEL_10:
}

@end