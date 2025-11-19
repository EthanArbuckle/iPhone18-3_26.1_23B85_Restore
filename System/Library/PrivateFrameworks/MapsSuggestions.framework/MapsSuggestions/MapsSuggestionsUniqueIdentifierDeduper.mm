@interface MapsSuggestionsUniqueIdentifierDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
- (MapsSuggestionsUniqueIdentifierDeduper)initWithType:(int64_t)a3;
@end

@implementation MapsSuggestionsUniqueIdentifierDeduper

- (MapsSuggestionsUniqueIdentifierDeduper)initWithType:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = MapsSuggestionsUniqueIdentifierDeduper;
  v4 = [(MapsSuggestionsUniqueIdentifierDeduper *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [objc_opt_class() description];
    v8 = NSStringFromMapsSuggestionsEntryType(v5->_type);
    v9 = [v6 initWithFormat:@"%@_%@", v7, v8];
    name = v5->_name;
    v5->_name = v9;
  }

  return v5;
}

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v17 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136446978;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUniqueIdentifierDeduper.m";
    v23 = 1024;
    v24 = 46;
    v25 = 2082;
    v26 = "[MapsSuggestionsUniqueIdentifierDeduper dedupeByEnrichingEntry:withEntry:]";
    v27 = 2082;
    v28 = "nil == (originalEntry)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_16:
    _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x26u);
    goto LABEL_17;
  }

  if (!v7)
  {
    v17 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136446978;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUniqueIdentifierDeduper.m";
    v23 = 1024;
    v24 = 47;
    v25 = 2082;
    v26 = "[MapsSuggestionsUniqueIdentifierDeduper dedupeByEnrichingEntry:withEntry:]";
    v27 = 2082;
    v28 = "nil == (entry)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
    goto LABEL_16;
  }

  v9 = [v6 uniqueIdentifier];
  v10 = [v9 length];

  if (!v10)
  {
    v17 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136446978;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUniqueIdentifierDeduper.m";
    v23 = 1024;
    v24 = 48;
    v25 = 2082;
    v26 = "[MapsSuggestionsUniqueIdentifierDeduper dedupeByEnrichingEntry:withEntry:]";
    v27 = 2082;
    v28 = "0u == originalEntry.uniqueIdentifier.length";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Every suggestion entry requires a .uniqueIdentifier by contract.";
    goto LABEL_16;
  }

  v11 = [v8 uniqueIdentifier];
  v12 = [v11 length];

  if (!v12)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUniqueIdentifierDeduper.m";
      v23 = 1024;
      v24 = 49;
      v25 = 2082;
      v26 = "[MapsSuggestionsUniqueIdentifierDeduper dedupeByEnrichingEntry:withEntry:]";
      v27 = 2082;
      v28 = "0u == entry.uniqueIdentifier.length";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Every suggestion entry requires a .uniqueIdentifier by contract.";
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if (!MapsSuggestionsEntriesAreBothOfType(self->_type, v6, v8))
  {
    goto LABEL_18;
  }

  v13 = [v6 uniqueIdentifier];
  v14 = [v8 uniqueIdentifier];
  v15 = [v13 isEqualToString:v14];

  if (!v15)
  {
    goto LABEL_18;
  }

  LOWORD(v20) = 256;
  v16 = 1;
  [v6 mergeFromSuggestionEntry:v8 behavior:1 protectTitles:0 protectTitleDecorations:1 protectMapItem:0 protectWeight:0 protectExpiration:v20 protectIcon:?];
LABEL_19:

  return v16;
}

@end