@interface CUIKUserActivityRemindersListDate
- (CUIKUserActivityRemindersListDate)initWithDate:(id)a3;
- (CUIKUserActivityRemindersListDate)initWithDate:(id)a3 calendar:(id)a4;
- (CUIKUserActivityRemindersListDate)initWithDictionary:(id)a3;
- (id)dictionary;
@end

@implementation CUIKUserActivityRemindersListDate

- (CUIKUserActivityRemindersListDate)initWithDate:(id)a3 calendar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CUIKUserActivityRemindersListDate;
  v9 = [(CUIKUserActivity *)&v17 initWithType:3];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, a3);
    v11 = [CUIKDateStrings mediumStringForDate:v7 inCalendar:v8];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E696AAE8] mainBundle];
    v14 = [v13 localizedStringForKey:@"Reminders on date" value:@"Reminders on %@" table:0];
    v15 = [v12 localizedStringWithFormat:v14, v11];
    [(CUIKUserActivity *)v10 setActivityTitle:v15];

    [(CUIKUserActivity *)v10 setActivitySubtitle:&stru_1F4AA8958];
  }

  return v10;
}

- (CUIKUserActivityRemindersListDate)initWithDate:(id)a3
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [(CUIKUserActivityRemindersListDate *)self initWithDate:v5 calendar:v6];

  return v7;
}

- (CUIKUserActivityRemindersListDate)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CUIKUserActivityRemindersListDate;
  v5 = [(CUIKUserActivity *)&v12 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_5;
  }

  v11 = 0;
  [objc_opt_class() _doubleFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.date" error:&v11];
  if ((v11 & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v6];
    date = v5->_date;
    v5->_date = v8;

LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)dictionary
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v10.receiver = self;
  v10.super_class = CUIKUserActivityRemindersListDate;
  v4 = [(CUIKUserActivity *)&v10 dictionary];
  v5 = [v3 initWithDictionary:v4];

  v11 = @"com.apple.calendarUIKit.userActivity.date";
  v6 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v5 addEntriesFromDictionary:v8];

  return v5;
}

@end