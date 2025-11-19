@interface HUComfortSoundsSettings
+ (id)sharedInstance;
- (HUComfortSoundProtocol)selectedComfortSound;
- (HUComfortSoundsFilterPoint)tinnitusFilterPoint;
- (id)keysMonitoredForUpdates;
- (id)preferenceKeyForSelector:(SEL)a3;
- (void)logMessage:(id)a3;
- (void)reset;
- (void)resetTimers;
- (void)selectedComfortSound;
- (void)setActiveTimerEndTimeStamp:(double)a3;
- (void)setLastEnablementTimestamp:(double)a3;
- (void)setMediaVolume:(double)a3;
- (void)setRelativeVolume:(double)a3;
- (void)setSelectedComfortSound:(id)a3;
- (void)setTimerDurationInSeconds:(double)a3;
- (void)setTimerEndInterval:(double)a3;
- (void)setTimerInHoursAndMinutes:(int64_t)a3 minutes:(int64_t)a4;
- (void)setTimerOption:(unint64_t)a3;
- (void)setTinnitusBalance:(double)a3;
- (void)setTinnitusFilterMode:(unint64_t)a3;
- (void)setTinnitusFilterPoint:(id)a3;
- (void)setValue:(id)a3 forPreferenceKey:(id)a4;
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

- (id)preferenceKeyForSelector:(SEL)a3
{
  if (preferenceKeyForSelector__onceToken != -1)
  {
    [HUComfortSoundsSettings preferenceKeyForSelector:];
  }

  v5 = preferenceKeyForSelector__SelectorMap;
  v6 = NSStringFromSelector(a3);
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HUComfortSoundsSettings;
    v8 = [(HCSettings *)&v11 preferenceKeyForSelector:a3];
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

- (void)logMessage:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = HCLogComfortSounds();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setRelativeVolume:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"relativeVolume"];
}

- (void)setMediaVolume:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"mediaVolume"];
}

- (void)setLastEnablementTimestamp:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"lastEnablementTimestamp"];
}

- (void)setTimerOption:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"timerOption"];
}

- (void)setTimerEndInterval:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"timerEndInterval"];
}

- (void)setTimerDurationInSeconds:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"timerDurationInSeconds"];
}

- (void)setActiveTimerEndTimeStamp:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"activeTimerEndTimeStamp"];
}

- (void)setTinnitusBalance:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"tinnitusBalance"];
}

- (void)setTinnitusFilterMode:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(HUComfortSoundsSettings *)self setValue:v4 forPreferenceKey:@"tinnitusFilterMode"];
}

- (void)setTimerInHoursAndMinutes:(int64_t)a3 minutes:(int64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a4 > 59 || (a4 | a3) < 0)
  {
    v8 = HCLogComfortSounds();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HUComfortSoundsSettings setTimerInHoursAndMinutes:v8 minutes:?];
    }
  }

  else
  {
    v5 = (3600 * a3 + 60 * a4);
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

- (void)setSelectedComfortSound:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v5 encodeObject:v4 forKey:*MEMORY[0x1E696A508]];
    [v5 finishEncoding];
    v6 = [v5 encodedData];
  }

  else
  {
    v6 = 0;
  }

  [(HUComfortSoundsSettings *)self setValue:v6 forPreferenceKey:@"ComfortSoundsSelectedSound"];
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

- (void)setTinnitusFilterPoint:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v5 encodeObject:v4 forKey:*MEMORY[0x1E696A508]];
    [v5 finishEncoding];
    v6 = [v5 encodedData];
  }

  else
  {
    v6 = 0;
  }

  [(HUComfortSoundsSettings *)self setValue:v6 forPreferenceKey:@"HUComfortSoundsFilterPointKey"];
}

- (void)setValue:(id)a3 forPreferenceKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"comfortSoundsEnabled"])
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
  [(HCSettings *)&v9 setValue:v6 forPreferenceKey:v7];
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