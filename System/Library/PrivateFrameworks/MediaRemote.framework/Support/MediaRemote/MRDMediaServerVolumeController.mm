@interface MRDMediaServerVolumeController
- (BOOL)_fetchIsMuted;
- (BOOL)isMuted;
- (MRDMediaServerVolumeController)initWithRoutingDataSource:(id)source;
- (float)_fetchVolume;
- (float)currentVolume;
- (id)debugDescription;
- (unsigned)_fetchCapabilities;
- (unsigned)capabilities;
- (void)_avSessionMediaServicesResetNotification:(id)notification;
- (void)_currentRouteHasVolumeControlDidChangeNotification:(id)notification;
- (void)_forceEnableCECVolumeNotification:(id)notification;
- (void)_initVolumeDataIfNeccessary;
- (void)_onQueue_setVolume:(float)volume error:(id *)error;
- (void)_postVolumeDidChange:(float)change;
- (void)_reloadVolumeDataWithReason:(id)reason;
- (void)_setup;
- (void)_setupNotifications;
- (void)_systemMuteDidChange:(id)change;
- (void)_systemVolumeDidChange:(id)change;
- (void)_tearDownNotifications;
- (void)_updateCapabilitiesValueCache;
- (void)_updateIsMutedValueCache;
- (void)_updateVolumeValueCache;
- (void)adjustVolume:(int64_t)volume error:(id *)error;
- (void)adjustVolumeWithStepAmount:(float)amount error:(id *)error;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setIsMuted:(BOOL)muted error:(id *)error;
- (void)setVolume:(float)volume error:(id *)error;
@end

@implementation MRDMediaServerVolumeController

- (void)_updateCapabilitiesValueCache
{
  dispatch_assert_queue_V2(self->_serialQueue);
  _fetchCapabilities = [(MRDMediaServerVolumeController *)self _fetchCapabilities];
  self->_capabilitiesValue = _fetchCapabilities;

  [(MRDMediaServerVolumeController *)self _postVolumeControlCapabilitiesDidChange:_fetchCapabilities];
}

- (void)_updateIsMutedValueCache
{
  dispatch_assert_queue_V2(self->_serialQueue);
  _fetchIsMuted = [(MRDMediaServerVolumeController *)self _fetchIsMuted];
  self->_isMutedValue = _fetchIsMuted;

  [(MRDMediaServerVolumeController *)self _postIsMutedDidChange:_fetchIsMuted];
}

- (unsigned)_fetchCapabilities
{
  _mediaServerController = [(MRDMediaServerVolumeController *)self _mediaServerController];
  currentRouteHasVolumeControl = [_mediaServerController currentRouteHasVolumeControl];

  if (currentRouteHasVolumeControl)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = +[MRUserSettings currentSettings];
  if ([v6 supportCoordinatedVolume])
  {
    _mediaServerController2 = [(MRDMediaServerVolumeController *)self _mediaServerController];

    if (_mediaServerController2)
    {
      v5 |= 8u;
    }
  }

  else
  {
  }

  v8 = +[MRUserSettings currentSettings];
  hasSystemVolumeCapabilitiesOverride = [v8 hasSystemVolumeCapabilitiesOverride];

  if (!hasSystemVolumeCapabilitiesOverride)
  {
    return v5;
  }

  v10 = +[MRUserSettings currentSettings];
  systemVolumeCapabilitiesOverride = [v10 systemVolumeCapabilitiesOverride];

  return systemVolumeCapabilitiesOverride;
}

- (float)_fetchVolume
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v9 = 0.0;
  _mediaServerController = [(MRDMediaServerVolumeController *)self _mediaServerController];
  [_mediaServerController getVolume:&v9 forCategory:@"MediaPlayback"];
  v4 = +[MRUserSettings currentSettings];
  [v4 systemVolumeOverride];
  v6 = v5;

  if (v6 >= 0.0)
  {
    v9 = v6;
  }

  if (![(MRDMediaServerVolumeController *)self _platformHasNativeMuteSupport]&& self->_isMutedValue)
  {
    v9 = 0.0;
  }

  v7 = v9;

  return v7;
}

- (void)_updateVolumeValueCache
{
  [(MRDMediaServerVolumeController *)self _fetchVolume];
  self->_volumeValue = v3;

  [(MRDMediaServerVolumeController *)self _postVolumeDidChange:?];
}

- (BOOL)_fetchIsMuted
{
  _mediaServerController = [(MRDMediaServerVolumeController *)self _mediaServerController];
  v3 = [_mediaServerController attributeForKey:AVSystemController_FullMuteAttribute];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (MRDMediaServerVolumeController)initWithRoutingDataSource:(id)source
{
  v11.receiver = self;
  v11.super_class = MRDMediaServerVolumeController;
  v3 = [(MRDVolumeController *)&v11 initWithRoutingDataSource:source];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("conm.apple.mediaRemote.mediaServerVolumeController", v4);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v5;

    v7 = +[MRDMediaRemoteServer server];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100179C70;
    v9[3] = &unk_1004B6D08;
    v10 = v3;
    [v7 addMediaRemoteSeverStartedHandler:v9];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRDMediaServerVolumeController;
  [(MRDMediaServerVolumeController *)&v4 dealloc];
}

- (id)debugDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003522C;
  v10 = sub_100035ACC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100179E68;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unsigned)capabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017A0C4;
  v5[3] = &unk_1004B6958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (float)currentVolume
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017A1B8;
  v5[3] = &unk_1004B6958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isMuted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017A2AC;
  v5[3] = &unk_1004B6958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setVolume:(float)volume error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003522C;
  serialQueue = self->_serialQueue;
  v12 = sub_100035ACC;
  v13 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017A3DC;
  block[3] = &unk_1004BFE28;
  volumeCopy = volume;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(serialQueue, block);
  if (error)
  {
    *error = v9[5];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_onQueue_setVolume:(float)volume error:(id *)error
{
  if (self->_volumeValue != volume)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      volumeCopy = volume;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDVolumeController] Setting AVSC volume to %f", buf, 0xCu);
    }

    _mediaServerController = [(MRDMediaServerVolumeController *)self _mediaServerController];
    self->_volumeValue = volume;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017A5D4;
    block[3] = &unk_1004B6D08;
    v9 = _mediaServerController;
    v13 = v9;
    if (qword_1005295D0 != -1)
    {
      dispatch_once(&qword_1005295D0, block);
    }

    *&v10 = self->_volumeValue;
    v11 = [v9 setVolumeTo:qword_1005295C8 forCategory:v10];
    if (error)
    {
      if ((v11 & 1) == 0)
      {
        *error = [[NSError alloc] initWithMRError:188 description:@"-[AVSystemController setVolumeTo:forCategory:] failed"];
      }
    }
  }
}

- (void)adjustVolumeWithStepAmount:(float)amount error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003522C;
  serialQueue = self->_serialQueue;
  v12 = sub_100035ACC;
  v13 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017A708;
  block[3] = &unk_1004BFE28;
  amountCopy = amount;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(serialQueue, block);
  if (error)
  {
    *error = v9[5];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)setIsMuted:(BOOL)muted error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003522C;
  serialQueue = self->_serialQueue;
  v12 = sub_100035ACC;
  v13 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017A858;
  block[3] = &unk_1004BFF78;
  mutedCopy = muted;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(serialQueue, block);
  if (error)
  {
    *error = v9[5];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)adjustVolume:(int64_t)volume error:(id *)error
{
  dispatch_sync(self->_serialQueue, &stru_1004BFF98);
  if (error)
  {
    *error = 0;
  }
}

- (void)_setup
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_avSessionMediaServicesResetNotification:" name:AVSystemController_ServerConnectionDiedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10017AB80;
  v9[3] = &unk_1004B99A0;
  v9[4] = self;
  v5 = [v4 addObserverForName:MRUserSettingsSystemVolumeCapabilitiesOverrideDidChange object:0 queue:0 usingBlock:v9];

  v6 = +[NSNotificationCenter defaultCenter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017AC78;
  v8[3] = &unk_1004B99A0;
  v8[4] = self;
  v7 = [v6 addObserverForName:MRUserSettingsSystemVolumeOverrideDidChange object:0 queue:0 usingBlock:v8];

  [(MRDMediaServerVolumeController *)self _setupNotifications];
  [(MRDMediaServerVolumeController *)self _initVolumeDataIfNeccessary];
}

- (void)_setupNotifications
{
  dispatch_assert_queue_V2(self->_serialQueue);
  _mediaServerController = [(MRDMediaServerVolumeController *)self _mediaServerController];
  v14 = AVSystemController_ServerConnectionDiedNotification;
  v4 = [NSArray arrayWithObjects:&v14 count:1];
  [_mediaServerController setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  if (AVSystemController_SystemVolumeDidChangeNotification)
  {
    v13 = AVSystemController_SystemVolumeDidChangeNotification;
    v5 = [NSArray arrayWithObjects:&v13 count:1];
    [_mediaServerController setAttribute:v5 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_systemVolumeDidChange:" name:AVSystemController_SystemVolumeDidChangeNotification object:_mediaServerController];
  }

  if (AVSystemController_FullMuteDidChangeNotification)
  {
    v12 = AVSystemController_FullMuteDidChangeNotification;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    [_mediaServerController setAttribute:v7 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"_systemMuteDidChange:" name:AVSystemController_FullMuteDidChangeNotification object:_mediaServerController];
  }

  if (AVSystemController_CurrentRouteHasVolumeControlDidChangeNotification)
  {
    v11 = AVSystemController_CurrentRouteHasVolumeControlDidChangeNotification;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [_mediaServerController setAttribute:v9 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_currentRouteHasVolumeControlDidChangeNotification:" name:AVSystemController_CurrentRouteHasVolumeControlDidChangeNotification object:_mediaServerController];
  }
}

- (void)_tearDownNotifications
{
  dispatch_assert_queue_V2(self->_serialQueue);
  _mediaServerController = [(MRDMediaServerVolumeController *)self _mediaServerController];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVSystemController_SystemVolumeDidChangeNotification object:_mediaServerController];
  [v3 removeObserver:self name:AVSystemController_FullMuteDidChangeNotification object:_mediaServerController];
  [v3 removeObserver:self name:AVSystemController_CurrentRouteHasVolumeControlDidChangeNotification object:_mediaServerController];
}

- (void)_systemVolumeDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017B104;
  v7[3] = &unk_1004B68F0;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_systemMuteDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017B23C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_currentRouteHasVolumeControlDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017B330;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_avSessionMediaServicesResetNotification:(id)notification
{
  notificationCopy = notification;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDVolumeController] AVAudioSessionMediaServicesWereReset notification received -- re-registering notifications", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017B478;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(serialQueue, v8);
}

- (void)_forceEnableCECVolumeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017B580;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017B6D0;
  block[3] = &unk_1004BFC38;
  v21 = changeCopy;
  contextCopy = context;
  v18 = pathCopy;
  selfCopy = self;
  v20 = objectCopy;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(serialQueue, block);
}

- (void)_initVolumeDataIfNeccessary
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (!self->_volumeDataIntialized)
  {

    [(MRDMediaServerVolumeController *)self _reloadVolumeDataWithReason:@"init"];
  }
}

- (void)_reloadVolumeDataWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDVolumeController] Reloading volume for reason: %@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  [(MRDMediaServerVolumeController *)self _updateCapabilitiesValueCache];
  [(MRDMediaServerVolumeController *)self _updateIsMutedValueCache];
  [(MRDMediaServerVolumeController *)self _updateVolumeValueCache];
}

- (void)_postVolumeDidChange:(float)change
{
  v7 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v7 nowPlayingServer];
  localOriginClient = [nowPlayingServer localOriginClient];
  *&v6 = change;
  [localOriginClient setVolume:v6];
}

@end