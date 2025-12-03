@interface CUIKUserActivityTomorrow
- (CUIKUserActivityTomorrow)initWithDate:(id)date view:(unint64_t)view calendar:(id)calendar;
- (CUIKUserActivityTomorrow)initWithDictionary:(id)dictionary;
- (id)dictionary;
- (void)updateActivity:(id)activity;
@end

@implementation CUIKUserActivityTomorrow

- (CUIKUserActivityTomorrow)initWithDate:(id)date view:(unint64_t)view calendar:(id)calendar
{
  v9.receiver = self;
  v9.super_class = CUIKUserActivityTomorrow;
  v5 = [(CUIKUserActivityCalendarDate *)&v9 initWithDate:date view:view calendar:calendar];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"View Tomorrow" value:&stru_1F4AA8958 table:0];
    [(CUIKUserActivity *)v5 setActivityTitle:v7];
  }

  return v5;
}

- (CUIKUserActivityTomorrow)initWithDictionary:(id)dictionary
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
  v5 = [v4 valueForKey:@"com.apple.calendarUIKit.userActivity.date"];

  if (!v5)
  {
    v6 = MEMORY[0x1E696AD98];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
    [v4 setValue:v8 forKey:@"com.apple.calendarUIKit.userActivity.date"];
  }

  v11.receiver = self;
  v11.super_class = CUIKUserActivityTomorrow;
  v9 = [(CUIKUserActivityCalendarDate *)&v11 initWithDictionary:v4];

  return v9;
}

- (id)dictionary
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v8.receiver = self;
  v8.super_class = CUIKUserActivityTomorrow;
  dictionary = [(CUIKUserActivityCalendarDate *)&v8 dictionary];
  v5 = [v3 initWithDictionary:dictionary];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v5 setObject:v6 forKey:@"com.apple.calendarUIKit.userActivity.tomorrow"];

  return v5;
}

- (void)updateActivity:(id)activity
{
  v9.receiver = self;
  v9.super_class = CUIKUserActivityTomorrow;
  activityCopy = activity;
  [(CUIKUserActivityCalendarDate *)&v9 updateActivity:activityCopy];
  [activityCopy _setEligibleForPrediction:{1, v9.receiver, v9.super_class}];
  [activityCopy setEligibleForSearch:1];
  v5 = MEMORY[0x1E695DFA8];
  dictionary = [(CUIKUserActivityTomorrow *)self dictionary];
  allKeys = [dictionary allKeys];
  v8 = [v5 setWithArray:allKeys];

  [v8 removeObject:@"com.apple.calendarUIKit.userActivity.date"];
  [v8 removeObject:@"com.apple.calendarUIKit.userActivity.view"];
  [activityCopy setRequiredUserInfoKeys:v8];
}

@end