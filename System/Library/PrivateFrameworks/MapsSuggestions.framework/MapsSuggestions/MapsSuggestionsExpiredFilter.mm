@interface MapsSuggestionsExpiredFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsExpiredFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v20 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (entryCopy)
  {
    expires = [entryCopy expires];

    if (expires)
    {
      expires2 = [v4 expires];
      v7 = MapsSuggestionsIsInThePast(expires2);

      v8 = !v7;
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "This entry did not have an expiration: %@", &v12, 0xCu);
      }

      v8 = 1;
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsExpiredFilter.m";
      v14 = 1024;
      v15 = 21;
      v16 = 2082;
      v17 = "[MapsSuggestionsExpiredFilter shouldKeepEntry:]";
      v18 = 2082;
      v19 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Required suggestion entry", &v12, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

@end