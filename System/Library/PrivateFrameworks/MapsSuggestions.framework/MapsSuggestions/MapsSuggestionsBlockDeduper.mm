@interface MapsSuggestionsBlockDeduper
+ (id)deduperWithBlock:(id)block;
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
- (MapsSuggestionsBlockDeduper)initWithBlock:(id)block;
@end

@implementation MapsSuggestionsBlockDeduper

+ (id)deduperWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[MapsSuggestionsBlockDeduper alloc] initWithBlock:blockCopy];

  return v4;
}

- (MapsSuggestionsBlockDeduper)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsBlockDeduper;
  v5 = [(MapsSuggestionsBlockDeduper *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v21 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v8 = withEntryCopy;
  if (!entryCopy)
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

  if (!withEntryCopy)
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