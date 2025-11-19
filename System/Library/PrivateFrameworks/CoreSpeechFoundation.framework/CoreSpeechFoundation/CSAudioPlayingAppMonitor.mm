@interface CSAudioPlayingAppMonitor
+ (id)sharedMonitor;
- (CSAudioPlayingAppMonitor)init;
- (id)playingApps;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_startObservingAudioPlayingState;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopMonitoring;
- (void)_systemControllerDied:(id)a3;
- (void)handleAudioPlayingStateChange:(id)a3;
@end

@implementation CSAudioPlayingAppMonitor

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
  [v6 addObserver:self selector:sel__systemControllerDied_ name:v7 object:v8];
}

- (void)_systemControllerDied:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAudioPlayingAppMonitor _systemControllerDied:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %{public}@", &v7, 0x16u);
  }

  [(CSAudioPlayingAppMonitor *)self _startObservingSystemControllerLifecycle];
  [(CSAudioPlayingAppMonitor *)self _startObservingAudioPlayingState];
  [(CSAudioPlayingAppMonitor *)self handleAudioPlayingStateChange:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingAudioPlayingState
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AECD0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AECD0] object:0];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*v4];
  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v5 setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  v8 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v6 addObserver:self selector:sel_handleAudioPlayingStateChange_ name:v7 object:v8];
}

- (void)handleAudioPlayingStateChange:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__CSAudioPlayingAppMonitor_handleAudioPlayingStateChange___block_invoke;
  v3[3] = &unk_1E865CB20;
  v3[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  [(CSAudioPlayingAppMonitor *)self _startObservingSystemControllerLifecycle];

  [(CSAudioPlayingAppMonitor *)self _startObservingAudioPlayingState];
}

- (id)playingApps
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = [MEMORY[0x1E695DF70] array];
  v2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEB10]];

  if (v3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      v8 = MEMORY[0x1E69AEB18];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:{*v8, v18}];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 integerValue];
            v13 = [MEMORY[0x1E696AE30] processInfo];
            v14 = [v13 processIdentifier];

            if (v14 != v12)
            {
              v15 = [[CSAudioPlayingApp alloc] initWithPid:v12];
              if (v15)
              {
                [v19 addObject:v15];
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v3 = v18;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v19;
}

- (CSAudioPlayingAppMonitor)init
{
  if (+[CSUtils isDarwinOS])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSAudioPlayingAppMonitor;
    self = [(CSEventMonitor *)&v5 init];
    v3 = self;
  }

  return v3;
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, &__block_literal_global_2826);
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

uint64_t __41__CSAudioPlayingAppMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_sharedMonitor = objc_alloc_init(CSAudioPlayingAppMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end