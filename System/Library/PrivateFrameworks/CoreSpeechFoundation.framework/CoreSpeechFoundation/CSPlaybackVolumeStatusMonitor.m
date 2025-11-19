@interface CSPlaybackVolumeStatusMonitor
+ (id)sharedInstance;
- (CSPlaybackVolumeStatusMonitor)init;
- (unint64_t)_volumeStatusFromLevel:(float)a3;
- (unint64_t)playbackVolumeStatus;
- (void)CSVolumeMonitor:(id)a3 systemVolumeDidChange:(id)a4;
- (void)_fetchAndUpdatePlaybackVolumeStatus;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)_updatePlaybackVolumeStatusWithNotification:(id)a3;
@end

@implementation CSPlaybackVolumeStatusMonitor

+ (id)sharedInstance
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (sharedInstance_onceToken_11253 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_11253, &__block_literal_global_11254);
    }

    v2 = sharedInstance__sharedInstance_11255;
  }

  return v2;
}

- (unint64_t)playbackVolumeStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__CSPlaybackVolumeStatusMonitor_playbackVolumeStatus__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_fetchAndUpdatePlaybackVolumeStatus
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  v3 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v10 = 0;
  v4 = [v3 getActiveCategoryVolume:&v11 andName:&v10];
  v5 = v10;

  if (v4)
  {
    *&v6 = v11;
    self->_volumeStatus = [(CSPlaybackVolumeStatusMonitor *)self _volumeStatusFromLevel:v6];
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "[CSPlaybackVolumeStatusMonitor _fetchAndUpdatePlaybackVolumeStatus]";
      v14 = 2048;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s activeVolumeLevel = %f, activeAudioCategory = %{public}@", buf, 0x20u);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__CSPlaybackVolumeStatusMonitor__fetchAndUpdatePlaybackVolumeStatus__block_invoke;
    v9[3] = &unk_1E865CB20;
    v9[4] = self;
    [(CSEventMonitor *)self enumerateObserversInQueue:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_volumeStatusFromLevel:(float)a3
{
  if (a3 > 0.0)
  {
    v4 = +[CSFPreferences sharedPreferences];
    [v4 nearlyMutedPlaybackVolumeLevel];
    v6 = v5;

    if (v6 >= a3)
    {
      return 1;
    }
  }

  if (a3 <= 0.0)
  {
    return 2;
  }

  return 0;
}

- (void)_updatePlaybackVolumeStatusWithNotification:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 userInfo];
  v8 = MEMORY[0x1E69AEA20];
  v9 = [v7 objectForKey:*MEMORY[0x1E69AEA20]];
  [v9 floatValue];
  v11 = v10;
  v12 = 1.0;
  if (v10 <= 1.0)
  {
    v3 = [v6 userInfo];
    v4 = [v3 objectForKey:*v8];
    [v4 floatValue];
    v13 = 0.0;
    if (v14 < 0.0)
    {
      goto LABEL_6;
    }
  }

  v15 = [v6 userInfo];
  v16 = [v15 objectForKey:*v8];
  [v16 floatValue];
  if (v17 <= 1.0)
  {
    v18 = [v6 userInfo];
    v19 = [v18 objectForKey:*v8];
    [v19 floatValue];
    v12 = v20;
  }

  v13 = v12;
  if (v11 <= 1.0)
  {
LABEL_6:

    v12 = v13;
  }

  *&v21 = v12;
  v22 = [(CSPlaybackVolumeStatusMonitor *)self _volumeStatusFromLevel:v21];
  if (v22 != self->_volumeStatus)
  {
    v23 = v22;
    self->_volumeStatus = v22;
    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v28 = "[CSPlaybackVolumeStatusMonitor _updatePlaybackVolumeStatusWithNotification:]";
      v29 = 2048;
      v30 = v12;
      v31 = 2048;
      v32 = v23;
      _os_log_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_DEFAULT, "%s Updated audio volume = %f, volumeStatus = %lu", buf, 0x20u);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __77__CSPlaybackVolumeStatusMonitor__updatePlaybackVolumeStatusWithNotification___block_invoke;
    v26[3] = &unk_1E865CB20;
    v26[4] = self;
    [(CSEventMonitor *)self enumerateObserversInQueue:v26];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)CSVolumeMonitor:(id)a3 systemVolumeDidChange:(id)a4
{
  v5 = a4;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E69AE9B0]];

  if (v7)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__CSPlaybackVolumeStatusMonitor_CSVolumeMonitor_systemVolumeDidChange___block_invoke;
    v9[3] = &unk_1E865C970;
    v9[4] = self;
    v10 = v5;
    dispatch_async(queue, v9);
  }
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[CSVolumeMonitor sharedInstance];
  [v3 removeObserver:self];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSPlaybackVolumeStatusMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitor: playback volume status", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CSPlaybackVolumeStatusMonitor__startMonitoringWithQueue___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = +[CSVolumeMonitor sharedInstance];
  [v5 addObserver:self];

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSPlaybackVolumeStatusMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitor: playback volume status", buf, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (CSPlaybackVolumeStatusMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSPlaybackVolumeStatusMonitor;
  v2 = [(CSEventMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSPlaybackVolumeStatusMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

uint64_t __47__CSPlaybackVolumeStatusMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSPlaybackVolumeStatusMonitor);
  v1 = sharedInstance__sharedInstance_11255;
  sharedInstance__sharedInstance_11255 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end