@interface MapsSuggestionsResumeRouteAndRestaurantDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
@end

@implementation MapsSuggestionsResumeRouteAndRestaurantDeduper

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteAndRestaurantDeduper.m";
      v18 = 1024;
      v19 = 24;
      v20 = 2082;
      v21 = "[MapsSuggestionsResumeRouteAndRestaurantDeduper dedupeByEnrichingEntry:withEntry:]";
      v22 = 2082;
      v23 = "nil == (originalEntry)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_16:
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!v6)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteAndRestaurantDeduper.m";
      v18 = 1024;
      v19 = 25;
      v20 = 2082;
      v21 = "[MapsSuggestionsResumeRouteAndRestaurantDeduper dedupeByEnrichingEntry:withEntry:]";
      v22 = 2082;
      v23 = "nil == (entry)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!MapsSuggestionsEntriesShouldBeOfOneOfEachType(11, 8, v5, v6))
  {
    goto LABEL_18;
  }

  v8 = [v5 geoMapItem];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = [v7 geoMapItem];

  if (!v9 || ([v5 geoMapItem], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "geoMapItem"), v11 = objc_claimAutoreleasedReturnValue(), v12 = MapsSuggestionsMapItemsAreEqual(v10, v11, 0, 0, 0), v11, v10, !v12) || (objc_msgSend(v5, "hasMultipleWaypointsLeft") & 1) != 0 || (objc_msgSend(v7, "hasMultipleWaypointsLeft") & 1) != 0)
  {
LABEL_18:
    LOBYTE(v8) = 0;
    goto LABEL_19;
  }

  if ([v5 type] != 8)
  {
    [v5 replaceByEntry:v7];
  }

  LOBYTE(v8) = 1;
LABEL_19:

  return v8;
}

@end