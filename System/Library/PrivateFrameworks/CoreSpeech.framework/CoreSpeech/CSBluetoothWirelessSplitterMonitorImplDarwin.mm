@interface CSBluetoothWirelessSplitterMonitorImplDarwin
- (CSBluetoothWirelessSplitterMonitorImplDarwin)init;
- (unint64_t)splitterState;
- (void)_didReceiveWirelessSplitterStateChange;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)splitterState:(id)state;
- (void)updateSplitterState:(unint64_t)state shouldDisableSpeakerVerificationInSplitterMode:(BOOL)mode;
@end

@implementation CSBluetoothWirelessSplitterMonitorImplDarwin

- (void)_didReceiveWirelessSplitterStateChange
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100110B28;
  v2[3] = &unk_100253050;
  v2[4] = self;
  [(CSBluetoothWirelessSplitterMonitorImplDarwin *)self splitterState:v2];
}

- (void)_stopMonitoring
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSBluetoothWirelessSplitterMonitorImplDarwin _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Wireless Splitter", &v3, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  [(CSBluetoothWirelessSplitterMonitorImplDarwin *)self _didReceiveWirelessSplitterStateChange];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSBluetoothWirelessSplitterMonitorImplDarwin _startMonitoringWithQueue:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Wireless Splitter start", &v4, 0xCu);
  }
}

- (unint64_t)splitterState
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315138;
    v5 = "[CSBluetoothWirelessSplitterMonitorImplDarwin splitterState]";
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s This call is not supported on darwinOS device (splitterState)", &v4, 0xCu);
  }

  return 0;
}

- (void)splitterState:(id)state
{
  if (state)
  {
    (*(state + 2))(state, self->_splitterState, self->_shouldDisableSpeakerVerificationInSplitterMode);
  }
}

- (void)updateSplitterState:(unint64_t)state shouldDisableSpeakerVerificationInSplitterMode:(BOOL)mode
{
  modeCopy = mode;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *&v9[4] = "[CSBluetoothWirelessSplitterMonitorImplDarwin updateSplitterState:shouldDisableSpeakerVerificationInSplitterMode:]";
    *v9 = 136315650;
    if (modeCopy)
    {
      v8 = @"YES";
    }

    *&v9[12] = 2050;
    *&v9[14] = state;
    v10 = 2114;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s splitterState : %{public}lu, shouldDisableSpeakerVerification : %{public}@", v9, 0x20u);
  }

  self->_splitterState = state;
  self->_shouldDisableSpeakerVerificationInSplitterMode = modeCopy;
  [(CSBluetoothWirelessSplitterMonitorImplDarwin *)self _didReceiveWirelessSplitterStateChange];
}

- (CSBluetoothWirelessSplitterMonitorImplDarwin)init
{
  if (+[CSUtils isDarwinOS])
  {
    v6.receiver = self;
    v6.super_class = CSBluetoothWirelessSplitterMonitorImplDarwin;
    v3 = [(CSBluetoothWirelessSplitterMonitorImplDarwin *)&v6 init];
    if (v3)
    {
      v3->_splitterState = 0;
      v3->_shouldDisableSpeakerVerificationInSplitterMode = 0;
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