@interface MapsSuggestionsNearbyFilter
- (BOOL)shouldKeepEntry:(id)a3;
@end

@implementation MapsSuggestionsNearbyFilter

- (BOOL)shouldKeepEntry:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MapsSuggestionsCurrentBestLocation();
    if (v4)
    {
      v5 = MapsSuggestionsLocationForEntry(v3);
      if (v5)
      {
        [v4 distanceFromLocation:v5];
        v7 = v6;
        [v3 type];
        GEOConfigGetDouble();
        v9 = v8;
        [v4 horizontalAccuracy];
        v11 = v7 >= v9 + v10;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsNearbyFilter.m";
      v16 = 1024;
      v17 = 27;
      v18 = 2082;
      v19 = "[MapsSuggestionsNearbyFilter shouldKeepEntry:]";
      v20 = 2082;
      v21 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v14, 0x26u);
    }

    v11 = 0;
  }

  return v11;
}

@end