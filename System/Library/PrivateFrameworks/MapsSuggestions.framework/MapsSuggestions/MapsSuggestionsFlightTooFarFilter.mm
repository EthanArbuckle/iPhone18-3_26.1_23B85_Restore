@interface MapsSuggestionsFlightTooFarFilter
- (BOOL)shouldKeepEntry:(id)a3;
@end

@implementation MapsSuggestionsFlightTooFarFilter

- (BOOL)shouldKeepEntry:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 type] == 15)
    {
      GEOConfigGetDouble();
      v6 = v5;
      *v11 = 0;
      v7 = !MapsSuggestionsDistanceFromHereToEntry(v4, v11);
      v8 = *v11 <= v6 || v7;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 136446978;
      *&v11[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlightTooFarFilter.mm";
      v12 = 1024;
      v13 = 22;
      v14 = 2082;
      v15 = "[MapsSuggestionsFlightTooFarFilter shouldKeepEntry:]";
      v16 = 2082;
      v17 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Required suggestion entry", v11, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

@end