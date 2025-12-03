@interface MapsSuggestionsNoOperationTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
@end

@implementation MapsSuggestionsNoOperationTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v20 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  v7 = etaCopy;
  if (!entryCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsNoOperationTitleFormatter.m";
      v14 = 1024;
      v15 = 22;
      v16 = 2082;
      v17 = "[MapsSuggestionsNoOperationTitleFormatter formatTitlesForEntry:eta:]";
      v18 = 2082;
      v19 = "nil == (entry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x26u);
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  if (!etaCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsNoOperationTitleFormatter.m";
      v14 = 1024;
      v15 = 23;
      v16 = 2082;
      v17 = "[MapsSuggestionsNoOperationTitleFormatter formatTitlesForEntry:eta:]";
      v18 = 2082;
      v19 = "nil == (eta)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

@end