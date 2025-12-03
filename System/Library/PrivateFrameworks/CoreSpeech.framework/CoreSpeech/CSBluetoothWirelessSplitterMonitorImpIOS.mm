@interface CSBluetoothWirelessSplitterMonitorImpIOS
- (CSBluetoothWirelessSplitterMonitorImpIOS)init;
- (void)_didReceiveWirelessSplitterStateChange;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)splitterState:(id)state;
@end

@implementation CSBluetoothWirelessSplitterMonitorImpIOS

- (void)_didReceiveWirelessSplitterStateChange
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000EC3A0;
  v2[3] = &unk_100253050;
  v2[4] = self;
  [(CSBluetoothWirelessSplitterMonitorImpIOS *)self splitterState:v2];
}

- (void)_stopMonitoring
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSBluetoothWirelessSplitterMonitorImpIOS _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Wireless Splitter", &v5, 0xCu);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  if (self->_notifyToken == -1)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000EC680;
    handler[3] = &unk_1002537C0;
    handler[4] = self;
    notify_register_dispatch("com.apple.bluetooth.WirelessSplitterOn", &self->_notifyToken, queueCopy, handler);
    [(CSBluetoothWirelessSplitterMonitorImpIOS *)self _didReceiveWirelessSplitterStateChange];
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSBluetoothWirelessSplitterMonitorImpIOS _startMonitoringWithQueue:]";
      v6 = "%s Start monitoring : Wireless Splitter start";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSBluetoothWirelessSplitterMonitorImpIOS _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring Wireless Splitter because it was already started";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }
}

- (void)splitterState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v4 = +[CSBluetoothManager sharedInstance];
    if (v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000EC800;
      v5[3] = &unk_100251588;
      v6 = stateCopy;
      [v4 getWirelessSplitterInfoWithCompletion:v5];
    }

    else
    {
      (*(stateCopy + 2))(stateCopy, 0, 0);
    }
  }
}

- (CSBluetoothWirelessSplitterMonitorImpIOS)init
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CSBluetoothWirelessSplitterMonitorImpIOS;
    v4 = [(CSBluetoothWirelessSplitterMonitorImpIOS *)&v6 init];
    if (v4)
    {
      v4->_notifyToken = -1;
      v4->_splitterState = 0;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

@end