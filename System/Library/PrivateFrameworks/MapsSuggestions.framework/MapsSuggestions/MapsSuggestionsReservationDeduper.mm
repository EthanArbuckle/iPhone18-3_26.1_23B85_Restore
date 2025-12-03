@interface MapsSuggestionsReservationDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
@end

@implementation MapsSuggestionsReservationDeduper

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v62 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v7 = withEntryCopy;
  if (!entryCopy)
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

  if (!withEntryCopy)
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

  if (([entryCopy hasMultipleWaypointsLeft] & 1) == 0 && (objc_msgSend(v7, "hasMultipleWaypointsLeft") & 1) == 0 && MapsSuggestionsEntriesAtLeastOneIsOfType(8, entryCopy, v7) && !MapsSuggestionsAtLeastOneEntryIsShortcut(v7, entryCopy))
  {
    ShouldBeOfOneOfEachType = MapsSuggestionsEntriesShouldBeOfOneOfEachType(8, 3, entryCopy, v7);
    v9 = MapsSuggestionsEntriesAreBothOfType(8, entryCopy, v7);
    v10 = v9;
    if ((ShouldBeOfOneOfEachType & 1) != 0 || v9)
    {
      v12 = [entryCopy stringForKey:@"MapsSuggestionsCoreSuggestionsOpaqueKey"];
      v15 = [v7 stringForKey:@"MapsSuggestionsCoreSuggestionsOpaqueKey"];
      if ([v12 isEqualToString:v15])
      {
        v16 = entryCopy;
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
        v19 = entryCopy;
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

          geoMapItem = [v19 geoMapItem];
          if (!geoMapItem)
          {
            goto LABEL_42;
          }

          v25 = geoMapItem;
          geoMapItem2 = [v20 geoMapItem];

          if (!geoMapItem2)
          {
            goto LABEL_42;
          }

          geoMapItem3 = [v19 geoMapItem];
          geoMapItem4 = [v20 geoMapItem];
          v29 = MapsSuggestionsMapItemsAreEqual(geoMapItem3, geoMapItem4, 1, 0, 0);

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

      v19 = entryCopy;
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

      title = [v19 title];
      title2 = [v20 title];
      v38 = title2;
      if (title == title2)
      {
        v51 = title2;
        v52 = title;
      }

      else
      {
        title3 = [v19 title];
        title4 = [v20 title];
        v50 = title3;
        if (![title3 isEqualToString:?])
        {
          v53 = 1;
          goto LABEL_55;
        }

        v51 = v38;
        v52 = title;
      }

      subtitle = [v19 subtitle];
      subtitle2 = [v20 subtitle];
      if (subtitle == subtitle2)
      {
        v53 = 0;
      }

      else
      {
        subtitle3 = [v19 subtitle];
        subtitle4 = [v20 subtitle];
        v53 = [subtitle3 isEqualToString:subtitle4] ^ 1;
      }

      v38 = v51;
      title = v52;
      if (v52 == v51)
      {
LABEL_56:

        geoMapItem5 = [v19 geoMapItem];
        geoMapItem6 = [v20 geoMapItem];
        v48 = MapsSuggestionsMapItemsAreEqual(geoMapItem5, geoMapItem6, 1, 0, 0);

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