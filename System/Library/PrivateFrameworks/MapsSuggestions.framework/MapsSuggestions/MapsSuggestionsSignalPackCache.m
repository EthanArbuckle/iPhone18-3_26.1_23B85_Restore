@interface MapsSuggestionsSignalPackCache
- (BOOL)_popRow;
- (BOOL)insertMapItem:(id)a3 signalPack:(id)a4 entry:(id)a5;
- (MapsSuggestionsSignalPackCache)init;
- (id)_containsSignalPackForMapItem:(void *)a1;
- (id)signalPackForMapItem:(id)a3;
- (uint64_t)_count;
- (void)_popRow;
- (void)_removeExpiredEntries;
- (void)_removeObjectsAtIndices:(void *)a1;
@end

@implementation MapsSuggestionsSignalPackCache

- (MapsSuggestionsSignalPackCache)init
{
  v10.receiver = self;
  v10.super_class = MapsSuggestionsSignalPackCache;
  v2 = [(MapsSuggestionsSignalPackCache *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    mapItems = v2->_mapItems;
    v2->_mapItems = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    signalPacks = v2->_signalPacks;
    v2->_signalPacks = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    entries = v2->_entries;
    v2->_entries = v7;
  }

  return v2;
}

- (void)_removeExpiredEntries
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1[3] copy];
    v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__MapsSuggestionsSignalPackCache__removeExpiredEntries__block_invoke;
    v6[3] = &unk_1E81F82F0;
    v4 = v3;
    v7 = v4;
    [v2 enumerateObjectsUsingBlock:v6];
    v5 = [v4 copy];
    [(MapsSuggestionsSignalPackCache *)v1 _removeObjectsAtIndices:v5];

    objc_sync_exit(v1);
  }
}

- (uint64_t)_count
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1[1] count];
  objc_sync_exit(v1);

  return v2;
}

- (BOOL)insertMapItem:(id)a3 signalPack:(id)a4 entry:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v8)
    {
      if (!v10)
      {
        v11 = [MEMORY[0x1E695DFB0] null];
      }

      v12 = self;
      objc_sync_enter(v12);
      v24 = MapsSuggestionsMapItemConvertIfNeeded(v8);

      [(MapsSuggestionsSignalPackCache *)v12 _removeExpiredEntries];
      while (1)
      {
        v13 = [(MapsSuggestionsSignalPackCache *)v12 _count];
        if (v13 < GEOConfigGetInteger())
        {
          break;
        }

        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Popping a row because we hit the limit on the number of entries in the cache", buf, 2u);
        }

        [(MapsSuggestionsSignalPackCache *)v12 _popRow];
      }

      v15 = [(MapsSuggestionsSignalPackCache *)v12 _containsSignalPackForMapItem:v24];
      if (v15)
      {
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v15 unsignedIntegerValue];
          *buf = 134217984;
          v26 = v17;
          _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "Removing an existing mapItem because we are refreshing the cache. Removing index %lu", buf, 0xCu);
        }

        v18 = -[NSMutableArray objectAtIndexedSubscript:](v12->_signalPacks, "objectAtIndexedSubscript:", [v15 unsignedIntegerValue]);
        v19 = [v18 mutableCopy];

        [v9 mergeIntoSignalPack:v19];
        v20 = [v19 copy];

        v21 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:{objc_msgSend(v15, "unsignedIntegerValue")}];
        [(MapsSuggestionsSignalPackCache *)v12 _removeObjectsAtIndices:v21];
      }

      else
      {
        v20 = v9;
      }

      [(NSMutableArray *)v12->_mapItems addObject:v24];
      [(NSMutableArray *)v12->_signalPacks addObject:v20];
      [(NSMutableArray *)v12->_entries addObject:v11];

      objc_sync_exit(v12);
      v22 = 1;
      v8 = v24;
    }

    else
    {
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackCache.m";
        v27 = 1024;
        v28 = 44;
        v29 = 2082;
        v30 = "[MapsSuggestionsSignalPackCache insertMapItem:signalPack:entry:]";
        v31 = 2082;
        v32 = "nil == (mapItem)";
        _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. mapItem cannot be nil", buf, 0x26u);
      }

      v22 = 0;
      v8 = v9;
    }
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackCache.m";
      v27 = 1024;
      v28 = 43;
      v29 = 2082;
      v30 = "[MapsSuggestionsSignalPackCache insertMapItem:signalPack:entry:]";
      v31 = 2082;
      v32 = "nil == (signalPack)";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. signalPack cannot be nil", buf, 0x26u);
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)_popRow
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = [(MapsSuggestionsSignalPackCache *)v1 _count];
  v3 = v2 != 0;
  if (v2)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:0];
    [(MapsSuggestionsSignalPackCache *)v1 _removeObjectsAtIndices:v4];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    [(MapsSuggestionsSignalPackCache *)v6 _popRow];
  }

  objc_sync_exit(v1);

  return v3;
}

- (id)_containsSignalPackForMapItem:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = a1;
      objc_sync_enter(v5);
      v6 = [v5[1] copy];
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = -1;
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __64__MapsSuggestionsSignalPackCache__containsSignalPackForMapItem___block_invoke;
      v12 = &unk_1E81F8318;
      v13 = v4;
      v14 = &v15;
      [v6 enumerateObjectsWithOptions:2 usingBlock:&v9];
      if (v16[3] == -1)
      {
        v7 = 0;
      }

      else
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:{v9, v10, v11, v12}];
      }

      _Block_object_dispose(&v15, 8);
      objc_sync_exit(v5);

      goto LABEL_7;
    }

    [MapsSuggestionsSignalPackCache _containsSignalPackForMapItem:];
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)_removeObjectsAtIndices:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [MapsSuggestionsSignalPackCache _removeObjectsAtIndices:];
      goto LABEL_8;
    }

    v5 = a1;
    objc_sync_enter(v5);
    v6 = [v5[1] count];
    if (v6 == [v5[2] count])
    {
      v7 = [v5[1] count];
      if (v7 == [v5[3] count])
      {
        v8 = [v5[3] count];
        if (v8 == [v5[2] count])
        {
          [v5[1] removeObjectsAtIndexes:v4];
          [v5[2] removeObjectsAtIndexes:v4];
          [v5[3] removeObjectsAtIndexes:v4];
LABEL_7:
          objc_sync_exit(v5);

          goto LABEL_8;
        }

        v11 = GEOFindOrCreateLog();
        [(MapsSuggestionsSignalPackCache *)v11 _removeObjectsAtIndices:?];
      }

      else
      {
        v10 = GEOFindOrCreateLog();
        [(MapsSuggestionsSignalPackCache *)v10 _removeObjectsAtIndices:?];
      }
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      [(MapsSuggestionsSignalPackCache *)v9 _removeObjectsAtIndices:?];
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __55__MapsSuggestionsSignalPackCache__removeExpiredEntries__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 hasExpired])
  {
    [*(a1 + 32) addIndex:a3];
  }
}

uint64_t __64__MapsSuggestionsSignalPackCache__containsSignalPackForMapItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = MapsSuggestionsMapItemsAreEqual(a2, *(a1 + 32), 0, 0, 0);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)signalPackForMapItem:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MapsSuggestionsSignalPackCache *)v5 _containsSignalPackForMapItem:v4];
    v7 = v6;
    if (v6)
    {
      v8 = -[NSMutableArray objectAtIndexedSubscript:](v5->_signalPacks, "objectAtIndexedSubscript:", [v6 unsignedIntegerValue]);
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v4 shortAddress];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "signalPack not found for mapItem %@", &v12, 0xCu);
      }

      v8 = 0;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPackCache.m";
      v14 = 1024;
      v15 = 143;
      v16 = 2082;
      v17 = "[MapsSuggestionsSignalPackCache signalPackForMapItem:]";
      v18 = 2082;
      v19 = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, &v5->super, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. mapItem cannot be nil", &v12, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)_popRow
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_6();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_containsSignalPackForMapItem:.cold.1()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0_6();
    _os_log_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

- (void)_removeObjectsAtIndices:(NSObject *)a1 .cold.1(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9(&dword_1C5126000, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. The number of entries should always be the same as the number of signalPacks", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
}

- (void)_removeObjectsAtIndices:(NSObject *)a1 .cold.2(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9(&dword_1C5126000, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. The number of mapItems should always be the same as the number of entries", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
}

- (void)_removeObjectsAtIndices:(NSObject *)a1 .cold.3(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9(&dword_1C5126000, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. The number of mapItems should always be the same as the number of signalPacks", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
}

- (void)_removeObjectsAtIndices:.cold.4()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0_6();
    _os_log_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

@end