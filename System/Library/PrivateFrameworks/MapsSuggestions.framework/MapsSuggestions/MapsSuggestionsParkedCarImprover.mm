@interface MapsSuggestionsParkedCarImprover
- (BOOL)improveEntry:(id)a3;
@end

@implementation MapsSuggestionsParkedCarImprover

- (BOOL)improveEntry:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 type] == 7)
    {
      v6 = MapsSuggestionsLocalizedParkedCarString();
      [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v6 forEntry:v5];

      [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v5 forEntry:?];
      v7 = [v5 stringForKey:@"MapsSuggestionsCoreRoutineLabel"];
      v8 = [v5 geoMapItem];
      v9 = ParkedCarLocationNameForMapItem(v8, v7);

      if ([v9 length])
      {
        v10 = MapsSuggestionsLocalizedParkedCarNearString(v9);
        [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v10 forEntry:v5];

        v11 = MapsSuggestionsLocalizedParkedCarLowerCaseNearString(v9);
        [v5 setString:v11 forKey:@"MapsSuggestionsParkedCarNearLocationStringKey"];
      }

      [v5 setBoolean:1 forKey:@"MapsSuggestionsNeedsDistanceTrackingKey"];
      v12 = MapsSuggestionsLocalizedParkedCarRemoveString();
      [v5 setString:v12 forKey:@"MapsSuggestionsRemovalBehaviorStringForForget"];

      v13 = MapsSuggestionsLocalizedStopShowingParkedCarString();
      [v5 setString:v13 forKey:@"MapsSuggestionsRemovalBehaviorStringForDelete"];

      v14 = [v5 containsKey:@"MapsSuggestionsEntryTitleNameKey"];
      if (v14)
      {
        v13 = [v5 stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
        if (![v13 isEqualToString:&stru_1F444C108])
        {
LABEL_19:

          goto LABEL_20;
        }

        if (([v5 containsKey:@"MapsSuggestionsDestinationAddressKey"] & 1) == 0)
        {

LABEL_18:
          v13 = MapsSuggestionsLocalizedParkedCarString();
          [v5 setString:v13 forKey:@"MapsSuggestionsEntryTitleNameKey"];
          goto LABEL_19;
        }
      }

      else if (([v5 containsKey:@"MapsSuggestionsDestinationAddressKey"] & 1) == 0)
      {
        goto LABEL_18;
      }

      v17 = [v5 stringForKey:@"MapsSuggestionsDestinationAddressKey"];
      v18 = [v17 isEqualToString:&stru_1F444C108];

      if (v14)
      {

        if ((v18 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (!v18)
      {
LABEL_20:

        v16 = 1;
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsParkedCarImprover.m";
      v22 = 1024;
      v23 = 24;
      v24 = 2082;
      v25 = "[MapsSuggestionsParkedCarImprover improveEntry:]";
      v26 = 2082;
      v27 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestions entry", &v20, 0x26u);
    }
  }

  v16 = 0;
LABEL_21:

  return v16;
}

@end