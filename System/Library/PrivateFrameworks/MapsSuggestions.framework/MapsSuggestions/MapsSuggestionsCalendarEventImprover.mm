@interface MapsSuggestionsCalendarEventImprover
- (BOOL)improveEntry:(id)a3;
@end

@implementation MapsSuggestionsCalendarEventImprover

- (BOOL)improveEntry:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v32 = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarEventImprover.m";
      v34 = 1024;
      v35 = 27;
      v36 = 2082;
      v37 = "[MapsSuggestionsCalendarEventImprover improveEntry:]";
      v38 = 2082;
      v39 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", &v32, 0x26u);
    }

    goto LABEL_8;
  }

  if ([v4 type] != 3)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_42;
  }

  if ([v5 containsKey:@"MapsSuggestionsCalendarAllDayEventKey"])
  {
    v6 = [v5 BOOLeanForKey:@"MapsSuggestionsCalendarAllDayEventKey"];
  }

  else
  {
    v6 = 0;
  }

  v9 = [v5 undecoratedSubtitle];
  v10 = [v9 length];
  v8 = v10 == 0;

  if (!v10)
  {
    v11 = [v5 geoMapItem];
    v12 = [v11 name];
    [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v12 forEntry:v5];

    v13 = [v5 undecoratedSubtitle];
    [v5 setString:v13 forKey:@"MapsSuggestionsEntryTitleNameKey"];
  }

  v14 = [v5 stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
  if (v14 && [v5 containsKey:@"MapsSuggestionsScheduledTimeKey"])
  {
    v15 = [v5 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
    v16 = NSStringFromMapsSuggestionsEventTime(v15);

    if (v6)
    {
      v17 = MapsSuggestionsLocalizedCalendarEventAllDayString();

      v16 = v17;
    }

    v18 = MapsSuggestionsLocalizedCalendarEventTimeAndLocationString(v16, v14);
    v19 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v18 forEntry:v5];
    if (v10)
    {
      v8 = v19;
    }

    else
    {
      v8 = 1;
    }
  }

  [v5 setBoolean:1 forKey:@"MapsSuggestionsAlreadyLocalizedKey"];
  if (([v5 containsKey:@"MapsSuggestionsAlreadyThereKey"] & 1) == 0)
  {
    if ([v5 BOOLeanForKey:@"MapsSuggestionsNeedsETATrackingKey"])
    {
      goto LABEL_26;
    }

    v20 = 1;
    goto LABEL_25;
  }

  v20 = [v5 BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey"] ^ 1;
  if ([v5 BOOLeanForKey:@"MapsSuggestionsNeedsETATrackingKey"] != v20)
  {
LABEL_25:
    [v5 setBoolean:v20 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
    v8 = 1;
  }

LABEL_26:
  if ([v5 containsKey:@"MapsSuggestionsCalendarIsSharedToMeKey"] && objc_msgSend(v5, "BOOLeanForKey:", @"MapsSuggestionsCalendarIsSharedToMeKey"))
  {
    GEOConfigGetDouble();
    [v5 setWeight:?];
    v8 = 1;
  }

  v21 = [v5 undecoratedTitle];
  v22 = v21;
  if (v6)
  {
    v23 = MapsSuggestionsLocalizedCalendarEventPOIAdornmentAllDayString(v21);
  }

  else
  {
    v24 = [v5 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
    v23 = MapsSuggestionsLocalizedCalendarEventPOIAdornmentString(v22, v24);
  }

  v25 = [v5 stringForKey:@"MapsSuggestionsCalendarPersonalizedPOIAdornmentKey"];
  if (([v25 isEqualToString:v23] & 1) == 0)
  {
    [v5 setString:v23 forKey:@"MapsSuggestionsCalendarPersonalizedPOIAdornmentKey"];
    v8 = 1;
  }

  v26 = [v5 BOOLeanForKey:@"MapsSuggestionsCalendarIsInvitationKey" is:1];
  if ([v5 BOOLeanForKey:@"MapsSuggestionsCalendarEventIsRecurringKey" is:1])
  {
    v27 = MapsSuggestionsLocalizedSnoozeInMapsString();
    [v5 setString:v27 forKey:@"MapsSuggestionsRemovalBehaviorStringForSnooze"];
  }

  v28 = MapsSuggestionsLocalizedHideInMapsString();
  [v5 setString:v28 forKey:@"MapsSuggestionsRemovalBehaviorStringForHide"];

  if (v26)
  {
    MapsSuggestionsLocalizedDeclineCalendarEventString();
  }

  else
  {
    MapsSuggestionsLocalizedDeleteFromCalendarString();
  }
  v29 = ;
  [v5 setString:v29 forKey:@"MapsSuggestionsRemovalBehaviorStringForDelete"];

  if (GEOConfigGetBOOL())
  {
    v30 = MapsSuggestionsLocalizedSiriFoundInCalendarString();
    [v5 setString:v30 forKey:@"MapsSuggestionsSiriFoundLineKey"];
  }

LABEL_42:
  return v8;
}

@end