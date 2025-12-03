@interface NSSCompanionSyncManager
+ (unint64_t)pairedWatchVictoryBehavior;
+ (void)blockUntilPaired;
- (NSSCompanionSyncManager)init;
- (id)currentNikePhoneAppBundleID;
- (id)currentNikeWatchAppBundleID;
- (void)appConduitTimerFired;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)checkForCompletionOfVictoryAppInstallationOnPhone;
- (void)checkIfAppConduitKnowsAboutVictoryWatchApp;
- (void)coordinateNikeAppInstallation;
- (void)didFetchInfoForApplication:(id)application error:(id)error;
- (void)didInstallVictoryAppOnWatchWithState:(int64_t)state error:(id)error;
- (void)didUpdateVictoryAppInstallationStateOntoWatch:(int64_t)watch;
- (void)installVictoryAppOntoWatch;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reportSyncCompletionWithError:(id)error;
- (void)startAppConduitTimer;
- (void)startMonitoringAppConduitNotification;
- (void)startMonitoringVictoryAppInstallationOnPhone;
- (void)stopAppConduitTimer;
- (void)stopMonitoringAppConduitNotification;
- (void)stopMonitoringVictoryAppInstallationOnPhone;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session;
- (void)updateInstallStateForApplication:(id)application installState:(int64_t)state;
@end

@implementation NSSCompanionSyncManager

- (NSSCompanionSyncManager)init
{
  v10.receiver = self;
  v10.super_class = NSSCompanionSyncManager;
  v2 = [(NSSCompanionSyncManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanosystemsettings.SyncManager", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = v2->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011D64;
    block[3] = &unk_100034B48;
    v9 = v2;
    dispatch_async(v6, block);
  }

  return v2;
}

- (id)currentNikePhoneAppBundleID
{
  if (self->_installState)
  {
    return @"com.nike.niketrainingclub";
  }

  else
  {
    return @"com.nike.nikeplus-gps";
  }
}

- (id)currentNikeWatchAppBundleID
{
  currentNikePhoneAppBundleID = [(NSSCompanionSyncManager *)self currentNikePhoneAppBundleID];
  v3 = [currentNikePhoneAppBundleID stringByAppendingString:@".watchkitapp"];

  return v3;
}

+ (void)blockUntilPaired
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  waitForActivePairedOrAltAccountDevice = [v3 waitForActivePairedOrAltAccountDevice];
}

+ (unint64_t)pairedWatchVictoryBehavior
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011FFC;
  block[3] = &unk_100034E60;
  block[4] = self;
  if (qword_10003DD08 != -1)
  {
    dispatch_once(&qword_10003DD08, block);
  }

  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  firstObject = [v4 firstObject];

  v6 = [firstObject valueForProperty:NRDevicePropertyDeviceBrand];
  if ([v6 intValue] == 2)
  {
    v7 = [[NSUUID alloc] initWithUUIDString:@"E7995851-D32D-4A4F-B12C-3DD8D0252581"];
    v8 = [firstObject supportsCapability:v7];

    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)reportSyncCompletionWithError:(id)error
{
  errorCopy = error;
  syncSession = self->_syncSession;
  if (syncSession)
  {
    if (errorCopy)
    {
      [(PSYServiceSyncSession *)syncSession syncDidFailWithError:errorCopy];
    }

    else
    {
      [(PSYServiceSyncSession *)syncSession syncDidComplete];
    }

    syncTransaction = self->_syncTransaction;
    self->_syncTransaction = 0;

    v7 = self->_syncSession;
    self->_syncSession = 0;

    [(NSSCompanionSyncManager *)self stopMonitoringVictoryAppInstallationOnPhone];
    [(NSSCompanionSyncManager *)self stopMonitoringAppConduitNotification];
    [(LSApplicationWorkspace *)self->_applicationWorkspace removeObserver:self];
    applicationWorkspace = self->_applicationWorkspace;
    self->_applicationWorkspace = 0;

    v9 = +[ACXDeviceConnection sharedDeviceConnection];
    [v9 removeObserver:self];

    *&self->_isCheckingIfAppConduitKnowsAboutVictoryWatchApp = 0;
  }

  _objc_release_x1();
}

- (void)startMonitoringVictoryAppInstallationOnPhone
{
  victoryAppInstallProgress = self->_victoryAppInstallProgress;
  v4 = NSStringFromSelector("fractionCompleted");
  [(NSProgress *)victoryAppInstallProgress addObserver:self forKeyPath:v4 options:0 context:0];

  v5 = self->_victoryAppInstallProgress;
  v6 = NSStringFromSelector("installState");
  [(NSProgress *)v5 addObserver:self forKeyPath:v6 options:0 context:0];

  [(NSSCompanionSyncManager *)self checkForCompletionOfVictoryAppInstallationOnPhone];
}

- (void)stopMonitoringVictoryAppInstallationOnPhone
{
  victoryAppInstallProgress = self->_victoryAppInstallProgress;
  v4 = NSStringFromSelector("fractionCompleted");
  [(NSProgress *)victoryAppInstallProgress removeObserver:self forKeyPath:v4];

  v5 = self->_victoryAppInstallProgress;
  v6 = NSStringFromSelector("installState");
  [(NSProgress *)v5 removeObserver:self forKeyPath:v6];

  v7 = self->_victoryAppInstallProgress;
  self->_victoryAppInstallProgress = 0;
}

- (void)checkForCompletionOfVictoryAppInstallationOnPhone
{
  installState = [(NSProgress *)self->_victoryAppInstallProgress installState];
  v4 = NSSLogForType();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [(NSProgress *)self->_victoryAppInstallProgress fractionCompleted];
    if (installState > 5)
    {
      v6 = "Unknown";
    }

    else
    {
      v6 = off_100034F70[installState];
    }

    v8 = 134218498;
    v9 = v5;
    v10 = 2080;
    v11 = v6;
    v12 = 2048;
    v13 = installState;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Victory app install progress on Phone: (%f); Install state: (%s - %lu)", &v8, 0x20u);
  }

  if (installState - 2 >= 3)
  {
    if (installState == 5)
    {
      [(NSSCompanionSyncManager *)self stopMonitoringVictoryAppInstallationOnPhone];
      [(NSSCompanionSyncManager *)self checkIfAppConduitKnowsAboutVictoryWatchApp];
    }
  }

  else
  {
    v7 = [NSError errorWithDomain:@"NSSErrorDomain" code:7 userInfo:0];
    [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:v7];
  }
}

- (void)checkIfAppConduitKnowsAboutVictoryWatchApp
{
  if (self->_isCheckingIfAppConduitKnowsAboutVictoryWatchApp)
  {
    self->_shouldCheckAgainIfAppConduitKnowsAboutVictoryWatchApp = 1;
  }

  else
  {
    self->_isCheckingIfAppConduitKnowsAboutVictoryWatchApp = 1;
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
    firstObject = [v5 firstObject];

    [(NSSCompanionSyncManager *)self startMonitoringAppConduitNotification];
    v7 = NSSLogForType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking if Victory app is installed onto Watch", buf, 2u);
    }

    objc_initWeak(buf, self);
    v8 = +[ACXDeviceConnection sharedDeviceConnection];
    currentNikeWatchAppBundleID = [(NSSCompanionSyncManager *)self currentNikeWatchAppBundleID];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100012528;
    v10[3] = &unk_100034EB0;
    objc_copyWeak(&v11, buf);
    [v8 fetchInfoForApplicationWithBundleID:currentNikeWatchAppBundleID forPairedDevice:firstObject completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)didFetchInfoForApplication:(id)application error:(id)error
{
  applicationCopy = application;
  errorCopy = error;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = applicationCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "application: (%@); error: (%@)", &v21, 0x16u);
  }

  self->_isCheckingIfAppConduitKnowsAboutVictoryWatchApp = 0;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:ACXErrorDomain])
    {
      code = [errorCopy code];

      if (code == 19)
      {
        if (self->_shouldCheckAgainIfAppConduitKnowsAboutVictoryWatchApp)
        {
          self->_shouldCheckAgainIfAppConduitKnowsAboutVictoryWatchApp = 0;
          [(NSSCompanionSyncManager *)self checkIfAppConduitKnowsAboutVictoryWatchApp];
        }

        else
        {
          v19 = NSSLogForType();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "AppConduit doesn't know yet about the Victory Watch app; Waiting for notification.", &v21, 2u);
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    selfCopy2 = self;
    v15 = errorCopy;
LABEL_15:
    [(NSSCompanionSyncManager *)selfCopy2 reportSyncCompletionWithError:v15];
    goto LABEL_29;
  }

  if ([applicationCopy count])
  {
    [(NSSCompanionSyncManager *)self stopMonitoringAppConduitNotification];
    v11 = [applicationCopy objectForKey:ACXServerStatusKey];
    integerValue = [v11 integerValue];

    if (integerValue == 2)
    {
      pairedWatchVictoryBehavior = [objc_opt_class() pairedWatchVictoryBehavior];
      if (pairedWatchVictoryBehavior != 2)
      {
        if (pairedWatchVictoryBehavior != 1)
        {
          goto LABEL_29;
        }

        selfCopy2 = self;
        v15 = 0;
        goto LABEL_15;
      }

      if (!self->_installState)
      {
        self->_installState = 1;
        v20 = NSSLogForType();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315138;
          v22 = "[NSSCompanionSyncManager didFetchInfoForApplication:error:]";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Moving to Next Install Phase...", &v21, 0xCu);
        }

        [(NSSCompanionSyncManager *)self coordinateNikeAppInstallation];
      }
    }

    else
    {
      v18 = NSSLogForType();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134217984;
        v22 = integerValue;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Watch app not yet installed. Installation state: (%ld). Triggering installation!", &v21, 0xCu);
      }

      [(NSSCompanionSyncManager *)self installVictoryAppOntoWatch];
    }
  }

  else
  {
    v16 = NSSLogForType();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AppConduit returned empty application dictionary", &v21, 2u);
    }

    v17 = [NSError errorWithDomain:@"NSSErrorDomain" code:7 userInfo:0];
    [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:v17];
  }

LABEL_29:
}

- (void)startAppConduitTimer
{
  if (!self->_appConduitTimer)
  {
    location[5] = v2;
    location[6] = v3;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_workQueue);
    appConduitTimer = self->_appConduitTimer;
    self->_appConduitTimer = v5;

    v7 = self->_appConduitTimer;
    v8 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x59682F00uLL);
    objc_initWeak(location, self);
    v9 = self->_appConduitTimer;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100012AE0;
    v10[3] = &unk_100034ED8;
    objc_copyWeak(&v11, location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_appConduitTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }
}

- (void)stopAppConduitTimer
{
  appConduitTimer = self->_appConduitTimer;
  if (appConduitTimer)
  {
    dispatch_source_cancel(appConduitTimer);
    v4 = self->_appConduitTimer;
    self->_appConduitTimer = 0;
  }
}

- (void)appConduitTimerFired
{
  v3 = NSSLogForType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AppConduit timer fired", v5, 2u);
  }

  v4 = [NSError errorWithDomain:@"NSSErrorDomain" code:7 userInfo:0];
  [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:v4];
}

- (void)startMonitoringAppConduitNotification
{
  p_appConduitNotifyToken = &self->_appConduitNotifyToken;
  if (self->_appConduitNotifyToken == -1)
  {
    selfCopy = self;
    uTF8String = [ACXApplicationsUpdatedDarwinNotification UTF8String];
    workQueue = selfCopy->_workQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100012D74;
    handler[3] = &unk_100034F00;
    handler[4] = selfCopy;
    v6 = notify_register_dispatch(uTF8String, p_appConduitNotifyToken, workQueue, handler);
    if (v6)
    {
      v7 = v6;
      v8 = NSSLogForType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to register observer for the AppConduit notification with status: (%u)", buf, 8u);
      }
    }

    [(NSSCompanionSyncManager *)selfCopy startAppConduitTimer];
  }
}

- (void)stopMonitoringAppConduitNotification
{
  appConduitNotifyToken = self->_appConduitNotifyToken;
  if (appConduitNotifyToken != -1)
  {
    v4 = notify_cancel(appConduitNotifyToken);
    if (v4)
    {
      v5 = v4;
      v6 = NSSLogForType();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7[0] = 67109120;
        v7[1] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to unregister observer for AppConduit notification with status: (%u)", v7, 8u);
      }
    }

    self->_appConduitNotifyToken = -1;
    [(NSSCompanionSyncManager *)self stopAppConduitTimer];
  }
}

- (void)installVictoryAppOntoWatch
{
  currentNikeWatchAppBundleID = [(NSSCompanionSyncManager *)self currentNikeWatchAppBundleID];
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
  firstObject = [v6 firstObject];

  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = currentNikeWatchAppBundleID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Installing Victory app onto Watch (%@)", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = +[ACXDeviceConnection sharedDeviceConnection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000130C8;
  v10[3] = &unk_100034F28;
  objc_copyWeak(&v11, buf);
  [v9 installApplication:currentNikeWatchAppBundleID onPairedDevice:firstObject completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)didInstallVictoryAppOnWatchWithState:(int64_t)state error:(id)error
{
  errorCopy = error;
  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    stateCopy = state;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ACXExportedApplicationInstallState: (%ld); error: (%@)", &v9, 0x16u);
  }

  if (errorCopy)
  {
    [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:errorCopy];
  }

  else if ((state - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [NSError errorWithDomain:@"NSSErrorDomain" code:7 userInfo:0];
    [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:v8];
  }
}

- (void)didUpdateVictoryAppInstallationStateOntoWatch:(int64_t)watch
{
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    watchCopy = watch;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACXExportedApplicationInstallState: (%ld)", &v9, 0xCu);
  }

  if (watch == 2)
  {
    pairedWatchVictoryBehavior = [objc_opt_class() pairedWatchVictoryBehavior];
    if (pairedWatchVictoryBehavior == 2)
    {
      if (!self->_installState)
      {
        self->_installState = 1;
        v8 = NSSLogForType();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315138;
          watchCopy = "[NSSCompanionSyncManager didUpdateVictoryAppInstallationStateOntoWatch:]";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Moving to Next Install Phase...", &v9, 0xCu);
        }

        [(NSSCompanionSyncManager *)self coordinateNikeAppInstallation];
      }
    }

    else if (pairedWatchVictoryBehavior == 1)
    {
      [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:0];
    }
  }

  else if ((watch & 0xFFFFFFFFFFFFFFFDLL) == 8)
  {
    v7 = [NSError errorWithDomain:@"NSSErrorDomain" code:7 userInfo:0];
    [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:v7];
  }
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = coordinatorCopy;
    v18 = 2112;
    v19 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "coordinator: (%@); syncSession: (%@)", &v16, 0x16u);
  }

  if ([objc_opt_class() pairedWatchVictoryBehavior])
  {
    v10 = os_transaction_create();
    syncTransaction = self->_syncTransaction;
    self->_syncTransaction = v10;

    if (self->_syncSession)
    {
      v12 = [NSError errorWithDomain:@"NSSErrorDomain" code:7 userInfo:0];
      [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:v12];
    }

    objc_storeStrong(&self->_syncSession, session);
    objc_storeStrong(&self->_syncCoordinator, coordinator);
    v13 = +[LSApplicationWorkspace defaultWorkspace];
    applicationWorkspace = self->_applicationWorkspace;
    self->_applicationWorkspace = v13;

    [(LSApplicationWorkspace *)self->_applicationWorkspace addObserver:self];
    v15 = +[ACXDeviceConnection sharedDeviceConnection];
    [v15 addObserver:self];

    [(NSSCompanionSyncManager *)self coordinateNikeAppInstallation];
  }

  else
  {
    [sessionCopy syncDidComplete];
  }
}

- (void)coordinateNikeAppInstallation
{
  if (self->_installState)
  {
    *&self->_isCheckingIfAppConduitKnowsAboutVictoryWatchApp = 0;
    victoryAppInstallProgress = self->_victoryAppInstallProgress;
    self->_victoryAppInstallProgress = 0;
  }

  currentNikePhoneAppBundleID = [(NSSCompanionSyncManager *)self currentNikePhoneAppBundleID];
  v5 = [LSApplicationProxy applicationProxyForIdentifier:currentNikePhoneAppBundleID];

  appState = [v5 appState];
  isInstalled = [appState isInstalled];

  if (isInstalled)
  {
    v8 = NSSLogForType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Victory App is already installed on Phone", &v17, 2u);
    }

    [(NSSCompanionSyncManager *)self checkIfAppConduitKnowsAboutVictoryWatchApp];
  }

  else
  {
    appState2 = [v5 appState];
    isPlaceholder = [appState2 isPlaceholder];

    v11 = NSSLogForType();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isPlaceholder)
    {
      if (v12)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Victory App is installing on Phone.", &v17, 2u);
      }

      installProgress = [v5 installProgress];
      v14 = NSSLogForType();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (installProgress)
      {
        if (v15)
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Monitoring Victory App installation progress.", &v17, 2u);
        }

        objc_storeStrong(&self->_victoryAppInstallProgress, installProgress);
        [(NSSCompanionSyncManager *)self startMonitoringVictoryAppInstallationOnPhone];
      }

      else
      {
        if (v15)
        {
          v17 = 138412290;
          v18 = v5;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Victory app installing but no progress on application proxy (%@).", &v17, 0xCu);
        }

        v16 = [NSError errorWithDomain:@"NSSErrorDomain" code:7 userInfo:0];
        [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:v16];
      }
    }

    else
    {
      if (v12)
      {
        v17 = 138412290;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Victory App not installed or installing on the Phone (proxy %@).", &v17, 0xCu);
      }

      installProgress = [NSError errorWithDomain:@"NSSErrorDomain" code:6 userInfo:0];
      [(NSSCompanionSyncManager *)self reportSyncCompletionWithError:installProgress];
    }
  }
}

- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = coordinatorCopy;
    v10 = 2112;
    v11 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "coordinator: (%@); syncSession: (%@)", &v8, 0x16u);
  }
}

- (void)updateInstallStateForApplication:(id)application installState:(int64_t)state
{
  applicationCopy = application;
  currentNikeWatchAppBundleID = [(NSSCompanionSyncManager *)self currentNikeWatchAppBundleID];
  v8 = [applicationCopy isEqualToString:currentNikeWatchAppBundleID];

  if (v8)
  {
    workQueue = self->_workQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100013AF0;
    v10[3] = &unk_100034F50;
    v10[4] = self;
    v10[5] = state;
    dispatch_async(workQueue, v10);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013B80;
  block[3] = &unk_100034B48;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        applicationIdentifier = [*(*(&v14 + 1) + 8 * v8) applicationIdentifier];
        currentNikePhoneAppBundleID = [(NSSCompanionSyncManager *)self currentNikePhoneAppBundleID];
        v11 = [applicationIdentifier isEqualToString:currentNikePhoneAppBundleID];

        if (v11)
        {
          workQueue = self->_workQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100013D24;
          block[3] = &unk_100034B48;
          block[4] = self;
          dispatch_async(workQueue, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [installCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        applicationIdentifier = [*(*(&v14 + 1) + 8 * v8) applicationIdentifier];
        currentNikePhoneAppBundleID = [(NSSCompanionSyncManager *)self currentNikePhoneAppBundleID];
        v11 = [applicationIdentifier isEqualToString:currentNikePhoneAppBundleID];

        if (v11)
        {
          workQueue = self->_workQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100013F3C;
          block[3] = &unk_100034B48;
          block[4] = self;
          dispatch_async(workQueue, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [uninstallCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

@end