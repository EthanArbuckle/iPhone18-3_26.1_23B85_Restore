@interface MapsSuggestionsFrequentLocationTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
@end

@implementation MapsSuggestionsFrequentLocationTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v31 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  v8 = etaCopy;
  if (!entryCopy)
  {
    v15 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v23 = 136446978;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFrequentLocationTitleFormatter.m";
    v25 = 1024;
    v26 = 23;
    v27 = 2082;
    v28 = "[MapsSuggestionsFrequentLocationTitleFormatter formatTitlesForEntry:eta:]";
    v29 = 2082;
    v30 = "nil == (entry)";
    v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_18:
    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, v16, &v23, 0x26u);
    goto LABEL_19;
  }

  if (!etaCopy)
  {
    v15 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v23 = 136446978;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFrequentLocationTitleFormatter.m";
    v25 = 1024;
    v26 = 24;
    v27 = 2082;
    v28 = "[MapsSuggestionsFrequentLocationTitleFormatter formatTitlesForEntry:eta:]";
    v29 = 2082;
    v30 = "nil == (eta)";
    v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
    goto LABEL_18;
  }

  if ([entryCopy type] != 4)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = 136446978;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFrequentLocationTitleFormatter.m";
      v25 = 1024;
      v26 = 25;
      v27 = 2082;
      v28 = "[MapsSuggestionsFrequentLocationTitleFormatter formatTitlesForEntry:eta:]";
      v29 = 2082;
      v30 = "MapsSuggestionsEntryTypeFrequentLocation != entry.type";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Needs to be FrequentLocation";
      goto LABEL_18;
    }

LABEL_19:

    v17 = 0;
    goto LABEL_20;
  }

  [v8 seconds];
  v10 = NSStringFromMapsSuggestionsShortETA(v9);
  v11 = [entryCopy stringForKey:@"MapsSuggestionsFrequentLocationTitleWithoutNearKey"];
  geoMapItem = [entryCopy geoMapItem];
  v13 = [entryCopy stringForKey:@"MapsSuggestionsCoreRoutineLabel"];
  if (![v13 length] && objc_msgSend(geoMapItem, "_hasMUID") && objc_msgSend(geoMapItem, "_muid"))
  {
    name = [geoMapItem name];

    v13 = name;
  }

  if ([v11 length] && objc_msgSend(v10, "length"))
  {
    if ([v13 length])
    {
      MapsSuggestionsLocalizedFrequentLocationTitleString(v11, v10);
    }

    else
    {
      MapsSuggestionsLocalizedFrequentLocationNearTitleString(v11, v10);
    }
    v19 = ;
    title = [entryCopy title];
    v21 = [v19 isEqualToString:title];

    if ((v21 & 1) == 0)
    {
      [entryCopy setTitle:v19];
    }
  }

  else
  {
    v19 = 0;
  }

  trafficString = [v8 trafficString];
  v17 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:v19 subtitle:trafficString includeLockedVersions:0];

LABEL_20:
  return v17;
}

@end