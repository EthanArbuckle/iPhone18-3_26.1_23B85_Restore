@interface TMLSLinkSource
- ($1AB5FA073B851C12C2339EC22442E995)lastRTCSample;
- (TMLSLinkSource)init;
- (TMLSLinkSource)initWithClock:(id)a3;
- (TMLSLinkSource)initWithClock:(id)a3 daemonCore:(id)a4;
- (double)nextResetDebounceInterval;
- (double)rtcWhenBeyondUncertainty:(double)a3;
- (id)daemonCore;
- (id)timeAtRtc:(double)a3;
- (void)_systemTimeChanged:(id)a3;
- (void)dealloc;
- (void)link:(id)a3 didReceiveAutomaticTimeEnabled:(BOOL)a4;
- (void)link:(id)a3 didReceiveDrift:(double)a4;
- (void)link:(id)a3 didReceiveTime:(double)a4 remoteRTC:(double)a5 uncertainty:(double)a6 source:(id)a7;
- (void)link:(id)a3 didReceiveTimeZone:(id)a4 forSource:(id)a5;
- (void)link:(id)a3 didSyncLocalRTC:(double)a4 remoteRTC:(double)a5 uncertainty:(double)a6;
- (void)linkBecameAvailable:(id)a3;
- (void)linkBecameCompatible:(id)a3;
- (void)linkBecameUnavailable:(id)a3;
- (void)linkDidReceiveReset:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCompanionTimeZone:(id)a3;
- (void)setLastRTCSampleValid:(BOOL)a3;
- (void)setupThresholds;
- (void)significantTimeChange;
- (void)syncAutomaticTimeEnabled;
- (void)syncTimeZone;
- (void)systemTimeChanged:(id)a3;
- (void)systemTimeZoneChanged;
- (void)timeWasReset:(id)a3;
@end

@implementation TMLSLinkSource

- (id)daemonCore
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);

  return WeakRetained;
}

- (void)setupThresholds
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1B60;
  v11[3] = &unk_10460;
  v11[4] = self;
  v2 = objc_retainBlock(v11);
  (v2[2])(v2, 0);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = NRPairedDeviceRegistryDeviceDidPairNotification;
  v5 = +[NSOperationQueue currentQueue];
  v6 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v2];

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = NRPairedDeviceRegistryDeviceDidUnpairNotification;
  v9 = +[NSOperationQueue currentQueue];
  v10 = [v7 addObserverForName:v8 object:0 queue:v9 usingBlock:v2];
}

- (TMLSLinkSource)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TMLSLinkSource.m" lineNumber:123 description:@"Wrong method. Initialize plugin with -initWithClock:"];

  return 0;
}

- (TMLSLinkSource)initWithClock:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_FAULT))
  {
    sub_7E34();
  }

  v5 = [(TMLSLinkSource *)self initWithClock:v4 daemonCore:0];

  return v5;
}

- (TMLSLinkSource)initWithClock:(id)a3 daemonCore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = TMLSLinkSource;
  v9 = [(TMLSLinkSource *)&v27 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.timed", "data");
    v11 = CORETIME_DATA_FACILITY;
    CORETIME_DATA_FACILITY = v10;

    v12 = os_log_create("com.apple.timed", "tmls");
    v13 = TIMELINK_FACILITY;
    TIMELINK_FACILITY = v12;

    objc_storeStrong(&v9->_clock, a3);
    objc_storeWeak(&v9->_daemonCore, v8);
    v14 = [v8 workloop];
    workloop = v9->_workloop;
    v9->_workloop = v14;

    [(TMLSLinkSource *)v9 setupThresholds];
    if ([(TMLSLinkSource *)v9 isGizmo])
    {
      [v8 addTimeProvider:v9 forKey:@"Manual"];
    }

    v16 = [TMLSLink alloc];
    v17 = [(TMLSLinkSource *)v9 workloop];
    v18 = [(TMLSLink *)v16 initWithDelegate:v9 clock:v7 workloop:v17];
    link = v9->_link;
    v9->_link = v18;

    v20 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Loaded TMLSLinkSource", v26, 2u);
    }

    if (![(TMLSLinkSource *)v9 isGizmo])
    {
      v21 = TIMELINK_FACILITY;
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Setting up notification listeners", v26, 2u);
      }

      [v8 addObserver:v9 forKeyPath:@"automaticTimeEnabled" options:0 context:&off_10480];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, sub_1F8C, @"SignificantTimeChangeNotification", 0, 0);
      v23 = +[NSNotificationCenter defaultCenter];
      [v23 addObserver:v9 selector:"systemTimeChanged:" name:@"TMSystemTimeChanged" object:0];

      v24 = TIMELINK_FACILITY;
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Performing initial sync", v26, 2u);
      }

      [(TMLSLinkSource *)v9 syncAutomaticTimeEnabled];
      [(TMLSLinkSource *)v9 systemTimeZoneChanged];
    }
  }

  return v9;
}

- (void)dealloc
{
  Current = CFRunLoopGetCurrent();
  Main = CFRunLoopGetMain();
  if (!CFEqual(Current, Main))
  {
    sub_7E74();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
  [WeakRetained removeObserver:self];

  v7.receiver = self;
  v7.super_class = TMLSLinkSource;
  [(TMLSLinkSource *)&v7 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [(TMLSLinkSource *)self workloop];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2190;
  v14[3] = &unk_10490;
  v15 = v9;
  v16 = v10;
  v17 = self;
  v18 = a6;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, v14);
}

- (void)setCompanionTimeZone:(id)a3
{
  v5 = a3;
  if ([(TMLSLinkSource *)self isGizmo])
  {
    sub_7FE0();
  }

  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_7F58(v5, self);
  }

  companionTimeZone = self->_companionTimeZone;
  if (companionTimeZone != v5 && (!v5 || ![(NSString *)companionTimeZone isEqualToString:v5]))
  {
    objc_storeStrong(&self->_companionTimeZone, a3);
    [(TMLSLinkSource *)self syncTimeZone];
  }
}

- (void)syncTimeZone
{
  if ([(TMLSLinkSource *)self isGizmo])
  {
    sub_80B0();
  }

  v3 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_800C(v3, self);
  }

  v4 = [(TMLSLinkSource *)self link];
  v5 = [(TMLSLinkSource *)self companionTimeZone];
  [v4 sendTimeZone:v5 forSource:@"TMLSSourceDevice"];
}

- (void)syncAutomaticTimeEnabled
{
  if ([(TMLSLinkSource *)self isGizmo])
  {
    sub_80DC();
  }

  v3 = [(TMLSLinkSource *)self daemonCore];
  v4 = [v3 isAutomaticTimeEnabled];

  v5 = [(TMLSLinkSource *)self link];
  [v5 sendAutomaticTimeEnabled:v4];

  v6 = [(TMLSLinkSource *)self link];
  [v6 syncRTC];
}

- (void)setLastRTCSampleValid:(BOOL)a3
{
  if (a3)
  {
    sub_8108(a2, self);
  }

  self->_lastRTCSample.localRTC = 0.0;
}

- (void)significantTimeChange
{
  if ([(TMLSLinkSource *)self isGizmo])
  {
    sub_81C4();
  }

  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_8184();
  }

  v3 = [(TMLSLinkSource *)self daemonCore];
  v4 = [v3 isAutomaticTimeEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = [(TMLSLinkSource *)self link];
    [v5 syncRTC];
  }
}

- (void)systemTimeZoneChanged
{
  if ([(TMLSLinkSource *)self isGizmo])
  {
    sub_8230();
  }

  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_81F0();
  }

  +[NSTimeZone resetSystemTimeZone];
  v3 = +[NSTimeZone systemTimeZone];
  v4 = [v3 name];
  [(TMLSLinkSource *)self setCompanionTimeZone:v4];
}

- (void)_systemTimeChanged:(id)a3
{
  v4 = [(TMLSLinkSource *)self clock];
  [v4 coarseMonotonicTime];
  v6 = v5;

  v7 = [(TMLSLinkSource *)self daemonCore];
  v8 = [v7 timeProvider];
  v9 = [v8 timeAtRtc:v6];

  p_lastTime = &self->_lastTime;
  lastTime = self->_lastTime;
  if (lastTime)
  {
    [(TMTime *)lastTime propagatedTimeAtRTC:v6];
    v13 = v12;
    [(TMTime *)*p_lastTime propagatedUncertaintyAtRTC:v6];
    v15 = v14;
    [(TMTime *)*p_lastTime utc_s];
    v17 = v16 - v13;
    if (v17 >= 0.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = -v17;
    }

    v19 = (v15 + v18) * 0.000005 > 0.01;
    v20 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218752;
      v24 = v18;
      v25 = 2048;
      v26 = v15;
      v27 = 2048;
      v28 = (v15 + v18) * 0.000005;
      v29 = 2048;
      v30 = 0x3F847AE147AE147BLL;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "elapsed: %f pUncertainty: %f maxDrift: %f allowedError: %f", &v23, 0x2Au);
    }
  }

  else
  {
    v19 = 1;
  }

  v21 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109120;
    LODWORD(v24) = v19;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "_systemTimeChanged: shouldSendTime(%d)", &v23, 8u);
  }

  if (v19)
  {
    objc_storeStrong(&self->_lastTime, v9);
    v22 = [(TMLSLinkSource *)self link];
    [v22 syncRTC];
  }
}

- (void)systemTimeChanged:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_825C();
  }

  v5 = [(TMLSLinkSource *)self workloop];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2874;
  v7[3] = &unk_10410;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)timeWasReset:(id)a3
{
  v4 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "timeWasReset: resetting throttling state", buf, 2u);
  }

  v5 = [(TMLSLinkSource *)self workloop];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A74;
  block[3] = &unk_104B8;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)link:(id)a3 didSyncLocalRTC:(double)a4 remoteRTC:(double)a5 uncertainty:(double)a6
{
  v10 = a3;
  v11 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v31 = v10;
    v32 = 2048;
    v33 = a4;
    v34 = 2048;
    v35 = a5;
    v36 = 2048;
    v37 = a6;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "didSyncLocalRTC, %@, %f, %f, %f", buf, 0x2Au);
  }

  v12 = CORETIME_DATA_FACILITY;
  if (os_log_type_enabled(CORETIME_DATA_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v31 = @"didSyncLocalRTC";
    v32 = 2048;
    v33 = a4;
    v34 = 2048;
    v35 = a5;
    v36 = 2048;
    v37 = a6;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "cmd,%@,local_rtc_s,%.9f,remote_rtc_s,%.9f,unc,%.9f", buf, 0x2Au);
  }

  v29[5] = _NSConcreteStackBlock;
  v29[6] = 3221225472;
  v29[7] = sub_2E38;
  v29[8] = &unk_104D8;
  *&v29[9] = a4;
  *&v29[10] = a5;
  *&v29[11] = a6;
  AnalyticsSendEventLazy();
  self->_lastRTCSample.remoteRTC = a5;
  self->_lastRTCSample.localRTC = a4;
  self->_lastRTCSample.uncertainty = a6;
  if (![(TMLSLinkSource *)self isGizmo])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_2F44;
    v29[3] = &unk_10500;
    v29[4] = self;
    v13 = objc_retainBlock(v29);
    v14 = [(TMLSLinkSource *)self daemonCore];
    v15 = [v14 timeProvider];
    v16 = [v15 timeAtRtc:a4];

    v17 = [v16 dictionary];
    v18 = [v17 mutableCopy];

    [v18 setObject:@"TMLSSourceComputed" forKeyedSubscript:@"TMSource"];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 reliability]);
    [v18 setObject:v19 forKeyedSubscript:@"TMTimeReliable"];

    (v13[2])(v13, v18);
    v20 = [(TMLSLinkSource *)self clock];
    v21 = [v20 machTime];

    Current = CFAbsoluteTimeGetCurrent();
    v23 = [(TMLSLinkSource *)self clock];
    v24 = [(TMLSLinkSource *)self workloop];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_3170;
    v26[3] = &unk_10528;
    v26[4] = self;
    v27 = v13;
    v28 = Current;
    v25 = v13;
    [v23 montonicTimeForMachTime:v21 toQueue:v24 withCompletionHandler:v26];
  }
}

- (void)link:(id)a3 didReceiveTime:(double)a4 remoteRTC:(double)a5 uncertainty:(double)a6 source:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v31 = v12;
    v32 = 2048;
    v33 = a4;
    v34 = 2048;
    v35 = a5;
    v36 = 2048;
    v37 = a6;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "didReceiveTime, %@, %f, %f, %f, %@", buf, 0x34u);
  }

  if (![(TMLSLinkSource *)self isGizmo]&& os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
  {
    sub_8428();
  }

  if ([(TMLSLinkSource *)self isGizmo]&& [(TMLSLinkSource *)self isLastRTCSampleValid])
  {
    [(TMLSLinkSource *)self lastRTCSample];
    v16 = a5 - v15;
    [(TMLSLinkSource *)self lastRTCSample];
    v18 = v16 + v17;
    [(TMLSLinkSource *)self lastRTCSample];
    v20 = v19 + a6;
    v29[0] = @"TMSetSourceTime";
    v29[1] = v13;
    v21 = [NSNumber numberWithDouble:a4, @"TMCommand", @"TMSource", @"TMCurrentTime"];
    v29[2] = v21;
    v28[3] = @"TMTimeError";
    v22 = [NSNumber numberWithDouble:v20];
    v29[3] = v22;
    v28[4] = @"TMRtcTime";
    v23 = [NSNumber numberWithDouble:v18];
    v29[4] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];

    WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
    if (([v13 isEqualToString:@"TMLSSourceComputed"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"TMLSSourceComputedReliable"))
    {
      [WeakRetained setSourceTime:v24];
    }

    else if ([v13 isEqualToString:@"TMLSSourceDevice"])
    {
      v26 = [v24 copy];
      lastCompanionTimeUpdate = self->_lastCompanionTimeUpdate;
      self->_lastCompanionTimeUpdate = v26;

      [WeakRetained testAndApplySystemTime];
    }
  }
}

- (void)link:(id)a3 didReceiveTimeZone:(id)a4 forSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v11 isEqualToString:@"TMLSSourceDevice"] & 1) == 0)
  {
    sub_8468(a2, self, v11);
  }

  v12 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "didReceiveTimeZone, %@, %@, %@", buf, 0x20u);
  }

  if ([(TMLSLinkSource *)self isGizmo])
  {
    v13 = [NSNumber numberWithDouble:TMLSHackedRTC(), @"TMCommand", @"TMSource", @"TMTimeZone", @"TMRtcTime", @"TMSetSourceTimeZone", v11, v10];
    v17[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:&v16 count:4];

    WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
    [WeakRetained setSourceTimeZone:v14];
  }
}

- (void)link:(id)a3 didReceiveAutomaticTimeEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TMLSLinkSource *)self isGizmo];
  v8 = TIMELINK_FACILITY;
  if (v7)
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "didReceiveAutomaticTimeEnabled, %@, %d", buf, 0x12u);
    }

    v9 = @"Manual";
    if (v4)
    {
      v9 = @"Filtered";
    }

    v10 = v9;
    v11 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Switching provider to '%@'", buf, 0xCu);
    }

    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 setObject:v10 forKey:@"TimeProvider"];

    v13 = [(TMLSLinkSource *)self workloop];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3978;
    block[3] = &unk_104B8;
    block[4] = self;
    dispatch_async(v13, block);
  }

  else if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
  {
    sub_84E8();
  }
}

- (void)link:(id)a3 didReceiveDrift:(double)a4
{
  v5 = a3;
  v6 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2048;
    v10 = a4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "didReceiveDrift, %@, %f", &v7, 0x16u);
  }
}

- (void)linkDidReceiveReset:(id)a3
{
  v4 = a3;
  v5 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "linkDidReceiveReset, %@", &v6, 0xCu);
  }

  [(TMLSLinkSource *)self setLastRTCSampleValid:0];
  if (![(TMLSLinkSource *)self isGizmo])
  {
    [(TMLSLinkSource *)self syncAutomaticTimeEnabled];
    [(TMLSLinkSource *)self syncTimeZone];
  }
}

- (double)nextResetDebounceInterval
{
  resetAttempts = self->_resetAttempts;
  v3 = (resetAttempts * resetAttempts) * 6.0e10;
  if (v3 < 9.0e11)
  {
    v4 = resetAttempts + 1;
  }

  else
  {
    v4 = 0;
  }

  result = fmin(v3, 9.0e11);
  self->_resetAttempts = v4;
  return result;
}

- (void)linkBecameAvailable:(id)a3
{
  v4 = a3;
  if (![(TMLSLinkSource *)self isGizmo])
  {
    sub_8570();
  }

  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
  v30[0] = @"TMSource";
  v30[1] = @"TMRtcTime";
  v31[0] = @"TMLSSourceDevice";
  v6 = [NSNumber numberWithDouble:TMLSHackedRTC()];
  v31[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  [WeakRetained setSourceAvailable:v7];

  [(TMLSLinkSource *)self nextResetDebounceInterval];
  v9 = v8;
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v11 = v10;
  lastReset = self->_lastReset;
  v13 = v10 - lastReset;
  if (lastReset && v9 >= v13)
  {
    v14 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Not sending reset because backoff interval has not elapsed", &v20, 2u);
    }
  }

  else
  {
    self->_lastReset = v10;
    v15 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "sending reset because backoff interval has elapsed", &v20, 2u);
    }

    v16 = [(TMLSLinkSource *)self link];
    [v16 sendReset];
  }

  v17 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    v18 = self->_lastReset;
    resetAttempts = self->_resetAttempts;
    v20 = 134219008;
    v21 = v11;
    v22 = 2048;
    v23 = v18;
    v24 = 2048;
    v25 = v13;
    v26 = 2048;
    v27 = v9;
    v28 = 1024;
    v29 = resetAttempts;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "now: %llu lastReset: %llu elapsed: %llu backoff: %f resetAttempts: %d", &v20, 0x30u);
  }
}

- (void)linkBecameUnavailable:(id)a3
{
  v4 = a3;
  if (![(TMLSLinkSource *)self isGizmo])
  {
    sub_859C();
  }

  WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
  v8[0] = @"TMSource";
  v8[1] = @"TMRtcTime";
  v9[0] = @"TMLSSourceDevice";
  v6 = [NSNumber numberWithDouble:TMLSHackedRTC()];
  v9[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [WeakRetained setSourceUnavailable:v7];
}

- (void)linkBecameCompatible:(id)a3
{
  v4 = a3;
  if ([(TMLSLinkSource *)self isGizmo])
  {
    sub_85C8();
  }

  v5 = [(TMLSLinkSource *)self workloop];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3F9C;
  block[3] = &unk_104B8;
  block[4] = self;
  dispatch_async(v5, block);
}

- ($1AB5FA073B851C12C2339EC22442E995)lastRTCSample
{
  remoteRTC = self->_lastRTCSample.remoteRTC;
  localRTC = self->_lastRTCSample.localRTC;
  uncertainty = self->_lastRTCSample.uncertainty;
  result.var2 = uncertainty;
  result.var1 = localRTC;
  result.var0 = remoteRTC;
  return result;
}

- (id)timeAtRtc:(double)a3
{
  if (![(TMLSLinkSource *)self isGizmo])
  {
    sub_85F4();
  }

  if (self->_lastCompanionTimeUpdate)
  {
    v4 = [TMTime timeWithDictionary:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)rtcWhenBeyondUncertainty:(double)a3
{
  if (![(TMLSLinkSource *)self isGizmo])
  {
    sub_8620();
  }

  return INFINITY;
}

@end