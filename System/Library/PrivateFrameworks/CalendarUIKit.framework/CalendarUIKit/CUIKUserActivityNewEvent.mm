@interface CUIKUserActivityNewEvent
- (CUIKUserActivityNewEvent)eventWithEventStore:(id)a3;
- (CUIKUserActivityNewEvent)initWithDictionary:(id)a3;
- (id)dictionary;
@end

@implementation CUIKUserActivityNewEvent

- (CUIKUserActivityNewEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = CUIKUserActivityNewEvent;
  v5 = [(CUIKUserActivity *)&v49 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_17;
  }

  v48 = 0;
  v6 = [objc_opt_class() _stringFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.title" error:&v48];
  title = v5->_title;
  v5->_title = v6;

  if (v48 != 1)
  {
    [objc_opt_class() _doubleFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.startDate" error:&v48];
    if (v48 == 1)
    {
      v8 = +[CUIKLogSubsystem continuity];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CUIKUserActivityNewEvent *)v8 initWithDictionary:v17, v18, v19, v20, v21, v22, v23];
      }

      goto LABEL_11;
    }

    v24 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v16];
    startDate = v5->_startDate;
    v5->_startDate = v24;

    [objc_opt_class() _doubleFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.endDate" error:&v48];
    if (v48 == 1)
    {
      v8 = +[CUIKLogSubsystem continuity];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CUIKUserActivityNewEvent *)v8 initWithDictionary:v27, v28, v29, v30, v31, v32, v33];
      }

      goto LABEL_11;
    }

    v35 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v26];
    endDate = v5->_endDate;
    v5->_endDate = v35;

    v5->_allDay = [objc_opt_class() _BOOLFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.allDay" error:0];
    v37 = [objc_opt_class() _stringFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.location" error:0];
    location = v5->_location;
    v5->_location = v37;

    v39 = [objc_opt_class() _stringFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.notes" error:0];
    notes = v5->_notes;
    v5->_notes = v39;

    v41 = [objc_opt_class() _stringFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.timeZone" error:0];
    if (v41)
    {
      v42 = [MEMORY[0x1E695DFE8] timeZoneWithName:v41];
      timeZone = v5->_timeZone;
      v5->_timeZone = v42;
    }

    v44 = [objc_opt_class() _stringFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.url" error:0];
    if (v44)
    {
      v45 = [MEMORY[0x1E695DFF8] URLWithString:v44];
      url = v5->_url;
      v5->_url = v45;
    }

LABEL_17:
    v34 = v5;
    goto LABEL_18;
  }

  v8 = +[CUIKLogSubsystem continuity];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(CUIKUserActivityNewEvent *)v8 initWithDictionary:v9, v10, v11, v12, v13, v14, v15];
  }

LABEL_11:

  v34 = 0;
LABEL_18:

  return v34;
}

- (CUIKUserActivityNewEvent)eventWithEventStore:(id)a3
{
  v4 = [MEMORY[0x1E6966A08] eventWithEventStore:a3];
  v5 = [(CUIKUserActivityNewEvent *)self startDate];
  [v4 setStartDate:v5];

  v6 = [(CUIKUserActivityNewEvent *)self endDate];
  [v4 setEndDateUnadjustedForLegacyClients:v6];

  v7 = [(CUIKUserActivityNewEvent *)self timeZone];
  [v4 setTimeZone:v7];

  [v4 setAllDay:{-[CUIKUserActivityNewEvent allDay](self, "allDay")}];
  v8 = [(CUIKUserActivityNewEvent *)self title];
  [v4 setTitle:v8];

  v9 = [(CUIKUserActivityNewEvent *)self url];
  [v4 setURL:v9];

  v10 = [(CUIKUserActivityNewEvent *)self notes];
  [v4 setNotes:v10];

  v11 = [(CUIKUserActivityNewEvent *)self location];
  [v4 setLocation:v11];

  return v4;
}

- (id)dictionary
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v15.receiver = self;
  v15.super_class = CUIKUserActivityNewEvent;
  v4 = [(CUIKUserActivity *)&v15 dictionary];
  v5 = [v3 initWithDictionary:v4];

  v6 = [(CUIKUserActivityNewEvent *)self startDate];
  [v5 setObject:v6 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.startDate"];

  v7 = [(CUIKUserActivityNewEvent *)self endDate];
  [v5 setObject:v7 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];

  v8 = [(CUIKUserActivityNewEvent *)self timeZone];
  [v5 setObject:v8 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.timeZone"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[CUIKUserActivityNewEvent allDay](self, "allDay")}];
  [v5 setObject:v9 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.allDay"];

  v10 = [(CUIKUserActivityNewEvent *)self title];
  [v5 setObject:v10 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.title"];

  v11 = [(CUIKUserActivityNewEvent *)self url];
  [v5 setObject:v11 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.url"];

  v12 = [(CUIKUserActivityNewEvent *)self notes];
  [v5 setObject:v12 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.notes"];

  v13 = [(CUIKUserActivityNewEvent *)self location];
  [v5 setObject:v13 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.location"];

  return v5;
}

@end