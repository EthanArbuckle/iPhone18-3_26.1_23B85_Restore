@interface MapsSuggestionsTravelFlightImprover
- (BOOL)improveEntry:(id)a3;
@end

@implementation MapsSuggestionsTravelFlightImprover

- (BOOL)improveEntry:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTravelFlightImprover.m";
      v22 = 1024;
      v23 = 23;
      v24 = 2082;
      v25 = "[MapsSuggestionsTravelFlightImprover improveEntry:]";
      v26 = 2082;
      v27 = "entry == nil";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", &v20, 0x26u);
    }

    goto LABEL_9;
  }

  if ([v4 type] != 15)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_28;
  }

  v6 = [v5 stringForKey:@"MapsSuggestionsFullFlightNumberKey"];
  v7 = [v5 stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = MapsSuggestionsLocalizedWalletFlightAndAirportNumberString(v9, v8);
LABEL_14:
    v14 = v11;
    goto LABEL_15;
  }

  if (v9)
  {
    v11 = MapsSuggestionsLocalizedWalletFlightAirportString(v9);
    goto LABEL_14;
  }

  if (v8)
  {
    v11 = MapsSuggestionsLocalizedWalletFlightNumberString(v8);
    goto LABEL_14;
  }

  v14 = 0;
LABEL_15:

  v15 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v14 forEntry:v5];
  v16 = MapsSuggestionsFlightStatusStringForEntry(v5);
  v17 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v16 forEntry:v5];
  if ([v5 BOOLeanForKey:@"MapsSuggestionsAlreadyLocalizedKey"])
  {
    v13 = v15 | v17;
  }

  else
  {
    v13 = 1;
    [v5 setBoolean:1 forKey:@"MapsSuggestionsAlreadyLocalizedKey"];
  }

  if (([v5 containsKey:@"MapsSuggestionsAlreadyThereKey"] & 1) == 0)
  {
    if ([v5 BOOLeanForKey:@"MapsSuggestionsNeedsETATrackingKey"])
    {
      goto LABEL_24;
    }

    v18 = 1;
    goto LABEL_23;
  }

  v18 = [v5 BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey"] ^ 1;
  if ([v5 BOOLeanForKey:@"MapsSuggestionsNeedsETATrackingKey"] != v18)
  {
LABEL_23:
    [v5 setBoolean:v18 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
    v13 = 1;
  }

LABEL_24:
  if ([v5 containsKey:@"MapsSuggestionsCalendarIsSharedToMeKey"] && objc_msgSend(v5, "BOOLeanForKey:", @"MapsSuggestionsCalendarIsSharedToMeKey"))
  {
    GEOConfigGetDouble();
    [v5 setWeight:?];
    v13 = 1;
  }

LABEL_28:
  return v13;
}

@end