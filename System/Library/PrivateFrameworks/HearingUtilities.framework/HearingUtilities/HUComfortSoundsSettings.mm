@interface HUComfortSoundsSettings
+ (id)sharedInstance;
- (HUComfortSoundProtocol)selectedComfortSound;
- (HUComfortSoundsFilterPoint)tinnitusFilterPoint;
- (id)keysMonitoredForUpdates;
- (id)preferenceKeyForSelector:(SEL)selector;
- (void)logMessage:(id)message;
- (void)reset;
- (void)resetTimers;
- (void)selectedComfortSound;
- (void)setActiveTimerEndTimeStamp:(double)stamp;
- (void)setLastEnablementTimestamp:(double)timestamp;
- (void)setMediaVolume:(double)volume;
- (void)setRelativeVolume:(double)volume;
- (void)setSelectedComfortSound:(id)sound;
- (void)setTimerDurationInSeconds:(double)seconds;
- (void)setTimerEndInterval:(double)interval;
- (void)setTimerInHoursAndMinutes:(int64_t)minutes minutes:(int64_t)a4;
- (void)setTimerOption:(unint64_t)option;
- (void)setTinnitusBalance:(double)balance;
- (void)setTinnitusFilterMode:(unint64_t)mode;
- (void)setTinnitusFilterPoint:(id)point;
- (void)setValue:(id)value forPreferenceKey:(id)key;
@end

@implementation HUComfortSoundsSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[HUComfortSoundsSettings sharedInstance];
  }

  v3 = sharedInstance_Settings;

  return v3;
}

- (id)keysMonitoredForUpdates
{
  if (keysMonitoredForUpdates_onceToken != -1)
  {
    [HUComfortSoundsSettings keysMonitoredForUpdates];
  }

  v3 = keysMonitoredForUpdates_KeysMonitoredForUpdates;

  return v3;
}

- (HUComfortSoundProtocol)selectedComfortSound
{
  v2 = [(HCSettings *)self objectValueForKey:@"ComfortSoundsSelectedSound" withClass:objc_opt_class() andDefaultValue:0];
  v8 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v2 error:&v8];
  v4 = v8;
  if (v4 || ([MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "decodeObjectOfClasses:forKey:", v6, *MEMORY[0x1E696A508]), v5 = objc_claimAutoreleasedReturnValue(), v6, !v5))
  {
    v5 = [HUComfortSound defaultComfortSoundForGroup:5];
  }

  return v5;
}

uint64_t __41__HUComfortSoundsSettings_sharedInstance__block_invoke()
{
  sharedInstance_Settings = objc_alloc_init(HUComfortSoundsSettings);

  return MEMORY[0x1EEE66BB8]();
}

- (void)reset
{
  [(HCSettings *)self resetValueForSelector:sel_comfortSoundsEnabled];
  [(HCSettings *)self resetValueForSelector:sel_relativeVolume];
  [(HCSettings *)self resetValueForSelector:sel_mediaVolume];

  [(HCSettings *)self resetValueForSelector:sel_selectedComfortSound];
}

- (void)resetTimers
{
  [(HCSettings *)self resetValueForSelector:sel_timerEnabled];
  [(HCSettings *)self resetValueForSelector:sel_timerOnlyOnFirstSession];
  [(HCSettings *)self resetValueForSelector:sel_timerOption];
  [(HCSettings *)self resetValueForSelector:sel_timerEndInterval];
  [(HCSettings *)self resetValueForSelector:sel_timerDurationInSeconds];

  [(HCSettings *)self resetValueForSelector:sel_activeTimerEndTimeStamp];
}

- (id)preferenceKeyForSelector:(SEL)selector
{
  if (preferenceKeyForSelector__onceToken != -1)
  {
    [HUComfortSoundsSettings preferenceKeyForSelector:];
  }

  v5 = preferenceKeyForSelector__SelectorMap;
  v6 = NSStringFromSelector(selector);
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HUComfortSoundsSettings;
    v8 = [(HCSettings *)&v11 preferenceKeyForSelector:selector];
  }

  v9 = v8;

  return v9;
}

void __52__HUComfortSoundsSettings_preferenceKeyForSelector___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = NSStringFromSelector(sel_selectedComfortSound);
  v1 = NSStringFromSelector(sel_tinnitusFilterPoint);
  v2 = [v0 initWithObjectsAndKeys:{@"ComfortSoundsSelectedSound", v4, @"HUComfortSoundsFilterPointKey", v1, 0}];
  v3 = preferenceKeyForSelector__SelectorMap;
  preferenceKeyForSelector__SelectorMap = v2;
}

uint64_t __50__HUComfortSoundsSettings_keysMonitoredForUpdates__block_invoke()
{
  keysMonitoredForUpdates_KeysMonitoredForUpdates = [MEMORY[0x1E695DFD8] setWithObjects:{@"comfortSoundsEnabled", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (void)logMessage:(id)message
{
  v8 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = HCLogComfortSounds();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = messageCopy;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setRelativeVolume:(double)volume
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:volume];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"relativeVolume"];
}

- (void)setMediaVolume:(double)volume
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:volume];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"mediaVolume"];
}

- (void)setLastEnablementTimestamp:(double)timestamp
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"lastEnablementTimestamp"];
}

- (void)setTimerOption:(unint64_t)option
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:option];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"timerOption"];
}

- (void)setTimerEndInterval:(double)interval
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"timerEndInterval"];
}

- (void)setTimerDurationInSeconds:(double)seconds
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:seconds];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"timerDurationInSeconds"];
}

- (void)setActiveTimerEndTimeStamp:(double)stamp
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:stamp];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"activeTimerEndTimeStamp"];
}

- (void)setTinnitusBalance:(double)balance
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:balance];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"tinnitusBalance"];
}

- (void)setTinnitusFilterMode:(unint64_t)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"tinnitusFilterMode"];
}

- (void)setTimerInHoursAndMinutes:(int64_t)minutes minutes:(int64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a4 > 59 || (a4 | minutes) < 0)
  {
    v8 = HCLogComfortSounds();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HUComfortSoundsSettings setTimerInHoursAndMinutes:v8 minutes:?];
    }
  }

  else
  {
    v5 = (3600 * minutes + 60 * a4);
    v6 = HCLogComfortSounds();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v5;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Setting timer for duration - %f.", &v10, 0xCu);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(HUComfortSoundsSettings *)self setTimerEndInterval:v7 + v5];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setSelectedComfortSound:(id)sound
{
  soundCopy = sound;
  if (soundCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v5 encodeObject:soundCopy forKey:*MEMORY[0x1E696A508]];
    [v5 finishEncoding];
    encodedData = [v5 encodedData];
  }

  else
  {
    encodedData = 0;
  }

  [(HUComfortSoundsSettings *)self setValue:encodedData forPreferenceKey:@"ComfortSoundsSelectedSound"];
}

- (HUComfortSoundsFilterPoint)tinnitusFilterPoint
{
  v2 = [(HCSettings *)self objectValueForKey:@"HUComfortSoundsFilterPointKey" withClass:objc_opt_class() andDefaultValue:0];
  v8 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v2 error:&v8];
  v4 = v8;
  if (v4 || ([MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "decodeObjectOfClasses:forKey:", v6, *MEMORY[0x1E696A508]), v5 = objc_claimAutoreleasedReturnValue(), v6, !v5))
  {
    v5 = [[HUComfortSoundsFilterPoint alloc] initWithPoint:0.0, 0.0];
  }

  return v5;
}

- (void)setTinnitusFilterPoint:(id)point
{
  pointCopy = point;
  if (pointCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v5 encodeObject:pointCopy forKey:*MEMORY[0x1E696A508]];
    [v5 finishEncoding];
    encodedData = [v5 encodedData];
  }

  else
  {
    encodedData = 0;
  }

  [(HUComfortSoundsSettings *)self setValue:encodedData forPreferenceKey:@"HUComfortSoundsFilterPointKey"];
}

- (void)setValue:(id)value forPreferenceKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"comfortSoundsEnabled"])
  {
    v8 = AXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_INFO, "Updating accessibility enabled for BG Sounds", buf, 2u);
    }

    MEMORY[0x1DA751460]();
  }

  v9.receiver = self;
  v9.super_class = HUComfortSoundsSettings;
  [(HCSettings *)&v9 setValue:valueCopy forPreferenceKey:keyCopy];
}

- (void)selectedComfortSound
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Exception decoding data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSelectedComfortSound:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Exception encoding data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end