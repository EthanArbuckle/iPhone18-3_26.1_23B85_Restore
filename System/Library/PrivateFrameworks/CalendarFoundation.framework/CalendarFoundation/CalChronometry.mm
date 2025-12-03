@interface CalChronometry
+ (id)activeCalendar;
+ (id)currentLanguageCode;
+ (id)currentLocationCode;
+ (void)_configureChronometry;
+ (void)_currentLocaleDidChange:(id)change;
+ (void)_currentTimeZoneDidChange:(id)change;
+ (void)_resetTodayRolloverTimer;
+ (void)_todayRolloverTimerFired;
+ (void)_updateActiveCalendar;
+ (void)_updateActiveTimeZone;
+ (void)_updateEveything;
+ (void)_updateForLocaleChange;
+ (void)initialize;
+ (void)setActiveTimeZone:(id)zone;
@end

@implementation CalChronometry

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self _configureChronometry];
  }
}

+ (void)_configureChronometry
{
  if ((_configureChronometry___DidInitialize & 1) == 0)
  {
    _configureChronometry___DidInitialize = 1;
    [self _updateActiveCalendar];
    +[CalDateLocalization initializeFormatters];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__currentLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__currentTimeZoneDidChange_ name:*MEMORY[0x1E695DA68] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__resetTodayRolloverTimer name:*MEMORY[0x1E695DA60] object:0];
  }
}

+ (void)_currentLocaleDidChange:(id)change
{
  [self cancelPreviousPerformRequestsWithTarget:self selector:sel__updateForLocaleChange object:0];

  [self performSelector:sel__updateForLocaleChange withObject:0 afterDelay:0.5];
}

+ (void)_updateForLocaleChange
{
  [self _updateEveything];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.calendar.LocaleChanged" object:0];
}

+ (void)_currentTimeZoneDidChange:(id)change
{
  [self _updateActiveTimeZone];

  [self _resetTodayRolloverTimer];
}

+ (void)_updateEveything
{
  [self _updateActiveCalendar];
  +[CalDateLocalization rebuildFormatters];

  +[CalDateLocalization rebuildWeekendDays];
}

+ (void)setActiveTimeZone:(id)zone
{
  zoneCopy = zone;
  if (zoneCopy)
  {
    activeTimeZone = [self activeTimeZone];
    v5 = [zoneCopy isEqual:activeTimeZone];

    if ((v5 & 1) == 0)
    {
      [MEMORY[0x1E695DFE8] setDefaultTimeZone:zoneCopy];
      [self _updateActiveTimeZone];
      [self _resetTodayRolloverTimer];
    }
  }
}

+ (void)_updateActiveTimeZone
{
  [self _updateActiveCalendar];
  +[CalDateLocalization rebuildFormatters];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.calendar.TimeZoneChanged" object:0];
}

+ (void)_updateActiveCalendar
{
  obj = [MEMORY[0x1E695DEE8] currentCalendar];
  if (!obj)
  {
    abort();
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (__ActiveCalendar != obj)
  {
    objc_storeStrong(&__ActiveCalendar, obj);
    v4 = __ActiveCalendar;
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v4 setLocale:currentLocale];

    v6 = __ActiveCalendar;
    activeTimeZone = [selfCopy activeTimeZone];
    [v6 setTimeZone:activeTimeZone];
  }

  objc_sync_exit(selfCopy);
}

+ (id)activeCalendar
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = __ActiveCalendar;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)currentLocationCode
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v4 = [localeIdentifier componentsSeparatedByString:@"_"];
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
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v4 = [localeIdentifier componentsSeparatedByString:@"_"];
  if ([v4 count] < 2)
  {
    v5 = localeIdentifier;
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

  activeTimeZone = [self activeTimeZone];
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  v6 = [activeTimeZone isEquivalentTo:systemTimeZone];

  if ((v6 & 1) == 0)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v16 setDay:1];
    activeCalendar = [self activeCalendar];
    date = [MEMORY[0x1E695DF00] date];
    v9 = [activeCalendar dateByAddingComponents:v16 toDate:date options:0];

    v10 = [activeCalendar components:30 fromDate:v9];
    v11 = [activeCalendar dateFromComponents:v10];
    v12 = MEMORY[0x1E695DFF0];
    date2 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:date2];
    v14 = [v12 scheduledTimerWithTimeInterval:self target:sel__todayRolloverTimerFired selector:0 userInfo:0 repeats:?];
    v15 = _todayRolloverTimer;
    _todayRolloverTimer = v14;
  }
}

+ (void)_todayRolloverTimerFired
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CalChronometryTodayChangedNotification" object:0];

  [self _resetTodayRolloverTimer];
}

@end