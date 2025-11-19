@interface CUIKUserActivityCalendarDate
- (CUIKUserActivityCalendarDate)initWithDate:(id)a3 view:(unint64_t)a4;
- (CUIKUserActivityCalendarDate)initWithDate:(id)a3 view:(unint64_t)a4 calendar:(id)a5;
- (CUIKUserActivityCalendarDate)initWithDictionary:(id)a3;
- (id)dictionary;
- (void)updateActivity:(id)a3;
@end

@implementation CUIKUserActivityCalendarDate

- (id)dictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v11.receiver = self;
  v11.super_class = CUIKUserActivityCalendarDate;
  v4 = [(CUIKUserActivity *)&v11 dictionary];
  v5 = [v3 initWithDictionary:v4];

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

- (CUIKUserActivityCalendarDate)initWithDate:(id)a3 view:(unint64_t)a4 calendar:(id)a5
{
  v9 = a3;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = CUIKUserActivityCalendarDate;
  v11 = [(CUIKUserActivity *)&v21 initWithType:4097];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  objc_storeStrong(&v11->_date, a3);
  v12->_view = a4;
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v14 = @"Calendar Day View";
      }

      else
      {
        if (a4 != 2)
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

  if (a4 <= 4)
  {
    if (a4 != 3)
    {
      v13 = [CUIKDateStrings yearStringForDate:v9 inCalendar:v10];
      [(CUIKUserActivity *)v12 setActivityTitle:v13];

      v14 = @"Calendar Year View";
      goto LABEL_16;
    }

LABEL_13:
    v15 = [CUIKDateStrings yearMonthStringForDate:v9 inCalendar:v10];
    [(CUIKUserActivity *)v12 setActivityTitle:v15];

    v14 = @"Calendar Month View";
    goto LABEL_16;
  }

  if (a4 == 6)
  {
    goto LABEL_13;
  }

  if (a4 != 5)
  {
    goto LABEL_17;
  }

  v14 = @"Calendar List View";
LABEL_16:
  v16 = CUIKBundle();
  v17 = [v16 localizedStringForKey:v14 value:&stru_1F4AA8958 table:0];
  [(CUIKUserActivity *)v12 setActivitySubtitle:v17];

LABEL_17:
  v18 = [(CUIKUserActivity *)v12 activityTitle];

  if (!v18)
  {
    v19 = [CUIKDateStrings longStringForDate:v9 inCalendar:v10];
    [(CUIKUserActivity *)v12 setActivityTitle:v19];
  }

LABEL_19:

  return v12;
}

- (CUIKUserActivityCalendarDate)initWithDate:(id)a3 view:(unint64_t)a4
{
  v6 = MEMORY[0x1E695DEE8];
  v7 = a3;
  v8 = [v6 currentCalendar];
  v9 = [(CUIKUserActivityCalendarDate *)self initWithDate:v7 view:a4 calendar:v8];

  return v9;
}

- (CUIKUserActivityCalendarDate)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CUIKUserActivityCalendarDate;
  v5 = [(CUIKUserActivity *)&v14 initWithDictionary:v4];
  if (!v5)
  {
LABEL_8:
    v7 = v5;
    goto LABEL_9;
  }

  v13 = 0;
  [objc_opt_class() _doubleFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.date" error:&v13];
  if ((v13 & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v6];
    date = v5->_date;
    v5->_date = v8;

    v10 = [objc_opt_class() _unsignedIntegerFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.view" error:&v13];
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

- (void)updateActivity:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = CUIKUserActivityCalendarDate;
  [(CUIKUserActivity *)&v5 updateActivity:v4];
  [v4 _setEligibleForPrediction:0];
  if ([(CUIKUserActivity *)self type]== 4097)
  {
    [v4 _setEligibleForUserActivityIndexing:0];
  }
}

@end