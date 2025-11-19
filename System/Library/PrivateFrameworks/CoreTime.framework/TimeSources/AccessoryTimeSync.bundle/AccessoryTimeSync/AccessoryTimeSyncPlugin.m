@interface AccessoryTimeSyncPlugin
- (AccessoryTimeSyncPlugin)initWithClock:(id)a3 daemonCore:(id)a4;
- (BOOL)_connectToServer;
- (BOOL)_sendTimeWithUncertainty:(double)a3;
- (BOOL)attemptConnect;
- (TMDaemonCore)daemonCore;
- (void)_addNotificationObservers;
- (void)_getTimeFromAccessory;
- (void)_sendClientArrivedToServer;
- (void)_setSystemTime:(id)a3;
- (void)dealloc;
- (void)didSetTime:(double)a3 withUncertainty:(double)a4 fromSource:(id)a5 lastInput:(id)a6;
- (void)sendXPCMessage:(id)a3;
- (void)setSyncState:(int)a3;
@end

@implementation AccessoryTimeSyncPlugin

- (TMDaemonCore)daemonCore
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);

  return WeakRetained;
}

- (AccessoryTimeSyncPlugin)initWithClock:(id)a3 daemonCore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = AccessoryTimeSyncPlugin;
  v9 = [(AccessoryTimeSyncPlugin *)&v28 init];
  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "in init", buf, 2u);
    }

    objc_storeWeak(v9 + 5, v8);
    objc_storeStrong(v9 + 6, a3);
    v10 = *(v9 + 1);
    *(v9 + 1) = 0;

    [v9 _addNotificationObservers];
    WeakRetained = objc_loadWeakRetained(v9 + 5);
    v12 = [WeakRetained workloop];
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
    v14 = *(v9 + 2);
    *(v9 + 2) = v13;

    dispatch_source_set_timer(*(v9 + 2), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v15 = *(v9 + 2);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __52__AccessoryTimeSyncPlugin_initWithClock_daemonCore___block_invoke;
    handler[3] = &unk_C510;
    v16 = v9;
    v26 = v16;
    dispatch_source_set_event_handler(v15, handler);
    dispatch_activate(*(v9 + 2));
    v17 = objc_loadWeakRetained(v9 + 5);
    v18 = [v17 workloop];
    v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18);
    v20 = v16[3];
    v16[3] = v19;

    dispatch_source_set_timer(v16[3], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v21 = v16[3];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __52__AccessoryTimeSyncPlugin_initWithClock_daemonCore___block_invoke_6;
    v23[3] = &unk_C510;
    v24 = v16;
    dispatch_source_set_event_handler(v21, v23);
    dispatch_activate(v16[3]);
  }

  return v9;
}

id __52__AccessoryTimeSyncPlugin_initWithClock_daemonCore___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "request sync timer fired", v3, 2u);
  }

  return [*(a1 + 32) _getTimeFromAccessory];
}

id __52__AccessoryTimeSyncPlugin_initWithClock_daemonCore___block_invoke_6(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sync state timer fired", v3, 2u);
  }

  return [*(a1 + 32) setSyncState:0];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  dispatch_source_cancel(self->_requestTimer);
  dispatch_source_cancel(self->_syncStateTimer);
  if (self->isConnectionActive)
  {
    xpc_connection_cancel(self->_serverConnection);
  }

  v4.receiver = self;
  v4.super_class = AccessoryTimeSyncPlugin;
  [(AccessoryTimeSyncPlugin *)&v4 dealloc];
}

- (void)_addNotificationObservers
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, handleServerArrivedNotification, @"com.apple.coreaccessories.TimeSyncServerArrived", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, self, handleNotification, @"com.apple.coreaccessories.AcctoolTestGetTime", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v5, self, handleNotification, @"com.apple.coreaccessories.AcctoolTestSendTime", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_setSystemTime:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
  v6 = [WeakRetained workloop];
  dispatch_assert_queue_V2(v6);

  if ([(AccessoryTimeSyncPlugin *)self syncState])
  {
    [(AccessoryTimeSyncPlugin *)self setSyncState:2];
    v7 = [(TMMonotonicClock *)self->_clock machTime];
    v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
    bytes = xpc_data_get_bytes(v4, v8, 0, 0x30uLL);
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32[1] = v10;
    v33 = v10;
    v32[0] = v10;
    v11 = *v8;
    v12 = *(v8 + 2);
    v35 = *(v8 + 1);
    v36 = v12;
    *buf = v11;
    sntp_packet_ntoh(buf, v32);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67110144;
      *&buf[4] = DWORD2(v33);
      *&buf[8] = 1024;
      *&buf[10] = HIDWORD(v33);
      *&buf[14] = 1024;
      LODWORD(v35) = WORD4(v32[0]);
      WORD2(v35) = 1024;
      *(&v35 + 6) = WORD5(v32[0]);
      WORD5(v35) = 1024;
      HIDWORD(v35) = HIDWORD(v32[0]);
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "received packet with utc:%u.%u \nunc:%04X.%04X \nref:%u", buf, 0x20u);
    }

    if (bytes)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __42__AccessoryTimeSyncPlugin__setSystemTime___block_invoke;
      block[3] = &unk_C510;
      block[4] = self;
      if (_setSystemTime__onceToken != -1)
      {
        dispatch_once(&_setSystemTime__onceToken, block);
      }

      v30 = sntp_timestamp_ntoh(v8[3]);
      v29 = sntp_timestamp_gettime();
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v37 = v13;
      v38 = v13;
      v35 = v13;
      v36 = v13;
      *buf = v13;
      v14 = *v8;
      v15 = *(v8 + 2);
      v27 = *(v8 + 1);
      v28 = v15;
      *location = v14;
      sntp_client_process_response(location, &v30, &v29, buf);
      free(v8);
      objc_initWeak(location, self);
      clock = self->_clock;
      v17 = objc_loadWeakRetained(&self->_daemonCore);
      v18 = [v17 workloop];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __42__AccessoryTimeSyncPlugin__setSystemTime___block_invoke_12;
      v19[3] = &unk_C558;
      objc_copyWeak(&v20, location);
      v23 = v36;
      v24 = v37;
      v25 = v38;
      v21 = *buf;
      v22 = v35;
      v19[4] = self;
      [(TMMonotonicClock *)clock montonicTimeForMachTime:v7 toQueue:v18 withCompletionHandler:v19];

      objc_destroyWeak(&v20);
      objc_destroyWeak(location);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AccessoryTimeSyncPlugin could not fetch xpc data.", buf, 2u);
      }

      free(v8);
      [(AccessoryTimeSyncPlugin *)self setSyncState:0];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "received packet that was not expected in idle sync state, ignoring", buf, 2u);
  }
}

void __42__AccessoryTimeSyncPlugin__setSystemTime___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "accessory time input request timer set to fire at max interval", v3, 2u);
  }

  v2 = dispatch_time(0, 43200000000000);
  dispatch_source_set_timer(*(*(a1 + 32) + 16), v2, 0x274A48A78000uLL, 0xDF8475800uLL);
}

void __42__AccessoryTimeSyncPlugin__setSystemTime___block_invoke_12(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = sntp_calc_delay(a1 + 48);
  v9 = sntp_datestamp_to_double(v7, v8);
  v10 = sntp_calc_error(a1 + 48);
  v12 = sntp_datestamp_to_double(v10, v11);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 92);
    v14 = *(a1 + 94);
    v15 = *(a1 + 88);
    v16 = *(a1 + 90);
    *buf = 67109888;
    *v34 = v13;
    *&v34[4] = 1024;
    *&v34[6] = v14;
    LOWORD(v35) = 1024;
    *(&v35 + 2) = v15;
    HIWORD(v35) = 1024;
    *v36 = v16;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "header dispersion: %u.%u header delay: %u.%u", buf, 0x1Au);
  }

  v17 = v9 + v12 + a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 134218752;
    *v34 = v12;
    *&v34[8] = 2048;
    v35 = v9;
    *v36 = 2048;
    *&v36[2] = a3;
    v37 = 2048;
    v38 = v9 + v12 + a3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "error: %lf delay: %lf rtcUnc: %lf total: %lf", buf, 0x2Au);
  }

  [WeakRetained setLastDelay:v9];
  if (v12 >= 65535.6554)
  {
    v18 = objc_loadWeakRetained(WeakRetained + 5);
    [v18 setAccessoryUnc_s:1.79769313e308];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __42__AccessoryTimeSyncPlugin__setSystemTime___block_invoke_12_cold_1(v12);
    }
  }

  v19 = sntp_calc_mean(a1 + 48);
  v21 = sntp_datestamp_to_double(v19, v20) - (kCFAbsoluteTimeIntervalSince1970 + 2208988800.0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *v34 = v21;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "utcTime: %lf", buf, 0xCu);
  }

  if (v21 >= 0.0)
  {
    if (v12 < 65535.6554)
    {
      v22 = objc_loadWeakRetained(WeakRetained + 5);
      [v22 setAccessoryUnc_s:v12];

      if ((*(a1 + 96) & 1) == 0)
      {
        v23 = objc_loadWeakRetained(WeakRetained + 5);
        [v23 accessoryUnc_s];
        [v23 setAccessoryUnc_s:v24 + 5.0];
      }

      *(WeakRetained + 10) = a2;
      v25 = [TMTime timeWithUtc_s:type metadata for __ObjC utcUnc_s:v21 rtc_s:v17 sf:a2 source:1.0];
      v26 = objc_loadWeakRetained(WeakRetained + 5);
      v27 = [v25 dictionary];
      [v26 setSourceTime:v27];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    __42__AccessoryTimeSyncPlugin__setSystemTime___block_invoke_12_cold_2(v21);
  }

  v30 = *(a1 + 80);
  v31 = *(a1 + 96);
  v32 = *(a1 + 112);
  v29 = *(a1 + 64);
  v28 = *(a1 + 48);
  AnalyticsSendEventLazy();
  [*(a1 + 32) setSyncState:0];
}

id __42__AccessoryTimeSyncPlugin__setSystemTime___block_invoke_16(uint64_t a1)
{
  v17[0] = @"calculated_delay";
  v2 = [NSNumber numberWithDouble:*(a1 + 32)];
  v18[0] = v2;
  v17[1] = @"header_dispersion";
  v3 = sntp_timestamp_from_shortstamp(*(a1 + 92));
  v4 = sntp_timestamp_to_datestamp(v3);
  v6 = [NSNumber numberWithDouble:sntp_datestamp_to_double(v4, v5)];
  v18[1] = v6;
  v17[2] = @"header_delay";
  v7 = sntp_timestamp_from_shortstamp(*(a1 + 88));
  v8 = sntp_timestamp_to_datestamp(v7);
  v10 = [NSNumber numberWithDouble:sntp_datestamp_to_double(v8, v9)];
  v18[2] = v10;
  v17[3] = @"header_ref";
  v11 = [NSNumber numberWithUnsignedInt:*(a1 + 96)];
  v18[3] = v11;
  v17[4] = @"header_stratum";
  v12 = [NSNumber numberWithUnsignedChar:*(a1 + 85)];
  v18[4] = v12;
  v17[5] = @"rtc_reset_detected";
  v13 = [NSNumber numberWithBool:*(a1 + 128)];
  v18[5] = v13;
  v17[6] = @"rtc_s";
  v14 = [NSNumber numberWithDouble:*(a1 + 40)];
  v18[6] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:7];

  return v15;
}

- (BOOL)_sendTimeWithUncertainty:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
  v6 = [WeakRetained workloop];
  dispatch_assert_queue_V2(v6);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AccessoryTimeSyncPlugin in _sendTimeWithUncertainty:%lf", buf, 0xCu);
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v7;
  v25 = v7;
  *buf = v7;
  v8 = sntp_timestamp_gettime();
  create_sntp_time_payload(v8, buf, a3);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v9;
  v19 = v9;
  *bytes = v9;
  *v20 = *buf;
  v21 = v24;
  v22 = v25;
  sntp_packet_hton(v20, bytes);
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "xpcEventName", "sendTimeToAccessory");
  v11 = CFDataCreate(kCFAllocatorDefault, bytes, 48);
  BytePtr = CFDataGetBytePtr(v11);
  xpc_dictionary_set_data(v10, "sntpPacket", BytePtr, 0x30uLL);
  [(AccessoryTimeSyncPlugin *)self sendXPCMessage:v10];
  if (v11)
  {
    CFRelease(v11);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 67110656;
    *&v20[4] = DWORD2(v25);
    *&v20[8] = 1024;
    *&v20[10] = HIDWORD(v25);
    *&v20[14] = 1024;
    LODWORD(v21) = *&buf[8];
    WORD2(v21) = 1024;
    *(&v21 + 6) = *&buf[10];
    WORD5(v21) = 1024;
    HIDWORD(v21) = *&buf[12];
    LOWORD(v22) = 1024;
    *(&v22 + 2) = (buf[0] >> 3) & 7;
    WORD3(v22) = 1024;
    DWORD2(v22) = buf[0] & 7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sending packet with utc:%u.%u \nunc:%04X.%04X \nref:%u \nversion:%d \nmode:%d", v20, 0x2Cu);
  }

  v14 = *buf;
  v15 = v24;
  v16 = v25;
  AnalyticsSendEventLazy();
  [(AccessoryTimeSyncPlugin *)self setSyncState:0, _NSConcreteStackBlock, 3221225472, __52__AccessoryTimeSyncPlugin__sendTimeWithUncertainty___block_invoke, &__block_descriptor_80_e19___NSDictionary_8__0l, v14, v15, v16];

  return 1;
}

id __52__AccessoryTimeSyncPlugin__sendTimeWithUncertainty___block_invoke(uint64_t a1)
{
  v16[0] = @"header_dispersion";
  v2 = sntp_timestamp_from_shortstamp(*(a1 + 40));
  v3 = sntp_timestamp_to_datestamp(v2);
  v5 = [NSNumber numberWithDouble:sntp_datestamp_to_double(v3, v4)];
  v17[0] = v5;
  v16[1] = @"header_delay";
  v6 = sntp_timestamp_from_shortstamp(*(a1 + 36));
  v7 = sntp_timestamp_to_datestamp(v6);
  v9 = [NSNumber numberWithDouble:sntp_datestamp_to_double(v7, v8)];
  v17[1] = v9;
  v16[2] = @"header_ref";
  v10 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
  v17[2] = v10;
  v16[3] = @"header_stratum";
  v11 = [NSNumber numberWithUnsignedChar:*(a1 + 33)];
  v17[3] = v11;
  v16[4] = @"header_mode";
  v12 = [NSNumber numberWithUnsignedChar:*(a1 + 32) & 7];
  v17[4] = v12;
  v16[5] = @"header_version";
  v13 = [NSNumber numberWithUnsignedChar:(*(a1 + 32) >> 3) & 7];
  v17[5] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:6];

  return v14;
}

- (void)_getTimeFromAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
  v4 = [WeakRetained workloop];
  dispatch_assert_queue_V2(v4);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AccessoryTimeSyncPlugin in _getTimeFromAccessory.", buf, 2u);
  }

  if ([(AccessoryTimeSyncPlugin *)self syncState])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(AccessoryTimeSyncPlugin *)self syncState];
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_getTimeFromAccessory called in sync state: %d, ignoring", buf, 8u);
    }
  }

  else
  {
    [(AccessoryTimeSyncPlugin *)self setSyncState:1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __48__AccessoryTimeSyncPlugin__getTimeFromAccessory__block_invoke;
    block[3] = &unk_C510;
    block[4] = self;
    if (_getTimeFromAccessory_onceToken != -1)
    {
      dispatch_once(&_getTimeFromAccessory_onceToken, block);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "xpcEventName", "getTimeFromAccessory");
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v7;
    v15 = v7;
    *buf = v7;
    v8 = sntp_timestamp_gettime();
    create_sntp_request_payload(v8, v11);
    sntp_packet_hton(v11, buf);
    v9 = CFDataCreate(kCFAllocatorDefault, buf, 48);
    BytePtr = CFDataGetBytePtr(v9);
    xpc_dictionary_set_data(v6, "sntpPacket", BytePtr, 0x30uLL);
    [(AccessoryTimeSyncPlugin *)self sendXPCMessage:v6];
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void __48__AccessoryTimeSyncPlugin__getTimeFromAccessory__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "accessory time input request timer set to fire at min interval", v3, 2u);
  }

  v2 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(*(*(a1 + 32) + 16), v2, 0x3B9ACA00uLL, 0xDF8475800uLL);
}

- (void)_sendClientArrivedToServer
{
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, "xpcEventName", "timeSyncClientArrived");
  xpc_connection_send_message(self->_serverConnection, message);
}

- (BOOL)attemptConnect
{
  if (self->isConnectionActive)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  if ([(AccessoryTimeSyncPlugin *)self _connectToServer])
  {
    [(AccessoryTimeSyncPlugin *)self _sendClientArrivedToServer];
    return 1;
  }

  else
  {
    v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AccessoryTimeSyncPlugin Client unable to connect to TimeSync server.", v7, 2u);
      return 0;
    }
  }

  return result;
}

- (void)sendXPCMessage:(id)a3
{
  message = a3;
  if (!self->isConnectionActive || (serverConnection = self->_serverConnection) == 0)
  {
    if (![(AccessoryTimeSyncPlugin *)self attemptConnect])
    {
      goto LABEL_6;
    }

    serverConnection = self->_serverConnection;
  }

  xpc_connection_send_message(serverConnection, message);
LABEL_6:
}

- (BOOL)_connectToServer
{
  serverConnection = self->_serverConnection;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (serverConnection)
  {
    if (v4)
    {
      LOWORD(buf[0]) = 0;
      v5 = "Client already connected to TimeSync server.";
LABEL_4:
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Connecting to XPC server...", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
    v8 = [WeakRetained workloop];
    if (!v8)
    {
      [AccessoryTimeSyncPlugin _connectToServer];
    }

    v9 = objc_loadWeakRetained(&self->_daemonCore);
    v10 = [v9 workloop];
    mach_service = xpc_connection_create_mach_service("com.apple.timed.accessory-timesync", v10, 0);
    v12 = self->_serverConnection;
    self->_serverConnection = mach_service;

    if (self->_serverConnection)
    {
      objc_initWeak(buf, self);
      v13 = self->_serverConnection;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __43__AccessoryTimeSyncPlugin__connectToServer__block_invoke;
      v15[3] = &unk_C5C8;
      objc_copyWeak(&v16, buf);
      v15[4] = self;
      xpc_connection_set_event_handler(v13, v15);
      xpc_connection_resume(self->_serverConnection);
      v6 = 1;
      self->isConnectionActive = 1;
      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
      return v6;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v5 = "Failed to connect to TimeSync server.";
      goto LABEL_4;
    }
  }

  return 0;
}

void __43__AccessoryTimeSyncPlugin__connectToServer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (type == &_xpc_type_dictionary)
  {
    v8 = xpc_dictionary_get_value(v3, "xpcEventName");
    string_ptr = xpc_string_get_string_ptr(v8);

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = string_ptr;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AccessoryTimeSyncPlugin: received event name:%s", buf, 0xCu);
    }

    if (!strcmp(string_ptr, "setSystemTime"))
    {
      v10 = xpc_dictionary_get_value(v3, "sntpPacket");
      v11 = [(xpc_connection_t *)WeakRetained daemonCore];
      v12 = [v11 workloop];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __43__AccessoryTimeSyncPlugin__connectToServer__block_invoke_61;
      v16[3] = &unk_C5A0;
      v16[4] = *(a1 + 32);
      v17 = v10;
      v13 = v10;
      dispatch_async(v12, v16);
    }
  }

  else
  {
    if (type != &_xpc_type_error)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:
        *(WeakRetained + 32) = 0;
        xpc_connection_cancel(WeakRetained[1]);
        v7 = WeakRetained[1];
        WeakRetained[1] = 0;

        goto LABEL_18;
      }

      *buf = 0;
      v6 = "AccessoryTimeSyncPlugin: Unexpected data, invalidating the connection.";
LABEL_5:
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_6;
    }

    if (v3 != &_xpc_error_connection_interrupted && v3 != &_xpc_error_termination_imminent)
    {
      v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v3 == &_xpc_error_connection_invalid)
      {
        if (!v15)
        {
          goto LABEL_6;
        }

        *buf = 0;
        v6 = "AccessoryTimeSyncPlugin: received connection invdalid message.";
      }

      else
      {
        if (!v15)
        {
          goto LABEL_6;
        }

        *buf = 0;
        v6 = "AccessoryTimeSyncPlugin: Unexpected error dictionary, invalidating the connection.";
      }

      goto LABEL_5;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AccessoryTimeSyncPlugin: will terminate soon", buf, 2u);
    }
  }

LABEL_18:
}

- (void)didSetTime:(double)a3 withUncertainty:(double)a4 fromSource:(id)a5 lastInput:(id)a6
{
  v10 = a5;
  v11 = a6;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
  v13 = [WeakRetained workloop];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __75__AccessoryTimeSyncPlugin_didSetTime_withUncertainty_fromSource_lastInput___block_invoke;
  v16[3] = &unk_C5F0;
  objc_copyWeak(v19, &location);
  v19[1] = *&a3;
  v19[2] = *&a4;
  v17 = v10;
  v18 = v11;
  v14 = v11;
  v15 = v10;
  dispatch_async(v13, v16);

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __75__AccessoryTimeSyncPlugin_didSetTime_withUncertainty_fromSource_lastInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *v29 = 134218754;
    *&v29[4] = v3;
    *&v29[12] = 2048;
    *&v29[14] = v4;
    *&v29[22] = 2112;
    v30 = v5;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "didSetTime,%lf,withUncertainty,%lf,fromSource,%@,lastInput,%@", v29, 0x2Au);
  }

  v7 = [WeakRetained daemonCore];
  v8 = [v7 isAutomaticTimeEnabled];

  if (v8)
  {
    if ([*(a1 + 40) isEqualToString:type metadata for __ObjC])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        v9 = "didSetTime called in response to Accessory input, ignoring";
LABEL_9:
        v10 = 2;
LABEL_10:
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, v29, v10);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if ([WeakRetained syncState])
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v11 = [WeakRetained syncState];
      *v29 = 67109120;
      *&v29[4] = v11;
      v9 = "didSetTime called in sync state: %d, ignoring";
      v10 = 8;
      goto LABEL_10;
    }

    [WeakRetained setSyncState:3];
    TMGetKernelMonotonicClock();
    v13 = v12;
    v14 = v12 - *(WeakRetained + 9);
    v15 = objc_loadWeakRetained(WeakRetained + 5);
    [v15 accessoryUnc_s];
    v17 = v16;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v18 = WeakRetained[9];
      *v29 = 134218752;
      *&v29[4] = v13;
      *&v29[12] = 2048;
      *&v29[14] = v18;
      *&v29[22] = 2048;
      v30 = v14;
      v31 = 2048;
      v32 = v17;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "rtc_s,%lf,lastSend,%lf,elapsed,%lf,acc_unc_s,%lf", v29, 0x2Au);
    }

    if (v17 >= 65535.6554 || *(WeakRetained + 9) == 0.0 || v14 <= 0.0 || v14 >= 86400.0)
    {
      if (v17 < 1.79769313e308)
      {
        v20 = v13 - *(WeakRetained + 10);
        if (v20 > 0.0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v21 = WeakRetained[10];
            *v29 = 134218496;
            *&v29[4] = v13;
            *&v29[12] = 2048;
            *&v29[14] = v21;
            *&v29[22] = 2048;
            v30 = v20;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "rtc_s,%lf,lastUpdate,%lf,elapsed,%lf", v29, 0x20u);
          }

          v17 = v17 + v20 * 0.000005;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v22 = objc_loadWeakRetained(WeakRetained + 5);
            [v22 accessoryUnc_s];
            *v29 = 134218240;
            *&v29[4] = v23;
            *&v29[12] = 2048;
            *&v29[14] = v17;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "accessory uncertainty (%lf) propagated accessory uncertainty (%lf)", v29, 0x16u);
          }
        }
      }

      v24 = *(a1 + 64) + *(WeakRetained + 8) + 5.0;
      if (v24 <= v17)
      {
        if (v24 <= 65535.6554)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v26 = objc_loadWeakRetained(WeakRetained + 5);
            [v26 accessoryUnc_s];
            *v29 = 134218240;
            *&v29[4] = v24;
            *&v29[12] = 2048;
            *&v29[14] = v27;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "potential accessory uncertainty (%lf) accessory uncertainty (%lf)", v29, 0x16u);
          }

          if (*(WeakRetained + 32) == 1)
          {
            *(WeakRetained + 9) = v13;
            v28 = objc_loadWeakRetained(WeakRetained + 5);
            [v28 setAccessoryUnc_s:v24];

            *(WeakRetained + 10) = v13;
            [WeakRetained _sendTimeWithUncertainty:v24];
            goto LABEL_11;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_37;
          }

          *v29 = 0;
          v19 = "not attempting to send time to accessory until connection is active";
          v25 = 2;
          goto LABEL_36;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v29 = 134218240;
          *&v29[4] = v24;
          *&v29[12] = 2048;
          *&v29[14] = 0x40EFFFF4F8A0902ELL;
          v19 = "estimate has higher uncertainty (%lf) than can be represented by sntp_shortstamp (%lf), not sending time";
          goto LABEL_35;
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 134218240;
        *&v29[4] = v17;
        *&v29[12] = 2048;
        *&v29[14] = v24;
        v19 = "accessory has lower uncertainty (%lf) than new estimate (%lf), not sending time";
        goto LABEL_35;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 134218240;
      *&v29[4] = 0x40F5180000000000;
      *&v29[12] = 2048;
      *&v29[14] = v14;
      v19 = "not attempting to send time because throttle interval (%lf) > elapsed time (%lf)";
LABEL_35:
      v25 = 22;
LABEL_36:
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v19, v29, v25);
    }

LABEL_37:
    [WeakRetained setSyncState:{0, *v29, *&v29[16]}];
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    v9 = "didSetTime called while manual time is enabled, ignoring";
    goto LABEL_9;
  }

LABEL_11:
}

- (void)setSyncState:(int)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
  v6 = [WeakRetained workloop];
  dispatch_assert_queue_V2(v6);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    syncState = self->_syncState;
    v13[0] = 67109376;
    v13[1] = syncState;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "cmd,syncStateTransition,old,%d,new,%d", v13, 0xEu);
  }

  v8 = self->_syncState;
  if (a3 && !v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "activating sync state timeout", v13, 2u);
    }

    v9 = dispatch_time(0, 500000000);
    syncStateTimer = self->_syncStateTimer;
    v11 = -1;
    v12 = 25000000;
LABEL_15:
    dispatch_source_set_timer(syncStateTimer, v9, v11, v12);
    self->_syncState = a3;
    return;
  }

  if (!a3 && v8 || a3 == 2 && v8 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "cancelling sync state timeout", v13, 2u);
    }

    syncStateTimer = self->_syncStateTimer;
    v9 = -1;
    v11 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    [AccessoryTimeSyncPlugin setSyncState:];
  }
}

void __42__AccessoryTimeSyncPlugin__setSystemTime___block_invoke_12_cold_1(double a1)
{
  v1 = 134217984;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "accessory error: %f, likely clock reset", &v1, 0xCu);
}

void __42__AccessoryTimeSyncPlugin__setSystemTime___block_invoke_12_cold_2(double a1)
{
  v1 = 134217984;
  v2 = a1;
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "accessory provided negative UTC time: %lf, not passing to timed", &v1, 0xCu);
}

@end