@interface TMBBPlugin
- (BOOL)fetchTimeFromNetwork:(BOOL)network;
- (TMBBPlugin)initWithClock:(id)clock daemonCore:(id)core;
- (int)mobileCountryCode;
- (void)TMCAFetchEvent:(int64_t)event;
- (void)airplaneModeChanged;
- (void)attemptLocationNetworkCorroboration;
- (void)dealloc;
- (void)fetch:(id)fetch;
- (void)locationProvidedTimeZone:(id)zone;
- (void)networkSource:(id)source providedTimeZones:(id)zones;
- (void)provideNetworkTimeZone:(id)zone;
- (void)setSimulatedMcc:(id)mcc withHandler:(id)handler;
- (void)sourceBecameUnavailable:(id)unavailable;
- (void)timeZoneWasReset:(id)reset;
@end

@implementation TMBBPlugin

- (void)attemptLocationNetworkCorroboration
{
  v3 = BBTIME_FACILITY;
  if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_INFO))
  {
    cellularTimeZones = self->cellularTimeZones;
    locationTimeZone = self->locationTimeZone;
    *buf = 138412546;
    v18 = locationTimeZone;
    v19 = 2112;
    v20 = cellularTimeZones;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Attempting network corroboration. Location: %@, Network: %@", buf, 0x16u);
  }

  v6 = [[NSMutableDictionary alloc] initWithCapacity:2];
  [v6 setObject:@"LocationAndNetwork" forKeyedSubscript:@"TMSource"];
  [v6 setObject:self->locationTimeZone forKeyedSubscript:@"TMTimeZone"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->cellularTimeZones;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([-[NSMutableDictionary objectForKeyedSubscript:](self->cellularTimeZones objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i)), "containsObject:", self->locationTimeZone}])
        {
          [(TMDaemonCore *)self->_daemonCore setSourceTimeZone:v6];
          goto LABEL_13;
        }
      }

      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [(TMDaemonCore *)self->_daemonCore setSourceUnavailable:v6];
LABEL_13:
}

- (void)dealloc
{
  [(RadiosPreferences *)self->_radiosPrefs setDelegate:0];

  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
  }

  v4.receiver = self;
  v4.super_class = TMBBPlugin;
  [(TMBBPlugin *)&v4 dealloc];
}

- (TMBBPlugin)initWithClock:(id)clock daemonCore:(id)core
{
  v6 = [(TMBBPlugin *)self init];
  if (v6)
  {
    BBTIME_FACILITY = os_log_create("com.apple.timed", "cell");
    v6->_daemonCore = core;
    v6->_clock = clock;
    v6->_simulatedMcc = -1;
    v6->_networkTimeMap = [[TMNetworkTimeMap alloc] initWithUrl:[NSURL fileURLWithPath:[[NSBundle bundleForClass:?]ofType:"pathForResource:ofType:", @"tz_map", @"plist"]]];
    v13 = 0;
    v15 = 0u;
    v16 = 0;
    v14 = v6;
    [+[NSBundle mainBundle](NSBundle bundleIdentifier];
    v7 = _CTServerConnectionCreateWithIdentifier();
    v6->_ctServerConnection = v7;
    if (!v7 && os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_2CD8();
    }

    v8 = [[RadiosPreferences alloc] initWithQueue:{-[TMDaemonCore workloop](v6->_daemonCore, "workloop")}];
    v6->_radiosPrefs = v8;
    [(RadiosPreferences *)v8 setDelegate:v6];
    [(TMBBPlugin *)v6 airplaneModeChanged];
    v9 = BBTIME_FACILITY;
    if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "CellularTimePlugin loaded.", v12, 2u);
    }

    v6->cellularTimeZones = objc_alloc_init(NSMutableDictionary);
    v6->primedSources = objc_alloc_init(NSMutableSet);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10C0, @"TMRTCResetNotification", 0, 0);
  }

  return v6;
}

- (void)airplaneModeChanged
{
  workloop = [(TMDaemonCore *)self->_daemonCore workloop];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11F4;
  block[3] = &unk_8190;
  block[4] = self;
  dispatch_async(workloop, block);
}

- (void)provideNetworkTimeZone:(id)zone
{
  [objc_msgSend(zone objectForKey:{@"TMCurrentTime", "doubleValue"}];
  v6 = v5;
  v30 = [objc_msgSend(zone objectForKey:{@"TMTzOffset", "intValue"}];
  v7 = [objc_msgSend(zone objectForKey:{@"TMMcc", "intValue"}];
  v8 = [objc_msgSend(zone objectForKey:{@"TMTzOffset", "intValue"}];
  v9 = [objc_msgSend(zone objectForKey:{@"TMDstActive", "BOOLValue"}];
  v10 = [zone objectForKey:@"TMSource"];
  v11 = [objc_msgSend(zone objectForKey:{@"TMCellSlot", "intValue"}];
  v12 = [NSMutableString stringWithFormat:@"%@-%u", v10, v11];
  v13 = BBTIME_FACILITY;
  if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    *v32 = v10;
    *&v32[8] = 2048;
    v33 = v6;
    *v34 = 1024;
    *&v34[2] = v30;
    *&v34[6] = 1024;
    *&v34[8] = v9;
    LOWORD(v35) = 1024;
    *(&v35 + 2) = v7;
    HIWORD(v35) = 1024;
    *v36 = v11;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Received network time zone %@ with %.2f %+d DST %d in %d slot %d\n", buf, 0x2Eu);
  }

  v29 = v10;
  v14 = [(TMNetworkTimeMap *)[(TMBBPlugin *)self networkTimeMap] timeZonesWithOffset:v8 dst:v9 mcc:v7 time:v6];
  v15 = v14;
  if (!v14)
  {
    v24 = BBTIME_FACILITY;
    if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      *v32 = v8;
      *&v32[4] = 1024;
      *&v32[6] = v9;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = v7;
      HIWORD(v33) = 2048;
      *v34 = v6;
      _os_log_error_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Olson time zone not found for offset %d dst %d mcc %d time %f", buf, 0x1Eu);
    }

    v25 = [(TMNetworkTimeMap *)[(TMBBPlugin *)self networkTimeMap] etcGmtZoneForOffset:v8 dst:v9 mcc:v7 time:v6];
    if (!v25)
    {
      v15 = 0;
LABEL_21:
      [(TMBBPlugin *)self networkSource:v12 providedTimeZones:v15];
      return;
    }

    v15 = [NSOrderedSet orderedSetWithObject:v25];
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  v16 = [NSMutableDictionary dictionaryWithDictionary:zone];
  [(NSMutableDictionary *)v16 setObject:[(NSOrderedSet *)v15 firstObject] forKey:@"TMTimeZone"];
  v17 = CORETIME_DATA_FACILITY;
  if (os_log_type_enabled(CORETIME_DATA_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v19 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:@"TMSource"];
    [-[NSMutableDictionary objectForKeyedSubscript:](v16 objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
    *buf = 138413826;
    *v32 = @"NTZ";
    *&v32[8] = 2112;
    v33 = *&v19;
    self = selfCopy;
    *v34 = 2048;
    *&v34[2] = v20;
    *&v34[10] = 2048;
    v35 = v6;
    *v36 = 1024;
    *&v36[2] = v30;
    v37 = 1024;
    v38 = v9;
    v39 = 1024;
    v40 = v7;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f,t_s,%.9f,off,%d,dst,%d,mcc,%d", buf, 0x3Cu);
  }

  if (fabs(v6) <= 1.0 || -1.0 - kCFAbsoluteTimeIntervalSince1970 <= v6 && 1.0 - kCFAbsoluteTimeIntervalSince1970 >= v6 || v6 >= -6.31456128e10 && v6 <= -6.31456128e10 || (v21 = kCFAbsoluteTimeIntervalSince1904, v22 = -1.0 - kCFAbsoluteTimeIntervalSince1904, -1.0 - kCFAbsoluteTimeIntervalSince1904 <= v6) && (v22 = 1.0, v21 = 1.0 - kCFAbsoluteTimeIntervalSince1904, 1.0 - kCFAbsoluteTimeIntervalSince1904 >= v6))
  {
    v23 = BBTIME_FACILITY;
    if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_FAULT))
    {
      sub_2D4C(v29, v23);
    }

    return;
  }

  if (v7 < 0x3E8)
  {
    [(TMBBPlugin *)self TMCAFetchEvent:2, v21, v22, -1.0 - kCFAbsoluteTimeIntervalSince1970];
    v26 = [(NSMutableDictionary *)v16 mutableCopy];
    [v26 setObject:v12 forKeyedSubscript:?];
    if (v14)
    {
      v27 = [NSString stringWithFormat:@"%@-%s", v12, "Non-Olson"];
      if (![(NSMutableDictionary *)self->cellularTimeZones objectForKeyedSubscript:v27])
      {
LABEL_31:
        [(TMDaemonCore *)self->_daemonCore setSourceTimeZone:v26];
        AnalyticsSendEventLazy();

        goto LABEL_21;
      }

      [v26 setObject:v27 forKeyedSubscript:@"TMSource"];
      p_daemonCore = &self->_daemonCore;
      [(TMDaemonCore *)self->_daemonCore setSourceUnavailable:v26];
      [v26 setObject:v12 forKeyedSubscript:@"TMSource"];
    }

    else
    {
      p_daemonCore = &self->_daemonCore;
      [(TMDaemonCore *)self->_daemonCore setSourceUnavailable:v26];
      [(NSMutableString *)v12 appendFormat:@"-Non-Olson"];
    }

    [(TMDaemonCore *)*p_daemonCore setSourceAvailable:v26];
    goto LABEL_31;
  }

  if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_FAULT))
  {
    sub_2D0C();
  }
}

- (void)timeZoneWasReset:(id)reset
{
  v4 = [reset isEqualToString:@"AirplaneMode"] ^ 1;
  v5 = BBTIME_FACILITY;
  if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Time zone was reset, fetching hard: %d", v6, 8u);
  }

  [(TMBBPlugin *)self TMCAFetchEvent:1];
  [(TMBBPlugin *)self fetchTimeFromNetwork:v4];
}

- (void)fetch:(id)fetch
{
  if ((([fetch hasPrefix:@"NITZ"] & 1) != 0 || objc_msgSend(fetch, "hasPrefix:", @"CDMA")) && (-[NSMutableSet containsObject:](self->primedSources, "containsObject:", fetch) & 1) == 0)
  {
    v5 = BBTIME_FACILITY;
    if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Fetching network time zone due to request from manager.", v6, 2u);
    }

    [(TMBBPlugin *)self fetchTimeFromNetwork:0];
  }
}

- (BOOL)fetchTimeFromNetwork:(BOOL)network
{
  [(TMBBPlugin *)self TMCAFetchEvent:3];
  if (self->_ctServerConnection)
  {
    _CTServerConnectionFetchTimeFromNetwork();
    v4 = BBTIME_FACILITY;
    if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Fetch time from network failed unexpectedly (%d).", buf, 8u);
    }
  }

  else if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_ERROR))
  {
    sub_2DF8();
  }

  return 0;
}

- (int)mobileCountryCode
{
  simulatedMcc = self->_simulatedMcc;
  intValue = simulatedMcc;
  if (simulatedMcc == -1)
  {
    if (self->_ctServerConnection)
    {
      v7 = 0;
      if (_CTServerConnectionCopyMobileCountryCode())
      {
        if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_ERROR))
        {
          sub_2E2C();
        }

        intValue = 0;
      }

      else
      {
        intValue = [v7 intValue];
        v4 = BBTIME_FACILITY;
        if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_DEBUG))
        {
          sub_2E60(intValue, v4);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_ERROR))
      {
        sub_2ED8();
      }

      intValue = 0;
    }
  }

  v5 = BBTIME_FACILITY;
  if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7) = 67109376;
    HIDWORD(v7) = intValue;
    v8 = 1024;
    v9 = simulatedMcc != -1;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Current mcc: '%d' simulated:'%d'.", &v7, 0xEu);
  }

  return intValue;
}

- (void)setSimulatedMcc:(id)mcc withHandler:(id)handler
{
  v6 = [mcc objectForKey:{@"TMMcc", handler}];
  intValue = [(__CFString *)v6 intValue];
  self->_simulatedMcc = intValue;
  v8 = CORETIME_DATA_FACILITY;
  if (os_log_type_enabled(CORETIME_DATA_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [mcc objectForKeyedSubscript:@"TMSource"];
    [objc_msgSend(mcc objectForKeyedSubscript:{@"TMRtcTime", "doubleValue"}];
    simulatedMcc = self->_simulatedMcc;
    v17 = 138413058;
    v18 = @"set_simulated_mcc";
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = v11;
    v23 = 1024;
    v24 = simulatedMcc;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "cmd,%@,src,%@,rtc_s,%.9f,mcc,%d", &v17, 0x26u);
    intValue = self->_simulatedMcc;
  }

  v12 = BBTIME_FACILITY;
  v13 = os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_DEFAULT);
  if (intValue == -1)
  {
    if (!v13)
    {
      return;
    }

    LOWORD(v17) = 0;
    v14 = "Not simulating mcc.";
    v15 = v12;
    v16 = 2;
  }

  else
  {
    if (!v13)
    {
      return;
    }

    v17 = 138412546;
    v18 = v6;
    v19 = 1024;
    LODWORD(v20) = intValue;
    v14 = "Simulating mcc: %@ (%d)";
    v15 = v12;
    v16 = 18;
  }

  _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v14, &v17, v16);
}

- (void)sourceBecameUnavailable:(id)unavailable
{
  if ([unavailable isEqualToString:@"Location"])
  {

    [(TMBBPlugin *)self locationProvidedTimeZone:?];
  }

  else if (([unavailable hasPrefix:@"NITZ"] & 1) != 0 || objc_msgSend(unavailable, "hasPrefix:", @"CDMA"))
  {
    [(NSMutableDictionary *)self->cellularTimeZones setObject:0 forKeyedSubscript:unavailable];
    if (([unavailable hasSuffix:@"Non-Olson"] & 1) == 0)
    {
      v5 = [unavailable stringByAppendingFormat:@"-Non-Olson"];
      if ([(NSMutableDictionary *)self->cellularTimeZones objectForKeyedSubscript:v5])
      {
        [(TMMonotonicClock *)self->_clock coarseMonotonicTime];
        [(TMDaemonCore *)self->_daemonCore setSourceUnavailable:[NSDictionary dictionaryWithObjectsAndKeys:v5, @"TMSource", [NSNumber numberWithDouble:?], @"TMRtcTime", 0]];
      }

      [(TMBBPlugin *)self attemptLocationNetworkCorroboration];
    }
  }
}

- (void)locationProvidedTimeZone:(id)zone
{
  self->locationTimeZone = zone;

  [(TMBBPlugin *)self attemptLocationNetworkCorroboration];
}

- (void)networkSource:(id)source providedTimeZones:(id)zones
{
  [(NSMutableSet *)self->primedSources removeObject:?];
  [(NSMutableDictionary *)self->cellularTimeZones setObject:zones forKeyedSubscript:source];

  [(TMBBPlugin *)self attemptLocationNetworkCorroboration];
}

- (void)TMCAFetchEvent:(int64_t)event
{
  fetchTime = [(TMBBPlugin *)self fetchTime];
  if (fetchTime)
  {
    v6 = fetchTime;
    v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (v7)
    {
      v13 = (v7 - v6) / 0x3B9ACA00;
      AnalyticsSendEventLazy();
      [(TMBBPlugin *)self setFetchTime:0, _NSConcreteStackBlock, 3221225472, sub_2598, &unk_81D0, v13, event];
    }

    else
    {
      if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_ERROR))
      {
        sub_2DC4();
      }

      [(TMBBPlugin *)self setFetchTime:0, v8, v9, v10, v11, v12, v14];
    }
  }
}

@end