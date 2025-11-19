@interface CUIKPreferences
+ (id)sharedPreferences;
- (BOOL)showListView;
- (BOOL)showMonthDividedListView;
- (CUIKPreferences)init;
- (NSArray)calendarUUIDsExcludedFromNotifications;
- (NSArray)deselectedCalendarSyncHashes;
- (NSDate)lastViewedOccurrenceDate;
- (NSDate)simulatedCurrentDate;
- (NSNumber)dayViewFirstVisibleSecond;
- (NSNumber)dayViewHourScale;
- (NSNumber)lastSidebarMode;
- (NSNumber)lastSuspendTime;
- (NSNumber)lastViewMode;
- (NSNumber)lastViewedDate;
- (NSNumber)weekStart;
- (NSNumber)weekViewHourScale;
- (NSString)lastViewedOccurrenceUID;
- (NSString)overlayCalendarID;
- (NSString)searchString;
- (int64_t)numDaysToShow;
- (unint64_t)monthViewEventScaleSize;
- (unint64_t)monthViewScaleSize;
- (unint64_t)promptForCommentWhenDeclining;
- (void)setMonthViewEventScaleSize:(unint64_t)a3;
- (void)setMonthViewScaleSize:(unint64_t)a3;
- (void)setPromptForCommentWhenDeclining:(unint64_t)a3;
- (void)setSimulatedCurrentDate:(id)a3;
@end

@implementation CUIKPreferences

uint64_t __36__CUIKPreferences_sharedPreferences__block_invoke()
{
  sharedPreferences_sharedPreferences = objc_alloc_init(CUIKPreferences);

  return MEMORY[0x1EEE66BB8]();
}

- (CUIKPreferences)init
{
  v7.receiver = self;
  v7.super_class = CUIKPreferences;
  v2 = [(CUIKPreferences *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E6993020]);
    v4 = [v3 initWithDomain:*MEMORY[0x1E6993168]];
    preferences = v2->_preferences;
    v2->_preferences = v4;

    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.calendarsExcludedFromNotifications"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.requestSyncOnApplicationLaunch"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.showweeknumbers"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.weekViewStartsOnToday"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.showlistview"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.viewedTimeZoneAutomatic"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.drawDebugViewColors"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.immediateAlarmCreation"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.eventsInMonthView"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.weekStart"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.overlayCalendarID"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.LocationSearchResultLimit"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.PromptForCommentWhenDeclining"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.ShowExperimentalUI"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.DisableContinuity"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.swipeToDeleteEnabled"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.largeListViewDisclosingEventDetails"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.showWindowDebugButton"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.shortResumeToTodayTimeout"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.HighColorCarplayChanged"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.OverrideLocaleWeekends"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.AllowSubscribedCalendarSpamDetection"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.monthWeekScale"];
  }

  return v2;
}

- (NSNumber)weekStart
{
  preferences = self->_preferences;
  v3 = *MEMORY[0x1E6992E80];
  v4 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:v3 expectedClass:v4];
}

+ (id)sharedPreferences
{
  if (sharedPreferences_onceToken != -1)
  {
    +[CUIKPreferences sharedPreferences];
  }

  v3 = sharedPreferences_sharedPreferences;

  return v3;
}

- (NSNumber)lastSuspendTime
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"LastSuspendTime" expectedClass:v3];
}

- (NSNumber)lastViewMode
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"LastViewType" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F4ABEC90;
  }

  v5 = v4;

  return v4;
}

- (BOOL)showMonthDividedListView
{
  v3 = CUIKShouldSaveStateInPreferences();
  if (v3)
  {
    preferences = self->_preferences;

    LOBYTE(v3) = [(CalPreferences *)preferences getBooleanPreference:@"ShowMonthDividedListView" defaultValue:0];
  }

  return v3;
}

- (BOOL)showListView
{
  v3 = CUIKShouldSaveStateInPreferences();
  if (v3)
  {
    preferences = self->_preferences;

    LOBYTE(v3) = [(CalPreferences *)preferences getBooleanPreference:@"ShowListView" defaultValue:0];
  }

  return v3;
}

- (int64_t)numDaysToShow
{
  if (!CUIKShouldSaveStateInPreferences())
  {
    return 1;
  }

  preferences = self->_preferences;

  return [(CalPreferences *)preferences getIntegerPreference:@"NumDaysToShow" defaultValue:1];
}

- (NSNumber)lastSidebarMode
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"LastSidebarMode" expectedClass:objc_opt_class()];
  if (!v2)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  }

  return v2;
}

- (NSNumber)dayViewFirstVisibleSecond
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"DayViewFirstVisibleSecond" expectedClass:v3];
}

- (unint64_t)monthViewScaleSize
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"MonthViewScaleSize" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (NSNumber)dayViewHourScale
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"DayViewHourScale" expectedClass:v3];
}

- (NSString)overlayCalendarID
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"overlayCalendarID" expectedClass:objc_opt_class()];
  if (!v2)
  {
    if ([MEMORY[0x1E69AAE08] isLunarCalendarDefaultOn])
    {
      v3 = MEMORY[0x1E69AAE08];
      v4 = [MEMORY[0x1E695DF58] currentLocale];
      v5 = [v4 localeIdentifier];
      v2 = [v3 preferredLunarCalendarForLocaleID:v5];
    }

    else
    {
      v2 = &stru_1F4AA8958;
    }
  }

  return v2;
}

- (NSDate)simulatedCurrentDate
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"SimulatedCurrentDate" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DF00];
    [v2 doubleValue];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSimulatedCurrentDate:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AD98];
    [a3 timeIntervalSinceReferenceDate];
    v5 = [v4 numberWithDouble:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(CalPreferences *)self->_preferences setValueForPreference:@"SimulatedCurrentDate" value:v5 notificationName:0];
}

- (NSNumber)lastViewedDate
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"LastViewedDate" expectedClass:v3];
}

- (NSNumber)weekViewHourScale
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"WeekViewHourScale" expectedClass:v3];
}

- (void)setMonthViewScaleSize:(unint64_t)a3
{
  preferences = self->_preferences;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(CalPreferences *)preferences setValueForPreference:@"MonthViewScaleSize" value:v4 notificationName:@"com.apple.mobilecal.preference.notification.monthWeekScale"];
}

- (unint64_t)monthViewEventScaleSize
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"MonthViewEventScaleSize" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (void)setMonthViewEventScaleSize:(unint64_t)a3
{
  preferences = self->_preferences;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(CalPreferences *)preferences setValueForPreference:@"MonthViewEventScaleSize" value:v4 notificationName:0];
}

- (NSString)searchString
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"searchString" expectedClass:v3];
}

- (NSArray)calendarUUIDsExcludedFromNotifications
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"CalendarsExcludedFromNotifications" expectedClass:objc_opt_class()];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DEC8] array];
  }

  return v2;
}

- (unint64_t)promptForCommentWhenDeclining
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"PromptForCommentWhenDeclining" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setPromptForCommentWhenDeclining:(unint64_t)a3
{
  preferences = self->_preferences;
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
  [(CalPreferences *)preferences setValueForPreference:@"PromptForCommentWhenDeclining" value:v4 notificationName:@"com.apple.mobilecal.preference.notification.PromptForCommentWhenDeclining"];
}

- (NSArray)deselectedCalendarSyncHashes
{
  v2 = [MEMORY[0x1E6966A98] shared];
  v3 = [v2 deselectedCalendarSyncHashes];

  return v3;
}

- (NSString)lastViewedOccurrenceUID
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"LastViewedOccurrenceUID" expectedClass:v3];
}

- (NSDate)lastViewedOccurrenceDate
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"LastViewedOccurrenceDate" expectedClass:v3];
}

@end