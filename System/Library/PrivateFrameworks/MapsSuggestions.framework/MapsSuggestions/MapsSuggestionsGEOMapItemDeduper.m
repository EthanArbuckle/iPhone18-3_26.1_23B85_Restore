@interface MapsSuggestionsGEOMapItemDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
- (MapsSuggestionsGEOMapItemDeduper)initWithSacrificedType:(int64_t)a3;
@end

@implementation MapsSuggestionsGEOMapItemDeduper

- (MapsSuggestionsGEOMapItemDeduper)initWithSacrificedType:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = MapsSuggestionsGEOMapItemDeduper;
  v4 = [(MapsSuggestionsGEOMapItemDeduper *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [objc_opt_class() description];
    v8 = NSStringFromMapsSuggestionsEntryType(v5->_type);
    v9 = [v6 initWithFormat:@"%@_%@", v7, v8];
    name = v5->_name;
    v5->_name = v9;
  }

  return v5;
}

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v25 = 136446978;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsGEOMapItemDeduper.m";
    v27 = 1024;
    v28 = 51;
    v29 = 2082;
    v30 = "[MapsSuggestionsGEOMapItemDeduper dedupeByEnrichingEntry:withEntry:]";
    v31 = 2082;
    v32 = "nil == (originalEntry)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_26:
    _os_log_impl(&dword_1C5126000, &v9->super.super, OS_LOG_TYPE_ERROR, v18, &v25, 0x26u);
    goto LABEL_27;
  }

  if (!v7)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v25 = 136446978;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsGEOMapItemDeduper.m";
    v27 = 1024;
    v28 = 52;
    v29 = 2082;
    v30 = "[MapsSuggestionsGEOMapItemDeduper dedupeByEnrichingEntry:withEntry:]";
    v31 = 2082;
    v32 = "nil == (entry)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
    goto LABEL_26;
  }

  if (([v6 hasMultipleWaypointsLeft] & 1) == 0 && (objc_msgSend(v8, "hasMultipleWaypointsLeft") & 1) == 0 && MapsSuggestionsEntriesAtLeastOneIsOfType(self->_type, v6, v8))
  {
    v9 = objc_alloc_init(MapsSuggestionsTooEarlyFilter);
    if ([(MapsSuggestionsTooEarlyFilter *)v9 shouldKeepEntry:v6])
    {
      if ([(MapsSuggestionsTooEarlyFilter *)v9 shouldKeepEntry:v8])
      {
        if (!MapsSuggestionsEntriesAtLeastOneIsOfType(24, v6, v8) && !MapsSuggestionsAtLeastOneEntryIsShortcut(v8, v6) && !MapsSuggestionsEntriesAreBothOfType(23, v6, v8))
        {
          v10 = [v6 geoMapItem];
          if (v10)
          {
            v11 = v10;
            v12 = [v8 geoMapItem];

            if (v12)
            {
              if ([v6 type] == self->_type && objc_msgSend(v8, "type") == 15)
              {
                v13 = [v6 geoMapItem];
                v14 = [v13 geoFenceMapRegion];
                GEOMapRectForMapRegion();

                v15 = [v8 geoMapItem];
                v16 = [v15 geoFenceMapRegion];
                GEOMapRectForMapRegion();

                if ((GEOMapRectIsEmpty() & 1) == 0 && (GEOMapRectIsEmpty() & 1) == 0 && GEOMapRectIntersectsRect())
                {
                  v17 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                  {
                    LOWORD(v25) = 0;
                    _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "Dropping the CalendarEvent in favor of the Flight entry", &v25, 2u);
                  }

                  goto LABEL_37;
                }
              }

              v21 = [v6 geoMapItem];
              v22 = [v8 geoMapItem];
              v23 = MapsSuggestionsMapItemsAreEqual(v21, v22, 0, 0, 0);

              if (v23)
              {
                v24 = [v6 type];
                if (v24 == [v8 type])
                {
                  if ([v6 hasStartTime] && objc_msgSend(v8, "hasStartTime") && (objc_msgSend(v6, "startsBeforeEntry:", v8) & 1) != 0)
                  {
                    goto LABEL_38;
                  }
                }

                else if ([v6 type] != self->_type)
                {
LABEL_38:
                  v19 = 1;
                  goto LABEL_28;
                }

LABEL_37:
                [v6 replaceByEntry:v8];
                goto LABEL_38;
              }
            }
          }
        }
      }
    }

LABEL_27:
    v19 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v19 = 0;
LABEL_29:

  return v19;
}

@end