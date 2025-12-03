@interface MBServiceReachabilityMonitor
- (BOOL)isInternetReachableViaWiFi;
- (MBServiceReachabilityMonitor)init;
- (void)_reachabilityCallback:(unsigned int)callback;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)setMonitoring:(BOOL)monitoring;
@end

@implementation MBServiceReachabilityMonitor

- (MBServiceReachabilityMonitor)init
{
  v5.receiver = self;
  v5.super_class = MBServiceReachabilityMonitor;
  v2 = [(MBServiceReachabilityMonitor *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_callbackQueue = dispatch_queue_create("com.apple.mobilebackup.reachability", v3);
  }

  return v2;
}

- (void)dealloc
{
  if (self->_isMonitoring)
  {
    [(MBServiceReachabilityMonitor *)self _stopMonitoring];
  }

  dispatch_assert_queue_not_V2(self->_callbackQueue);
  dispatch_sync(self->_callbackQueue, &stru_1003C25F0);
  dispatch_release(self->_callbackQueue);
  self->_callbackQueue = 0;

  v3.receiver = self;
  v3.super_class = MBServiceReachabilityMonitor;
  [(MBServiceReachabilityMonitor *)&v3 dealloc];
}

- (void)setMonitoring:(BOOL)monitoring
{
  if (self->_isMonitoring != monitoring)
  {
    if (monitoring)
    {
      [(MBServiceReachabilityMonitor *)self _startMonitoring];
    }

    else
    {
      [(MBServiceReachabilityMonitor *)self _stopMonitoring];
    }
  }
}

- (BOOL)isInternetReachableViaWiFi
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_10025A554;
  v6[4] = sub_10025A564;
  v6[5] = self;
  callbackQueue = self->_callbackQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10025A570;
  v5[3] = &unk_1003C2618;
  v5[4] = &v7;
  v5[5] = v6;
  dispatch_sync(callbackQueue, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)_reachabilityCallback:(unsigned int)callback
{
  self->_isInternetReachableViaWiFi = (callback & 0x40002) == 2;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isInternetReachableViaWiFi)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    *buf = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "isInternetReachableViaWiFi:%s", buf, 0xCu);
    self->_isInternetReachableViaWiFi;
    _MBLog();
  }

  wifiStatusChangedCallback = self->_wifiStatusChangedCallback;
  if (wifiStatusChangedCallback)
  {
    wifiStatusChangedCallback[2](wifiStatusChangedCallback, self->_isInternetReachableViaWiFi);
  }
}

- (void)_startMonitoring
{
  if (!self->_isMonitoring)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.version) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Reachability monitor started monitoring WiFi connection", &buf, 2u);
      _MBLog();
    }

    *&address.sa_len = 528;
    *&address.sa_data[6] = 0;
    v4 = SCNetworkReachabilityCreateWithAddress(0, &address);
    self->_reachability = v4;
    if (v4)
    {
      buf.version = 0;
      memset(&buf.retain, 0, 24);
      buf.info = self;
      SCNetworkReachabilitySetCallback(v4, sub_10025A848, &buf);
      SCNetworkReachabilitySetDispatchQueue(self->_reachability, self->_callbackQueue);
      callbackQueue = self->_callbackQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10025A938;
      block[3] = &unk_1003BF8F8;
      block[4] = self;
      dispatch_async(callbackQueue, block);
      self->_isMonitoring = 1;
    }

    else
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.version) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to setup reachability", &buf, 2u);
        _MBLog();
      }
    }
  }
}

- (void)_stopMonitoring
{
  if (self->_isMonitoring)
  {
    v9 = v2;
    v10 = v3;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reachability monitor stopped monitoring WiFi connection", v8, 2u);
      _MBLog();
    }

    if (self->_callbackQueue)
    {
      reachability = self->_reachability;
      if (reachability)
      {
        SCNetworkReachabilitySetCallback(reachability, 0, 0);
        SCNetworkReachabilitySetDispatchQueue(self->_reachability, 0);
      }
    }

    v7 = self->_reachability;
    if (v7)
    {
      CFRelease(v7);
      self->_reachability = 0;
    }

    self->_isMonitoring = 0;
  }
}

@end