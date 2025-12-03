@interface CSUAFDownloadMonitor
+ (id)sharedInstance;
- (CSUAFDownloadMonitor)init;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)notifyAssets:(id)assets onQueue:(id)queue;
@end

@implementation CSUAFDownloadMonitor

- (void)notifyAssets:(id)assets onQueue:(id)queue
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__CSUAFDownloadMonitor_notifyAssets_onQueue___block_invoke;
  v4[3] = &unk_1E865CB20;
  v4[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v4, queue];
}

void __45__CSUAFDownloadMonitor_notifyAssets_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assetDownloadMonitorDelegate:*(a1 + 32) assetType:0];
    [v3 assetDownloadMonitorDelegate:*(a1 + 32) assetType:6];
    [v3 assetDownloadMonitorDelegate:*(a1 + 32) assetType:4];
  }
}

- (void)_stopMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSUAFDownloadMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s UAFDownloadMonitor stop monitoring", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v23 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__CSUAFDownloadMonitor__startMonitoringWithQueue___block_invoke;
  v15[3] = &unk_1E865A8B0;
  objc_copyWeak(&v17, &location);
  v5 = queueCopy;
  v16 = v5;
  v6 = MEMORY[0x1E12BA300](v15);
  mEMORY[0x1E69DEEE8] = [MEMORY[0x1E69DEEE8] sharedManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__CSUAFDownloadMonitor__startMonitoringWithQueue___block_invoke_284;
  v13[3] = &unk_1E865AD60;
  v8 = v6;
  v14 = v8;
  v9 = [mEMORY[0x1E69DEEE8] observeAssetSet:@"com.apple.siri.understanding" queue:0 handler:v13];
  observerToken = self->_observerToken;
  self->_observerToken = v9;

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[CSUAFDownloadMonitor _startMonitoringWithQueue:]";
    v21 = 2112;
    v22 = @"com.apple.siri.understanding";
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Adding observer for AssetSet: %@ to asset manager", buf, 0x16u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x1E69E9840];
}

void __50__CSUAFDownloadMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSUAFDownloadMonitor _startMonitoringWithQueue:]_block_invoke";
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s AssetSet update for %{public}@ received", &v7, 0x16u);
    }

    [WeakRetained notifyAssets:v3 onQueue:*(a1 + 32)];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (CSUAFDownloadMonitor)init
{
  if (+[CSUtils supportsUnifiedAssetFramework])
  {
    v5.receiver = self;
    v5.super_class = CSUAFDownloadMonitor;
    self = [(CSEventMonitor *)&v5 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1549 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1549, &__block_literal_global_1550);
  }

  v3 = sharedInstance_sharedManager;

  return v3;
}

uint64_t __38__CSUAFDownloadMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedManager = objc_alloc_init(CSUAFDownloadMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end