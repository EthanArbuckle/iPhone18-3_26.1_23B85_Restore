@interface NACVolumeControllerDemo
- (NACVolumeControllerDelegate)delegate;
- (NACVolumeControllerDemo)initWithAudioCategory:(id)a3;
- (NSString)currentListeningMode;
- (float)volumeValue;
- (id)_volumeDictionary;
- (void)_applicationDidBecomeActiveNotification:(id)a3;
- (void)_persistVolumeValue:(id)a3;
- (void)_setNeedsVolumeReload;
- (void)beginObservingVolume;
- (void)dealloc;
- (void)setCurrentListeningMode:(id)a3;
- (void)setVolumeValue:(float)a3;
@end

@implementation NACVolumeControllerDemo

- (NACVolumeControllerDemo)initWithAudioCategory:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NACVolumeControllerDemo;
  v5 = [(NACVolumeControllerDemo *)&v19 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = @"Audio/Video";
    }

    objc_storeStrong(&v5->_audioCategory, v7);
    objc_initWeak(&location, v6);
    v8 = objc_opt_new();
    defaultsThrottler = v6->_defaultsThrottler;
    v6->_defaultsThrottler = v8;

    [(NACEventThrottler *)v6->_defaultsThrottler setMinimumDelay:1.0];
    v10 = v6->_defaultsThrottler;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __49__NACVolumeControllerDemo_initWithAudioCategory___block_invoke;
    v16 = &unk_27992BD88;
    objc_copyWeak(&v17, &location);
    [(NACEventThrottler *)v10 setEventBlock:&v13];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v6 selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __49__NACVolumeControllerDemo_initWithAudioCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _persistVolumeValue:v3];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NACVolumeControllerDemo;
  [(NACVolumeControllerDemo *)&v4 dealloc];
}

- (void)beginObservingVolume
{
  [(NACVolumeControllerDemo *)self _setNeedsVolumeReload];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 volumeControllerDidUpdateVolumeControlAvailibility:self];
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 volumeControllerDidUpdateVolumeValue:self];
  }
}

- (float)volumeValue
{
  volumeValue = self->_volumeValue;
  if (!volumeValue)
  {
    v4 = [(NACVolumeControllerDemo *)self _volumeDictionary];
    v5 = [v4 objectForKeyedSubscript:self->_audioCategory];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &unk_286C47B48;
    }

    v8 = self->_volumeValue;
    self->_volumeValue = v7;

    volumeValue = self->_volumeValue;
  }

  [(NSNumber *)volumeValue floatValue];
  return result;
}

- (void)setVolumeValue:(float)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  volumeValue = self->_volumeValue;
  self->_volumeValue = v4;

  defaultsThrottler = self->_defaultsThrottler;
  v7 = self->_volumeValue;

  [(NACEventThrottler *)defaultsThrottler setValue:v7];
}

- (NSString)currentListeningMode
{
  currentListeningMode = self->_currentListeningMode;
  if (!currentListeningMode)
  {
    v4 = [(NACVolumeControllerDemo *)self availableListeningModes];
    v5 = [v4 firstObject];
    v6 = self->_currentListeningMode;
    self->_currentListeningMode = v5;

    currentListeningMode = self->_currentListeningMode;
  }

  return currentListeningMode;
}

- (void)setCurrentListeningMode:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 500000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__NACVolumeControllerDemo_setCurrentListeningMode___block_invoke;
  v7[3] = &unk_27992B510;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);
}

void __51__NACVolumeControllerDemo_setCurrentListeningMode___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 56));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((*(a1 + 32) + 56));
      [v5 volumeControllerDidUpdateCurrentListeningMode:*(a1 + 32)];
    }
  }
}

- (void)_applicationDidBecomeActiveNotification:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NACVolumeControllerDemo__applicationDidBecomeActiveNotification___block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__NACVolumeControllerDemo__applicationDidBecomeActiveNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setNeedsVolumeReload];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 56));
    [v4 volumeControllerDidUpdateVolumeValue:*(a1 + 32)];
  }
}

- (void)_setNeedsVolumeReload
{
  volumeValue = self->_volumeValue;
  self->_volumeValue = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_persistVolumeValue:(id)a3
{
  v4 = a3;
  v5 = [(NACVolumeControllerDemo *)self _volumeDictionary];
  value = [v5 mutableCopy];

  [value setObject:v4 forKeyedSubscript:self->_audioCategory];
  CFPreferencesSetAppValue(@"DemoVolume", value, @"com.apple.NanoAudioControl");
  CFPreferencesAppSynchronize(@"com.apple.NanoAudioControl");
}

- (id)_volumeDictionary
{
  CFPreferencesAppSynchronize(@"com.apple.NanoAudioControl");
  v2 = CFPreferencesCopyAppValue(@"DemoVolume", @"com.apple.NanoAudioControl");
  v3 = [v2 copy];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (NACVolumeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end