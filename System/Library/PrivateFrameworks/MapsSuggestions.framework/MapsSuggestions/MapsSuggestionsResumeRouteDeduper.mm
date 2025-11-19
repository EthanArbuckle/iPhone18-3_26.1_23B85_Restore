@interface MapsSuggestionsResumeRouteDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
@end

@implementation MapsSuggestionsResumeRouteDeduper

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
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

  if (!v6)
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

  if (!MapsSuggestionsEntriesAreBothOfType(11, v6, v5))
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if ([v7 expiresBeforeEntry:v5])
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "originalEntry expires after entry", buf, 2u);
    }

    goto LABEL_19;
  }

  v13 = [v7 uniqueIdentifier];
  v14 = [v5 uniqueIdentifier];
  v15 = [v13 isEqualToString:v14];

  if (!v15)
  {
    [v5 replaceByEntry:v7];
LABEL_19:
    v11 = 1;
    goto LABEL_15;
  }

  LOWORD(v16) = 0;
  v11 = 1;
  [v5 mergeFromSuggestionEntry:v7 behavior:1 protectTitles:0 protectTitleDecorations:1 protectMapItem:0 protectWeight:0 protectExpiration:v16 protectIcon:?];
  [v7 weight];
  [v5 setWeight:?];
LABEL_15:

  return v11;
}

@end