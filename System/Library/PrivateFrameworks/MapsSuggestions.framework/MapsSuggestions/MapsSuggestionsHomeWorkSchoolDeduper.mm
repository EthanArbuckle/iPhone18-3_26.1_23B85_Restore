@interface MapsSuggestionsHomeWorkSchoolDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
@end

@implementation MapsSuggestionsHomeWorkSchoolDeduper

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v31 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v7 = withEntryCopy;
  if (!entryCopy)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136446978;
      *&v24[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsHomeWorkSchoolDeduper.m";
      v25 = 1024;
      v26 = 51;
      v27 = 2082;
      v28 = "[MapsSuggestionsHomeWorkSchoolDeduper dedupeByEnrichingEntry:withEntry:]";
      v29 = 2082;
      v30 = "nil == (originalEntry)";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_19:
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, v18, v24, 0x26u);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!withEntryCopy)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136446978;
      *&v24[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsHomeWorkSchoolDeduper.m";
      v25 = 1024;
      v26 = 52;
      v27 = 2082;
      v28 = "[MapsSuggestionsHomeWorkSchoolDeduper dedupeByEnrichingEntry:withEntry:]";
      v29 = 2082;
      v30 = "nil == (entry)";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if ([entryCopy hasMultipleWaypointsLeft] & 1) != 0 || (objc_msgSend(v7, "hasMultipleWaypointsLeft"))
  {
    goto LABEL_21;
  }

  type = [v7 type];
  LOBYTE(geoMapItem) = 0;
  if (type > 0x13 || ((1 << type) & 0x80006) == 0)
  {
    goto LABEL_22;
  }

  type2 = [entryCopy type];
  if (type2 != [v7 type])
  {
    goto LABEL_21;
  }

  geoMapItem = [entryCopy geoMapItem];
  if (!geoMapItem)
  {
    goto LABEL_22;
  }

  geoMapItem2 = [v7 geoMapItem];

  if (!geoMapItem2 || (*v24 = 0, (MapsSuggestionsDistanceBetweenEntries(entryCopy, v7, v24) & 1) == 0) && (v12 = *v24, GEOConfigGetDouble(), v12 > v13))
  {
LABEL_21:
    LOBYTE(geoMapItem) = 0;
    goto LABEL_22;
  }

  geoMapItem3 = [entryCopy geoMapItem];
  geoMapItem4 = [v7 geoMapItem];
  v16 = MapsSuggestionsMapItemsAreEqual(geoMapItem3, geoMapItem4, 0, 0, 0);

  if (v16)
  {
    goto LABEL_13;
  }

  geoMapItem5 = [entryCopy geoMapItem];
  v17 = MapsSuggestionsMapItemShortAddress();

  geoMapItem6 = [v7 geoMapItem];
  v22 = MapsSuggestionsMapItemShortAddress();

  if (!v17 || !v22)
  {

    goto LABEL_20;
  }

  v23 = [v17 isEqualToString:v22];

  if (!v23)
  {
    goto LABEL_21;
  }

LABEL_13:
  LOBYTE(geoMapItem) = 1;
  if ((MapsSuggestionsMergeAsShortcut(entryCopy, v7) & 1) == 0)
  {
    [entryCopy mergeFromSuggestionEntry:v7 behavior:1];
  }

LABEL_22:

  return geoMapItem;
}

@end