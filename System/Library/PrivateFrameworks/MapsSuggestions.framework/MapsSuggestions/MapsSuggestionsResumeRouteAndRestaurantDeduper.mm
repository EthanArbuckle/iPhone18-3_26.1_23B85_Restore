@interface MapsSuggestionsResumeRouteAndRestaurantDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
@end

@implementation MapsSuggestionsResumeRouteAndRestaurantDeduper

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v24 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v7 = withEntryCopy;
  if (!entryCopy)
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

  if (!withEntryCopy)
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

  if (!MapsSuggestionsEntriesShouldBeOfOneOfEachType(11, 8, entryCopy, withEntryCopy))
  {
    goto LABEL_18;
  }

  geoMapItem = [entryCopy geoMapItem];
  if (!geoMapItem)
  {
    goto LABEL_19;
  }

  geoMapItem2 = [v7 geoMapItem];

  if (!geoMapItem2 || ([entryCopy geoMapItem], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "geoMapItem"), v11 = objc_claimAutoreleasedReturnValue(), v12 = MapsSuggestionsMapItemsAreEqual(v10, v11, 0, 0, 0), v11, v10, !v12) || (objc_msgSend(entryCopy, "hasMultipleWaypointsLeft") & 1) != 0 || (objc_msgSend(v7, "hasMultipleWaypointsLeft") & 1) != 0)
  {
LABEL_18:
    LOBYTE(geoMapItem) = 0;
    goto LABEL_19;
  }

  if ([entryCopy type] != 8)
  {
    [entryCopy replaceByEntry:v7];
  }

  LOBYTE(geoMapItem) = 1;
LABEL_19:

  return geoMapItem;
}

@end