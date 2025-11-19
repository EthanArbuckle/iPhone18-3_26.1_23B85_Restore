@interface MapsSuggestionsVehicleSetupResumeRouteDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
@end

@implementation MapsSuggestionsVehicleSetupResumeRouteDeduper

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVehicleSetupResumeRouteDeduper.m";
      v17 = 1024;
      v18 = 24;
      v19 = 2082;
      v20 = "[MapsSuggestionsVehicleSetupResumeRouteDeduper dedupeByEnrichingEntry:withEntry:]";
      v21 = 2082;
      v22 = "nil == (originalEntry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_15:
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 38;
LABEL_16:
      _os_log_impl(&dword_1C5126000, v11, v12, v10, &v15, v13);
    }

LABEL_17:

LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVehicleSetupResumeRouteDeduper.m";
      v17 = 1024;
      v18 = 25;
      v19 = 2082;
      v20 = "[MapsSuggestionsVehicleSetupResumeRouteDeduper dedupeByEnrichingEntry:withEntry:]";
      v21 = 2082;
      v22 = "nil == (entry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (([v5 hasMultipleWaypointsLeft] & 1) != 0 || (objc_msgSend(v7, "hasMultipleWaypointsLeft") & 1) != 0 || !MapsSuggestionsEntriesShouldBeOfOneOfEachType(20, 11, v5, v7))
  {
    goto LABEL_18;
  }

  if (([v7 BOOLeanForKey:@"MapsSuggestionsIsResumingAnEVRoute" is:1] & 1) == 0 && (objc_msgSend(v5, "BOOLeanForKey:is:", @"MapsSuggestionsIsResumingAnEVRoute", 1) & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v15) = 0;
    v10 = "Neither entries have MapsSuggestionsIsResumingAnEVRoute key so we should return";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 2;
    goto LABEL_16;
  }

  if ([v5 type] != 11)
  {
    [v5 replaceByEntry:v7];
  }

  v8 = 1;
LABEL_19:

  return v8;
}

@end