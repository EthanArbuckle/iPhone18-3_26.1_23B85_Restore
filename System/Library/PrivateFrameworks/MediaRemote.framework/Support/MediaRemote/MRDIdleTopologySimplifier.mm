@interface MRDIdleTopologySimplifier
- (BOOL)isMultiplayerHost;
- (MRDIdleTopologySimplifier)init;
- (double)timeSincePlayingForPlayerPath:(id)path;
- (id)lastPlayingDateForPlayerPath:(id)path;
- (id)localDeviceUID;
- (unsigned)playbackStateForPlayerPath:(id)path;
- (void)_handleIsPlayingDidChangeNotification:(id)notification;
- (void)_initialize;
- (void)_onQueue_adjustPlaybackTimerIfNeededForPlayerPath:(id)path;
- (void)_onQueue_simplifyToplogyOfPlayerPathIfNeeded:(id)needed;
- (void)dealloc;
- (void)registerForChanges;
- (void)unregisterForChanges;
@end

@implementation MRDIdleTopologySimplifier

- (MRDIdleTopologySimplifier)init
{
  v13.receiver = self;
  v13.super_class = MRDIdleTopologySimplifier;
  v2 = [(MRDIdleTopologySimplifier *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(Name, v5);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    v8 = +[NSMutableDictionary dictionary];
    playbackTimers = v2->_playbackTimers;
    v2->_playbackTimers = v8;

    v10 = +[MRUserSettings currentSettings];
    [v10 mediaRecentlyPlayedInterval];
    v2->_recentlyPlayingInterval = v11;

    [(MRDIdleTopologySimplifier *)v2 _initialize];
  }

  return v2;
}

- (void)_initialize
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDITS] <%p> Initializing", &v4, 0xCu);
  }

  [(MRDIdleTopologySimplifier *)self registerForChanges];
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDITS] <%p> Deallocating.", buf, 0xCu);
  }

  [(MRDIdleTopologySimplifier *)self unregisterForChanges];
  v4.receiver = self;
  v4.super_class = MRDIdleTopologySimplifier;
  [(MRDIdleTopologySimplifier *)&v4 dealloc];
}

- (unsigned)playbackStateForPlayerPath:(id)path
{
  pathCopy = path;
  v4 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v4 nowPlayingServer];
  v6 = [nowPlayingServer queryExistingPlayerPath:pathCopy];

  playerClient = [v6 playerClient];
  playbackState = [playerClient playbackState];

  return playbackState;
}

- (id)lastPlayingDateForPlayerPath:(id)path
{
  pathCopy = path;
  v4 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v4 nowPlayingServer];
  v6 = [nowPlayingServer queryExistingPlayerPath:pathCopy];

  playerClient = [v6 playerClient];
  lastPlayingDate = [playerClient lastPlayingDate];

  return lastPlayingDate;
}

- (double)timeSincePlayingForPlayerPath:(id)path
{
  pathCopy = path;
  v4 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v4 nowPlayingServer];
  v6 = [nowPlayingServer queryExistingPlayerPath:pathCopy];

  playerClient = [v6 playerClient];
  [playerClient timeSincePlaying];
  v9 = v8;

  return v9;
}

- (id)localDeviceUID
{
  v2 = MRMediaRemoteCopyDeviceUID();

  return v2;
}

- (BOOL)isMultiplayerHost
{
  v2 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v2 supportMultiplayerHost];

  return supportMultiplayerHost;
}

- (void)registerForChanges
{
  MRMediaRemoteSetWantsNowPlayingNotifications();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleIsPlayingDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];
}

- (void)unregisterForChanges
{
  MRMediaRemoteSetWantsNowPlayingNotifications();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_handleIsPlayingDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100149FD0;
  v7[3] = &unk_1004B68F0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_onQueue_adjustPlaybackTimerIfNeededForPlayerPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [(MRDIdleTopologySimplifier *)self playbackStateForPlayerPath:pathCopy];
  [(MRDIdleTopologySimplifier *)self timeSincePlayingForPlayerPath:pathCopy];
  v7 = v6;
  v8 = v5 == 1;
  playbackTimers = [(MRDIdleTopologySimplifier *)self playbackTimers];
  v10 = [playbackTimers objectForKeyedSubscript:pathCopy];

  if (v8)
  {
    if (v10)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1003AAA48();
      }

      [v10 invalidate];
      playbackTimers2 = [(MRDIdleTopologySimplifier *)self playbackTimers];
      [playbackTimers2 setObject:0 forKeyedSubscript:pathCopy];
LABEL_17:
    }
  }

  else if (!v10)
  {
    [(MRDIdleTopologySimplifier *)self recentlyPlayingInterval];
    v14 = v13;
    playbackTimers2 = [(MRDIdleTopologySimplifier *)self lastPlayingDateForPlayerPath:pathCopy];
    v15 = +[NSDate distantPast];
    v16 = [playbackTimers2 isEqualToDate:v15];

    if (v16)
    {
      v17 = _MRLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1003AA9E0();
      }

      [(MRDIdleTopologySimplifier *)self recentlyPlayingInterval];
      v19 = v18;
    }

    else
    {
      v19 = v14 - v7;
    }

    if (v19 <= 0.0)
    {
      [(MRDIdleTopologySimplifier *)self _onQueue_simplifyToplogyOfPlayerPathIfNeeded:pathCopy];
    }

    else
    {
      v20 = _MRLogForCategory();
      v21 = v19 + 2.0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *location = 134218498;
        *&location[4] = self;
        v33 = 2048;
        v34 = v21;
        v35 = 2112;
        v36 = pathCopy;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[MRDITS] <%p> Scheduling idle playback timer for %.2lf seconds - %@", location, 0x20u);
      }

      objc_initWeak(location, self);
      serialQueue = self->_serialQueue;
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_10014A3C4;
      v29 = &unk_1004B9630;
      objc_copyWeak(&v31, location);
      v23 = pathCopy;
      v30 = v23;
      v24 = [MSVTimer timerWithInterval:0 repeats:serialQueue queue:&v26 block:v21];
      v25 = [(MRDIdleTopologySimplifier *)self playbackTimers:v26];
      [v25 setObject:v24 forKeyedSubscript:v23];

      objc_destroyWeak(&v31);
      objc_destroyWeak(location);
    }

    goto LABEL_17;
  }
}

- (void)_onQueue_simplifyToplogyOfPlayerPathIfNeeded:(id)needed
{
  neededCopy = needed;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(MRDIdleTopologySimplifier *)self isMultiplayerHost])
  {
    origin = [neededCopy origin];
    isHosted = [origin isHosted];

    if (isHosted)
    {
      if ([(MRDIdleTopologySimplifier *)self playbackStateForPlayerPath:neededCopy]== 1)
      {
        v7 = _MRLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_1003AAAB0();
        }

        goto LABEL_20;
      }

      v8 = +[MRDMediaRemoteServer server];
      routingServer = [v8 routingServer];
      hostedRoutingService = [routingServer hostedRoutingService];
      hostedRoutingController = [hostedRoutingService hostedRoutingController];
      availableEndpoints = [hostedRoutingController availableEndpoints];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10014A8A4;
      v30[3] = &unk_1004BECE0;
      v13 = neededCopy;
      v31 = v13;
      v14 = [availableEndpoints msv_firstWhere:v30];

      if (v14)
      {
        if ([v14 connectionType]== 6)
        {
          if (([v14 hasASmartDevice]& 1) != 0)
          {
            localDeviceUID = [(MRDIdleTopologySimplifier *)self localDeviceUID];
            v16 = [v14 containsOutputDeviceWithUID:localDeviceUID];

            v17 = _MRLogForCategory();
            v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
            if (!v16)
            {
              if (v18)
              {
                *buf = 134218242;
                selfCopy5 = self;
                v34 = 2112;
                v35 = v14;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDITS] <%p> Letting endpoint be hosted by a smart device - %@", buf, 0x16u);
              }

              outputDeviceUIDs = [v14 outputDeviceUIDs];
              v21 = [MRRequestDetails alloc];
              v22 = [v21 initWithInitiator:MRRequestDetailsInitiatorPrewarming requestID:0 reason:@"SimplifyTopology"];
              v17 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v22 type:2 outputDeviceUIDs:outputDeviceUIDs];
              serialQueue = self->_serialQueue;
              v26[0] = _NSConcreteStackBlock;
              v26[1] = 3221225472;
              v26[2] = sub_10014A908;
              v26[3] = &unk_1004B7810;
              v26[4] = self;
              v27 = outputDeviceUIDs;
              v28 = v14;
              v29 = v22;
              v24 = v22;
              v25 = outputDeviceUIDs;
              [v28 modifyTopologyWithRequest:v17 withReplyQueue:serialQueue completion:v26];

              goto LABEL_19;
            }

            if (v18)
            {
              *buf = 134218242;
              selfCopy5 = self;
              v34 = 2112;
              v35 = v14;
              v19 = "[MRDITS] <%p> Endpoint contains localDevice <%@>";
LABEL_18:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
            }
          }

          else
          {
            v17 = _MRLogForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy5 = self;
              v34 = 2112;
              v35 = v14;
              v19 = "[MRDITS] <%p> Endpoint contains a non smart device <%@>";
              goto LABEL_18;
            }
          }
        }

        else
        {
          v17 = _MRLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            selfCopy5 = self;
            v34 = 2112;
            v35 = v14;
            v19 = "[MRDITS] <%p> Endpoint is not localHosted <%@>";
            goto LABEL_18;
          }
        }
      }

      else
      {
        v17 = _MRLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          selfCopy5 = self;
          v34 = 2112;
          v35 = v13;
          v19 = "[MRDITS] <%p> Could not find endpoint for playerPath <%@>";
          goto LABEL_18;
        }
      }

LABEL_19:

      v7 = v31;
LABEL_20:
    }
  }
}

@end