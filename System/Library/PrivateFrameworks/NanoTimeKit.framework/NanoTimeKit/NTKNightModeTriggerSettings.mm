@interface NTKNightModeTriggerSettings
- (NTKNightModeTriggerSettings)init;
- (double)_readThresholdLuxHighFromPrefs;
- (double)_readThresholdLuxLowFromPrefs;
- (unint64_t)_readActivateSampleCountFromPrefs;
- (unint64_t)_readSampleSizeFromPrefs;
- (void)_registerForDarwinNotifications;
- (void)_unregisterForDarwinNotifications;
- (void)dealloc;
@end

@implementation NTKNightModeTriggerSettings

- (NTKNightModeTriggerSettings)init
{
  v7.receiver = self;
  v7.super_class = NTKNightModeTriggerSettings;
  v2 = [(NTKNightModeTriggerSettings *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(NTKNightModeTriggerSettings *)v2 _readThresholdLuxLowFromPrefs];
    v3->_thresholdLuxLow = v4;
    [(NTKNightModeTriggerSettings *)v3 _readThresholdLuxHighFromPrefs];
    v3->_thresholdLuxHigh = v5;
    v3->_sampleSize = [(NTKNightModeTriggerSettings *)v3 _readSampleSizeFromPrefs];
    v3->_activateSampleCount = [(NTKNightModeTriggerSettings *)v3 _readActivateSampleCountFromPrefs];
    [(NTKNightModeTriggerSettings *)v3 _registerForDarwinNotifications];
  }

  return v3;
}

- (void)dealloc
{
  [(NTKNightModeTriggerSettings *)self _unregisterForDarwinNotifications];
  v3.receiver = self;
  v3.super_class = NTKNightModeTriggerSettings;
  [(NTKNightModeTriggerSettings *)&v3 dealloc];
}

- (void)_registerForDarwinNotifications
{
  objc_initWeak(&location, self);
  v3 = +[NTKDarwinNotificationCenter defaultCenter];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__NTKNightModeTriggerSettings__registerForDarwinNotifications__block_invoke;
  v8[3] = &unk_27877F610;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [v3 addObserver:self notificationName:@"com.apple.NanoTimeKit.NightModeThresholdsChanged" usingBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__NTKNightModeTriggerSettings__registerForDarwinNotifications__block_invoke_2;
  v6[3] = &unk_27877F610;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [v3 addObserver:self notificationName:@"com.apple.NanoTimeKit.NightModeSampleSize" usingBlock:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__NTKNightModeTriggerSettings__registerForDarwinNotifications__block_invoke_3;
  v4[3] = &unk_27877F610;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [v3 addObserver:self notificationName:@"com.apple.NanoTimeKit.NightModeActivateSampleCount" usingBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __62__NTKNightModeTriggerSettings__registerForDarwinNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [*(a1 + 32) _readThresholdLuxLowFromPrefs];
    v6[1] = v3;
    [*(a1 + 32) _readThresholdLuxHighFromPrefs];
    v6[2] = v4;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"com.apple.NanoTimeKit.NightModeThresholdsChanged" object:0];

    WeakRetained = v6;
  }
}

void __62__NTKNightModeTriggerSettings__registerForDarwinNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained[3] = [*(a1 + 32) _readSampleSizeFromPrefs];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"com.apple.NanoTimeKit.NightModeSampleSize" object:0];

    WeakRetained = v4;
  }
}

void __62__NTKNightModeTriggerSettings__registerForDarwinNotifications__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained[4] = [*(a1 + 32) _readActivateSampleCountFromPrefs];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"com.apple.NanoTimeKit.NightModeActivateSampleCount" object:0];

    WeakRetained = v4;
  }
}

- (void)_unregisterForDarwinNotifications
{
  v3 = +[NTKDarwinNotificationCenter defaultCenter];
  [v3 removeObserver:self notificationName:@"com.apple.NanoTimeKit.NightModeThresholdsChanged"];
  [v3 removeObserver:self notificationName:@"com.apple.NanoTimeKit.NightModeSampleSize"];
  [v3 removeObserver:self notificationName:@"com.apple.NanoTimeKit.NightModeActivateSampleCount"];
}

- (double)_readThresholdLuxLowFromPrefs
{
  v2 = CFPreferencesCopyAppValue(@"NTKNightModeLuxThresholdLow", @"com.apple.NanoTimeKit");
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2.0;
  }

  return v5;
}

- (double)_readThresholdLuxHighFromPrefs
{
  v2 = CFPreferencesCopyAppValue(@"NTKNightModeLuxThresholdHigh", @"com.apple.NanoTimeKit");
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 7.0;
  }

  return v5;
}

- (unint64_t)_readSampleSizeFromPrefs
{
  v2 = CFPreferencesCopyAppValue(@"NTKNightModeSampleSize", @"com.apple.NanoTimeKit");
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 20;
  }

  return v5;
}

- (unint64_t)_readActivateSampleCountFromPrefs
{
  v2 = CFPreferencesCopyAppValue(@"NTKNightModeActivateSampleCount", @"com.apple.NanoTimeKit");
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 10;
  }

  return v5;
}

@end