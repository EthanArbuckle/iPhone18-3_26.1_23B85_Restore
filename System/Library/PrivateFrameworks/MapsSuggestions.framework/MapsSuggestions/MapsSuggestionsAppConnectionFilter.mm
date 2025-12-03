@interface MapsSuggestionsAppConnectionFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsAppConnectionFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v20 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionFilter.m";
      v14 = 1024;
      v15 = 21;
      v16 = 2082;
      v17 = "[MapsSuggestionsAppConnectionFilter shouldKeepEntry:]";
      v18 = 2082;
      v19 = "nil == (entry)";
      v8 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry";
      v9 = v7;
      v10 = 38;
LABEL_13:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v8, &v12, v10);
    }

LABEL_14:

    v6 = 0;
    goto LABEL_17;
  }

  if ([entryCopy type] != 12)
  {
    v6 = 1;
    goto LABEL_17;
  }

  if (([v4 containsKey:@"MapsSuggestionsOriginBundleIDKey"] & 1) == 0)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v8 = "Filtered an AppConnection suggestion entry that did not have an origin bundle ID";
      v9 = v7;
      v10 = 2;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v5 = [v4 stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
  v6 = [v5 caseInsensitiveCompare:@"com.apple.mobilecal"] && objc_msgSend(v5, "caseInsensitiveCompare:", @"com.apple.Maps") && objc_msgSend(v5, "caseInsensitiveCompare:", @"com.apple.springboard") && objc_msgSend(v5, "caseInsensitiveCompare:", @"com.apple.datadetectors.DDActionsService") != 0;

LABEL_17:
  return v6;
}

@end