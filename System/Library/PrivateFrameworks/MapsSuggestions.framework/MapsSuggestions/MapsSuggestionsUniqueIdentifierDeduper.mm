@interface MapsSuggestionsUniqueIdentifierDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
- (MapsSuggestionsUniqueIdentifierDeduper)initWithType:(int64_t)type;
@end

@implementation MapsSuggestionsUniqueIdentifierDeduper

- (MapsSuggestionsUniqueIdentifierDeduper)initWithType:(int64_t)type
{
  v12.receiver = self;
  v12.super_class = MapsSuggestionsUniqueIdentifierDeduper;
  v4 = [(MapsSuggestionsUniqueIdentifierDeduper *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [objc_opt_class() description];
    v8 = NSStringFromMapsSuggestionsEntryType(v5->_type);
    v9 = [v6 initWithFormat:@"%@_%@", v7, v8];
    name = v5->_name;
    v5->_name = v9;
  }

  return v5;
}

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v29 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v8 = withEntryCopy;
  if (!entryCopy)
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

  if (!withEntryCopy)
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

  uniqueIdentifier = [entryCopy uniqueIdentifier];
  v10 = [uniqueIdentifier length];

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

  uniqueIdentifier2 = [v8 uniqueIdentifier];
  v12 = [uniqueIdentifier2 length];

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

  if (!MapsSuggestionsEntriesAreBothOfType(self->_type, entryCopy, v8))
  {
    goto LABEL_18;
  }

  uniqueIdentifier3 = [entryCopy uniqueIdentifier];
  uniqueIdentifier4 = [v8 uniqueIdentifier];
  v15 = [uniqueIdentifier3 isEqualToString:uniqueIdentifier4];

  if (!v15)
  {
    goto LABEL_18;
  }

  LOWORD(v20) = 256;
  v16 = 1;
  [entryCopy mergeFromSuggestionEntry:v8 behavior:1 protectTitles:0 protectTitleDecorations:1 protectMapItem:0 protectWeight:0 protectExpiration:v20 protectIcon:?];
LABEL_19:

  return v16;
}

@end