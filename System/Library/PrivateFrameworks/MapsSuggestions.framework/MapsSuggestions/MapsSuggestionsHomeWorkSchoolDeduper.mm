@interface MapsSuggestionsHomeWorkSchoolDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
@end

@implementation MapsSuggestionsHomeWorkSchoolDeduper

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
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

  if (!v6)
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

  if ([v5 hasMultipleWaypointsLeft] & 1) != 0 || (objc_msgSend(v7, "hasMultipleWaypointsLeft"))
  {
    goto LABEL_21;
  }

  v8 = [v7 type];
  LOBYTE(v9) = 0;
  if (v8 > 0x13 || ((1 << v8) & 0x80006) == 0)
  {
    goto LABEL_22;
  }

  v10 = [v5 type];
  if (v10 != [v7 type])
  {
    goto LABEL_21;
  }

  v9 = [v5 geoMapItem];
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = [v7 geoMapItem];

  if (!v11 || (*v24 = 0, (MapsSuggestionsDistanceBetweenEntries(v5, v7, v24) & 1) == 0) && (v12 = *v24, GEOConfigGetDouble(), v12 > v13))
  {
LABEL_21:
    LOBYTE(v9) = 0;
    goto LABEL_22;
  }

  v14 = [v5 geoMapItem];
  v15 = [v7 geoMapItem];
  v16 = MapsSuggestionsMapItemsAreEqual(v14, v15, 0, 0, 0);

  if (v16)
  {
    goto LABEL_13;
  }

  v20 = [v5 geoMapItem];
  v17 = MapsSuggestionsMapItemShortAddress();

  v21 = [v7 geoMapItem];
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
  LOBYTE(v9) = 1;
  if ((MapsSuggestionsMergeAsShortcut(v5, v7) & 1) == 0)
  {
    [v5 mergeFromSuggestionEntry:v7 behavior:1];
  }

LABEL_22:

  return v9;
}

@end