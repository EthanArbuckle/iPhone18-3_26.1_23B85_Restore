@interface MapsSuggestionsParkedCarDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
@end

@implementation MapsSuggestionsParkedCarDeduper

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v25 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v7 = withEntryCopy;
  if (!entryCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsParkedCarDeduper.m";
      v19 = 1024;
      v20 = 23;
      v21 = 2082;
      v22 = "[MapsSuggestionsParkedCarDeduper dedupeByEnrichingEntry:withEntry:]";
      v23 = 2082;
      v24 = "nil == (originalEntry)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_13:
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x26u);
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!withEntryCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsParkedCarDeduper.m";
      v19 = 1024;
      v20 = 24;
      v21 = 2082;
      v22 = "[MapsSuggestionsParkedCarDeduper dedupeByEnrichingEntry:withEntry:]";
      v23 = 2082;
      v24 = "nil == (entry)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (!MapsSuggestionsEntriesAreBothOfType(7, withEntryCopy, entryCopy))
  {
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  v8 = [entryCopy BOOLeanForKey:@"MapsSuggestionsRoutineIsBackedByVehicleEventKey"];
  v9 = [v7 BOOLeanForKey:@"MapsSuggestionsRoutineIsBackedByVehicleEventKey"];
  if (v8 && v9)
  {
    v10 = [entryCopy dateForKey:@"MapsSuggestionsWhenItHappenedKey"];
    v11 = [v7 dateForKey:@"MapsSuggestionsWhenItHappenedKey"];
    if (([v10 compare:v11] + 1) <= 1)
    {
      LOWORD(v16) = 257;
      [entryCopy mergeFromSuggestionEntry:v7 behavior:1 protectTitles:0 protectTitleDecorations:1 protectMapItem:0 protectWeight:0 protectExpiration:v16 protectIcon:?];
    }
  }

  else if ((v8 & 1) == 0)
  {
    if (v9)
    {
      LOWORD(v16) = 257;
      [entryCopy mergeFromSuggestionEntry:v7 behavior:1 protectTitles:0 protectTitleDecorations:1 protectMapItem:0 protectWeight:0 protectExpiration:v16 protectIcon:?];
    }

    [entryCopy replaceByEntry:v7];
  }

  v14 = 1;
LABEL_16:

  return v14;
}

@end