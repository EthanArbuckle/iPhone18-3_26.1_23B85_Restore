@interface MapsSuggestionsParkedCarTitleFormatter
- (BOOL)formatTitlesForEntry:(id)a3 distance:(double)a4 trafficString:(id)a5;
@end

@implementation MapsSuggestionsParkedCarTitleFormatter

- (BOOL)formatTitlesForEntry:(id)a3 distance:(double)a4 trafficString:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = COERCE_DOUBLE("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsParkedCarTitleFormatter.m");
      v20 = 1024;
      v21 = 24;
      v22 = 2082;
      v23 = "[MapsSuggestionsParkedCarTitleFormatter formatTitlesForEntry:distance:trafficString:]";
      v24 = 2082;
      v25 = "nil == (entry)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, v16, &v18, 0x26u);
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v10 = [v8 type];
  v11 = GEOFindOrCreateLog();
  v12 = v11;
  if (v10 != 7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = COERCE_DOUBLE("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsParkedCarTitleFormatter.m");
      v20 = 1024;
      v21 = 25;
      v22 = 2082;
      v23 = "[MapsSuggestionsParkedCarTitleFormatter formatTitlesForEntry:distance:trafficString:]";
      v24 = 2082;
      v25 = "MapsSuggestionsEntryTypeParkedCar != entry.type";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Needs to be a ParkedCar entry";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    v19 = a4;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "Parked Car CLLocationDistance: %g", &v18, 0xCu);
  }

  v12 = MapsSuggestionsDistanceString();
  v13 = [v8 stringForKey:@"MapsSuggestionsParkedCarNearLocationStringKey"];
  v14 = MapsSuggestionsLocalizedParkedCarAtLocationString(v12, v13);
  v15 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:v8 title:0 subtitle:v14 includeLockedVersions:0];

LABEL_12:
  return v15;
}

@end