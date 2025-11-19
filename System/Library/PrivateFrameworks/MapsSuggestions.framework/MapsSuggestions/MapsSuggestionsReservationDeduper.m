@interface MapsSuggestionsReservationDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
@end

@implementation MapsSuggestionsReservationDeduper

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationDeduper.m";
      v56 = 1024;
      v57 = 70;
      v58 = 2082;
      v59 = "[MapsSuggestionsReservationDeduper dedupeByEnrichingEntry:withEntry:]";
      v60 = 2082;
      v61 = "nil == (originalEntry)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_14:
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x26u);
    }

LABEL_15:
    v11 = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (!v6)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationDeduper.m";
      v56 = 1024;
      v57 = 71;
      v58 = 2082;
      v59 = "[MapsSuggestionsReservationDeduper dedupeByEnrichingEntry:withEntry:]";
      v60 = 2082;
      v61 = "nil == (entry)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (([v5 hasMultipleWaypointsLeft] & 1) == 0 && (objc_msgSend(v7, "hasMultipleWaypointsLeft") & 1) == 0 && MapsSuggestionsEntriesAtLeastOneIsOfType(8, v5, v7) && !MapsSuggestionsAtLeastOneEntryIsShortcut(v7, v5))
  {
    ShouldBeOfOneOfEachType = MapsSuggestionsEntriesShouldBeOfOneOfEachType(8, 3, v5, v7);
    v9 = MapsSuggestionsEntriesAreBothOfType(8, v5, v7);
    v10 = v9;
    if ((ShouldBeOfOneOfEachType & 1) != 0 || v9)
    {
      v12 = [v5 stringForKey:@"MapsSuggestionsCoreSuggestionsOpaqueKey"];
      v15 = [v7 stringForKey:@"MapsSuggestionsCoreSuggestionsOpaqueKey"];
      if ([v12 isEqualToString:v15])
      {
        v16 = v5;
        v17 = v7;
LABEL_20:
        v18 = v17;
        if ([v16 type]== 3)
        {
          [v16 replaceByEntry:v18];
        }

        else
        {
          if ([v18 type] == 3 || -[NSObject type](v16, "type") == 8 && (-[NSObject originatingSourceName](v16, "originatingSourceName"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isEqualToString:", @"MapsSuggestionsReservationsSource"), v40, v41))
          {
            v30 = v16;
            v31 = v18;
            v32 = 0;
          }

          else
          {
            v30 = v16;
            v31 = v18;
            v32 = 1;
          }

          [v30 mergeFromSuggestionEntry:v31 behavior:v32];
        }

        v11 = 1;
        goto LABEL_48;
      }

      if (ShouldBeOfOneOfEachType)
      {
        v19 = v5;
        v20 = v7;
        if (-[NSObject containsKey:](v19, "containsKey:", @"MapsSuggestionsScheduledTimeKey") && ([v20 containsKey:@"MapsSuggestionsScheduledTimeKey"] & 1) != 0)
        {
          v21 = [v19 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
          v22 = [v20 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
          v23 = [v21 compare:v22];

          if (v23)
          {
            goto LABEL_42;
          }

          v24 = [v19 geoMapItem];
          if (!v24)
          {
            goto LABEL_42;
          }

          v25 = v24;
          v26 = [v20 geoMapItem];

          if (!v26)
          {
            goto LABEL_42;
          }

          v27 = [v19 geoMapItem];
          v28 = [v20 geoMapItem];
          v29 = MapsSuggestionsMapItemsAreEqual(v27, v28, 1, 0, 0);

          if ((v29 & 1) == 0)
          {
            v19 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "GEOMapItems were not Equal. So cannot dupe entries", buf, 2u);
            }

            goto LABEL_41;
          }

LABEL_58:
          v16 = v19;
          v17 = v20;
          goto LABEL_20;
        }

LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      if (!v10)
      {
        goto LABEL_42;
      }

      v19 = v5;
      v20 = v7;
      if (!-[NSObject containsKey:](v19, "containsKey:", @"MapsSuggestionsScheduledTimeKey") || ([v20 containsKey:@"MapsSuggestionsScheduledTimeKey"] & 1) == 0)
      {
        goto LABEL_40;
      }

      v33 = [v19 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
      v34 = [v20 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
      v35 = [v33 compare:v34];

      if (v35)
      {
LABEL_42:
        v11 = 0;
LABEL_48:

        goto LABEL_16;
      }

      v36 = [v19 title];
      v37 = [v20 title];
      v38 = v37;
      if (v36 == v37)
      {
        v51 = v37;
        v52 = v36;
      }

      else
      {
        v39 = [v19 title];
        v49 = [v20 title];
        v50 = v39;
        if (![v39 isEqualToString:?])
        {
          v53 = 1;
          goto LABEL_55;
        }

        v51 = v38;
        v52 = v36;
      }

      v42 = [v19 subtitle];
      v43 = [v20 subtitle];
      if (v42 == v43)
      {
        v53 = 0;
      }

      else
      {
        v44 = [v19 subtitle];
        v45 = [v20 subtitle];
        v53 = [v44 isEqualToString:v45] ^ 1;
      }

      v38 = v51;
      v36 = v52;
      if (v52 == v51)
      {
LABEL_56:

        v46 = [v19 geoMapItem];
        v47 = [v20 geoMapItem];
        v48 = MapsSuggestionsMapItemsAreEqual(v46, v47, 1, 0, 0);

        if (v53 && !v48)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

LABEL_55:

      goto LABEL_56;
    }
  }

  v11 = 0;
LABEL_17:

  return v11;
}

@end