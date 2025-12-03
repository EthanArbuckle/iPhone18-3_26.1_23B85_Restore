@interface MapsSuggestionsHotelTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
@end

@implementation MapsSuggestionsHotelTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v27 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  v8 = etaCopy;
  if (!entryCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsHotelTitleFormatter.m";
    v21 = 1024;
    v22 = 21;
    v23 = 2082;
    v24 = "[MapsSuggestionsHotelTitleFormatter formatTitlesForEntry:eta:]";
    v25 = 2082;
    v26 = "nil == (entry)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_14:
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, v17, &v19, 0x26u);
    goto LABEL_15;
  }

  if (!etaCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsHotelTitleFormatter.m";
    v21 = 1024;
    v22 = 22;
    v23 = 2082;
    v24 = "[MapsSuggestionsHotelTitleFormatter formatTitlesForEntry:eta:]";
    v25 = 2082;
    v26 = "nil == (eta)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
    goto LABEL_14;
  }

  if ([entryCopy type] != 13)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsHotelTitleFormatter.m";
      v21 = 1024;
      v22 = 23;
      v23 = 2082;
      v24 = "[MapsSuggestionsHotelTitleFormatter formatTitlesForEntry:eta:]";
      v25 = 2082;
      v26 = "entry.type != MapsSuggestionsEntryTypeHotel";
      v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a Hotel entry";
      goto LABEL_14;
    }

LABEL_15:

    v15 = 0;
    goto LABEL_16;
  }

  [v8 seconds];
  v10 = NSStringFromMapsSuggestionsShortETA(v9);
  undecoratedSubtitle = [entryCopy undecoratedSubtitle];
  if ([v10 length] && -[MapsSuggestionsEventETATitleFormatter shouldDecorateEntry:withETA:](self, "shouldDecorateEntry:withETA:", entryCopy, v8))
  {
    v12 = MapsSuggestionsLocalizedStringFromGEOTransportType([v8 transportType]);
    v13 = MapsSuggestionsLocalizedETAFormatString(v10, v12);

    undecoratedSubtitle = v13;
  }

  title = [entryCopy title];
  v15 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:title subtitle:undecoratedSubtitle includeLockedVersions:0];

LABEL_16:
  return v15;
}

@end