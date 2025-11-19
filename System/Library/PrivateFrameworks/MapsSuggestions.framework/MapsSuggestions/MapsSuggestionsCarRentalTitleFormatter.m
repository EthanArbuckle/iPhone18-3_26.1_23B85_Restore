@interface MapsSuggestionsCarRentalTitleFormatter
- (BOOL)formatTitlesForEntry:(id)a3 eta:(id)a4;
@end

@implementation MapsSuggestionsCarRentalTitleFormatter

- (BOOL)formatTitlesForEntry:(id)a3 eta:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
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

  if (!v7)
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

  if ([v6 type] != 14)
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
  v11 = [v6 undecoratedSubtitle];
  if (([v6 BOOLeanForKey:@"MapsSuggestionsCalendarCarRentalIsPickupDayKey"] & 1) == 0 && -[MapsSuggestionsEventETATitleFormatter shouldDecorateEntry:withETA:](self, "shouldDecorateEntry:withETA:", v6, v8) && objc_msgSend(v10, "length"))
  {
    v12 = MapsSuggestionsLocalizedStringFromGEOTransportType([v8 transportType]);
    v13 = _localizedSubtitleString_s_onceToken;
    v14 = v10;
    if (v13 != -1)
    {
      [MapsSuggestionsCarRentalTitleFormatter formatTitlesForEntry:eta:];
    }

    v15 = (*(_localizedSubtitleString_s_formatter + 16))(_localizedSubtitleString_s_formatter, v14, v12);

    v11 = v15;
  }

  v16 = [v6 title];
  v17 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:v6 title:v16 subtitle:v11 includeLockedVersions:0];

LABEL_19:
  return v17;
}

@end