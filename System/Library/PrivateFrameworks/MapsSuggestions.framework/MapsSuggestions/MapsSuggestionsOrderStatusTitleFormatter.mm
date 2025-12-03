@interface MapsSuggestionsOrderStatusTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
@end

@implementation MapsSuggestionsOrderStatusTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v28 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  v8 = etaCopy;
  if (!entryCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsOrderStatusTitleFormatter.m";
      v22 = 1024;
      v23 = 25;
      v24 = 2082;
      v25 = "[MapsSuggestionsOrderStatusTitleFormatter formatTitlesForEntry:eta:]";
      v26 = 2082;
      v27 = "nil == (entry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
      goto LABEL_10;
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  if (!etaCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsOrderStatusTitleFormatter.m";
      v22 = 1024;
      v23 = 26;
      v24 = 2082;
      v25 = "[MapsSuggestionsOrderStatusTitleFormatter formatTitlesForEntry:eta:]";
      v26 = 2082;
      v27 = "nil == (eta)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if ([entryCopy type] != 23)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsOrderStatusTitleFormatter.m";
      v22 = 1024;
      v23 = 27;
      v24 = 2082;
      v25 = "[MapsSuggestionsOrderStatusTitleFormatter formatTitlesForEntry:eta:]";
      v26 = 2082;
      v27 = "MapsSuggestionsEntryTypeOrderStatus != entry.type";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Needs to be OrderStatus";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v13 = [(MapsSuggestionsOrderStatusImprover *)self _subtitleBegining:entryCopy];
  [v8 seconds];
  v15 = NSStringFromMapsSuggestionsShortETA(v14);
  v16 = MapsSuggestionsLocalizedStringFromGEOTransportType([v8 transportType]);
  v17 = MapsSuggestionsLocalizedETAFormatString(v15, v16);

  if (v17)
  {
    v18 = [v13 stringByAppendingFormat:@" • %1$@", v17];

    v13 = v18;
  }

  title = [entryCopy title];
  v11 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:title subtitle:v13 includeLockedVersions:0];

LABEL_12:
  return v11;
}

@end