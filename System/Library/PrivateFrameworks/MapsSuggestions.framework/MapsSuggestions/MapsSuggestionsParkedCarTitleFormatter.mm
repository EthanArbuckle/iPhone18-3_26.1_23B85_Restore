@interface MapsSuggestionsParkedCarTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry distance:(double)distance trafficString:(id)string;
@end

@implementation MapsSuggestionsParkedCarTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry distance:(double)distance trafficString:(id)string
{
  v26 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  stringCopy = string;
  if (!entryCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      distanceCopy = COERCE_DOUBLE("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsParkedCarTitleFormatter.m");
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

  type = [entryCopy type];
  v11 = GEOFindOrCreateLog();
  v12 = v11;
  if (type != 7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      distanceCopy = COERCE_DOUBLE("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsParkedCarTitleFormatter.m");
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
    distanceCopy = distance;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "Parked Car CLLocationDistance: %g", &v18, 0xCu);
  }

  v12 = MapsSuggestionsDistanceString();
  v13 = [entryCopy stringForKey:@"MapsSuggestionsParkedCarNearLocationStringKey"];
  v14 = MapsSuggestionsLocalizedParkedCarAtLocationString(v12, v13);
  v15 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:0 subtitle:v14 includeLockedVersions:0];

LABEL_12:
  return v15;
}

@end