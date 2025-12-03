@interface MapsSuggestionsBaseShortcutMatcher
- (BOOL)_hasShortcuts;
- (BOOL)hasShortcutOfType:(int64_t)type;
- (MapsSuggestionsBaseShortcutMatcher)initWithSync:(id)sync matchingDistance:(double)distance;
- (id)_getShortcuts;
- (id)shortcutForEntry:(id)entry;
- (void)loadShortcuts;
@end

@implementation MapsSuggestionsBaseShortcutMatcher

- (MapsSuggestionsBaseShortcutMatcher)initWithSync:(id)sync matchingDistance:(double)distance
{
  syncCopy = sync;
  v13.receiver = self;
  v13.super_class = MapsSuggestionsBaseShortcutMatcher;
  v8 = [(MapsSuggestionsBaseShortcutMatcher *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_matchingDistance = distance;
    objc_storeStrong(&v8->_mapsSync, sync);
    v9->_hasLoadedShortcuts = 0;
    [(MapsSuggestionsMapsSync *)v9->_mapsSync addMapsSyncObserver:v9 forContentType:3];
    v10 = dispatch_queue_create("MapsSuggestionsShortcutMatcherQueue", 0);
    queue = v9->_queue;
    v9->_queue = v10;
  }

  return v9;
}

- (BOOL)_hasShortcuts
{
  _getShortcuts = [(MapsSuggestionsBaseShortcutMatcher *)self _getShortcuts];
  v3 = _getShortcuts;
  if (_getShortcuts)
  {
    v4 = [_getShortcuts count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)shortcutForEntry:(id)entry
{
  v40 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (!entryCopy)
  {
    _getShortcuts = GEOFindOrCreateLog();
    if (os_log_type_enabled(_getShortcuts, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutMatcher.m";
      v34 = 1024;
      v35 = 54;
      v36 = 2082;
      v37 = "[MapsSuggestionsBaseShortcutMatcher shortcutForEntry:]";
      v38 = 2082;
      v39 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, _getShortcuts, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

    goto LABEL_14;
  }

  _getShortcuts = [(MapsSuggestionsBaseShortcutMatcher *)self _getShortcuts];
  if (![(MapsSuggestionsBaseShortcutMatcher *)self _hasShortcuts])
  {
LABEL_14:
    v24 = 0;
    goto LABEL_17;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  _getShortcuts = _getShortcuts;
  v6 = [_getShortcuts countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    obj = _getShortcuts;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        geoMapItem = [v10 geoMapItem];
        v12 = MapsSuggestionsLocationForMapItem(geoMapItem);
        [v12 coordinate];
        v14 = v13;
        v16 = v15;
        geoMapItem2 = [entryCopy geoMapItem];
        v18 = MapsSuggestionsLocationForMapItem(geoMapItem2);
        [v18 coordinate];
        MapsSuggestionsDistanceBetweenCoordinates(v14, v16, v19, v20);
        v22 = v21;
        matchingDistance = self->_matchingDistance;

        if (v22 <= matchingDistance)
        {
          v24 = v10;
          _getShortcuts = obj;
          goto LABEL_16;
        }
      }

      _getShortcuts = obj;
      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_16:

LABEL_17:

  return v24;
}

- (BOOL)hasShortcutOfType:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  _getShortcuts = [(MapsSuggestionsBaseShortcutMatcher *)self _getShortcuts];
  if ([(MapsSuggestionsBaseShortcutMatcher *)self _hasShortcuts])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = _getShortcuts;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v13 + 1) + 8 * i) type] == type)
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_getShortcuts
{
  result = [(MapsSuggestionsBaseShortcutMatcher *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (void)loadShortcuts
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_hasLoadedShortcuts = 0;
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, selfCopy);
  queue = selfCopy->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MapsSuggestionsBaseShortcutMatcher_loadShortcuts__block_invoke;
  v4[3] = &unk_1E81F53E8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__MapsSuggestionsBaseShortcutMatcher_loadShortcuts__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _getShortcuts];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsShortcutMatcher.m";
      v7 = 1026;
      v8 = 97;
      v9 = 2082;
      v10 = "[MapsSuggestionsBaseShortcutMatcher loadShortcuts]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

@end