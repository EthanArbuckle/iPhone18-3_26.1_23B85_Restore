@interface MapsSuggestionsDeletedFilter
- (BOOL)shouldKeepEntry:(id)a3;
@end

@implementation MapsSuggestionsDeletedFilter

- (BOOL)shouldKeepEntry:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 containsKey:@"MapsSuggestionsIsSuppressedKey"])
    {
      LODWORD(v5) = [v4 BOOLeanForKey:@"MapsSuggestionsIsSuppressedKey" is:1] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDeletedFilter.m";
      v9 = 1024;
      v10 = 21;
      v11 = 2082;
      v12 = "[MapsSuggestionsDeletedFilter shouldKeepEntry:]";
      v13 = 2082;
      v14 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v7, 0x26u);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

@end