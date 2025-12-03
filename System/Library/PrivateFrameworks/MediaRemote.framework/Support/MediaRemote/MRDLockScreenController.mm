@interface MRDLockScreenController
- (BOOL)_onQueue_calculateShouldShowLockScreenForReason:(id *)reason;
- (BOOL)_onQueue_isLockScreenWidgetVisible;
- (BOOL)isLockScreenRecommendationActive;
- (BOOL)isLockScreenWidgetActive;
- (BOOL)isLockScreenWidgetVisible;
- (MRDLockScreenController)init;
- (MRLockScreenUIControllable)uiController;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification;
- (void)_handleElectedPlayerDidChangeNotification:(id)notification;
- (void)_handleIsPlayingDidChangeNotification:(id)notification;
- (void)_handleLayoutDidChangeNotification:(id)notification;
- (void)_onQueue_reevaluateShouldShowLockScreenForReason:(id)reason;
- (void)_onSerialQueue_restoreElectedPlayer;
- (void)lockScreenContentControllerStateDidChange:(id)change;
- (void)personalDeviceControllerStateDidChange:(id)change;
- (void)routeRecommendationDismissed;
- (void)setHasLockScreenAssertion:(BOOL)assertion;
- (void)setLockScreenRecommendationActive:(BOOL)active;
- (void)setPlayerPath:(id)path;
- (void)setPreviousPlayerPath:(id)path;
@end

@implementation MRDLockScreenController

- (void)_onSerialQueue_restoreElectedPlayer
{
  dispatch_assert_queue_V2(self->_queue);
  electedPlayerPath = self->_electedPlayerPath;
  if (electedPlayerPath != self->_playerPath && ([(MRPlayerPath *)electedPlayerPath isEqual:?]& 1) == 0)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = self->_playerPath;
      v6 = self->_electedPlayerPath;
      v7 = 138543618;
      v8 = playerPath;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] Restoring defered playerPath from %{public}@ to electedPlayerPath %{public}@", &v7, 0x16u);
    }

    self->_changeType = 0;
    [(MRDLockScreenController *)self setPlayerPath:self->_electedPlayerPath];
  }
}

- (BOOL)_onQueue_isLockScreenWidgetVisible
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_hasLockScreenAssertion)
  {
    lockScreenVisible = [(MRDDisplayMonitor *)self->_displayMonitor lockScreenVisible];
    if (lockScreenVisible)
    {
      LOBYTE(lockScreenVisible) = ![(MRDDisplayMonitor *)self->_displayMonitor ambientVisible];
    }
  }

  else
  {
    LOBYTE(lockScreenVisible) = 0;
  }

  return lockScreenVisible;
}

- (MRDLockScreenController)init
{
  v24.receiver = self;
  v24.super_class = MRDLockScreenController;
  v2 = [(MRDLockScreenController *)&v24 init];
  v3 = v2;
  if (v2)
  {
    playerPathInvalidationToken = v2->_playerPathInvalidationToken;
    v2->_playerPathInvalidationToken = 0;

    v5 = +[MRDDisplayMonitor sharedMonitor];
    displayMonitor = v3->_displayMonitor;
    v3->_displayMonitor = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.mediaremote.MRDLockScreenController", v7);
    queue = v3->_queue;
    v3->_queue = v8;

    v3->_hasLockScreenAssertion = 0;
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v3 selector:"_handleLayoutDidChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v3->_displayMonitor];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v3 selector:"_handleElectedPlayerDidChangeNotification:" name:kMRMediaRemoteElectedPlayerDidChangeNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v3 selector:"_handleIsPlayingDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v3 selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

    v14 = +[MRUserSettings currentSettings];
    supportLockscreenPlatterDisplayForPersonalDevice = [v14 supportLockscreenPlatterDisplayForPersonalDevice];

    if (supportLockscreenPlatterDisplayForPersonalDevice)
    {
      v16 = objc_opt_new();
      personalDeviceController = v3->_personalDeviceController;
      v3->_personalDeviceController = v16;

      [(MRDPersonalDeviceController *)v3->_personalDeviceController setDelegate:v3];
      v18 = objc_alloc_init(MRDLockScreenContentController);
      contentController = v3->_contentController;
      v3->_contentController = v18;

      [(MRDLockScreenContentController *)v3->_contentController setDelegate:v3];
      *&v3->_hasPresentedForCurrentPersonalDevices = 0;
    }

    v20 = v3->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F8F30;
    block[3] = &unk_1004B6D08;
    v23 = v3;
    dispatch_async(v20, block);
  }

  return v3;
}

- (BOOL)isLockScreenWidgetActive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  queue = self->_queue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (BOOL)isLockScreenWidgetVisible
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F90C4;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setHasLockScreenAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_hasLockScreenAssertion != assertionCopy)
  {
    self->_hasLockScreenAssertion = assertionCopy;
    if (self->_delegate)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F919C;
      block[3] = &unk_1004B6D08;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (BOOL)isLockScreenRecommendationActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F9258;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLockScreenRecommendationActive:(BOOL)active
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F92E4;
  v4[3] = &unk_1004B8820;
  v4[4] = self;
  activeCopy = active;
  dispatch_sync(queue, v4);
}

- (void)setPreviousPlayerPath:(id)path
{
  pathCopy = path;
  if (self->_previousPlayerPathInvalidationToken)
  {
    MRMediaRemoteRemovePlayerPathInvalidationHandler();
    previousPlayerPathInvalidationToken = self->_previousPlayerPathInvalidationToken;
    self->_previousPlayerPathInvalidationToken = 0;
  }

  objc_storeStrong(&self->_previousPlayerPath, path);
  if (self->_previousPlayerPath)
  {
    objc_initWeak(&location, self);
    previousPlayerPath = self->_previousPlayerPath;
    queue = self->_queue;
    objc_copyWeak(&v11, &location);
    v9 = MRMediaRemoteAddPlayerPathInvalidationHandler();
    v10 = self->_previousPlayerPathInvalidationToken;
    self->_previousPlayerPathInvalidationToken = v9;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)setPlayerPath:(id)path
{
  pathCopy = path;
  _onQueue_isLockScreenWidgetVisible = [(MRDLockScreenController *)self _onQueue_isLockScreenWidgetVisible];
  if (self->_changeType && (_onQueue_isLockScreenWidgetVisible & 1) != 0)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = self->_playerPath;
      changeType = self->_changeType;
      v10 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
      *buf = 138544130;
      v34 = playerPath;
      v35 = 2114;
      v36 = pathCopy;
      v37 = 2114;
      v38 = v10;
      v39 = 2114;
      v40 = @"visible";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] Deferring setting playerPath from %{public}@ to %{public}@ because changeType is <%{public}@> and lock screen is <%{public}@>", buf, 0x2Au);
    }

    if (self->_playerPathInvalidationToken)
    {
      MRMediaRemoteRemovePlayerPathInvalidationHandler();
      playerPathInvalidationToken = self->_playerPathInvalidationToken;
      self->_playerPathInvalidationToken = 0;
    }

    objc_initWeak(buf, self);
    v12 = self->_playerPath;
    queue = self->_queue;
    objc_copyWeak(&v30, buf);
    v14 = MRMediaRemoteAddPlayerPathInvalidationHandler();
    v15 = self->_playerPathInvalidationToken;
    self->_playerPathInvalidationToken = v14;

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    [(MRDLockScreenController *)self setPreviousPlayerPath:self->_playerPath];
    if (self->_playerPathInvalidationToken)
    {
      MRMediaRemoteRemovePlayerPathInvalidationHandler();
      v16 = self->_playerPathInvalidationToken;
      self->_playerPathInvalidationToken = 0;
    }

    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_playerPath;
      *buf = 138543618;
      v34 = v18;
      v35 = 2114;
      v36 = pathCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] Setting playerPath from %{public}@ to %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&self->_playerPath, path);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F9830;
    block[3] = &unk_1004B68F0;
    block[4] = self;
    v19 = pathCopy;
    v32 = v19;
    dispatch_async(&_dispatch_main_q, block);
    v20 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v20 nowPlayingServer];
    v22 = [nowPlayingServer queryExistingPlayerPath:v19];
    playerResult = self->_playerResult;
    self->_playerResult = v22;

    v24 = [NSString alloc];
    v26 = self->_playerPath;
    previousPlayerPath = self->_previousPlayerPath;
    v27 = self->_changeType;
    v28 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
    v29 = [v24 initWithFormat:@"PlayerPath changed from %@ to %@ with changeType %@", previousPlayerPath, v26, v28];
    [(MRDLockScreenController *)self _onQueue_reevaluateShouldShowLockScreenForReason:v29];
  }
}

- (void)personalDeviceControllerStateDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F9918;
  v7[3] = &unk_1004B68F0;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

- (void)lockScreenContentControllerStateDidChange:(id)change
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F99EC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)routeRecommendationDismissed
{
  v6 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"recommendation dismissed"];
  [v6 setType:2];
  v2 = +[MRUserSettings currentSettings];
  [v2 mediaRecentlyPlayedInterval];
  [v6 setDisableDuration:?];

  v3 = +[MRDMediaRemoteServer server];
  routingServer = [v3 routingServer];
  systemEndpointController = [routingServer systemEndpointController];
  [systemEndpointController updateSystemEndpointForRequest:v6];
}

- (void)_handleLayoutDidChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F9B3C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleElectedPlayerDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  playerPath = [notificationCopy playerPath];
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:kMRMediaRemoteActiveEndpointChangeTypeUserInfoKey];
  intValue = [v7 intValue];

  userInfo2 = [notificationCopy userInfo];

  v10 = [userInfo2 objectForKeyedSubscript:@"MRDElectedPlayerControllerEventUserInfoKey"];
  intValue2 = [v10 intValue];

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F9CD0;
  v14[3] = &unk_1004B6C78;
  v14[4] = self;
  v15 = playerPath;
  v16 = intValue;
  v17 = intValue2;
  v13 = playerPath;
  dispatch_sync(queue, v14);
}

- (void)_handleIsPlayingDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F9DE0;
  v7[3] = &unk_1004B68F0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_sync(queue, v7);
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = +[MRUserSettings currentSettings];
  supportManyRecommendationsPlatters = [v5 supportManyRecommendationsPlatters];

  if ((supportManyRecommendationsPlatters & 1) == 0)
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:MRUpdateActiveSystemEndpointRequestUserInfoKey];

    userInfo2 = [notificationCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
    integerValue = [v10 integerValue];

    if (integerValue == 3)
    {
      outputDeviceUID = [v8 outputDeviceUID];

      v13 = _MRLogForCategory();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (outputDeviceUID)
      {
        if (v14)
        {
          outputDeviceUID2 = [v8 outputDeviceUID];
          v18 = 138412290;
          v19 = outputDeviceUID2;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] Requesting legacy RSE presentation - %@", &v18, 0xCu);
        }

        uiController = [(MRDLockScreenController *)self uiController];
        [uiController acquireRouteRecommendationAssertionForIdentifiers:&off_1004E0EF8];
      }

      else
      {
        if (v14)
        {
          outputDeviceUID3 = [v8 outputDeviceUID];
          v18 = 138412290;
          v19 = outputDeviceUID3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] Requesting legacy RSE dismissal - %@", &v18, 0xCu);
        }

        uiController = [(MRDLockScreenController *)self uiController];
        [uiController releaseRouteRecommendationAssertion];
      }

      [(MRDLockScreenController *)self setHasLockScreenRecommendationAssertion:outputDeviceUID != 0];
    }
  }
}

- (void)_onQueue_reevaluateShouldShowLockScreenForReason:(id)reason
{
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_queue);
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A8C80(reasonCopy, v5);
  }

  if (![(MRDDisplayMonitor *)self->_displayMonitor lockScreenVisible])
  {
    [(MRDLockScreenController *)self _onSerialQueue_restoreElectedPlayer];
  }

  v14 = 0;
  if ([(MRDLockScreenController *)self _onQueue_calculateShouldShowLockScreenForReason:&v14])
  {
    if (![(MRDLockScreenController *)self hasLockScreenAssertion])
    {
      uiController = [(MRDLockScreenController *)self uiController];
      uiController2 = uiController;
      if (uiController)
      {
        [uiController acquireLockScreenControlsAssertion];
      }

      else
      {
        v10 = objc_alloc_init(MRDLockScreenAssertion);
        [(MRDLockScreenController *)self setLegacyAssertion:v10];
      }

      selfCopy2 = self;
      v12 = 1;
LABEL_22:
      [(MRDLockScreenController *)selfCopy2 setHasLockScreenAssertion:v12];
LABEL_23:
    }
  }

  else if ([(MRDLockScreenController *)self _onQueue_isLockScreenWidgetVisible])
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A8CF8(v8);
    }

    if (!self->_playerPath)
    {
      uiController2 = _MRLogForCategory();
      if (os_log_type_enabled(uiController2, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, uiController2, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] LockScreen now showing empty controls. Will be dismissed when lock screen is no longer visible", v13, 2u);
      }

      goto LABEL_23;
    }
  }

  else if ([(MRDLockScreenController *)self hasLockScreenAssertion])
  {
    uiController2 = [(MRDLockScreenController *)self uiController];
    if (uiController2)
    {
      uiController3 = [(MRDLockScreenController *)self uiController];
      [uiController3 releaseLockScreenControlsAssertion];
    }

    else
    {
      [(MRDLockScreenController *)self setLegacyAssertion:0];
    }

    selfCopy2 = self;
    v12 = 0;
    goto LABEL_22;
  }
}

- (BOOL)_onQueue_calculateShouldShowLockScreenForReason:(id *)reason
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_playerPath)
  {
    personalDeviceController = [(MRDLockScreenController *)self personalDeviceController];
    if ([personalDeviceController personalDeviceWasRecentlyAttached])
    {
      contentController = [(MRDLockScreenController *)self contentController];
      if ([contentController lockScreenPlatterHasContent] && -[MRDDisplayMonitor lockScreenVisible](self->_displayMonitor, "lockScreenVisible"))
      {
        shouldFinishPresentationForCurrentPersonalDevices = [(MRDLockScreenController *)self shouldFinishPresentationForCurrentPersonalDevices];

        if ((shouldFinishPresentationForCurrentPersonalDevices & 1) == 0)
        {
          v5 = 1;
          [(MRDLockScreenController *)self setHasPresentedForCurrentPersonalDevices:1];
          *reason = @"personalDeviceAttached";
          return v5;
        }

        return 0;
      }
    }

    return 0;
  }

  *reason = @"playerPath";
  return 1;
}

- (MRLockScreenUIControllable)uiController
{
  uiController = self->_uiController;
  if (!uiController)
  {
    v4 = [MRDUIControllerProvider lockScreenUIControllerWithDelegate:self];
    v5 = self->_uiController;
    self->_uiController = v4;

    uiController = self->_uiController;
  }

  return uiController;
}

@end