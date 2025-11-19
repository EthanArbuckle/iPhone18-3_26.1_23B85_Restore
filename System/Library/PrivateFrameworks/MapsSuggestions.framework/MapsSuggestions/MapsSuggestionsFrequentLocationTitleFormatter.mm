@interface MapsSuggestionsFrequentLocationTitleFormatter
- (BOOL)formatTitlesForEntry:(id)a3 eta:(id)a4;
@end

@implementation MapsSuggestionsFrequentLocationTitleFormatter

- (BOOL)formatTitlesForEntry:(id)a3 eta:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
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

  if (!v7)
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

  if ([v6 type] != 4)
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
  v11 = [v6 stringForKey:@"MapsSuggestionsFrequentLocationTitleWithoutNearKey"];
  v12 = [v6 geoMapItem];
  v13 = [v6 stringForKey:@"MapsSuggestionsCoreRoutineLabel"];
  if (![v13 length] && objc_msgSend(v12, "_hasMUID") && objc_msgSend(v12, "_muid"))
  {
    v14 = [v12 name];

    v13 = v14;
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
    v20 = [v6 title];
    v21 = [v19 isEqualToString:v20];

    if ((v21 & 1) == 0)
    {
      [v6 setTitle:v19];
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = [v8 trafficString];
  v17 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:v6 title:v19 subtitle:v22 includeLockedVersions:0];

LABEL_20:
  return v17;
}

@end