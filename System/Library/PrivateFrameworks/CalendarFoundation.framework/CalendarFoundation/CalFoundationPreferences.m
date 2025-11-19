@interface CalFoundationPreferences
+ (CalFoundationPreferences)shared;
- (BOOL)stopTimeDemoModeActive;
- (CalFoundationPreferences)init;
- (CalFoundationPreferences)initWithPreferencesForUnitTesting:(id)a3;
- (NSDateComponents)stopTimeDemoModeComponents;
- (NSString)stopTimeDemoMode;
- (double)defaultEventDuration;
- (double)simulatedDateForNowOffset;
- (void)setDefaultEventDuration:(double)a3;
- (void)setSimulatedDateForNowOffset:(double)a3;
@end

@implementation CalFoundationPreferences

+ (CalFoundationPreferences)shared
{
  if (shared_onceToken_1 != -1)
  {
    +[CalFoundationPreferences shared];
  }

  v3 = shared_sharedPreferences;

  return v3;
}

uint64_t __34__CalFoundationPreferences_shared__block_invoke()
{
  shared_sharedPreferences = objc_alloc_init(CalFoundationPreferences);

  return MEMORY[0x1EEE66BB8]();
}

- (CalFoundationPreferences)init
{
  v6.receiver = self;
  v6.super_class = CalFoundationPreferences;
  v2 = [(CalFoundationPreferences *)&v6 init];
  if (v2)
  {
    v3 = [[CalPreferences alloc] initWithDomain:@"com.apple.mobilecal"];
    preferences = v2->_preferences;
    v2->_preferences = v3;
  }

  return v2;
}

- (CalFoundationPreferences)initWithPreferencesForUnitTesting:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CalFoundationPreferences;
  v6 = [(CalFoundationPreferences *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferences, a3);
  }

  return v7;
}

- (double)simulatedDateForNowOffset
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"simulatedDateForNowOffset" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setSimulatedDateForNowOffset:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(CalPreferences *)self->_preferences setValueForPreference:@"simulatedDateForNowOffset" value:v4 notificationName:0];
}

- (NSString)stopTimeDemoMode
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"stopTimeDemoMode" expectedClass:v3];
}

- (BOOL)stopTimeDemoModeActive
{
  v2 = [(CalFoundationPreferences *)self stopTimeDemoMode];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDateComponents)stopTimeDemoModeComponents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v4 = [(CalFoundationPreferences *)self stopTimeDemoMode];
  if ([(CalFoundationPreferences *)self stopTimeDemoModeActive])
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [MEMORY[0x1E695DF00] now];
    v7 = [v5 components:124 fromDate:v6];

    v8 = [v4 componentsSeparatedByString:@":"];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      [v7 setYear:{objc_msgSend(v9, "intValue")}];
    }

    if ([v8 count] >= 2)
    {
      v10 = [v8 objectAtIndexedSubscript:1];
      [v7 setMonth:{objc_msgSend(v10, "intValue")}];
    }

    if ([v8 count] >= 3)
    {
      v11 = [v8 objectAtIndexedSubscript:2];
      [v7 setDay:{objc_msgSend(v11, "intValue")}];
    }

    if ([v8 count] >= 4)
    {
      v12 = [v8 objectAtIndexedSubscript:3];
      [v7 setHour:{objc_msgSend(v12, "intValue")}];
    }

    if ([v8 count] >= 5)
    {
      v13 = [v8 objectAtIndexedSubscript:4];
      [v7 setMinute:{objc_msgSend(v13, "intValue")}];
    }

    v14 = [v5 dateFromComponents:v7];
    v3 = [v5 components:638 fromDate:v14];
  }

  return v3;
}

- (double)defaultEventDuration
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"defaultEventDuration" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    if (v4 >= 21600.0 || v4 <= 240.0)
    {
      v6 = 3600.0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 3600.0;
  }

  return v6;
}

- (void)setDefaultEventDuration:(double)a3
{
  if (a3 > 240.0 && a3 < 21600.0)
  {
    preferences = self->_preferences;
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [(CalPreferences *)preferences setValueForPreference:@"defaultEventDuration" value:v5 notificationName:@"com.apple.mobilecal.preference.notification.defaultEventDuration"];
  }
}

@end