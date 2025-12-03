@interface CSLanguageCodeUpdateMonitorImplDarwin
- (BOOL)isLanguageCodeCurrent:(id)current;
- (CSLanguageCodeUpdateMonitorImplDarwin)init;
- (void)_didReceiveLanguageCodeUpdate:(id)update;
- (void)_notifyObserver:(id)observer withLanguageCode:(id)code;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSLanguageCodeUpdateMonitorImplDarwin

- (void)_notifyObserver:(id)observer withLanguageCode:(id)code
{
  observerCopy = observer;
  codeCopy = code;
  [(CSEventMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSLanguageCodeUpdateMonitor:self didReceiveLanguageCodeChanged:codeCopy];
  }
}

- (BOOL)isLanguageCodeCurrent:(id)current
{
  v13 = *MEMORY[0x1E69E9840];
  currentCopy = current;
  v5 = [(NSString *)self->_currentLanguageCode isEqualToString:currentCopy];
  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[CSLanguageCodeUpdateMonitorImplDarwin isLanguageCodeCurrent:]";
      v11 = 2114;
      v12 = currentCopy;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_INFO, "%s language code already up-to-date : %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_didReceiveLanguageCodeUpdate:(id)update
{
  v15 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSLanguageCodeUpdateMonitorImplDarwin _didReceiveLanguageCodeUpdate:]";
    v13 = 2114;
    v14 = updateCopy;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Siri language changed to : %{public}@", buf, 0x16u);
  }

  if (updateCopy)
  {
    if (![(CSLanguageCodeUpdateMonitorImplDarwin *)self isLanguageCodeCurrent:updateCopy])
    {
      objc_storeStrong(&self->_currentLanguageCode, update);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __71__CSLanguageCodeUpdateMonitorImplDarwin__didReceiveLanguageCodeUpdate___block_invoke;
      v9[3] = &unk_1E865B4E8;
      v9[4] = self;
      v10 = updateCopy;
      [(CSEventMonitor *)self enumerateObserversInQueue:v9];
    }
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[CSLanguageCodeUpdateMonitorImplDarwin _didReceiveLanguageCodeUpdate:]";
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Ignore notifying change of language code, since it is nil", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSLanguageCodeUpdateMonitorImplDarwin _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Siri language code", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSLanguageCodeUpdateMonitorImplDarwin _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Siri language code", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (CSLanguageCodeUpdateMonitorImplDarwin)init
{
  if (+[CSUtils isDarwinOS])
  {
    v8.receiver = self;
    v8.super_class = CSLanguageCodeUpdateMonitorImplDarwin;
    v3 = [(CSEventMonitor *)&v8 init];
    if (v3)
    {
      v4 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
      currentLanguageCode = v3->_currentLanguageCode;
      v3->_currentLanguageCode = v4;
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end