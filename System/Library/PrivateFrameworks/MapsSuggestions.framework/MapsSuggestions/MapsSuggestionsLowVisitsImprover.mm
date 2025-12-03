@interface MapsSuggestionsLowVisitsImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsLowVisitsImprover

- (BOOL)improveEntry:(id)entry
{
  v19 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLowVisitsImprover.m";
      v13 = 1024;
      v14 = 60;
      v15 = 2082;
      v16 = "[MapsSuggestionsLowVisitsImprover improveEntry:]";
      v17 = 2082;
      v18 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry", &v11, 0x26u);
    }

    goto LABEL_13;
  }

  [entryCopy weight];
  if (v5 > 0.00001)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  type = [v4 type];
  v7 = 0;
  if (type <= 4 && ((1 << type) & 0x16) != 0)
  {
    if ([v4 containsKey:@"MapsSuggestionsCoreRoutineVisitsCountKey"])
    {
      v8 = [v4 integerForKey:@"MapsSuggestionsCoreRoutineVisitsCountKey"];
      if (_visitCountLimit_s_onceToken != -1)
      {
        [MapsSuggestionsLowVisitsImprover improveEntry:];
      }

      if (v8 <= s_lowVisitCountImproverVisitLimit)
      {
        [v4 setInteger:-1 forKey:@"MapsSuggestionsSinkRankKey"];
        [v4 setBoolean:0 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
        v7 = 1;
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

@end