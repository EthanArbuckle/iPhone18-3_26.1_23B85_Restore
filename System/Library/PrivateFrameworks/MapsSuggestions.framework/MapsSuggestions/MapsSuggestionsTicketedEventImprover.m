@interface MapsSuggestionsTicketedEventImprover
- (BOOL)improveEntry:(id)a3;
@end

@implementation MapsSuggestionsTicketedEventImprover

- (BOOL)improveEntry:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTicketedEventImprover.m";
      v22 = 1024;
      v23 = 23;
      v24 = 2082;
      v25 = "[MapsSuggestionsTicketedEventImprover improveEntry:]";
      v26 = 2082;
      v27 = "entry == nil";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", &v20, 0x26u);
    }

    goto LABEL_8;
  }

  if ([v4 type] != 16)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_39;
  }

  if ([v5 containsKey:@"MapsSuggestionsEntryTitleNameKey"])
  {
    v6 = [v5 stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
    v7 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v6 forEntry:v5];
  }

  else
  {
    v7 = 0;
  }

  v9 = v5;
  v10 = [v9 dateForKey:@"MapsSuggestionsCalendarTicketedEventShowTimeKey"];
  v11 = NSStringFromMapsSuggestionsEventTime(v10);

  v12 = [v9 stringForKey:@"MapsSuggestionsCalendarTicketedEventNameKey"];
  if ([v11 length] && objc_msgSend(v12, "length"))
  {
    v13 = MapsSuggestionsLocalizedTicketedEventWithTimeAndNameFormatString(v11, v12);
  }

  else if ([v11 length] && !objc_msgSend(v12, "length"))
  {
    v13 = v11;
  }

  else
  {
    if (![v12 length] || objc_msgSend(v11, "length"))
    {
      v14 = 0;
      goto LABEL_21;
    }

    v13 = v12;
  }

  v14 = v13;
LABEL_21:

  if ([v14 length])
  {
    v15 = [v9 undecoratedSubtitle];
    v16 = [v15 isEqualToString:v14];

    if ((v16 & 1) == 0)
    {
      [v9 setUndecoratedSubtitle:v14];
      v7 = 1;
    }
  }

  if (([v9 BOOLeanForKey:@"MapsSuggestionsAlreadyLocalizedKey"] & 1) == 0)
  {
    v7 = 1;
    [v9 setBoolean:1 forKey:@"MapsSuggestionsAlreadyLocalizedKey"];
  }

  if ([v9 containsKey:@"MapsSuggestionsAlreadyThereKey"])
  {
    v17 = [v9 BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey"] ^ 1;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v9 stringForKey:@"MapsSuggestionsCalendarTicketedEventSeatDetailsKey"];
  if ([v9 containsKey:@"MapsSuggestionsAlreadyThereKey"] && objc_msgSend(v9, "BOOLeanForKey:", @"MapsSuggestionsAlreadyThereKey") && objc_msgSend(v18, "length"))
  {
    [v9 setUndecoratedSubtitle:v18];
  }

  if (v17 != [v9 BOOLeanForKey:@"MapsSuggestionsNeedsETATrackingKey"])
  {
    [v9 setBoolean:v17 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
    v7 = 1;
  }

  if ([v9 containsKey:@"MapsSuggestionsCalendarIsSharedToMeKey"] && objc_msgSend(v9, "BOOLeanForKey:", @"MapsSuggestionsCalendarIsSharedToMeKey"))
  {
    GEOConfigGetDouble();
    [v9 setWeight:?];
    v7 = 1;
  }

LABEL_39:
  return v7;
}

@end