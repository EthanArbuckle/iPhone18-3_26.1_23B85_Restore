@interface MapsDaemon
- (void)_adoptPersonalPersona;
- (void)_consumeDarwinNotifications;
- (void)_main;
- (void)_postDarwinNotification;
- (void)_registerXPCActivities;
- (void)mapsInstallStateDidChange:(BOOL)a3;
- (void)start;
@end

@implementation MapsDaemon

- (void)_main
{
  v3 = objc_alloc_init(MDState);
  state = self->_state;
  self->_state = v3;

  v5 = objc_alloc_init(MDLocationManager);
  locationManager = self->_locationManager;
  self->_locationManager = v5;

  [(MDState *)self->_state setLocationManager:self->_locationManager];
  v7 = objc_alloc_init(MDNotificationCenter);
  notificationCenter = self->_notificationCenter;
  self->_notificationCenter = v7;

  [(MDState *)self->_state setNotificationCenter:self->_notificationCenter];
  v9 = [MDGeoServicesServer alloc];
  v10 = [(MDState *)self->_state notificationCenter];
  v11 = [(MDGeoServicesServer *)v9 initWithNotificationCenter:v10];
  geoServicesServer = self->_geoServicesServer;
  self->_geoServicesServer = v11;

  v13 = [[MDShareETAServer alloc] initWithState:self->_state];
  shareETSServer = self->_shareETSServer;
  self->_shareETSServer = v13;

  v15 = [[MDDevicePushManager alloc] initWithState:self->_state];
  devicePushManager = self->_devicePushManager;
  self->_devicePushManager = v15;

  v17 = [[RAPSubmissionStatusDownloader alloc] initWithQuerySource:1];
  submissionStatusDownloader = self->_submissionStatusDownloader;
  self->_submissionStatusDownloader = v17;

  [(RAPSubmissionStatusDownloader *)self->_submissionStatusDownloader setNotificationCenter:self->_notificationCenter];
  v19 = [[MDLocalProxy alloc] initWithState:self->_state];
  localProxy = self->_localProxy;
  self->_localProxy = v19;

  [(MDLocalProxy *)self->_localProxy setPushManager:self->_devicePushManager];
  v21 = [[MDAnnouncementsManager alloc] initWithState:self->_state];
  announcementsManager = self->_announcementsManager;
  self->_announcementsManager = v21;

  [(MDLocalProxy *)self->_localProxy setAnnouncementsManager:self->_announcementsManager];
  v23 = objc_alloc_init(MapsConnectionBrokerServer);
  mapsConnectionBrokerServer = self->_mapsConnectionBrokerServer;
  self->_mapsConnectionBrokerServer = v23;

  [(MDLocalProxy *)self->_localProxy startServer];
  v25 = +[MSPMapsInstallState sharedState];
  [v25 registerMapsInstallStateObserver:self];

  v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v26 = dispatch_queue_create("com.apple.Maps.mapspushd.activity.queue", v28);
  activityQueue = self->_activityQueue;
  self->_activityQueue = v26;
}

- (void)_consumeDarwinNotifications
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001A9F0;
  handler[3] = &unk_10003D408;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
}

- (void)_postDarwinNotification
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Posting did launch notification", v4, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Maps.mapspushd.DidLaunchNotification", 0, 0, 1u);
}

- (void)_registerXPCActivities
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [[MDBackgroundTaskRunner alloc] initTaskWithIdentifier:@"com.apple.Maps.mapspushd.launchForAnnouncements"];
    taskRunner = self->_taskRunner;
    self->_taskRunner = v3;

    [(MDBackgroundTaskRunner *)self->_taskRunner addTask:self->_announcementsManager];
    v5 = +[GEOCountryConfiguration sharedConfiguration];
    v6 = [v5 countryCode];
    v7 = [v6 isEqualToString:@"CN"];

    if ((v7 & 1) == 0)
    {
      [(MDBackgroundTaskRunner *)self->_taskRunner addTask:self->_submissionStatusDownloader];
    }

    v8 = +[BGSystemTaskScheduler sharedScheduler];
    v9 = [v8 taskRequestForIdentifier:@"com.apple.Maps.mapspushd.launchForAnnouncements"];

    if (v9)
    {
      v10 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
LABEL_12:

        return;
      }

      v11 = [v9 identifier];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Task already registered, skipping registration: %@", buf, 0xCu);
    }

    else
    {
      v10 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.Maps.mapspushd.launchForAnnouncements"];
      [v10 setPriority:2];
      GEOConfigGetDouble();
      [v10 setInterval:?];
      [v10 setRequiresNetworkConnectivity:1];
      v12 = +[BGSystemTaskScheduler sharedScheduler];
      v15 = 0;
      v13 = [v12 submitTaskRequest:v10 error:&v15];
      v11 = v15;

      if ((v13 & 1) == 0)
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to submit task with error: %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_12;
  }
}

- (void)mapsInstallStateDidChange:(BOOL)a3
{
  if (a3)
  {

    [(MapsDaemon *)self _registerXPCActivities];
  }

  else
  {
    v4 = +[BGSystemTaskScheduler sharedScheduler];
    [v4 deregisterTaskWithIdentifier:@"com.apple.Maps.mapspushd.launchForAnnouncements"];
  }
}

- (void)_adoptPersonalPersona
{
  v2 = +[UMUserManager sharedManager];
  v3 = [v2 isSharedIPad];

  if ((v3 & 1) == 0)
  {
    v4 = +[UMUserManager sharedManager];
    v5 = [v4 currentPersona];

    if (([v5 isPersonalPersona] & 1) == 0)
    {
      v6 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
      v7 = [v6 userPersonaUniqueString];
      v8 = [v5 generateAndRestorePersonaContextWithPersonaUniqueString:v7];

      if (v8)
      {
        v9 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to adopt persona: %@", &v10, 0xCu);
        }
      }
    }
  }
}

- (void)start
{
  [(MapsDaemon *)self _adoptPersonalPersona];
  [(MapsDaemon *)self _migrate];
  [(MapsDaemon *)self _main];
  [(MapsDaemon *)self _registerXPCActivities];
  [(MapsDaemon *)self _consumeDarwinNotifications];

  [(MapsDaemon *)self _postDarwinNotification];
}

@end