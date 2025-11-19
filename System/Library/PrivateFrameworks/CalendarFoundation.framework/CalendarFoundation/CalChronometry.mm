@interface CalChronometry
+ (id)activeCalendar;
+ (id)currentLanguageCode;
+ (id)currentLocationCode;
+ (void)_configureChronometry;
+ (void)_currentLocaleDidChange:(id)a3;
+ (void)_currentTimeZoneDidChange:(id)a3;
+ (void)_resetTodayRolloverTimer;
+ (void)_todayRolloverTimerFired;
+ (void)_updateActiveCalendar;
+ (void)_updateActiveTimeZone;
+ (void)_updateEveything;
+ (void)_updateForLocaleChange;
+ (void)initialize;
+ (void)setActiveTimeZone:(id)a3;
@end

@implementation CalChronometry

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 _configureChronometry];
  }
}

+ (void)_configureChronometry
{
  if ((_configureChronometry___DidInitialize & 1) == 0)
  {
    _configureChronometry___DidInitialize = 1;
    [a1 _updateActiveCalendar];
    +[CalDateLocalization initializeFormatters];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:a1 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:a1 selector:sel__currentTimeZoneDidChange_ name:*MEMORY[0x1E695DA68] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:a1 selector:sel__resetTodayRolloverTimer name:*MEMORY[0x1E695DA60] object:0];
  }
}

+ (void)_currentLocaleDidChange:(id)a3
{
  [a1 cancelPreviousPerformRequestsWithTarget:a1 selector:sel__updateForLocaleChange object:0];

  [a1 performSelector:sel__updateForLocaleChange withObject:0 afterDelay:0.5];
}

+ (void)_updateForLocaleChange
{
  [a1 _updateEveything];
  v2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v2 postNotificationName:@"com.apple.calendar.LocaleChanged" object:0];
}

+ (void)_currentTimeZoneDidChange:(id)a3
{
  [a1 _updateActiveTimeZone];

  [a1 _resetTodayRolloverTimer];
}

+ (void)_updateEveything
{
  [a1 _updateActiveCalendar];
  +[CalDateLocalization rebuildFormatters];

  +[CalDateLocalization rebuildWeekendDays];
}

+ (void)setActiveTimeZone:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [a1 activeTimeZone];
    v5 = [v6 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      [MEMORY[0x1E695DFE8] setDefaultTimeZone:v6];
      [a1 _updateActiveTimeZone];
      [a1 _resetTodayRolloverTimer];
    }
  }
}

+ (void)_updateActiveTimeZone
{
  [a1 _updateActiveCalendar];
  +[CalDateLocalization rebuildFormatters];
  v2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v2 postNotificationName:@"com.apple.calendar.TimeZoneChanged" object:0];
}

+ (void)_updateActiveCalendar
{
  obj = [MEMORY[0x1E695DEE8] currentCalendar];
  if (!obj)
  {
    abort();
  }

  v3 = a1;
  objc_sync_enter(v3);
  if (__ActiveCalendar != obj)
  {
    objc_storeStrong(&__ActiveCalendar, obj);
    v4 = __ActiveCalendar;
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    [v4 setLocale:v5];

    v6 = __ActiveCalendar;
    v7 = [v3 activeTimeZone];
    [v6 setTimeZone:v7];
  }

  objc_sync_exit(v3);
}

+ (id)activeCalendar
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = __ActiveCalendar;
  objc_sync_exit(v2);

  return v3;
}

+ (id)currentLocationCode
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 localeIdentifier];

  v4 = [v3 componentsSeparatedByString:@"_"];
  if ([v4 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:1];
  }

  return v5;
}

+ (id)currentLanguageCode
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 localeIdentifier];

  v4 = [v3 componentsSeparatedByString:@"_"];
  if ([v4 count] < 2)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v4 objectAtIndex:0];
  }

  v6 = v5;
  v7 = v5;

  return v6;
}

+ (void)_resetTodayRolloverTimer
{
  [_todayRolloverTimer invalidate];
  v3 = _todayRolloverTimer;
  _todayRolloverTimer = 0;

  v4 = [a1 activeTimeZone];
  v5 = [MEMORY[0x1E695DFE8] systemTimeZone];
  v6 = [v4 isEquivalentTo:v5];

  if ((v6 & 1) == 0)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v16 setDay:1];
    v7 = [a1 activeCalendar];
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [v7 dateByAddingComponents:v16 toDate:v8 options:0];

    v10 = [v7 components:30 fromDate:v9];
    v11 = [v7 dateFromComponents:v10];
    v12 = MEMORY[0x1E695DFF0];
    v13 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:v13];
    v14 = [v12 scheduledTimerWithTimeInterval:a1 target:sel__todayRolloverTimerFired selector:0 userInfo:0 repeats:?];
    v15 = _todayRolloverTimer;
    _todayRolloverTimer = v14;
  }
}

+ (void)_todayRolloverTimerFired
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"CalChronometryTodayChangedNotification" object:0];

  [a1 _resetTodayRolloverTimer];
}

@end