@interface MapsSuggestionsAlreadyThereFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsAlreadyThereFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v17 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (entryCopy)
  {
    type = [entryCopy type];
    if (type > 0x19)
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 136446978;
        v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAlreadyThereFilter.m";
        v11 = 1024;
        v12 = 60;
        v13 = 2082;
        v14 = "[MapsSuggestionsAlreadyThereFilter shouldKeepEntry:]";
        v15 = 2082;
        v16 = "YES";
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", &v9, 0x26u);
      }

      goto LABEL_14;
    }

    if ((1 << type) & 0x1827FF9) == 0 && (((1 << type) & 0x4C0006) == 0 || ([v4 isShortcut]))
    {
LABEL_14:
      LOBYTE(v6) = 1;
      goto LABEL_15;
    }

    LODWORD(v6) = [v4 BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey" is:1] ^ 1;
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAlreadyThereFilter.m";
      v11 = 1024;
      v12 = 21;
      v13 = 2082;
      v14 = "[MapsSuggestionsAlreadyThereFilter shouldKeepEntry:]";
      v15 = 2082;
      v16 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v9, 0x26u);
    }

    LOBYTE(v6) = 0;
  }

LABEL_15:

  return v6;
}

@end