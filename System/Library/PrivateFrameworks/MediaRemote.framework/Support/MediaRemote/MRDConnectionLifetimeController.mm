@interface MRDConnectionLifetimeController
- (BOOL)containsLocalDevice;
- (BOOL)continuousPlaybackDetected;
- (BOOL)hasPlayedRecently;
- (BOOL)isMemberOfActiveSystemEndpoint;
- (BOOL)isPlaying;
- (MRDConnectionLifetimeController)initWithDataSource:(id)source delegate:(id)delegate;
- (MRDConnectionLifetimeControllerDataSource)dataSource;
- (MRDConnectionLifetimeControllerDelegate)delegate;
- (double)timeSincePlaybackStarted;
- (double)timeSincePlaying;
- (id)activeSystemEndpointUID;
- (id)debugDescription;
- (void)_adjustContinuousPlaybackDetectionTimerIfNeeded;
- (void)_adjustPlaybackTimerIfNeeded;
- (void)_handleActiveSystemEndpointChangedNotification:(id)notification;
- (void)_handleDeviceInfoDidChangeNotification:(id)notification;
- (void)_handleIsPlayingDidChangeNotification:(id)notification;
- (void)_handleLayoutDidChangeNotification:(id)notification;
- (void)_initialize;
- (void)dealloc;
- (void)disconnectOrigin:(id)origin;
- (void)evaluateShouldDisconnectWithReason:(id)reason;
- (void)registerForChanges;
- (void)unregisterForChanges;
@end

@implementation MRDConnectionLifetimeController

- (MRDConnectionLifetimeController)initWithDataSource:(id)source delegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = MRDConnectionLifetimeController;
  v8 = [(MRDConnectionLifetimeController *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    dataSource = [(MRDConnectionLifetimeController *)v9 dataSource];
    origin = [dataSource origin];
    origin = v9->_origin;
    v9->_origin = origin;

    v13 = v9->_origin;
    if (!v13)
    {
      v25 = 0;
      goto LABEL_6;
    }

    displayName = [(MROrigin *)v13 displayName];
    v15 = [NSString stringWithFormat:@"MRDConnectionLifetimeController-%@-%ld.queue", displayName, [(MROrigin *)v9->_origin identifier]];

    uTF8String = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = sub_1000FAE0C();
    v19 = dispatch_queue_create_with_target_V2(uTF8String, v17, v18);
    queue = v9->_queue;
    v9->_queue = v19;

    v21 = +[MRUserSettings currentSettings];
    [v21 remoteDeviceIdleDisconnectionInterval];
    v9->_disconnectInterval = v22;

    v23 = +[MRUserSettings currentSettings];
    [v23 mediaRecentlyPlayedInterval];
    v9->_recentlyPlayingInterval = v24;

    v9->_continuousPlaybackDetectionInterval = v9->_recentlyPlayingInterval * 30.0;
    [(MRDConnectionLifetimeController *)v9 _initialize];
  }

  v25 = v9;
LABEL_6:

  return v25;
}

- (void)_initialize
{
  queue = [(MRDConnectionLifetimeController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FB108;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDCLC] <%p> Deallocating.", buf, 0xCu);
  }

  if (![(MRDConnectionLifetimeController *)self disconnected])
  {
    [(MRDConnectionLifetimeController *)self unregisterForChanges];
  }

  v4.receiver = self;
  v4.super_class = MRDConnectionLifetimeController;
  [(MRDConnectionLifetimeController *)&v4 dealloc];
}

- (id)debugDescription
{
  v3 = objc_alloc_init(NSMutableString);
  queue = [(MRDConnectionLifetimeController *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000FB3C8;
  v8[3] = &unk_1004B68F0;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(queue, v8);

  v6 = v5;
  return v5;
}

- (void)registerForChanges
{
  MRMediaRemoteSetWantsNowPlayingNotifications();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleIsPlayingDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleDeviceInfoDidChangeNotification:" name:kMRDeviceInfoDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleActiveSystemEndpointChangedNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  v6 = +[MRDDisplayMonitor sharedMonitor];
  [v7 addObserver:self selector:"_handleLayoutDidChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v6];
}

- (void)unregisterForChanges
{
  MRMediaRemoteSetWantsNowPlayingNotifications();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)evaluateShouldDisconnectWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(MRDConnectionLifetimeController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(MRDConnectionLifetimeController *)self disconnected])
  {
    v6 = self->_origin;
    if (!v6)
    {
LABEL_33:

      goto LABEL_34;
    }

    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      selfCopy4 = self;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = *&reasonCopy;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[MRDCLC] <%p> Re-evaluate for origin %@ because %@.", buf, 0x20u);
    }

    if ([(MRDConnectionLifetimeController *)self isMemberOfActiveSystemEndpoint])
    {
      v8 = @"Device is part of UserSelected endpoint";
LABEL_7:
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        selfCopy4 = self;
        v32 = 2112;
        v33 = v6;
        v34 = 2112;
        v35 = *&v8;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[MRDCLC] <%p> Will maintain connection for origin %@ because %@.", buf, 0x20u);
      }

      [(MRDConnectionLifetimeController *)self setHasDeferredDisconnectionDueToDeviceState:0];
      disconnectTimer = [(MRDConnectionLifetimeController *)self disconnectTimer];
      v11 = disconnectTimer == 0;

      if (!v11)
      {
        v12 = _MRLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          selfCopy4 = self;
          v32 = 2112;
          v33 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDCLC] <%p> Cancel scheduled disconnect for origin %@.", buf, 0x16u);
        }

        disconnectTimer2 = [(MRDConnectionLifetimeController *)self disconnectTimer];
        [disconnectTimer2 invalidateWithReason:v8];

        [(MRDConnectionLifetimeController *)self setDisconnectTimer:0];
      }

LABEL_30:
      maintainReason = [(MRDConnectionLifetimeController *)self maintainReason];

      if (maintainReason)
      {
        maintainReason2 = [(MRDConnectionLifetimeController *)self maintainReason];
        [(MRDConnectionLifetimeController *)self setPreviousMaintainReason:maintainReason2];
      }

      [(MRDConnectionLifetimeController *)self setMaintainReason:v8];
      goto LABEL_33;
    }

    if ([(MRDConnectionLifetimeController *)self isPlaying])
    {
      if (![(MRDConnectionLifetimeController *)self continuousPlaybackDetected])
      {
        v8 = @"Device is playing";
        goto LABEL_7;
      }
    }

    else
    {
      if ([(MRDConnectionLifetimeController *)self hasPlayedRecently])
      {
        v8 = @"Device played recently";
        goto LABEL_7;
      }

      if ([(MRDConnectionLifetimeController *)self containsLocalDevice])
      {
        v8 = @"Remote device is playing to local device";
        goto LABEL_7;
      }
    }

    if ([(MRDConnectionLifetimeController *)self hasDeferredDisconnectionDueToDeviceState])
    {
      if (![(MRDConnectionLifetimeController *)self deviceState])
      {
        [(MRDConnectionLifetimeController *)self disconnectOrigin:v6];
      }
    }

    else
    {
      disconnectTimer3 = [(MRDConnectionLifetimeController *)self disconnectTimer];
      v15 = disconnectTimer3 == 0;

      if (v15)
      {
        [(MRDConnectionLifetimeController *)self disconnectInterval];
        v17 = v16;
        if ([(MRDConnectionLifetimeController *)self isPlaying])
        {
          v17 = v17 + v17;
        }

        v18 = _MRLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          selfCopy4 = self;
          v32 = 2112;
          v33 = v6;
          v34 = 2048;
          v35 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MRDCLC] <%p> Schedule disconnect for origin %@ in %.2lf seconds.", buf, 0x20u);
        }

        objc_initWeak(buf, self);
        v19 = [MRTimer alloc];
        queue2 = [(MRDConnectionLifetimeController *)self queue];
        v24 = _NSConcreteStackBlock;
        v25 = 3221225472;
        v26 = sub_1000FBC44;
        v27 = &unk_1004B9630;
        objc_copyWeak(&v29, buf);
        v28 = v6;
        v21 = [v19 initWithInterval:@"CLC-disconnectTimer" name:queue2 queue:&v24 block:v17];
        [(MRDConnectionLifetimeController *)self setDisconnectTimer:v21, v24, v25, v26, v27];

        objc_destroyWeak(&v29);
        objc_destroyWeak(buf);
      }
    }

    v8 = 0;
    goto LABEL_30;
  }

LABEL_34:
}

- (void)disconnectOrigin:(id)origin
{
  originCopy = origin;
  queue = [(MRDConnectionLifetimeController *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MRDConnectionLifetimeController *)self setDisconnected:1];
  [(MRDConnectionLifetimeController *)self unregisterForChanges];
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = originCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDCLC] <%p> Disconnecting origin %@.", &v8, 0x16u);
  }

  delegate = [(MRDConnectionLifetimeController *)self delegate];
  [delegate disconnectOrigin:originCopy];
}

- (void)_handleDeviceInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(MRDConnectionLifetimeController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FBF1C;
  v7[3] = &unk_1004B68F0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_handleIsPlayingDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(MRDConnectionLifetimeController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FC06C;
  v7[3] = &unk_1004B68F0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_adjustPlaybackTimerIfNeeded
{
  isPlaying = [(MRDConnectionLifetimeController *)self isPlaying];
  playbackTimer = [(MRDConnectionLifetimeController *)self playbackTimer];

  if (isPlaying)
  {
    if (playbackTimer)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1003A8DEC(self, v5);
      }

      playbackTimer2 = [(MRDConnectionLifetimeController *)self playbackTimer];
      [playbackTimer2 invalidate];

      [(MRDConnectionLifetimeController *)self setPlaybackTimer:0];
    }
  }

  else if (!playbackTimer)
  {
    [(MRDConnectionLifetimeController *)self recentlyPlayingInterval];
    v8 = v7;
    [(MRDConnectionLifetimeController *)self timeSincePlaying];
    v10 = v8 - v9;
    if (v10 <= 0.0)
    {

      [(MRDConnectionLifetimeController *)self evaluateShouldDisconnectWithReason:@"Has not played recently"];
    }

    else
    {
      v11 = v10 + 2.0;
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1003A8D78();
      }

      objc_initWeak(&location, self);
      v13 = [MRTimer alloc];
      queue = [(MRDConnectionLifetimeController *)self queue];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_1000FC364;
      v19 = &unk_1004B8280;
      objc_copyWeak(&v20, &location);
      v15 = [v13 initWithInterval:@"CLC-playbackTimer" name:queue queue:&v16 block:v11];
      [(MRDConnectionLifetimeController *)self setPlaybackTimer:v15, v16, v17, v18, v19];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_adjustContinuousPlaybackDetectionTimerIfNeeded
{
  isPlaying = [(MRDConnectionLifetimeController *)self isPlaying];
  continuousPlaybackDetectionTimer = [(MRDConnectionLifetimeController *)self continuousPlaybackDetectionTimer];
  v5 = continuousPlaybackDetectionTimer;
  if (isPlaying)
  {
    [continuousPlaybackDetectionTimer invalidateWithReason:@"Playback Started"];

    [(MRDConnectionLifetimeController *)self setContinuousPlaybackDetectionTimer:0];
    [(MRDConnectionLifetimeController *)self continuousPlaybackDetectionInterval];
    v7 = v6;
    [(MRDConnectionLifetimeController *)self timeSincePlaybackStarted];
    v9 = v7 - v8;
    if (v9 <= 0.0)
    {

      [(MRDConnectionLifetimeController *)self evaluateShouldDisconnectWithReason:@"Continuous Playback Detected"];
    }

    else
    {
      v10 = v9 + 10.0;
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1003A8E64();
      }

      objc_initWeak(&location, self);
      v12 = [MRTimer alloc];
      queue = [(MRDConnectionLifetimeController *)self queue];
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_1000FC5D8;
      v18 = &unk_1004B8280;
      objc_copyWeak(&v19, &location);
      v14 = [v12 initWithInterval:@"CLC-continuousPlaybackDetectionTimer" name:queue queue:&v15 block:v10];
      [(MRDConnectionLifetimeController *)self setContinuousPlaybackDetectionTimer:v14, v15, v16, v17, v18];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [continuousPlaybackDetectionTimer invalidateWithReason:{@"Playback stopped, continuousPlaybackDetection is no longer relevant"}];

    [(MRDConnectionLifetimeController *)self setContinuousPlaybackDetectionTimer:0];
  }
}

- (void)_handleLayoutDidChangeNotification:(id)notification
{
  queue = [(MRDConnectionLifetimeController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FC6A8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleActiveSystemEndpointChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(MRDConnectionLifetimeController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FC8B4;
  v7[3] = &unk_1004B68F0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (id)activeSystemEndpointUID
{
  v2 = +[MRDMediaRemoteServer server];
  routingServer = [v2 routingServer];
  systemEndpointController = [routingServer systemEndpointController];
  v5 = [systemEndpointController activeOutputDeviceUID:0];

  return v5;
}

- (BOOL)isMemberOfActiveSystemEndpoint
{
  activeSystemEndpointUID = [(MRDConnectionLifetimeController *)self activeSystemEndpointUID];
  v4 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v4 nowPlayingServer];
  v6 = [nowPlayingServer originClientForOrigin:self->_origin];
  deviceInfo = [v6 deviceInfo];

  v8 = +[MRDMediaRemoteServer server];
  nowPlayingServer2 = [v8 nowPlayingServer];
  v10 = [nowPlayingServer2 originClientForGroupLeaderOfDeviceUID:activeSystemEndpointUID];
  deviceInfo2 = [v10 deviceInfo];

  deviceUID = [deviceInfo deviceUID];
  deviceUID2 = [deviceInfo2 deviceUID];
  v14 = deviceUID2;
  if (deviceUID == deviceUID2)
  {

LABEL_24:
    goto LABEL_25;
  }

  v15 = [deviceUID isEqual:deviceUID2];

  if (v15)
  {
LABEL_25:
    v34 = 1;
    goto LABEL_26;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  deviceUID = [deviceInfo2 groupedDevices];
  v16 = [deviceUID countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
LABEL_5:
    v19 = 0;
    while (1)
    {
      if (*v41 != v18)
      {
        objc_enumerationMutation(deviceUID);
      }

      v20 = *(*(&v40 + 1) + 8 * v19);
      deviceUID3 = [deviceInfo deviceUID];
      deviceUID4 = [v20 deviceUID];
      v23 = deviceUID3;
      v24 = deviceUID4;
      if (v23 == v24)
      {
        goto LABEL_23;
      }

      v25 = [v23 isEqual:v24];

      if (v25)
      {
        goto LABEL_24;
      }

      if (v17 == ++v19)
      {
        v17 = [deviceUID countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v17)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  deviceUID = [deviceInfo2 clusteredDevices];
  v26 = [deviceUID countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v37;
LABEL_14:
    v29 = 0;
    while (1)
    {
      if (*v37 != v28)
      {
        objc_enumerationMutation(deviceUID);
      }

      v30 = *(*(&v36 + 1) + 8 * v29);
      deviceUID5 = [deviceInfo deviceUID];
      deviceUID6 = [v30 deviceUID];
      v23 = deviceUID5;
      v24 = deviceUID6;
      if (v23 == v24)
      {
        break;
      }

      v33 = [v23 isEqual:v24];

      if (v33)
      {
        goto LABEL_24;
      }

      if (v27 == ++v29)
      {
        v27 = [deviceUID countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v27)
        {
          goto LABEL_14;
        }

        goto LABEL_21;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_21:

  v34 = 0;
LABEL_26:

  return v34;
}

- (BOOL)isPlaying
{
  v3 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v3 nowPlayingServer];
  v5 = [nowPlayingServer originClientForOrigin:self->_origin];
  isPlaying = [v5 isPlaying];

  return isPlaying;
}

- (double)timeSincePlaying
{
  v3 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v3 nowPlayingServer];
  v5 = [nowPlayingServer originClientForOrigin:self->_origin];
  [v5 timeSincePlaying];
  v7 = v6;

  return v7;
}

- (BOOL)hasPlayedRecently
{
  [(MRDConnectionLifetimeController *)self timeSincePlaying];
  v4 = v3;
  [(MRDConnectionLifetimeController *)self recentlyPlayingInterval];
  return v4 < v5;
}

- (BOOL)containsLocalDevice
{
  v3 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v3 nowPlayingServer];
  v5 = [nowPlayingServer originClientForOrigin:self->_origin];
  deviceInfo = [v5 deviceInfo];

  LOBYTE(v5) = [deviceInfo containsLocalDevice];
  return v5;
}

- (double)timeSincePlaybackStarted
{
  v3 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v3 nowPlayingServer];
  v5 = [nowPlayingServer originClientForOrigin:self->_origin];
  [v5 timeSincePlaybackStarted];
  v7 = v6;

  return v7;
}

- (BOOL)continuousPlaybackDetected
{
  [(MRDConnectionLifetimeController *)self timeSincePlaybackStarted];
  v4 = v3;
  [(MRDConnectionLifetimeController *)self continuousPlaybackDetectionInterval];
  return v4 >= v5;
}

- (MRDConnectionLifetimeControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (MRDConnectionLifetimeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end