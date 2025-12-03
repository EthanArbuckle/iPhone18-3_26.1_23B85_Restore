@interface MapsSuggestionsCarRentalTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
@end

@implementation MapsSuggestionsCarRentalTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v29 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  v8 = etaCopy;
  if (!entryCopy)
  {
    v18 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v21 = 136446978;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCarRentalTitleFormatter.m";
    v23 = 1024;
    v24 = 24;
    v25 = 2082;
    v26 = "[MapsSuggestionsCarRentalTitleFormatter formatTitlesForEntry:eta:]";
    v27 = 2082;
    v28 = "nil == (entry)";
    v19 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_17:
    _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, v19, &v21, 0x26u);
    goto LABEL_18;
  }

  if (!etaCopy)
  {
    v18 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v21 = 136446978;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCarRentalTitleFormatter.m";
    v23 = 1024;
    v24 = 25;
    v25 = 2082;
    v26 = "[MapsSuggestionsCarRentalTitleFormatter formatTitlesForEntry:eta:]";
    v27 = 2082;
    v28 = "nil == (eta)";
    v19 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
    goto LABEL_17;
  }

  if ([entryCopy type] != 14)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCarRentalTitleFormatter.m";
      v23 = 1024;
      v24 = 26;
      v25 = 2082;
      v26 = "[MapsSuggestionsCarRentalTitleFormatter formatTitlesForEntry:eta:]";
      v27 = 2082;
      v28 = "entry.type != MapsSuggestionsEntryTypeCarRental";
      v19 = "At %{public}s:%d, %{public}s forbids: %{public}s. Needs to be a Car Rental entry";
      goto LABEL_17;
    }

LABEL_18:

    v17 = 0;
    goto LABEL_19;
  }

  [v8 seconds];
  v10 = NSStringFromMapsSuggestionsShortETA(v9);
  undecoratedSubtitle = [entryCopy undecoratedSubtitle];
  if (([entryCopy BOOLeanForKey:@"MapsSuggestionsCalendarCarRentalIsPickupDayKey"] & 1) == 0 && -[MapsSuggestionsEventETATitleFormatter shouldDecorateEntry:withETA:](self, "shouldDecorateEntry:withETA:", entryCopy, v8) && objc_msgSend(v10, "length"))
  {
    v12 = MapsSuggestionsLocalizedStringFromGEOTransportType([v8 transportType]);
    v13 = _localizedSubtitleString_s_onceToken;
    v14 = v10;
    if (v13 != -1)
    {
      [MapsSuggestionsCarRentalTitleFormatter formatTitlesForEntry:eta:];
    }

    v15 = (*(_localizedSubtitleString_s_formatter + 16))(_localizedSubtitleString_s_formatter, v14, v12);

    undecoratedSubtitle = v15;
  }

  title = [entryCopy title];
  v17 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:title subtitle:undecoratedSubtitle includeLockedVersions:0];

LABEL_19:
  return v17;
}

@end