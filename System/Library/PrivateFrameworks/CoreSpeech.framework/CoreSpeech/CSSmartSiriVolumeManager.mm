@interface CSSmartSiriVolumeManager
+ (CSSmartSiriVolumeManager)sharedInstance;
- (CSConnectionServiceDelegate)delegate;
- (CSSmartSiriVolumeManager)initWithSamplingRate:(float)a3;
- (void)CSAlarmMonitor:(id)a3 didReceiveAlarmChanged:(int64_t)a4;
- (void)CSAutomaticVolumeEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4;
- (void)CSTimerMonitor:(id)a3 didReceiveTimerChanged:(int64_t)a4;
- (void)CSVolumeMonitor:(id)a3 didReceiveAlarmVolumeChanged:(float)a4;
- (void)CSVolumeMonitor:(id)a3 didReceiveMusicVolumeChanged:(float)a4;
- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4;
@end

@implementation CSSmartSiriVolumeManager

- (CSConnectionServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)CSAutomaticVolumeEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CSSmartSiriVolumeManager CSAutomaticVolumeEnabledMonitor:didReceiveEnabled:]";
    v13 = 1026;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Automatic Volume State changed to %{public}d", &v11, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 notifyClientsWithBlock:&stru_100251FB8];
  }
}

- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = kVTEIfirstPassTriggerSource;
    v8 = [v11 objectForKeyedSubscript:kVTEIfirstPassTriggerSource];

    if (v8)
    {
      v9 = [v11 objectForKeyedSubscript:v7];
      v10 = [v9 isEqualToString:kVTEIFirstPassTriggeredFromApplicationProcessor];

      if (v10)
      {
        [(CSSmartSiriVolumeProcessor *)self->_smartSiriVolume didDetectKeywordWithResult:v11];
      }
    }
  }
}

- (void)CSVolumeMonitor:(id)a3 didReceiveAlarmVolumeChanged:(float)a4
{
  v6 = a3;
  v7 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[CSSmartSiriVolumeManager CSVolumeMonitor:didReceiveAlarmVolumeChanged:]";
    v14 = 2050;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s AlarmVolume changed to %{public}f", &v12, 0x16u);
  }

  *&v8 = a4;
  [(CSSmartSiriVolumeProcessor *)self->_smartSiriVolume didReceiveAlarmVolumeChanged:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 notifyClientsWithBlock:&stru_100251F98];
  }
}

- (void)CSVolumeMonitor:(id)a3 didReceiveMusicVolumeChanged:(float)a4
{
  v6 = a3;
  v7 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[CSSmartSiriVolumeManager CSVolumeMonitor:didReceiveMusicVolumeChanged:]";
    v14 = 2050;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s MusicVolume changed to %{public}f", &v12, 0x16u);
  }

  *&v8 = a4;
  [(CSSmartSiriVolumeProcessor *)self->_smartSiriVolume didReceiveMusicVolumeChanged:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 notifyClientsWithBlock:&stru_100251F78];
  }
}

- (void)CSTimerMonitor:(id)a3 didReceiveTimerChanged:(int64_t)a4
{
  v6 = a3;
  v7 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CSSmartSiriVolumeManager CSTimerMonitor:didReceiveTimerChanged:]";
    v13 = 1026;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s TimerState changed to %{public}d", &v11, 0x12u);
  }

  [(CSSmartSiriVolumeProcessor *)self->_smartSiriVolume didReceiveTimerChanged:a4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 notifyClientsWithBlock:&stru_100251F58];
  }
}

- (void)CSAlarmMonitor:(id)a3 didReceiveAlarmChanged:(int64_t)a4
{
  v6 = a3;
  v7 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CSSmartSiriVolumeManager CSAlarmMonitor:didReceiveAlarmChanged:]";
    v13 = 1026;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s AlarmState changed to %{public}d", &v11, 0x12u);
  }

  [(CSSmartSiriVolumeProcessor *)self->_smartSiriVolume didReceiveAlarmChanged:a4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 notifyClientsWithBlock:&stru_100251F38];
  }
}

- (CSSmartSiriVolumeManager)initWithSamplingRate:(float)a3
{
  if ((+[CSUtils supportSmartVolume]& 1) == 0)
  {
    v13 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[CSSmartSiriVolumeManager initWithSamplingRate:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Smart Siri Volume not supported on this platform - Bailing out", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v16.receiver = self;
  v16.super_class = CSSmartSiriVolumeManager;
  self = [(CSSmartSiriVolumeManager *)&v16 init];
  if (self)
  {
    v5 = [CSSmartSiriVolume alloc];
    +[CSConfig inputRecordingSampleRate];
    v6 = [(CSSmartSiriVolume *)v5 initWithSamplingRate:?];
    smartSiriVolume = self->_smartSiriVolume;
    self->_smartSiriVolume = v6;

    if (self->_smartSiriVolume)
    {
      v8 = +[CSAlarmMonitor sharedInstance];
      [v8 addObserver:self];

      v9 = +[CSTimerMonitor sharedInstance];
      [v9 addObserver:self];

      v10 = +[CSVolumeMonitor sharedInstance];
      [v10 addObserver:self];

      v11 = +[CSAutomaticVolumeEnabledMonitor sharedInstance];
      [v11 addObserver:self];

      goto LABEL_5;
    }

    v14 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[CSSmartSiriVolumeManager initWithSamplingRate:]";
      v19 = 2050;
      v20 = a3;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s ERR: Failed to initialize Smart Siri Volume with sampling %{public}f", buf, 0x16u);
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

LABEL_5:
  self = self;
  v12 = self;
LABEL_11:

  return v12;
}

+ (CSSmartSiriVolumeManager)sharedInstance
{
  if (qword_10029E448 != -1)
  {
    dispatch_once(&qword_10029E448, &stru_100251F18);
  }

  v3 = qword_10029E440;

  return v3;
}

@end