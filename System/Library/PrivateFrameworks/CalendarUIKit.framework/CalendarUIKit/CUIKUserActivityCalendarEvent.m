@interface CUIKUserActivityCalendarEvent
- (CUIKUserActivityCalendarEvent)initWithDictionary:(id)a3;
- (CUIKUserActivityCalendarEvent)initWithEvent:(id)a3 view:(unint64_t)a4 forceLocal:(BOOL)a5;
- (id)dictionary;
- (id)eventFromStore:(id)a3;
- (void)updateActivity:(id)a3;
@end

@implementation CUIKUserActivityCalendarEvent

- (CUIKUserActivityCalendarEvent)initWithEvent:(id)a3 view:(unint64_t)a4 forceLocal:(BOOL)a5
{
  v9 = a3;
  v10 = v9;
  if (a5)
  {
    v11 = 0;
  }

  else
  {
    v5 = [v9 calendar];
    v11 = [v5 source];
  }

  v33.receiver = self;
  v33.super_class = CUIKUserActivityCalendarEvent;
  v12 = [(CUIKUserActivityWithSource *)&v33 initWithSource:v11 type:4098];
  if (!a5)
  {
  }

  if (v12)
  {
    v13 = [v10 title];
    title = v12->_title;
    v12->_title = v13;

    v15 = [v10 startDate];
    startDate = v12->_startDate;
    v12->_startDate = v15;

    v17 = [v10 endDateUnadjustedForLegacyClients];
    endDate = v12->_endDate;
    v12->_endDate = v17;

    v19 = [v10 location];
    location = v12->_location;
    v12->_location = v19;

    v12->_view = a4;
    if (!v12->_title || !v12->_startDate || -[CUIKUserActivityWithSource _supportsConsistentExternalIDAcrossDevices](v12, "_supportsConsistentExternalIDAcrossDevices") && ([v10 uniqueId], v21 = objc_claimAutoreleasedReturnValue(), externalID = v12->_externalID, v12->_externalID = v21, externalID, !v12->_externalID))
    {
      v31 = 0;
      goto LABEL_14;
    }

    v23 = MEMORY[0x1E696AEC0];
    v24 = [v10 UUID];
    v25 = [v10 startDate];
    [v25 timeIntervalSinceReferenceDate];
    v27 = [v23 stringWithFormat:@"%@.%f", v24, v26];
    relatedUniqueIdentifier = v12->_relatedUniqueIdentifier;
    v12->_relatedUniqueIdentifier = v27;

    [(CUIKUserActivity *)v12 setActivityTitle:v12->_title];
    v29 = CUIKBundle();
    v30 = [v29 localizedStringForKey:@"Calendar Event" value:&stru_1F4AA8958 table:0];
    [(CUIKUserActivity *)v12 setActivitySubtitle:v30];
  }

  v31 = v12;
LABEL_14:

  return v31;
}

- (CUIKUserActivityCalendarEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CUIKUserActivityCalendarEvent;
  v5 = [(CUIKUserActivityWithSource *)&v23 initWithDictionary:v4];
  if (v5 && ((v22 = 0, [objc_opt_class() _stringFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.title" error:&v22], v6 = objc_claimAutoreleasedReturnValue(), title = v5->_title, v5->_title = v6, title, (v22 & 1) != 0) || (objc_msgSend(objc_opt_class(), "_doubleFromDictionary:key:error:", v4, @"com.apple.calendarUIKit.userActivity.date", &v22), (v22 & 1) != 0) || (v9 = objc_msgSend(objc_alloc(MEMORY[0x1E695DF00]), "initWithTimeIntervalSinceReferenceDate:", v8), startDate = v5->_startDate, v5->_startDate = v9, startDate, objc_msgSend(objc_opt_class(), "_doubleFromDictionary:key:error:", v4, @"com.apple.calendarUIKit.userActivity.endDate", &v22), (v22 & 1) != 0) || ((v13 = objc_msgSend(objc_alloc(MEMORY[0x1E695DF00]), "initWithTimeIntervalSinceReferenceDate:", v11), endDate = v5->_endDate, v5->_endDate = v13, endDate, objc_msgSend(objc_opt_class(), "_stringFromDictionary:key:error:", v4, @"com.apple.calendarUIKit.userActivity.location", 0), v15 = objc_claimAutoreleasedReturnValue(), location = v5->_location, v5->_location = v15, location, v17 = objc_msgSend(objc_opt_class(), "_unsignedIntegerFromDictionary:key:error:", v4, @"com.apple.calendarUIKit.userActivity.view", &v22), !v22) ? (v18 = v17) : (v18 = 0), (v5->_view = v18, -[CUIKUserActivityWithSource _supportsConsistentExternalIDAcrossDevices](v5, "_supportsConsistentExternalIDAcrossDevices")) && (objc_msgSend(objc_opt_class(), "_stringFromDictionary:key:error:", v4, @"com.apple.calendarUIKit.userActivity.externalID", &v22), v19 = objc_claimAutoreleasedReturnValue(), externalID = v5->_externalID, v5->_externalID = v19, externalID, (v22 & 1) != 0))))
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

- (id)dictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v16.receiver = self;
  v16.super_class = CUIKUserActivityCalendarEvent;
  v4 = [(CUIKUserActivityWithSource *)&v16 dictionary];
  v5 = [v3 initWithDictionary:v4];

  v17[0] = @"com.apple.calendarUIKit.userActivity.date";
  v6 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  v18[0] = v7;
  v17[1] = @"com.apple.calendarUIKit.userActivity.endDate";
  v8 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  v9 = [v8 numberWithDouble:?];
  v18[1] = v9;
  v17[2] = @"com.apple.calendarUIKit.userActivity.view";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_view];
  v17[3] = @"com.apple.calendarUIKit.userActivity.title";
  title = self->_title;
  v18[2] = v10;
  v18[3] = title;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  [v5 addEntriesFromDictionary:v12];

  location = self->_location;
  if (location)
  {
    [v5 setObject:location forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.location"];
  }

  externalID = self->_externalID;
  if (externalID)
  {
    [v5 setObject:externalID forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.externalID"];
  }

  return v5;
}

- (id)eventFromStore:(id)a3
{
  v4 = a3;
  if ([(CUIKUserActivityWithSource *)self _supportsConsistentExternalIDAcrossDevices])
  {
    v5 = [v4 allEventsWithUniqueId:self->_externalID occurrenceDate:self->_startDate];
    if ([v5 count] == 1)
    {
      v6 = [v5 firstObject];
      goto LABEL_13;
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  if (![v5 count])
  {
    startDate = self->_startDate;
    v8 = [(NSDate *)startDate dateByAddingTimeInterval:1.0];
    v9 = [v4 predicateForEventsWithStartDate:startDate endDate:v8 calendars:0];

    v10 = [v4 eventsMatchingPredicate:v9];

    v5 = v10;
  }

  v11 = objc_opt_new();
  v12 = self->_title;
  v13 = self->_startDate;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __48__CUIKUserActivityCalendarEvent_eventFromStore___block_invoke;
  v27[3] = &unk_1E8399880;
  v14 = v13;
  v28 = v14;
  v15 = v12;
  v29 = v15;
  v16 = v11;
  v30 = v16;
  [v5 enumerateObjectsUsingBlock:v27];
  if ([v16 count])
  {
    if ([v16 count] == 1)
    {
      v6 = [v16 firstObject];
    }

    else
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__0;
      v25 = __Block_byref_object_dispose__0;
      v26 = 0;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v20 = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __48__CUIKUserActivityCalendarEvent_eventFromStore___block_invoke_92;
      v18[3] = &unk_1E83998A8;
      v18[4] = self;
      v18[5] = &v21;
      v18[6] = v19;
      [v16 enumerateObjectsUsingBlock:v18];
      v6 = v22[5];
      _Block_object_dispose(v19, 8);
      _Block_object_dispose(&v21, 8);
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:

  return v6;
}

void __48__CUIKUserActivityCalendarEvent_eventFromStore___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 startDate];
  if ([v3 isEqualToDate:*(a1 + 32)])
  {
    v4 = [v6 title];
    v5 = [v4 isEqualToString:*(a1 + 40)];

    if (v5)
    {
      [*(a1 + 48) addObject:v6];
    }
  }

  else
  {
  }
}

void __48__CUIKUserActivityCalendarEvent_eventFromStore___block_invoke_92(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[4];
  v18 = v7;
  v9 = [v7 calendar];
  v10 = [v9 source];
  v11 = [v8 isMatchForSource:v10];

  if (v11 == 2)
  {
    v15 = *(a1[6] + 8);
    v16 = *(a1[5] + 8);
    v17 = *(v16 + 40);
    if (*(v15 + 24) != 1)
    {
      if (v17)
      {
        goto LABEL_13;
      }

      *(v15 + 24) = 1;
      goto LABEL_11;
    }

    if (v17)
    {
      *(v16 + 40) = 0;
    }
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_13;
    }

    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    v14 = *(a1[6] + 8);
    if (!v13 || (*(v14 + 24) & 1) != 0)
    {
      *(v14 + 24) = 0;
LABEL_11:
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      goto LABEL_13;
    }

    *(v12 + 40) = 0;

    *a4 = 1;
  }

LABEL_13:
}

- (void)updateActivity:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CUIKUserActivityCalendarEvent;
  [(CUIKUserActivity *)&v13 updateActivity:v4];
  v5 = [v4 contentAttributeSet];
  v6 = [v5 copy];

  if (!v6)
  {
    v7 = objc_alloc(EKWeakLinkClass());
    v8 = [v4 activityType];
    v6 = [v7 initWithItemContentType:v8];
  }

  [v6 setStartDate:self->_startDate];
  [v6 setEndDate:self->_endDate];
  [v6 setNamedLocation:self->_location];
  [v6 setRelatedUniqueIdentifier:self->_relatedUniqueIdentifier];
  [v4 setContentAttributeSet:v6];
  if ([(CUIKUserActivityWithSource *)self _supportsConsistentExternalIDAcrossDevices])
  {
    externalID = self->_externalID;
    if (externalID)
    {
      v10 = MEMORY[0x1E696AEC0];
      [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
      v12 = [v10 stringWithFormat:@"%@.%f", externalID, v11];
      [v4 setPersistentIdentifier:v12];
    }
  }
}

@end