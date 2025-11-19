@interface MapsSuggestionsRecentHistoryDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
@end

@implementation MapsSuggestionsRecentHistoryDeduper

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRecentHistoryDeduper.m";
      v14 = 1024;
      v15 = 22;
      v16 = 2082;
      v17 = "[MapsSuggestionsRecentHistoryDeduper dedupeByEnrichingEntry:withEntry:]";
      v18 = 2082;
      v19 = "nil == (originalEntry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires original suggestion entry";
LABEL_11:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x26u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRecentHistoryDeduper.m";
      v14 = 1024;
      v15 = 23;
      v16 = 2082;
      v17 = "[MapsSuggestionsRecentHistoryDeduper dedupeByEnrichingEntry:withEntry:]";
      v18 = 2082;
      v19 = "nil == (entry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires new suggestion entry";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!MapsSuggestionsEntriesAreBothOfType(5, v6, v5))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (([v7 expiresBeforeEntry:v5] & 1) == 0)
  {
    [v5 replaceByEntry:v7];
  }

  v8 = 1;
LABEL_14:

  return v8;
}

@end