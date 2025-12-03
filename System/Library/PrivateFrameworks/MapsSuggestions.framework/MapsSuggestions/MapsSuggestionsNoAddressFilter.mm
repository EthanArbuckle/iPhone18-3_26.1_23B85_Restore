@interface MapsSuggestionsNoAddressFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsNoAddressFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (entryCopy)
  {
    type = [entryCopy type];
    v6 = 1;
    if ((type - 5) < 0x13)
    {
      goto LABEL_9;
    }

    if (type <= 3)
    {
      if (type < 4)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

    switch(type)
    {
      case 4:
        geoMapItem = [v4 geoMapItem];
        v13 = MapsSuggestionsMapItemStreetName(geoMapItem);
        break;
      case 25:
        geoMapItem = [v4 geoMapItem];
        v13 = MapsSuggestionsMapItemStreetWithNumber(geoMapItem);
        break;
      case 24:
        geoMapItem = [v4 geoMapItem];
        v10 = MapsSuggestionsMapItemStreetWithNumber(geoMapItem);
        if (![v10 length])
        {
          geoMapItem2 = [v4 geoMapItem];
          v12 = MapsSuggestionsMapItemAreaOfInterest(geoMapItem2);
          v6 = [v12 length] != 0;
        }

LABEL_18:

        goto LABEL_9;
      default:
LABEL_19:
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 136446978;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsNoAddressFilter.m";
          v17 = 1024;
          v18 = 60;
          v19 = 2082;
          v20 = "[MapsSuggestionsNoAddressFilter shouldKeepEntry:]";
          v21 = 2082;
          v22 = "YES";
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", &v15, 0x26u);
        }

        v6 = 1;
        goto LABEL_9;
    }

    v10 = v13;
    v6 = [v13 length] != 0;
    goto LABEL_18;
  }

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v15 = 136446978;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsNoAddressFilter.m";
    v17 = 1024;
    v18 = 21;
    v19 = 2082;
    v20 = "[MapsSuggestionsNoAddressFilter shouldKeepEntry:]";
    v21 = 2082;
    v22 = "nil == (entry)";
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestions entry", &v15, 0x26u);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

@end