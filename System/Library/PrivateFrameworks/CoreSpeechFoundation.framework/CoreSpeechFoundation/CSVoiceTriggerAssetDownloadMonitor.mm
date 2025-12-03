@interface CSVoiceTriggerAssetDownloadMonitor
+ (id)sharedInstance;
- (CSVoiceTriggerAssetDownloadMonitor)init;
- (const)_notificationKey;
- (void)_didInstalledNewVoiceTriggerAsset;
- (void)_notifyObserver:(id)observer;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSVoiceTriggerAssetDownloadMonitor

- (CSVoiceTriggerAssetDownloadMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSVoiceTriggerAssetDownloadMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_gibraltarMacNotifyToken = -1;
    result->_darwinNotifyToken = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5559 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5559, &__block_literal_global_5560);
  }

  v3 = sharedInstance__sharedInstance_5561;

  return v3;
}

- (const)_notificationKey
{
  v2 = +[CSUtils supportMphAssets];
  if (CSIsIPad_onceToken != -1)
  {
    dispatch_once(&CSIsIPad_onceToken, &__block_literal_global_22);
  }

  if (CSIsIPad_isIPad == 1)
  {
    if (v2)
    {
      return "com.apple.MobileAsset.VoiceTriggerAssetsIPad.ma.new-asset-installed";
    }

    else
    {
      return "com.apple.MobileAsset.VoiceTriggerHSAssetsIPad.ma.new-asset-installed";
    }
  }

  else
  {
    if (CSIsHorseman_onceToken != -1)
    {
      dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
    }

    v4 = "com.apple.MobileAsset.VoiceTriggerHSAssets.ma.new-asset-installed";
    if (v2)
    {
      v4 = "com.apple.MobileAsset.VoiceTriggerAssets.ma.new-asset-installed";
    }

    if (CSIsHorseman_isHorseman)
    {
      return "com.apple.MobileAsset.VoiceTriggerAssetsMarsh.ma.new-asset-installed";
    }

    else
    {
      return v4;
    }
  }
}

- (void)_notifyObserver:(id)observer
{
  observerCopy = observer;
  [(CSEventMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSVoiceTriggerAssetDownloadMonitor:self didInstallNewAsset:1];
  }
}

- (void)_didInstalledNewVoiceTriggerAsset
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSVoiceTriggerAssetDownloadMonitor _didInstalledNewVoiceTriggerAsset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s New VoiceTrigger is now installed", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__CSVoiceTriggerAssetDownloadMonitor__didInstalledNewVoiceTriggerAsset__block_invoke;
  v5[3] = &unk_1E865CB20;
  v5[4] = self;
  [(CSEventMonitor *)self enumerateObservers:v5];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoring
{
  v12 = *MEMORY[0x1E69E9840];
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CSVoiceTriggerAssetDownloadMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : VoiceTrigger Asset Download", &v10, 0xCu);
    }
  }

  if (+[CSUtils hasRemoteCoreSpeech])
  {
    if (+[CSUtils hasRemoteBuiltInMic])
    {
      gibraltarMacNotifyToken = self->_gibraltarMacNotifyToken;
      if (gibraltarMacNotifyToken != -1)
      {
        notify_cancel(gibraltarMacNotifyToken);
        self->_gibraltarMacNotifyToken = -1;
        v6 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315138;
          v11 = "[CSVoiceTriggerAssetDownloadMonitor _stopMonitoring]";
          _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Gibraltar VoiceTrigger Asset Download", &v10, 0xCu);
        }
      }
    }
  }

  darwinNotifyToken = self->_darwinNotifyToken;
  if (darwinNotifyToken != -1)
  {
    notify_cancel(darwinNotifyToken);
    self->_darwinNotifyToken = -1;
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CSVoiceTriggerAssetDownloadMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Studio Display VoiceTrigger Asset Download", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v15 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (self->_notifyToken == -1)
  {
    _notificationKey = [(CSVoiceTriggerAssetDownloadMonitor *)self _notificationKey];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __64__CSVoiceTriggerAssetDownloadMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E865C9F0;
    handler[4] = self;
    notify_register_dispatch(_notificationKey, &self->_notifyToken, queueCopy, handler);
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[CSVoiceTriggerAssetDownloadMonitor _startMonitoringWithQueue:]";
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : VoiceTrigger Asset Download", buf, 0xCu);
    }
  }

  if (+[CSUtils hasRemoteCoreSpeech])
  {
    if (+[CSUtils hasRemoteBuiltInMic])
    {
      if (self->_gibraltarMacNotifyToken == -1)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __64__CSVoiceTriggerAssetDownloadMonitor__startMonitoringWithQueue___block_invoke_3;
        v11[3] = &unk_1E865C9F0;
        v11[4] = self;
        notify_register_dispatch("com.apple.MobileAsset.VoiceTriggerAssetsMac.ma.new-asset-installed", &self->_gibraltarMacNotifyToken, queueCopy, v11);
        v7 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v14 = "[CSVoiceTriggerAssetDownloadMonitor _startMonitoringWithQueue:]";
          _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Gibraltar VoiceTrigger Asset Download", buf, 0xCu);
        }
      }
    }
  }

  if (self->_darwinNotifyToken == -1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__CSVoiceTriggerAssetDownloadMonitor__startMonitoringWithQueue___block_invoke_4;
    v10[3] = &unk_1E865C9F0;
    v10[4] = self;
    notify_register_dispatch("com.apple.MobileAsset.VoiceTriggerAssetsStudioDisplay.ma.new-asset-installed", &self->_darwinNotifyToken, queueCopy, v10);
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[CSVoiceTriggerAssetDownloadMonitor _startMonitoringWithQueue:]";
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Studio Display VoiceTrigger Asset Download", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __52__CSVoiceTriggerAssetDownloadMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_5561 = objc_alloc_init(CSVoiceTriggerAssetDownloadMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end