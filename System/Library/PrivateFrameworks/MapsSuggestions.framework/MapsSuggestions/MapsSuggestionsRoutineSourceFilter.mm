@interface MapsSuggestionsRoutineSourceFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsRoutineSourceFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v18 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineSourceFilter.m";
      v12 = 1024;
      v13 = 20;
      v14 = 2082;
      v15 = "[MapsSuggestionsRoutineSourceFilter shouldKeepEntry:]";
      v16 = 2082;
      v17 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Required suggestion entry", &v10, 0x26u);
    }

    goto LABEL_11;
  }

  originatingSourceName = [entryCopy originatingSourceName];
  v6 = [originatingSourceName hasSuffix:@"MapsSuggestionsRoutineSource"];

  if (v6 && ([v4 type] == 1 || objc_msgSend(v4, "type") == 2 || objc_msgSend(v4, "type") == 4 && (GEOConfigGetBOOL() & 1) != 0))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

@end