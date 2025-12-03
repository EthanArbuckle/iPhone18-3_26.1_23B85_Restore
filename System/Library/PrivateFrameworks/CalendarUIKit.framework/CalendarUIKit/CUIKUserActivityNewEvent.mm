@interface CUIKUserActivityNewEvent
- (CUIKUserActivityNewEvent)eventWithEventStore:(id)store;
- (CUIKUserActivityNewEvent)initWithDictionary:(id)dictionary;
- (id)dictionary;
@end

@implementation CUIKUserActivityNewEvent

- (CUIKUserActivityNewEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v49.receiver = self;
  v49.super_class = CUIKUserActivityNewEvent;
  v5 = [(CUIKUserActivity *)&v49 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_17;
  }

  v48 = 0;
  v6 = [objc_opt_class() _stringFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.title" error:&v48];
  title = v5->_title;
  v5->_title = v6;

  if (v48 != 1)
  {
    [objc_opt_class() _doubleFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.startDate" error:&v48];
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

    [objc_opt_class() _doubleFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.endDate" error:&v48];
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

    v5->_allDay = [objc_opt_class() _BOOLFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.allDay" error:0];
    v37 = [objc_opt_class() _stringFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.location" error:0];
    location = v5->_location;
    v5->_location = v37;

    v39 = [objc_opt_class() _stringFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.notes" error:0];
    notes = v5->_notes;
    v5->_notes = v39;

    v41 = [objc_opt_class() _stringFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.timeZone" error:0];
    if (v41)
    {
      v42 = [MEMORY[0x1E695DFE8] timeZoneWithName:v41];
      timeZone = v5->_timeZone;
      v5->_timeZone = v42;
    }

    v44 = [objc_opt_class() _stringFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.url" error:0];
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

- (CUIKUserActivityNewEvent)eventWithEventStore:(id)store
{
  v4 = [MEMORY[0x1E6966A08] eventWithEventStore:store];
  startDate = [(CUIKUserActivityNewEvent *)self startDate];
  [v4 setStartDate:startDate];

  endDate = [(CUIKUserActivityNewEvent *)self endDate];
  [v4 setEndDateUnadjustedForLegacyClients:endDate];

  timeZone = [(CUIKUserActivityNewEvent *)self timeZone];
  [v4 setTimeZone:timeZone];

  [v4 setAllDay:{-[CUIKUserActivityNewEvent allDay](self, "allDay")}];
  title = [(CUIKUserActivityNewEvent *)self title];
  [v4 setTitle:title];

  v9 = [(CUIKUserActivityNewEvent *)self url];
  [v4 setURL:v9];

  notes = [(CUIKUserActivityNewEvent *)self notes];
  [v4 setNotes:notes];

  location = [(CUIKUserActivityNewEvent *)self location];
  [v4 setLocation:location];

  return v4;
}

- (id)dictionary
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v15.receiver = self;
  v15.super_class = CUIKUserActivityNewEvent;
  dictionary = [(CUIKUserActivity *)&v15 dictionary];
  v5 = [v3 initWithDictionary:dictionary];

  startDate = [(CUIKUserActivityNewEvent *)self startDate];
  [v5 setObject:startDate forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.startDate"];

  endDate = [(CUIKUserActivityNewEvent *)self endDate];
  [v5 setObject:endDate forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];

  timeZone = [(CUIKUserActivityNewEvent *)self timeZone];
  [v5 setObject:timeZone forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.timeZone"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[CUIKUserActivityNewEvent allDay](self, "allDay")}];
  [v5 setObject:v9 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.allDay"];

  title = [(CUIKUserActivityNewEvent *)self title];
  [v5 setObject:title forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.title"];

  v11 = [(CUIKUserActivityNewEvent *)self url];
  [v5 setObject:v11 forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.url"];

  notes = [(CUIKUserActivityNewEvent *)self notes];
  [v5 setObject:notes forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.notes"];

  location = [(CUIKUserActivityNewEvent *)self location];
  [v5 setObject:location forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.location"];

  return v5;
}

@end