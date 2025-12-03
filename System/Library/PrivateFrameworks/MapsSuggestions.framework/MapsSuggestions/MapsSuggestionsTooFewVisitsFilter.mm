@interface MapsSuggestionsTooFewVisitsFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsTooFewVisitsFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v21 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (entryCopy)
  {
    if (!GEOConfigGetBOOL() || ([entryCopy isShortcut] & 1) != 0)
    {
LABEL_4:
      v4 = 1;
      goto LABEL_11;
    }

    type = [entryCopy type];
    Integer = 0;
    v4 = 1;
    if (type <= 2)
    {
      if (!type)
      {
        goto LABEL_11;
      }

      if (type != 1 && type != 2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (type > 0x19)
      {
        goto LABEL_19;
      }

      if (((1 << type) & 0x3F7FFE8) != 0)
      {
        goto LABEL_11;
      }

      if (type != 4 && type != 19)
      {
        goto LABEL_19;
      }
    }

    Integer = GEOConfigGetInteger();
LABEL_19:
    originatingSourceName = [entryCopy originatingSourceName];
    v10 = [originatingSourceName hasSuffix:@"MapsSuggestionsRoutineSource"];

    if (v10)
    {
      if ([entryCopy containsKey:@"MapsSuggestionsCoreRoutineVisitsCountKey"])
      {
        v11 = [entryCopy numberForKey:@"MapsSuggestionsCoreRoutineVisitsCountKey"];
        v4 = [v11 integerValue] >= Integer;

        goto LABEL_11;
      }

      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412290;
        v14 = entryCopy;
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "Weird that we didn't have a MapsSuggestionsCoreRoutineVisitsCountKey: %@", &v13, 0xCu);
      }
    }

    goto LABEL_4;
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v13 = 136446978;
    v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTooFewVisitsFilter.m";
    v15 = 1024;
    v16 = 24;
    v17 = 2082;
    v18 = "[MapsSuggestionsTooFewVisitsFilter shouldKeepEntry:]";
    v19 = 2082;
    v20 = "nil == (entry)";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v13, 0x26u);
  }

  v4 = 0;
LABEL_11:

  return v4;
}

@end