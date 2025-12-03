@interface MapsSuggestionsResumeRouteDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
@end

@implementation MapsSuggestionsResumeRouteDeduper

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v25 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v7 = withEntryCopy;
  if (!entryCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteDeduper.m";
      v19 = 1024;
      v20 = 22;
      v21 = 2082;
      v22 = "[MapsSuggestionsResumeRouteDeduper dedupeByEnrichingEntry:withEntry:]";
      v23 = 2082;
      v24 = "nil == (originalEntry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_12:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!withEntryCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteDeduper.m";
      v19 = 1024;
      v20 = 23;
      v21 = 2082;
      v22 = "[MapsSuggestionsResumeRouteDeduper dedupeByEnrichingEntry:withEntry:]";
      v23 = 2082;
      v24 = "nil == (entry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (!MapsSuggestionsEntriesAreBothOfType(11, withEntryCopy, entryCopy))
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if ([v7 expiresBeforeEntry:entryCopy])
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "originalEntry expires after entry", buf, 2u);
    }

    goto LABEL_19;
  }

  uniqueIdentifier = [v7 uniqueIdentifier];
  uniqueIdentifier2 = [entryCopy uniqueIdentifier];
  v15 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];

  if (!v15)
  {
    [entryCopy replaceByEntry:v7];
LABEL_19:
    v11 = 1;
    goto LABEL_15;
  }

  LOWORD(v16) = 0;
  v11 = 1;
  [entryCopy mergeFromSuggestionEntry:v7 behavior:1 protectTitles:0 protectTitleDecorations:1 protectMapItem:0 protectWeight:0 protectExpiration:v16 protectIcon:?];
  [v7 weight];
  [entryCopy setWeight:?];
LABEL_15:

  return v11;
}

@end