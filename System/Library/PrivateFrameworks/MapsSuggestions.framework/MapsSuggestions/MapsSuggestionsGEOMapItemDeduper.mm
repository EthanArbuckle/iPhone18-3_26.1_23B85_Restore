@interface MapsSuggestionsGEOMapItemDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
- (MapsSuggestionsGEOMapItemDeduper)initWithSacrificedType:(int64_t)type;
@end

@implementation MapsSuggestionsGEOMapItemDeduper

- (MapsSuggestionsGEOMapItemDeduper)initWithSacrificedType:(int64_t)type
{
  v12.receiver = self;
  v12.super_class = MapsSuggestionsGEOMapItemDeduper;
  v4 = [(MapsSuggestionsGEOMapItemDeduper *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [objc_opt_class() description];
    v8 = NSStringFromMapsSuggestionsEntryType(v5->_type);
    v9 = [v6 initWithFormat:@"%@_%@", v7, v8];
    name = v5->_name;
    v5->_name = v9;
  }

  return v5;
}

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v33 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v8 = withEntryCopy;
  if (!entryCopy)
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

  if (!withEntryCopy)
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

  if (([entryCopy hasMultipleWaypointsLeft] & 1) == 0 && (objc_msgSend(v8, "hasMultipleWaypointsLeft") & 1) == 0 && MapsSuggestionsEntriesAtLeastOneIsOfType(self->_type, entryCopy, v8))
  {
    v9 = objc_alloc_init(MapsSuggestionsTooEarlyFilter);
    if ([(MapsSuggestionsTooEarlyFilter *)v9 shouldKeepEntry:entryCopy])
    {
      if ([(MapsSuggestionsTooEarlyFilter *)v9 shouldKeepEntry:v8])
      {
        if (!MapsSuggestionsEntriesAtLeastOneIsOfType(24, entryCopy, v8) && !MapsSuggestionsAtLeastOneEntryIsShortcut(v8, entryCopy) && !MapsSuggestionsEntriesAreBothOfType(23, entryCopy, v8))
        {
          geoMapItem = [entryCopy geoMapItem];
          if (geoMapItem)
          {
            v11 = geoMapItem;
            geoMapItem2 = [v8 geoMapItem];

            if (geoMapItem2)
            {
              if ([entryCopy type] == self->_type && objc_msgSend(v8, "type") == 15)
              {
                geoMapItem3 = [entryCopy geoMapItem];
                geoFenceMapRegion = [geoMapItem3 geoFenceMapRegion];
                GEOMapRectForMapRegion();

                geoMapItem4 = [v8 geoMapItem];
                geoFenceMapRegion2 = [geoMapItem4 geoFenceMapRegion];
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

              geoMapItem5 = [entryCopy geoMapItem];
              geoMapItem6 = [v8 geoMapItem];
              v23 = MapsSuggestionsMapItemsAreEqual(geoMapItem5, geoMapItem6, 0, 0, 0);

              if (v23)
              {
                type = [entryCopy type];
                if (type == [v8 type])
                {
                  if ([entryCopy hasStartTime] && objc_msgSend(v8, "hasStartTime") && (objc_msgSend(entryCopy, "startsBeforeEntry:", v8) & 1) != 0)
                  {
                    goto LABEL_38;
                  }
                }

                else if ([entryCopy type] != self->_type)
                {
LABEL_38:
                  v19 = 1;
                  goto LABEL_28;
                }

LABEL_37:
                [entryCopy replaceByEntry:v8];
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