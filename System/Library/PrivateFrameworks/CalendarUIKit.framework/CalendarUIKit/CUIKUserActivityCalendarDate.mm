@interface CUIKUserActivityCalendarDate
- (CUIKUserActivityCalendarDate)initWithDate:(id)date view:(unint64_t)view;
- (CUIKUserActivityCalendarDate)initWithDate:(id)date view:(unint64_t)view calendar:(id)calendar;
- (CUIKUserActivityCalendarDate)initWithDictionary:(id)dictionary;
- (id)dictionary;
- (void)updateActivity:(id)activity;
@end

@implementation CUIKUserActivityCalendarDate

- (id)dictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v11.receiver = self;
  v11.super_class = CUIKUserActivityCalendarDate;
  dictionary = [(CUIKUserActivity *)&v11 dictionary];
  v5 = [v3 initWithDictionary:dictionary];

  v12[0] = @"com.apple.calendarUIKit.userActivity.date";
  v6 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  v12[1] = @"com.apple.calendarUIKit.userActivity.view";
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_view];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v5 addEntriesFromDictionary:v9];

  return v5;
}

- (CUIKUserActivityCalendarDate)initWithDate:(id)date view:(unint64_t)view calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v21.receiver = self;
  v21.super_class = CUIKUserActivityCalendarDate;
  v11 = [(CUIKUserActivity *)&v21 initWithType:4097];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  objc_storeStrong(&v11->_date, date);
  v12->_view = view;
  if (view <= 2)
  {
    if (view)
    {
      if (view == 1)
      {
        v14 = @"Calendar Day View";
      }

      else
      {
        if (view != 2)
        {
          goto LABEL_17;
        }

        v14 = @"Calendar Week View";
      }
    }

    else
    {
      v14 = @"Calendar";
    }

    goto LABEL_16;
  }

  if (view <= 4)
  {
    if (view != 3)
    {
      v13 = [CUIKDateStrings yearStringForDate:dateCopy inCalendar:calendarCopy];
      [(CUIKUserActivity *)v12 setActivityTitle:v13];

      v14 = @"Calendar Year View";
      goto LABEL_16;
    }

LABEL_13:
    v15 = [CUIKDateStrings yearMonthStringForDate:dateCopy inCalendar:calendarCopy];
    [(CUIKUserActivity *)v12 setActivityTitle:v15];

    v14 = @"Calendar Month View";
    goto LABEL_16;
  }

  if (view == 6)
  {
    goto LABEL_13;
  }

  if (view != 5)
  {
    goto LABEL_17;
  }

  v14 = @"Calendar List View";
LABEL_16:
  v16 = CUIKBundle();
  v17 = [v16 localizedStringForKey:v14 value:&stru_1F4AA8958 table:0];
  [(CUIKUserActivity *)v12 setActivitySubtitle:v17];

LABEL_17:
  activityTitle = [(CUIKUserActivity *)v12 activityTitle];

  if (!activityTitle)
  {
    v19 = [CUIKDateStrings longStringForDate:dateCopy inCalendar:calendarCopy];
    [(CUIKUserActivity *)v12 setActivityTitle:v19];
  }

LABEL_19:

  return v12;
}

- (CUIKUserActivityCalendarDate)initWithDate:(id)date view:(unint64_t)view
{
  v6 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v6 currentCalendar];
  v9 = [(CUIKUserActivityCalendarDate *)self initWithDate:dateCopy view:view calendar:currentCalendar];

  return v9;
}

- (CUIKUserActivityCalendarDate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CUIKUserActivityCalendarDate;
  v5 = [(CUIKUserActivity *)&v14 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
LABEL_8:
    v7 = v5;
    goto LABEL_9;
  }

  v13 = 0;
  [objc_opt_class() _doubleFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.date" error:&v13];
  if ((v13 & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v6];
    date = v5->_date;
    v5->_date = v8;

    v10 = [objc_opt_class() _unsignedIntegerFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.view" error:&v13];
    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v5->_view = v11;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)updateActivity:(id)activity
{
  activityCopy = activity;
  v5.receiver = self;
  v5.super_class = CUIKUserActivityCalendarDate;
  [(CUIKUserActivity *)&v5 updateActivity:activityCopy];
  [activityCopy _setEligibleForPrediction:0];
  if ([(CUIKUserActivity *)self type]== 4097)
  {
    [activityCopy _setEligibleForUserActivityIndexing:0];
  }
}

@end