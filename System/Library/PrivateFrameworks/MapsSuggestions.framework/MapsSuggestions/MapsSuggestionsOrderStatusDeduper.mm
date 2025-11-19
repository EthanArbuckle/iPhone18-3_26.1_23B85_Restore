@interface MapsSuggestionsOrderStatusDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
@end

@implementation MapsSuggestionsOrderStatusDeduper

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsOrderStatusDeduper.m";
    v21 = 1024;
    v22 = 22;
    v23 = 2082;
    v24 = "[MapsSuggestionsOrderStatusDeduper dedupeByEnrichingEntry:withEntry:]";
    v25 = 2082;
    v26 = "nil == (originalEntry)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_16:
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, v17, &v19, 0x26u);
    goto LABEL_17;
  }

  if (!v6)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsOrderStatusDeduper.m";
    v21 = 1024;
    v22 = 23;
    v23 = 2082;
    v24 = "[MapsSuggestionsOrderStatusDeduper dedupeByEnrichingEntry:withEntry:]";
    v25 = 2082;
    v26 = "nil == (entry)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
    goto LABEL_16;
  }

  v8 = [v5 uniqueIdentifier];
  v9 = [v8 length];

  if (!v9)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsOrderStatusDeduper.m";
    v21 = 1024;
    v22 = 24;
    v23 = 2082;
    v24 = "[MapsSuggestionsOrderStatusDeduper dedupeByEnrichingEntry:withEntry:]";
    v25 = 2082;
    v26 = "0u == originalEntry.uniqueIdentifier.length";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Every suggestion entry requires a .uniqueIdentifier by contract.";
    goto LABEL_16;
  }

  v10 = [v7 uniqueIdentifier];
  v11 = [v10 length];

  if (!v11)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsOrderStatusDeduper.m";
      v21 = 1024;
      v22 = 25;
      v23 = 2082;
      v24 = "[MapsSuggestionsOrderStatusDeduper dedupeByEnrichingEntry:withEntry:]";
      v25 = 2082;
      v26 = "0u == entry.uniqueIdentifier.length";
      v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Every suggestion entry requires a .uniqueIdentifier by contract.";
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (!MapsSuggestionsEntriesAreBothOfType(23, v5, v7))
  {
    goto LABEL_18;
  }

  v12 = [v5 uniqueIdentifier];
  v13 = [v7 uniqueIdentifier];
  v14 = [v12 isEqualToString:v13];

  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = 1;
  [v5 replaceByEntry:v7 forceDecoratedOverwrites:1];
LABEL_19:

  return v15;
}

@end