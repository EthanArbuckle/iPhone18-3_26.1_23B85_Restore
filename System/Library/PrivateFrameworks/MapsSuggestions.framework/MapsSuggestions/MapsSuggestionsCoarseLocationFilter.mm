@interface MapsSuggestionsCoarseLocationFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsCoarseLocationFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v18 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (entryCopy)
  {
    type = [entryCopy type];
    if (type > 0x19)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 136446978;
        v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCoarseLocationFilter.m";
        v12 = 1024;
        v13 = 63;
        v14 = 2082;
        v15 = "[MapsSuggestionsCoarseLocationFilter shouldKeepEntry:]";
        v16 = 2082;
        v17 = "YES";
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", &v10, 0x26u);
      }
    }

    else if (((1 << type) & 0x1D7FD69) == 0)
    {
      if (((1 << type) & 0x2200290) != 0)
      {
        LODWORD(v6) = MapsSuggestionsIsInCoarseLocation() ^ 1;
        goto LABEL_12;
      }

      if (MapsSuggestionsIsInCoarseLocation())
      {
        originatingSourceName = [v4 originatingSourceName];
        LODWORD(v6) = [originatingSourceName containsString:@"RoutineSource"] ^ 1;

        goto LABEL_12;
      }
    }

    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCoarseLocationFilter.m";
      v12 = 1024;
      v13 = 22;
      v14 = 2082;
      v15 = "[MapsSuggestionsCoarseLocationFilter shouldKeepEntry:]";
      v16 = 2082;
      v17 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", &v10, 0x26u);
    }

    LOBYTE(v6) = 0;
  }

LABEL_12:

  return v6;
}

@end