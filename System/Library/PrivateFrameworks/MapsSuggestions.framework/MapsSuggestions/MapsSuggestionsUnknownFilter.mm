@interface MapsSuggestionsUnknownFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsUnknownFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v19 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUnknownFilter.m";
      v13 = 1024;
      v14 = 21;
      v15 = 2082;
      v16 = "[MapsSuggestionsUnknownFilter shouldKeepEntry:]";
      v17 = 2082;
      v18 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", buf, 0x26u);
    }

    goto LABEL_9;
  }

  if (![entryCopy type])
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [v4 description];
    v6 = [v7 initWithFormat:@"Trapped an Unknown SuggestionsEntry: %@", v8];

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

@end