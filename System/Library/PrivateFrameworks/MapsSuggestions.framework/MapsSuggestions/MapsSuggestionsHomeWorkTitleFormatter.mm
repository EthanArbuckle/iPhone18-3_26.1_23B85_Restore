@interface MapsSuggestionsHomeWorkTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
@end

@implementation MapsSuggestionsHomeWorkTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v28 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  v8 = etaCopy;
  if (!entryCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v20 = 136446978;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsHomeWorkTitleFormatter.m";
    v22 = 1024;
    v23 = 23;
    v24 = 2082;
    v25 = "[MapsSuggestionsHomeWorkTitleFormatter formatTitlesForEntry:eta:]";
    v26 = 2082;
    v27 = "nil == (entry)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_16:
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v14, &v20, 0x26u);
    goto LABEL_17;
  }

  if (!etaCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v20 = 136446978;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsHomeWorkTitleFormatter.m";
    v22 = 1024;
    v23 = 24;
    v24 = 2082;
    v25 = "[MapsSuggestionsHomeWorkTitleFormatter formatTitlesForEntry:eta:]";
    v26 = 2082;
    v27 = "nil == (eta)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
    goto LABEL_16;
  }

  if ([entryCopy type] == 1 || objc_msgSend(entryCopy, "type") == 2)
  {
    [v8 seconds];
    v10 = NSStringFromMapsSuggestionsShortETA(v9);
    if (!v10)
    {
      v15 = 0;
LABEL_26:

      goto LABEL_27;
    }

    if ([entryCopy containsKey:@"MapsSuggestionsCoreRoutineCustomLabel"])
    {
      v11 = [entryCopy stringForKey:@"MapsSuggestionsCoreRoutineCustomLabel"];
      if ([v11 length])
      {
        v12 = MapsSuggestionsLocalizedETAToDestinationString(v10, v11);
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
    }

    type = [entryCopy type];
    if (type == 2)
    {
      v12 = MapsSuggestionsLocalizedETAToWorkString(v10);
    }

    else
    {
      if (type != 1)
      {
        v15 = 0;
        goto LABEL_25;
      }

      v12 = MapsSuggestionsLocalizedETAToHomeString(v10);
    }

LABEL_23:
    v17 = v12;
    trafficString = [v8 trafficString];
    v15 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:v17 subtitle:trafficString includeLockedVersions:1];

LABEL_25:
    goto LABEL_26;
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v20 = 136446978;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsHomeWorkTitleFormatter.m";
    v22 = 1024;
    v23 = 26;
    v24 = 2082;
    v25 = "[MapsSuggestionsHomeWorkTitleFormatter formatTitlesForEntry:eta:]";
    v26 = 2082;
    v27 = "MapsSuggestionsEntryTypeHome != entry.type && MapsSuggestionsEntryTypeWork != entry.type";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Needs to be either Home or Work";
    goto LABEL_16;
  }

LABEL_17:

  v15 = 0;
LABEL_27:

  return v15;
}

@end