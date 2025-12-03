@interface MapsSuggestionsDefaultTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
- (id)_subtitleStringFromEntry:(void *)entry andETA:;
@end

@implementation MapsSuggestionsDefaultTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  v8 = etaCopy;
  if (entryCopy)
  {
    if (etaCopy)
    {
      title = [entryCopy title];
      v14 = [(MapsSuggestionsDefaultTitleFormatter *)self _subtitleStringFromEntry:entryCopy andETA:v8];
      v11 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:title subtitle:v14 includeLockedVersions:0];

      goto LABEL_9;
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDefaultTitleFormatter.m";
      v17 = 1024;
      v18 = 25;
      v19 = 2082;
      v20 = "[MapsSuggestionsDefaultTitleFormatter formatTitlesForEntry:eta:]";
      v21 = 2082;
      v22 = "nil == (eta)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
LABEL_7:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, &v15, 0x26u);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDefaultTitleFormatter.m";
      v17 = 1024;
      v18 = 24;
      v19 = 2082;
      v20 = "[MapsSuggestionsDefaultTitleFormatter formatTitlesForEntry:eta:]";
      v21 = 2082;
      v22 = "nil == (entry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (id)_subtitleStringFromEntry:(void *)entry andETA:
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  entryCopy = entry;
  v7 = entryCopy;
  if (self)
  {
    [entryCopy seconds];
    v9 = NSStringFromMapsSuggestionsShortETA(v8);
    undecoratedSubtitle = [v5 undecoratedSubtitle];
    if ([v9 length] && objc_msgSend(self, "shouldDecorateEntry:withETA:", v5, v7))
    {
      v11 = [v5 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
      if (([v5 BOOLeanForKey:@"MapsSuggestionsCalendarAllDayEventKey" is:1] & 1) != 0 || MapsSuggestionsIsInThePast(v11))
      {
        v12 = MapsSuggestionsLocalizedStringFromGEOTransportType([v7 transportType]);
        v13 = MapsSuggestionsLocalizedETAFormatString(v9, v12);

        if (MapsSuggestionsLoggingIsVerbose())
        {
          v14 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            HIDWORD(v35) = HIDWORD(v13);
            OUTLINED_FUNCTION_0_4(&dword_1C5126000, v15, v16, "Subtitle from decoration: %@", v17, v18, v19, v20, 2u);
          }
        }

        v21 = v13;
LABEL_11:

LABEL_23:
        goto LABEL_24;
      }

      if (v11)
      {
        v22 = NSStringFromMapsSuggestionsEventTime(v11);
        v23 = MapsSuggestionsLocalizedStringFromGEOTransportType([v7 transportType]);
        v24 = MapsSuggestionsLocalizedETAFormatStringWithTime(v22, v9, v23);

        if (MapsSuggestionsLoggingIsVerbose())
        {
          v25 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            HIDWORD(v35) = HIDWORD(v24);
            OUTLINED_FUNCTION_0_4(&dword_1C5126000, v26, v27, "Subtitle from decoration: %@", v28, v29, v30, v31, 2u);
          }
        }

        v21 = v24;

        goto LABEL_11;
      }
    }

    if (MapsSuggestionsLoggingIsVerbose())
    {
      v32 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v34 = 138412290;
        v35 = undecoratedSubtitle;
        _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, "Subtitle from decoration: %@", &v34, 0xCu);
      }
    }

    v21 = undecoratedSubtitle;
    goto LABEL_23;
  }

  v21 = 0;
LABEL_24:

  return v21;
}

@end