@interface MapsSuggestionsAppConnectionDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
@end

@implementation MapsSuggestionsAppConnectionDeduper

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v20 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v7 = withEntryCopy;
  if (!entryCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionDeduper.m";
      v14 = 1024;
      v15 = 20;
      v16 = 2082;
      v17 = "[MapsSuggestionsAppConnectionDeduper dedupeByEnrichingEntry:withEntry:]";
      v18 = 2082;
      v19 = "nil == (originalEntry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires original suggestion entry";
LABEL_9:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x26u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!withEntryCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionDeduper.m";
      v14 = 1024;
      v15 = 21;
      v16 = 2082;
      v17 = "[MapsSuggestionsAppConnectionDeduper dedupeByEnrichingEntry:withEntry:]";
      v18 = 2082;
      v19 = "nil == (entry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires new suggestion entry";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (!MapsSuggestionsEntriesAreBothOfType(12, withEntryCopy, entryCopy))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  [entryCopy replaceByEntry:v7];
  v8 = 1;
LABEL_12:

  return v8;
}

@end