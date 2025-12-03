@interface CUIKUserActivityRemindersListDate
- (CUIKUserActivityRemindersListDate)initWithDate:(id)date;
- (CUIKUserActivityRemindersListDate)initWithDate:(id)date calendar:(id)calendar;
- (CUIKUserActivityRemindersListDate)initWithDictionary:(id)dictionary;
- (id)dictionary;
@end

@implementation CUIKUserActivityRemindersListDate

- (CUIKUserActivityRemindersListDate)initWithDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v17.receiver = self;
  v17.super_class = CUIKUserActivityRemindersListDate;
  v9 = [(CUIKUserActivity *)&v17 initWithType:3];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, date);
    v11 = [CUIKDateStrings mediumStringForDate:dateCopy inCalendar:calendarCopy];
    v12 = MEMORY[0x1E696AEC0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v14 = [mainBundle localizedStringForKey:@"Reminders on date" value:@"Reminders on %@" table:0];
    v15 = [v12 localizedStringWithFormat:v14, v11];
    [(CUIKUserActivity *)v10 setActivityTitle:v15];

    [(CUIKUserActivity *)v10 setActivitySubtitle:&stru_1F4AA8958];
  }

  return v10;
}

- (CUIKUserActivityRemindersListDate)initWithDate:(id)date
{
  v4 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v7 = [(CUIKUserActivityRemindersListDate *)self initWithDate:dateCopy calendar:currentCalendar];

  return v7;
}

- (CUIKUserActivityRemindersListDate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CUIKUserActivityRemindersListDate;
  v5 = [(CUIKUserActivity *)&v12 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  v11 = 0;
  [objc_opt_class() _doubleFromDictionary:dictionaryCopy key:@"com.apple.calendarUIKit.userActivity.date" error:&v11];
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
  dictionary = [(CUIKUserActivity *)&v10 dictionary];
  v5 = [v3 initWithDictionary:dictionary];

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