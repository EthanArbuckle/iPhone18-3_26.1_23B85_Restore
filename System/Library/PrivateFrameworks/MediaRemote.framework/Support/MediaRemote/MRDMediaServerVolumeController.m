@interface MRDMediaServerVolumeController
- (BOOL)_fetchIsMuted;
- (BOOL)isMuted;
- (MRDMediaServerVolumeController)initWithRoutingDataSource:(id)a3;
- (float)_fetchVolume;
- (float)currentVolume;
- (id)debugDescription;
- (unsigned)_fetchCapabilities;
- (unsigned)capabilities;
- (void)_avSessionMediaServicesResetNotification:(id)a3;
- (void)_currentRouteHasVolumeControlDidChangeNotification:(id)a3;
- (void)_forceEnableCECVolumeNotification:(id)a3;
- (void)_initVolumeDataIfNeccessary;
- (void)_onQueue_setVolume:(float)a3 error:(id *)a4;
- (void)_postVolumeDidChange:(float)a3;
- (void)_reloadVolumeDataWithReason:(id)a3;
- (void)_setup;
- (void)_setupNotifications;
- (void)_systemMuteDidChange:(id)a3;
- (void)_systemVolumeDidChange:(id)a3;
- (void)_tearDownNotifications;
- (void)_updateCapabilitiesValueCache;
- (void)_updateIsMutedValueCache;
- (void)_updateVolumeValueCache;
- (void)adjustVolume:(int64_t)a3 error:(id *)a4;
- (void)adjustVolumeWithStepAmount:(float)a3 error:(id *)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setIsMuted:(BOOL)a3 error:(id *)a4;
- (void)setVolume:(float)a3 error:(id *)a4;
@end

@implementation MRDMediaServerVolumeController

- (void)_updateCapabilitiesValueCache
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(MRDMediaServerVolumeController *)self _fetchCapabilities];
  self->_capabilitiesValue = v3;

  [(MRDMediaServerVolumeController *)self _postVolumeControlCapabilitiesDidChange:v3];
}

- (void)_updateIsMutedValueCache
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(MRDMediaServerVolumeController *)self _fetchIsMuted];
  self->_isMutedValue = v3;

  [(MRDMediaServerVolumeController *)self _postIsMutedDidChange:v3];
}

- (unsigned)_fetchCapabilities
{
  v3 = [(MRDMediaServerVolumeController *)self _mediaServerController];
  v4 = [v3 currentRouteHasVolumeControl];

  if (v4)
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
    v7 = [(MRDMediaServerVolumeController *)self _mediaServerController];

    if (v7)
    {
      v5 |= 8u;
    }
  }

  else
  {
  }

  v8 = +[MRUserSettings currentSettings];
  v9 = [v8 hasSystemVolumeCapabilitiesOverride];

  if (!v9)
  {
    return v5;
  }

  v10 = +[MRUserSettings currentSettings];
  v11 = [v10 systemVolumeCapabilitiesOverride];

  return v11;
}

- (float)_fetchVolume
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v9 = 0.0;
  v3 = [(MRDMediaServerVolumeController *)self _mediaServerController];
  [v3 getVolume:&v9 forCategory:@"MediaPlayback"];
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
  v2 = [(MRDMediaServerVolumeController *)self _mediaServerController];
  v3 = [v2 attributeForKey:AVSystemController_FullMuteAttribute];
  v4 = [v3 BOOLValue];

  return v4;
}

- (MRDMediaServerVolumeController)initWithRoutingDataSource:(id)a3
{
  v11.receiver = self;
  v11.super_class = MRDMediaServerVolumeController;
  v3 = [(MRDVolumeController *)&v11 initWithRoutingDataSource:a3];
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

- (void)setVolume:(float)a3 error:(id *)a4
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
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(serialQueue, block);
  if (a4)
  {
    *a4 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_onQueue_setVolume:(float)a3 error:(id *)a4
{
  if (self->_volumeValue != a3)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDVolumeController] Setting AVSC volume to %f", buf, 0xCu);
    }

    v8 = [(MRDMediaServerVolumeController *)self _mediaServerController];
    self->_volumeValue = a3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017A5D4;
    block[3] = &unk_1004B6D08;
    v9 = v8;
    v13 = v9;
    if (qword_1005295D0 != -1)
    {
      dispatch_once(&qword_1005295D0, block);
    }

    *&v10 = self->_volumeValue;
    v11 = [v9 setVolumeTo:qword_1005295C8 forCategory:v10];
    if (a4)
    {
      if ((v11 & 1) == 0)
      {
        *a4 = [[NSError alloc] initWithMRError:188 description:@"-[AVSystemController setVolumeTo:forCategory:] failed"];
      }
    }
  }
}

- (void)adjustVolumeWithStepAmount:(float)a3 error:(id *)a4
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
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(serialQueue, block);
  if (a4)
  {
    *a4 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)setIsMuted:(BOOL)a3 error:(id *)a4
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
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(serialQueue, block);
  if (a4)
  {
    *a4 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)adjustVolume:(int64_t)a3 error:(id *)a4
{
  dispatch_sync(self->_serialQueue, &stru_1004BFF98);
  if (a4)
  {
    *a4 = 0;
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
  v3 = [(MRDMediaServerVolumeController *)self _mediaServerController];
  v14 = AVSystemController_ServerConnectionDiedNotification;
  v4 = [NSArray arrayWithObjects:&v14 count:1];
  [v3 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  if (AVSystemController_SystemVolumeDidChangeNotification)
  {
    v13 = AVSystemController_SystemVolumeDidChangeNotification;
    v5 = [NSArray arrayWithObjects:&v13 count:1];
    [v3 setAttribute:v5 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_systemVolumeDidChange:" name:AVSystemController_SystemVolumeDidChangeNotification object:v3];
  }

  if (AVSystemController_FullMuteDidChangeNotification)
  {
    v12 = AVSystemController_FullMuteDidChangeNotification;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    [v3 setAttribute:v7 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"_systemMuteDidChange:" name:AVSystemController_FullMuteDidChangeNotification object:v3];
  }

  if (AVSystemController_CurrentRouteHasVolumeControlDidChangeNotification)
  {
    v11 = AVSystemController_CurrentRouteHasVolumeControlDidChangeNotification;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [v3 setAttribute:v9 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_currentRouteHasVolumeControlDidChangeNotification:" name:AVSystemController_CurrentRouteHasVolumeControlDidChangeNotification object:v3];
  }
}

- (void)_tearDownNotifications
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v4 = [(MRDMediaServerVolumeController *)self _mediaServerController];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVSystemController_SystemVolumeDidChangeNotification object:v4];
  [v3 removeObserver:self name:AVSystemController_FullMuteDidChangeNotification object:v4];
  [v3 removeObserver:self name:AVSystemController_CurrentRouteHasVolumeControlDidChangeNotification object:v4];
}

- (void)_systemVolumeDidChange:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017B104;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_systemMuteDidChange:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017B23C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_currentRouteHasVolumeControlDidChangeNotification:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017B330;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_avSessionMediaServicesResetNotification:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  dispatch_async(serialQueue, v8);
}

- (void)_forceEnableCECVolumeNotification:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017B580;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017B6D0;
  block[3] = &unk_1004BFC38;
  v21 = v12;
  v22 = a6;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
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

- (void)_reloadVolumeDataWithReason:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDVolumeController] Reloading volume for reason: %@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  [(MRDMediaServerVolumeController *)self _updateCapabilitiesValueCache];
  [(MRDMediaServerVolumeController *)self _updateIsMutedValueCache];
  [(MRDMediaServerVolumeController *)self _updateVolumeValueCache];
}

- (void)_postVolumeDidChange:(float)a3
{
  v7 = +[MRDMediaRemoteServer server];
  v4 = [v7 nowPlayingServer];
  v5 = [v4 localOriginClient];
  *&v6 = a3;
  [v5 setVolume:v6];
}

@end