@interface MapsSuggestionsRideBookingAppConnectionDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
@end

@implementation MapsSuggestionsRideBookingAppConnectionDeduper

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRideBookingAppConnectionDeduper.m";
      v16 = 1024;
      v17 = 22;
      v18 = 2082;
      v19 = "[MapsSuggestionsRideBookingAppConnectionDeduper dedupeByEnrichingEntry:withEntry:]";
      v20 = 2082;
      v21 = "nil == (originalEntry)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires original suggestion entry";
LABEL_12:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, &v14, 0x26u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v6)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRideBookingAppConnectionDeduper.m";
      v16 = 1024;
      v17 = 23;
      v18 = 2082;
      v19 = "[MapsSuggestionsRideBookingAppConnectionDeduper dedupeByEnrichingEntry:withEntry:]";
      v20 = 2082;
      v21 = "nil == (entry)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires new suggestion entry";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (!MapsSuggestionsEntriesShouldBeOfOneOfEachType(12, 9, v5, v6))
  {
LABEL_14:
    LOBYTE(v10) = 0;
    goto LABEL_15;
  }

  v8 = [v5 stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
  v9 = [v7 stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
  v10 = [v8 isEqualToString:v9];
  if (v10 && [v5 type] == 12)
  {
    [v5 replaceByEntry:v7];
  }

LABEL_15:
  return v10;
}

@end