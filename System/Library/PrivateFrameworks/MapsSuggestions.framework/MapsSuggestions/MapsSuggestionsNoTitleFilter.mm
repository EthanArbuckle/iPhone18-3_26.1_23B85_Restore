@interface MapsSuggestionsNoTitleFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsNoTitleFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v20 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsNoTitleFilter.m";
      v14 = 1024;
      v15 = 21;
      v16 = 2082;
      v17 = "[MapsSuggestionsNoTitleFilter shouldKeepEntry:]";
      v18 = 2082;
      v19 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v12, 0x26u);
    }

    goto LABEL_8;
  }

  title = [entryCopy title];
  if (!title || (v6 = title, [v4 title], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, !v8))
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

@end