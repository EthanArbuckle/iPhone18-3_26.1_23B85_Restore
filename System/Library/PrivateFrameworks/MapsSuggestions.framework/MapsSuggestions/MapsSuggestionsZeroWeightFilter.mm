@interface MapsSuggestionsZeroWeightFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsZeroWeightFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v14 = *MEMORY[0x1E69E9840];
  if (entry)
  {
    [entry weight];
    return v3 > 0.0;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsZeroWeightFilter.m";
      v8 = 1024;
      v9 = 21;
      v10 = 2082;
      v11 = "[MapsSuggestionsZeroWeightFilter shouldKeepEntry:]";
      v12 = 2082;
      v13 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", &v6, 0x26u);
    }

    return 0;
  }
}

@end