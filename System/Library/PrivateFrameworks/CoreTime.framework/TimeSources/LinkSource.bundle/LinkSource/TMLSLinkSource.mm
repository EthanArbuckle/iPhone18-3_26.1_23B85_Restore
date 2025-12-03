@interface TMLSLinkSource
- ($1AB5FA073B851C12C2339EC22442E995)lastRTCSample;
- (TMLSLinkSource)init;
- (TMLSLinkSource)initWithClock:(id)clock;
- (TMLSLinkSource)initWithClock:(id)clock daemonCore:(id)core;
- (double)nextResetDebounceInterval;
- (double)rtcWhenBeyondUncertainty:(double)uncertainty;
- (id)daemonCore;
- (id)timeAtRtc:(double)rtc;
- (void)_systemTimeChanged:(id)changed;
- (void)dealloc;
- (void)link:(id)link didReceiveAutomaticTimeEnabled:(BOOL)enabled;
- (void)link:(id)link didReceiveDrift:(double)drift;
- (void)link:(id)link didReceiveTime:(double)time remoteRTC:(double)c uncertainty:(double)uncertainty source:(id)source;
- (void)link:(id)link didReceiveTimeZone:(id)zone forSource:(id)source;
- (void)link:(id)link didSyncLocalRTC:(double)c remoteRTC:(double)tC uncertainty:(double)uncertainty;
- (void)linkBecameAvailable:(id)available;
- (void)linkBecameCompatible:(id)compatible;
- (void)linkBecameUnavailable:(id)unavailable;
- (void)linkDidReceiveReset:(id)reset;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCompanionTimeZone:(id)zone;
- (void)setLastRTCSampleValid:(BOOL)valid;
- (void)setupThresholds;
- (void)significantTimeChange;
- (void)syncAutomaticTimeEnabled;
- (void)syncTimeZone;
- (void)systemTimeChanged:(id)changed;
- (void)systemTimeZoneChanged;
- (void)timeWasReset:(id)reset;
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

- (TMLSLinkSource)initWithClock:(id)clock
{
  clockCopy = clock;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_FAULT))
  {
    sub_7E34();
  }

  v5 = [(TMLSLinkSource *)self initWithClock:clockCopy daemonCore:0];

  return v5;
}

- (TMLSLinkSource)initWithClock:(id)clock daemonCore:(id)core
{
  clockCopy = clock;
  coreCopy = core;
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

    objc_storeStrong(&v9->_clock, clock);
    objc_storeWeak(&v9->_daemonCore, coreCopy);
    workloop = [coreCopy workloop];
    workloop = v9->_workloop;
    v9->_workloop = workloop;

    [(TMLSLinkSource *)v9 setupThresholds];
    if ([(TMLSLinkSource *)v9 isGizmo])
    {
      [coreCopy addTimeProvider:v9 forKey:@"Manual"];
    }

    v16 = [TMLSLink alloc];
    workloop2 = [(TMLSLinkSource *)v9 workloop];
    v18 = [(TMLSLink *)v16 initWithDelegate:v9 clock:clockCopy workloop:workloop2];
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

      [coreCopy addObserver:v9 forKeyPath:@"automaticTimeEnabled" options:0 context:&off_10480];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  workloop = [(TMLSLinkSource *)self workloop];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2190;
  v14[3] = &unk_10490;
  v15 = pathCopy;
  v16 = objectCopy;
  selfCopy = self;
  contextCopy = context;
  v12 = objectCopy;
  v13 = pathCopy;
  dispatch_async(workloop, v14);
}

- (void)setCompanionTimeZone:(id)zone
{
  zoneCopy = zone;
  if ([(TMLSLinkSource *)self isGizmo])
  {
    sub_7FE0();
  }

  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_7F58(zoneCopy, self);
  }

  companionTimeZone = self->_companionTimeZone;
  if (companionTimeZone != zoneCopy && (!zoneCopy || ![(NSString *)companionTimeZone isEqualToString:zoneCopy]))
  {
    objc_storeStrong(&self->_companionTimeZone, zone);
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

  link = [(TMLSLinkSource *)self link];
  companionTimeZone = [(TMLSLinkSource *)self companionTimeZone];
  [link sendTimeZone:companionTimeZone forSource:@"TMLSSourceDevice"];
}

- (void)syncAutomaticTimeEnabled
{
  if ([(TMLSLinkSource *)self isGizmo])
  {
    sub_80DC();
  }

  daemonCore = [(TMLSLinkSource *)self daemonCore];
  isAutomaticTimeEnabled = [daemonCore isAutomaticTimeEnabled];

  link = [(TMLSLinkSource *)self link];
  [link sendAutomaticTimeEnabled:isAutomaticTimeEnabled];

  link2 = [(TMLSLinkSource *)self link];
  [link2 syncRTC];
}

- (void)setLastRTCSampleValid:(BOOL)valid
{
  if (valid)
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

  daemonCore = [(TMLSLinkSource *)self daemonCore];
  isAutomaticTimeEnabled = [daemonCore isAutomaticTimeEnabled];

  if ((isAutomaticTimeEnabled & 1) == 0)
  {
    link = [(TMLSLinkSource *)self link];
    [link syncRTC];
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
  name = [v3 name];
  [(TMLSLinkSource *)self setCompanionTimeZone:name];
}

- (void)_systemTimeChanged:(id)changed
{
  clock = [(TMLSLinkSource *)self clock];
  [clock coarseMonotonicTime];
  v6 = v5;

  daemonCore = [(TMLSLinkSource *)self daemonCore];
  timeProvider = [daemonCore timeProvider];
  v9 = [timeProvider timeAtRtc:v6];

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
    link = [(TMLSLinkSource *)self link];
    [link syncRTC];
  }
}

- (void)systemTimeChanged:(id)changed
{
  changedCopy = changed;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_825C();
  }

  workloop = [(TMLSLinkSource *)self workloop];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2874;
  v7[3] = &unk_10410;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(workloop, v7);
}

- (void)timeWasReset:(id)reset
{
  v4 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "timeWasReset: resetting throttling state", buf, 2u);
  }

  workloop = [(TMLSLinkSource *)self workloop];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A74;
  block[3] = &unk_104B8;
  block[4] = self;
  dispatch_async(workloop, block);
}

- (void)link:(id)link didSyncLocalRTC:(double)c remoteRTC:(double)tC uncertainty:(double)uncertainty
{
  linkCopy = link;
  v11 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v31 = linkCopy;
    v32 = 2048;
    cCopy2 = c;
    v34 = 2048;
    tCCopy2 = tC;
    v36 = 2048;
    uncertaintyCopy2 = uncertainty;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "didSyncLocalRTC, %@, %f, %f, %f", buf, 0x2Au);
  }

  v12 = CORETIME_DATA_FACILITY;
  if (os_log_type_enabled(CORETIME_DATA_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v31 = @"didSyncLocalRTC";
    v32 = 2048;
    cCopy2 = c;
    v34 = 2048;
    tCCopy2 = tC;
    v36 = 2048;
    uncertaintyCopy2 = uncertainty;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "cmd,%@,local_rtc_s,%.9f,remote_rtc_s,%.9f,unc,%.9f", buf, 0x2Au);
  }

  v29[5] = _NSConcreteStackBlock;
  v29[6] = 3221225472;
  v29[7] = sub_2E38;
  v29[8] = &unk_104D8;
  *&v29[9] = c;
  *&v29[10] = tC;
  *&v29[11] = uncertainty;
  AnalyticsSendEventLazy();
  self->_lastRTCSample.remoteRTC = tC;
  self->_lastRTCSample.localRTC = c;
  self->_lastRTCSample.uncertainty = uncertainty;
  if (![(TMLSLinkSource *)self isGizmo])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_2F44;
    v29[3] = &unk_10500;
    v29[4] = self;
    v13 = objc_retainBlock(v29);
    daemonCore = [(TMLSLinkSource *)self daemonCore];
    timeProvider = [daemonCore timeProvider];
    v16 = [timeProvider timeAtRtc:c];

    dictionary = [v16 dictionary];
    v18 = [dictionary mutableCopy];

    [v18 setObject:@"TMLSSourceComputed" forKeyedSubscript:@"TMSource"];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 reliability]);
    [v18 setObject:v19 forKeyedSubscript:@"TMTimeReliable"];

    (v13[2])(v13, v18);
    clock = [(TMLSLinkSource *)self clock];
    machTime = [clock machTime];

    Current = CFAbsoluteTimeGetCurrent();
    clock2 = [(TMLSLinkSource *)self clock];
    workloop = [(TMLSLinkSource *)self workloop];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_3170;
    v26[3] = &unk_10528;
    v26[4] = self;
    v27 = v13;
    v28 = Current;
    v25 = v13;
    [clock2 montonicTimeForMachTime:machTime toQueue:workloop withCompletionHandler:v26];
  }
}

- (void)link:(id)link didReceiveTime:(double)time remoteRTC:(double)c uncertainty:(double)uncertainty source:(id)source
{
  linkCopy = link;
  sourceCopy = source;
  v14 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v31 = linkCopy;
    v32 = 2048;
    timeCopy = time;
    v34 = 2048;
    cCopy = c;
    v36 = 2048;
    uncertaintyCopy = uncertainty;
    v38 = 2112;
    v39 = sourceCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "didReceiveTime, %@, %f, %f, %f, %@", buf, 0x34u);
  }

  if (![(TMLSLinkSource *)self isGizmo]&& os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
  {
    sub_8428();
  }

  if ([(TMLSLinkSource *)self isGizmo]&& [(TMLSLinkSource *)self isLastRTCSampleValid])
  {
    [(TMLSLinkSource *)self lastRTCSample];
    v16 = c - v15;
    [(TMLSLinkSource *)self lastRTCSample];
    v18 = v16 + v17;
    [(TMLSLinkSource *)self lastRTCSample];
    v20 = v19 + uncertainty;
    v29[0] = @"TMSetSourceTime";
    v29[1] = sourceCopy;
    v21 = [NSNumber numberWithDouble:time, @"TMCommand", @"TMSource", @"TMCurrentTime"];
    v29[2] = v21;
    v28[3] = @"TMTimeError";
    v22 = [NSNumber numberWithDouble:v20];
    v29[3] = v22;
    v28[4] = @"TMRtcTime";
    v23 = [NSNumber numberWithDouble:v18];
    v29[4] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];

    WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
    if (([sourceCopy isEqualToString:@"TMLSSourceComputed"] & 1) != 0 || objc_msgSend(sourceCopy, "isEqualToString:", @"TMLSSourceComputedReliable"))
    {
      [WeakRetained setSourceTime:v24];
    }

    else if ([sourceCopy isEqualToString:@"TMLSSourceDevice"])
    {
      v26 = [v24 copy];
      lastCompanionTimeUpdate = self->_lastCompanionTimeUpdate;
      self->_lastCompanionTimeUpdate = v26;

      [WeakRetained testAndApplySystemTime];
    }
  }
}

- (void)link:(id)link didReceiveTimeZone:(id)zone forSource:(id)source
{
  linkCopy = link;
  zoneCopy = zone;
  sourceCopy = source;
  if (([sourceCopy isEqualToString:@"TMLSSourceDevice"] & 1) == 0)
  {
    sub_8468(a2, self, sourceCopy);
  }

  v12 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = linkCopy;
    v20 = 2112;
    v21 = zoneCopy;
    v22 = 2112;
    v23 = sourceCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "didReceiveTimeZone, %@, %@, %@", buf, 0x20u);
  }

  if ([(TMLSLinkSource *)self isGizmo])
  {
    zoneCopy = [NSNumber numberWithDouble:TMLSHackedRTC(), @"TMCommand", @"TMSource", @"TMTimeZone", @"TMRtcTime", @"TMSetSourceTimeZone", sourceCopy, zoneCopy];
    v17[3] = zoneCopy;
    v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:&v16 count:4];

    WeakRetained = objc_loadWeakRetained(&self->_daemonCore);
    [WeakRetained setSourceTimeZone:v14];
  }
}

- (void)link:(id)link didReceiveAutomaticTimeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  linkCopy = link;
  isGizmo = [(TMLSLinkSource *)self isGizmo];
  v8 = TIMELINK_FACILITY;
  if (isGizmo)
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = linkCopy;
      v17 = 1024;
      v18 = enabledCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "didReceiveAutomaticTimeEnabled, %@, %d", buf, 0x12u);
    }

    v9 = @"Manual";
    if (enabledCopy)
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

    workloop = [(TMLSLinkSource *)self workloop];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3978;
    block[3] = &unk_104B8;
    block[4] = self;
    dispatch_async(workloop, block);
  }

  else if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
  {
    sub_84E8();
  }
}

- (void)link:(id)link didReceiveDrift:(double)drift
{
  linkCopy = link;
  v6 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = linkCopy;
    v9 = 2048;
    driftCopy = drift;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "didReceiveDrift, %@, %f", &v7, 0x16u);
  }
}

- (void)linkDidReceiveReset:(id)reset
{
  resetCopy = reset;
  v5 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = resetCopy;
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

- (void)linkBecameAvailable:(id)available
{
  availableCopy = available;
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

    link = [(TMLSLinkSource *)self link];
    [link sendReset];
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

- (void)linkBecameUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
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

- (void)linkBecameCompatible:(id)compatible
{
  compatibleCopy = compatible;
  if ([(TMLSLinkSource *)self isGizmo])
  {
    sub_85C8();
  }

  workloop = [(TMLSLinkSource *)self workloop];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3F9C;
  block[3] = &unk_104B8;
  block[4] = self;
  dispatch_async(workloop, block);
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

- (id)timeAtRtc:(double)rtc
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

- (double)rtcWhenBeyondUncertainty:(double)uncertainty
{
  if (![(TMLSLinkSource *)self isGizmo])
  {
    sub_8620();
  }

  return INFINITY;
}

@end