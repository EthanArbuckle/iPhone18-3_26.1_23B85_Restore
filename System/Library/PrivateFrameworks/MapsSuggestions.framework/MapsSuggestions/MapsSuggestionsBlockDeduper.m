@interface MapsSuggestionsBlockDeduper
+ (id)deduperWithBlock:(id)a3;
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
- (MapsSuggestionsBlockDeduper)initWithBlock:(id)a3;
@end

@implementation MapsSuggestionsBlockDeduper

+ (id)deduperWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[MapsSuggestionsBlockDeduper alloc] initWithBlock:v3];

  return v4;
}

- (MapsSuggestionsBlockDeduper)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsBlockDeduper;
  v5 = [(MapsSuggestionsBlockDeduper *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBlockDeduper.m";
      v15 = 1024;
      v16 = 41;
      v17 = 2082;
      v18 = "[MapsSuggestionsBlockDeduper dedupeByEnrichingEntry:withEntry:]";
      v19 = 2082;
      v20 = "nil == (originalEntry)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original entry";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, v11, &v13, 0x26u);
    }

LABEL_9:

    v9 = 0;
    goto LABEL_10;
  }

  if (!v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBlockDeduper.m";
      v15 = 1024;
      v16 = 42;
      v17 = 2082;
      v18 = "[MapsSuggestionsBlockDeduper dedupeByEnrichingEntry:withEntry:]";
      v19 = 2082;
      v20 = "nil == (entry)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a entry";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = (*(self->_block + 2))();
LABEL_10:

  return v9;
}

@end