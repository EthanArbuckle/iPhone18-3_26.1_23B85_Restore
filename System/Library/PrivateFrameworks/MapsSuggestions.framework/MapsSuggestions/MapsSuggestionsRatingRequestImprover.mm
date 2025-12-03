@interface MapsSuggestionsRatingRequestImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsRatingRequestImprover

- (BOOL)improveEntry:(id)entry
{
  v22 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (!entryCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRatingRequestImprover.m";
      v16 = 1024;
      v17 = 47;
      v18 = 2082;
      v19 = "[MapsSuggestionsRatingRequestImprover improveEntry:]";
      v20 = 2082;
      v21 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an Entry", &v14, 0x26u);
    }

    goto LABEL_9;
  }

  if ([entryCopy type] != 21)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_14;
  }

  v6 = v5;
  if ([v6 containsKey:@"MapsSuggestionsCoreRoutineLastVisit"])
  {
    v7 = [v6 dateForKey:@"MapsSuggestionsCoreRoutineLastVisit"];
    v8 = MapsSuggestionsSecondsSince(v7);
    v9.n128_f64[0] = v8 + 86400.0 - MapsSuggestionsTimeSinceMidnight();
    if (v9.n128_f64[0] >= 86400.0)
    {
      MapsSuggestionsLocalizedVisitedTimeAgo(v9);
    }

    else
    {
      MapsSuggestionsLocalizedVisitedToday();
    }
    v12 = ;
  }

  else
  {
    v12 = MapsSuggestionsLocalizedSubtitleForRatingRequest();
  }

  v11 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v12 forEntry:v6];
LABEL_14:

  return v11;
}

@end