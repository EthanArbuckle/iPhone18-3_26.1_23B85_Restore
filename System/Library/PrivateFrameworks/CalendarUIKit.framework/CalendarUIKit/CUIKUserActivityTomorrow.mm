@interface CUIKUserActivityTomorrow
- (CUIKUserActivityTomorrow)initWithDate:(id)a3 view:(unint64_t)a4 calendar:(id)a5;
- (CUIKUserActivityTomorrow)initWithDictionary:(id)a3;
- (id)dictionary;
- (void)updateActivity:(id)a3;
@end

@implementation CUIKUserActivityTomorrow

- (CUIKUserActivityTomorrow)initWithDate:(id)a3 view:(unint64_t)a4 calendar:(id)a5
{
  v9.receiver = self;
  v9.super_class = CUIKUserActivityTomorrow;
  v5 = [(CUIKUserActivityCalendarDate *)&v9 initWithDate:a3 view:a4 calendar:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"View Tomorrow" value:&stru_1F4AA8958 table:0];
    [(CUIKUserActivity *)v5 setActivityTitle:v7];
  }

  return v5;
}

- (CUIKUserActivityTomorrow)initWithDictionary:(id)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a3];
  v5 = [v4 valueForKey:@"com.apple.calendarUIKit.userActivity.date"];

  if (!v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceReferenceDate];
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
  v4 = [(CUIKUserActivityCalendarDate *)&v8 dictionary];
  v5 = [v3 initWithDictionary:v4];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v5 setObject:v6 forKey:@"com.apple.calendarUIKit.userActivity.tomorrow"];

  return v5;
}

- (void)updateActivity:(id)a3
{
  v9.receiver = self;
  v9.super_class = CUIKUserActivityTomorrow;
  v4 = a3;
  [(CUIKUserActivityCalendarDate *)&v9 updateActivity:v4];
  [v4 _setEligibleForPrediction:{1, v9.receiver, v9.super_class}];
  [v4 setEligibleForSearch:1];
  v5 = MEMORY[0x1E695DFA8];
  v6 = [(CUIKUserActivityTomorrow *)self dictionary];
  v7 = [v6 allKeys];
  v8 = [v5 setWithArray:v7];

  [v8 removeObject:@"com.apple.calendarUIKit.userActivity.date"];
  [v8 removeObject:@"com.apple.calendarUIKit.userActivity.view"];
  [v4 setRequiredUserInfoKeys:v8];
}

@end