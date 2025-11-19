@interface CSSpeechDetectionDevicePresentMonitor
+ (id)sharedInstance;
- (BOOL)isPresent;
- (CSSpeechDetectionDevicePresentMonitor)init;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_startObservingSpeechDetectionVADPresence;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopMonitoring;
- (void)_systemControllerDied:(id)a3;
- (void)handleSpeechDetectionVADPresentChange:(id)a3;
@end

@implementation CSSpeechDetectionDevicePresentMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2342 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2342, &__block_literal_global_2343);
  }

  v3 = sharedInstance_sharedInstance_2344;

  return v3;
}

- (BOOL)isPresent
{
  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 programmableAudioInjectionEnabled];

  if (v3)
  {
    return 1;
  }

  if (CSIsVirtualMachine_onceToken != -1)
  {
    dispatch_once(&CSIsVirtualMachine_onceToken, &__block_literal_global_27);
  }

  if (CSIsVirtualMachine_isVM)
  {
    return 1;
  }

  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v6 = [v5 attributeForKey:*MEMORY[0x1E69AEA28]];

  LOBYTE(v5) = [v6 containsObject:@"VirtualAudioDevice_SpeechDetection"];
  return v5;
}

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
    v8 = "[CSSpeechDetectionDevicePresentMonitor _systemControllerDied:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %{public}@", &v7, 0x16u);
  }

  [(CSSpeechDetectionDevicePresentMonitor *)self _startObservingSystemControllerLifecycle];
  [(CSSpeechDetectionDevicePresentMonitor *)self _startObservingSpeechDetectionVADPresence];
  [(CSSpeechDetectionDevicePresentMonitor *)self handleSpeechDetectionVADPresentChange:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingSpeechDetectionVADPresence
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AEA30];
  [v3 removeObserver:self name:*MEMORY[0x1E69AEA30] object:0];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*v4];
  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v5 setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  v8 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v6 addObserver:self selector:sel_handleSpeechDetectionVADPresentChange_ name:v7 object:v8];
}

- (void)handleSpeechDetectionVADPresentChange:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSSpeechDetectionDevicePresentMonitor handleSpeechDetectionVADPresentChange:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__CSSpeechDetectionDevicePresentMonitor_handleSpeechDetectionVADPresentChange___block_invoke;
  v6[3] = &unk_1E865CB20;
  v6[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v6];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoring
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  [(CSSpeechDetectionDevicePresentMonitor *)self _startObservingSystemControllerLifecycle];

  [(CSSpeechDetectionDevicePresentMonitor *)self _startObservingSpeechDetectionVADPresence];
}

- (CSSpeechDetectionDevicePresentMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSSpeechDetectionDevicePresentMonitor;
  return [(CSEventMonitor *)&v3 init];
}

uint64_t __55__CSSpeechDetectionDevicePresentMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_2344 = objc_alloc_init(CSSpeechDetectionDevicePresentMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end