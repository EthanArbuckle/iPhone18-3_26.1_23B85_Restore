@interface MapsSuggestionsShortcutAtMapItemDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
- (MapsSuggestionsShortcutAtMapItemDeduper)initWithSacrificedTypes:(const void *)types;
- (id).cxx_construct;
@end

@implementation MapsSuggestionsShortcutAtMapItemDeduper

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  return self;
}

- (MapsSuggestionsShortcutAtMapItemDeduper)initWithSacrificedTypes:(const void *)types
{
  v8.receiver = self;
  v8.super_class = MapsSuggestionsShortcutAtMapItemDeduper;
  v4 = [(MapsSuggestionsShortcutAtMapItemDeduper *)&v8 init];
  v5 = v4;
  if (v4)
  {
    p_types = &v4->_types;
    if (&v5->_types != types)
    {
      std::vector<MapsSuggestionsEntryType>::__assign_with_size[abi:ne200100]<MapsSuggestionsEntryType*,MapsSuggestionsEntryType*>(p_types, *types, *(types + 1), (*(types + 1) - *types) >> 3);
    }
  }

  return v5;
}

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v40 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v8 = withEntryCopy;
  if (!entryCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutAtMapItemDeduper.mm";
      v34 = 1024;
      v35 = 61;
      v36 = 2082;
      v37 = "[MapsSuggestionsShortcutAtMapItemDeduper dedupeByEnrichingEntry:withEntry:]";
      v38 = 2082;
      v39 = "nil == (originalEntry)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x26u);
    }

LABEL_11:
    v9 = 0;
LABEL_12:

    goto LABEL_13;
  }

  if (!withEntryCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutAtMapItemDeduper.mm";
      v34 = 1024;
      v35 = 62;
      v36 = 2082;
      v37 = "[MapsSuggestionsShortcutAtMapItemDeduper dedupeByEnrichingEntry:withEntry:]";
      v38 = 2082;
      v39 = "nil == (entry)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (([entryCopy hasMultipleWaypointsLeft] & 1) == 0 && (objc_msgSend(v8, "hasMultipleWaypointsLeft") & 1) == 0)
  {
    v13 = entryCopy;
    v14 = v8;
    if ([v13 isShortcut]&& (v10 = v13, v15 = v14, ([v14 isShortcut]& 1) == 0) || [v14 isShortcut]&& (v10 = v14, v15 = v13, ![v13 isShortcut]))
    {
      v30 = 0;
      v31 = 0;
      __p = 0;
      std::vector<MapsSuggestionsEntryType>::__init_with_size[abi:ne200100]<MapsSuggestionsEntryType*,MapsSuggestionsEntryType*>(&__p, self->_types.__begin_, self->_types.__end_, self->_types.__end_ - self->_types.__begin_);
      v16 = v15;
      v17 = v30;
      if (__p == v30)
      {
        v21 = 1;
      }

      else
      {
        v18 = __p + 8;
        do
        {
          v19 = *(v18 - 1);
          type = [v16 type];
          v22 = v19 == type;
          v21 = v19 != type;
          v22 = v22 || v18 == v17;
          v18 += 8;
        }

        while (!v22);
      }

      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      if (!v21)
      {
        geoMapItem = [v13 geoMapItem];
        if (geoMapItem)
        {
          geoMapItem2 = [v14 geoMapItem];
          v25 = geoMapItem2 == 0;

          if (!v25)
          {
            geoMapItem3 = [v13 geoMapItem];
            geoMapItem4 = [v14 geoMapItem];
            v28 = MapsSuggestionsMapItemsAreEqual(geoMapItem3, geoMapItem4, 0, 0, 0);

            if (v28)
            {
              if (v10 != v13)
              {
                [v13 replaceByEntry:v10];
              }

              v9 = 1;
              goto LABEL_38;
            }
          }
        }
      }
    }

    else
    {

      v16 = 0;
      v10 = 0;
    }

    v9 = 0;
LABEL_38:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

@end