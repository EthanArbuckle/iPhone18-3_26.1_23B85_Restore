@interface CSVolumeMonitor
+ (id)sharedInstance;
- (BOOL)_fetchSystemVolumeForCategory:(id)a3 usingSystemController:(id)a4 volume:(float *)a5;
- (CSVolumeMonitor)init;
- (float)_getNewSystemVolumesWithNotification:(id)a3 category:(id)a4;
- (float)alarmVolume;
- (float)musicVolume;
- (void)_notifyObserver:(id)a3 volumeDidChanged:(float)a4 forAudioCategory:(id)a5;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)fetchVolumeFromAVSystemControllerForAudioCategory:(id)a3;
- (void)musicVolumeWithCompletion:(id)a3;
- (void)startObservingSystemVolumes;
- (void)systemControllerDied:(id)a3;
- (void)systemVolumeDidChange:(id)a3;
@end

@implementation CSVolumeMonitor

- (void)_startObservingSystemControllerLifecycle
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AECB0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AECB0] object:0];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*v4];
  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v5 setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  v8 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v6 addObserver:self selector:sel_systemControllerDied_ name:v7 object:v8];
}

- (void)startObservingSystemVolumes
{
  [(CSVolumeMonitor *)self fetchVolumeFromAVSystemControllerForAudioCategory:@"Audio/Video"];
  [(CSVolumeMonitor *)self fetchVolumeFromAVSystemControllerForAudioCategory:@"Alarm"];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AECF0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AECF0] object:0];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*v4];
  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v5 setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  v8 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v6 addObserver:self selector:sel_systemVolumeDidChange_ name:v7 object:v8];
}

- (void)systemControllerDied:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSVolumeMonitor systemControllerDied:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %{public}@", &v7, 0x16u);
  }

  [(CSVolumeMonitor *)self startObservingSystemVolumes];

  v6 = *MEMORY[0x1E69E9840];
}

- (float)_getNewSystemVolumesWithNotification:(id)a3 category:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:@"Audio/Video"])
  {
    v10 = &OBJC_IVAR___CSVolumeMonitor__musicVolumeLevel;
  }

  else
  {
    v11 = 0.0;
    if (![v9 isEqualToString:@"Alarm"])
    {
      goto LABEL_6;
    }

    v10 = &OBJC_IVAR___CSVolumeMonitor__alarmVolumeLevel;
  }

  v11 = *(&self->super.super.isa + *v10);
LABEL_6:
  v12 = [v8 userInfo];
  v13 = MEMORY[0x1E69AEA20];
  v14 = [v12 objectForKey:*MEMORY[0x1E69AEA20]];
  [v14 floatValue];
  v16 = v15;
  v17 = 1.0;
  if (v15 <= 1.0)
  {
    v4 = [v8 userInfo];
    v5 = [v4 objectForKey:*v13];
    [v5 floatValue];
    v18 = 0.0;
    if (v19 < 0.0)
    {
      goto LABEL_11;
    }
  }

  v20 = [v8 userInfo];
  v21 = [v20 objectForKey:*v13];
  [v21 floatValue];
  if (v22 <= 1.0)
  {
    [v8 userInfo];
    v35 = v5;
    v23 = v8;
    v24 = v4;
    v25 = v9;
    v27 = v26 = self;
    v28 = [v27 objectForKey:*v13];
    [v28 floatValue];
    v17 = v29;

    self = v26;
    v9 = v25;
    v4 = v24;
    v8 = v23;
    v5 = v35;
  }

  v18 = v17;
  if (v16 <= 1.0)
  {
LABEL_11:

    v17 = v18;
  }

  if (vabds_f32(v11, v17) <= 0.02)
  {
    v32 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v40 = "[CSVolumeMonitor _getNewSystemVolumesWithNotification:category:]";
      v41 = 2050;
      v42 = v11;
      v43 = 2050;
      v44 = v17;
      _os_log_impl(&dword_1DDA4B000, v32, OS_LOG_TYPE_INFO, "%s Receiving fake system volume change: %{public}f -> %{public}f, ignoring...", buf, 0x20u);
    }

    v17 = v11;
  }

  else
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __65__CSVolumeMonitor__getNewSystemVolumesWithNotification_category___block_invoke;
    v36[3] = &unk_1E865AC90;
    v36[4] = self;
    v38 = v17;
    v30 = COERCE_DOUBLE(v9);
    v37 = v30;
    [(CSEventMonitor *)self enumerateObserversInQueue:v36];
    v31 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v40 = "[CSVolumeMonitor _getNewSystemVolumesWithNotification:category:]";
      v41 = 2114;
      v42 = v30;
      v43 = 2050;
      v44 = v11;
      v45 = 2050;
      v46 = v17;
      _os_log_impl(&dword_1DDA4B000, v31, OS_LOG_TYPE_DEFAULT, "%s Observer: system volume for category %{public}@, changed from %{public}f to %{public}f", buf, 0x2Au);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)systemVolumeDidChange:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CSVolumeMonitor_systemVolumeDidChange___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __41__CSVolumeMonitor_systemVolumeDidChange___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __41__CSVolumeMonitor_systemVolumeDidChange___block_invoke_2;
  v15 = &unk_1E865B4E8;
  v16 = v2;
  v17 = *(a1 + 40);
  [v2 enumerateObserversInQueue:&v12];
  v3 = [*(a1 + 40) userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E69AEA00]];

  if (v4)
  {
    v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    v6 = [v5 volumeCategoryForAudioCategory:v4];

    if ([v6 isEqualToString:@"Audio/Video"])
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[CSVolumeMonitor systemVolumeDidChange:]_block_invoke";
        v20 = 2114;
        v21 = v4;
        _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Observer: received system volume change for audioCategory %{public}@", buf, 0x16u);
      }

      v8 = &OBJC_IVAR___CSVolumeMonitor__musicVolumeLevel;
    }

    else
    {
      if (![v6 isEqualToString:@"Alarm"])
      {
LABEL_11:

        goto LABEL_12;
      }

      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[CSVolumeMonitor systemVolumeDidChange:]_block_invoke";
        v20 = 2114;
        v21 = v4;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Observer: received system volume change for audioCategory %{public}@", buf, 0x16u);
      }

      v8 = &OBJC_IVAR___CSVolumeMonitor__alarmVolumeLevel;
    }

    [*(a1 + 32) _getNewSystemVolumesWithNotification:*(a1 + 40) category:v6];
    *(*(a1 + 32) + *v8) = v10;
    goto LABEL_11;
  }

LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
}

void __41__CSVolumeMonitor_systemVolumeDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 CSVolumeMonitor:*(a1 + 32) systemVolumeDidChange:*(a1 + 40)];
  }
}

- (BOOL)_fetchSystemVolumeForCategory:(id)a3 usingSystemController:(id)a4 volume:(float *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a5)
  {
    goto LABEL_11;
  }

  v11 = 0;
  *a5 = 0.5;
  if (!v8 || !v9)
  {
    goto LABEL_12;
  }

  if (![(CSVolumeMonitor *)self _supportAVSystemVolumeFetch])
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CSVolumeMonitor _fetchSystemVolumeForCategory:usingSystemController:volume:]";
      _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s Fetching system volume on wrong device.", &v17, 0xCu);
    }

    goto LABEL_11;
  }

  if (![v10 getVolume:a5 category:v8 mode:0 route:@"Speaker" deviceIdentifier:@"PuffinOutput" routeSubtype:0])
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a5;
    v17 = 136315650;
    v18 = "[CSVolumeMonitor _fetchSystemVolumeForCategory:usingSystemController:volume:]";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    v22 = v13;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Fetched system volume for %{public}@ as %{public}f.", &v17, 0x20u);
  }

  v11 = 1;
LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)fetchVolumeFromAVSystemControllerForAudioCategory:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CSVolumeMonitor_fetchVolumeFromAVSystemControllerForAudioCategory___block_invoke;
  v7[3] = &unk_1E865C970;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __69__CSVolumeMonitor_fetchVolumeFromAVSystemControllerForAudioCategory___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[CSVolumeMonitor fetchVolumeFromAVSystemControllerForAudioCategory:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v15 = 1056964608;
  v3 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v4 = [v3 attributeForKey:*MEMORY[0x1E69AEA98]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[CSVolumeMonitor fetchVolumeFromAVSystemControllerForAudioCategory:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s System is now muted, fetching volume as 0...", buf, 0xCu);
    }

    v7 = 0;
    v15 = 0;
  }

  else
  {
    v8 = [v3 volumeCategoryForAudioCategory:*(a1 + 32)];
    if (v8)
    {
      v7 = v8;
      if (([*(a1 + 40) _fetchSystemVolumeForCategory:v8 usingSystemController:v3 volume:&v15] & 1) == 0)
      {
        v9 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          *buf = 136315394;
          v17 = "[CSVolumeMonitor fetchVolumeFromAVSystemControllerForAudioCategory:]_block_invoke";
          v18 = 2114;
          v19 = v10;
          _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Unable to get the system volume for audio category %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        *buf = 136315394;
        v17 = "[CSVolumeMonitor fetchVolumeFromAVSystemControllerForAudioCategory:]_block_invoke";
        v18 = 2114;
        v19 = v14;
        _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Unable to get the volume category for audio category '%{public}@'", buf, 0x16u);
      }

      v7 = 0;
    }
  }

  if ([*(a1 + 32) isEqualToString:@"Audio/Video"])
  {
    v12 = &OBJC_IVAR___CSVolumeMonitor__musicVolumeLevel;
LABEL_18:
    *(*(a1 + 40) + *v12) = v15;
    goto LABEL_19;
  }

  if ([*(a1 + 32) isEqualToString:@"Alarm"])
  {
    v12 = &OBJC_IVAR___CSVolumeMonitor__alarmVolumeLevel;
    goto LABEL_18;
  }

LABEL_19:

  v13 = *MEMORY[0x1E69E9840];
}

- (float)alarmVolume
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1056964608;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CSVolumeMonitor_alarmVolume__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __30__CSVolumeMonitor_alarmVolume__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 36);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)musicVolumeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__CSVolumeMonitor_musicVolumeWithCompletion___block_invoke;
    v7[3] = &unk_1E865CB90;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (float)musicVolume
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1056964608;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CSVolumeMonitor_musicVolume__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __30__CSVolumeMonitor_musicVolume__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_notifyObserver:(id)a3 volumeDidChanged:(float)a4 forAudioCategory:(id)a5
{
  v11 = a3;
  v8 = a5;
  [(CSEventMonitor *)self notifyObserver:v11];
  if ([v8 isEqualToString:@"Audio/Video"])
  {
    self->_musicVolumeLevel = a4;
    if (objc_opt_respondsToSelector())
    {
      *&v9 = a4;
      [v11 CSVolumeMonitor:self didReceiveMusicVolumeChanged:v9];
    }
  }

  else if ([v8 isEqualToString:@"Alarm"])
  {
    self->_alarmVolumeLevel = a4;
    if (objc_opt_respondsToSelector())
    {
      *&v10 = a4;
      [v11 CSVolumeMonitor:self didReceiveAlarmVolumeChanged:v10];
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSVolumeMonitor;
  [(CSEventMonitor *)&v4 dealloc];
}

- (void)_stopMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVolumeMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSVolumeMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  [(CSVolumeMonitor *)self _startObservingSystemControllerLifecycle];
  [(CSVolumeMonitor *)self startObservingSystemVolumes];
  v5 = *MEMORY[0x1E69E9840];
}

- (CSVolumeMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSVolumeMonitor;
  v2 = [(CSEventMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSVolumeMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    [(CSVolumeMonitor *)v2 fetchVolumeFromAVSystemControllerForAudioCategory:@"Audio/Video"];
    [(CSVolumeMonitor *)v2 fetchVolumeFromAVSystemControllerForAudioCategory:@"Alarm"];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (sharedInstance_onceToken_4919 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_4919, &__block_literal_global_4920);
    }

    v2 = sharedInstance__sharedInstance_4921;
  }

  return v2;
}

uint64_t __33__CSVolumeMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_4921 = objc_alloc_init(CSVolumeMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end