@interface MDDevicePushManager
- (BOOL)_shouldDisplayNotificationForProblemStatus:(id)status;
- (MDDevicePushManager)initWithState:(id)state;
- (void)_cleanupRAPNotifications;
- (void)clearRAPStatusChangeNotificationWithManager:(id)manager;
- (void)dealloc;
- (void)pushManager:(id)manager gotPushData:(id)data;
- (void)pushManager:(id)manager receivedClearedPhotoAttributionNotificationWithTitle:(id)title message:(id)message;
- (void)pushManager:(id)manager receivedFixedProblemNotification:(id)notification manifestToken:(id)token;
- (void)pushManager:(id)manager receivedPhotoLivenessMUID:(id)d title:(id)title message:(id)message actionURL:(id)l;
- (void)pushManager:(id)manager receivedRAPStatusChangeNotification:(id)notification;
@end

@implementation MDDevicePushManager

- (MDDevicePushManager)initWithState:(id)state
{
  stateCopy = state;
  v13.receiver = self;
  v13.super_class = MDDevicePushManager;
  v6 = [(MDDevicePushManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, state);
    v8 = objc_alloc_init(MapsPushManager);
    pushManager = v7->_pushManager;
    v7->_pushManager = v8;

    v10 = objc_alloc_init(RAPSubmissionStatusSyncHandler);
    syncHandler = v7->_syncHandler;
    v7->_syncHandler = v10;

    [(MapsPushManager *)v7->_pushManager setDelegate:v7];
    [(MDDevicePushManager *)v7 _cleanupRAPNotifications];
    [(MapsPushManager *)v7->_pushManager registerForMapsICloudPushTopic];
  }

  return v7;
}

- (void)dealloc
{
  [(MapsPushManager *)self->_pushManager setDelegate:0];
  pushManager = self->_pushManager;
  self->_pushManager = 0;

  v4.receiver = self;
  v4.super_class = MDDevicePushManager;
  [(MDDevicePushManager *)&v4 dealloc];
}

- (BOOL)_shouldDisplayNotificationForProblemStatus:(id)status
{
  details = [status details];
  displayStyle = [details displayStyle];
  v5 = (displayStyle < 6) & (0x36u >> displayStyle);
  if ([details displayStyle] == 5 && objc_msgSend(details, "placesCount") <= 1)
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_cleanupRAPNotifications
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = +[NSFileManager defaultManager];
  v3 = +[RAPNotification notificationCachePath];
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:0];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([RAPNotification shouldDeleteNotificationWithID:v9])
        {
          [RAPNotification deleteNotificationWithID:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)pushManager:(id)manager gotPushData:(id)data
{
  dataCopy = data;
  v6 = [[SyncedBookmarkRepr alloc] initWithData:dataCopy];
  if (v6)
  {
    notificationCenter = [(MDState *)self->_state notificationCenter];
    v8 = [notificationCenter addPushedBookmark:v6];

    if (v8)
    {
      peerConnectionsLock = [(MDState *)self->_state peerConnectionsLock];
      [peerConnectionsLock lock];

      peerConnections = [(MDState *)self->_state peerConnections];
      v11 = [peerConnections copy];

      peerConnectionsLock2 = [(MDState *)self->_state peerConnectionsLock];
      [peerConnectionsLock2 unlock];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            remoteObjectProxy = [*(*(&v19 + 1) + 8 * i) remoteObjectProxy];
            [remoteObjectProxy pushDaemonProxyReceivedNotificationData:dataCopy forType:@"MapsPushNotifcationTypePushToPhone" recordIdentifier:v8];
          }

          v15 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v15);
      }
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid data. Ignoring...", buf, 2u);
    }
  }
}

- (void)pushManager:(id)manager receivedFixedProblemNotification:(id)notification manifestToken:(id)token
{
  notificationCopy = notification;
  tokenCopy = token;
  problemStatus = [notificationCopy problemStatus];
  firstObject = [problemStatus firstObject];

  if (!firstObject)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error: no problem status found in notification.", buf, 2u);
    }

    goto LABEL_6;
  }

  if ([(MDDevicePushManager *)self _shouldDisplayNotificationForProblemStatus:firstObject])
  {
    [(RAPSubmissionStatusSyncHandler *)self->_syncHandler setFixedProblemAsReviewed:notificationCopy];
    v11 = +[GEOResourceManifestManager modernManager];
    [v11 openServerConnection];

    v12 = +[GEOResourceManifestManager modernManager];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10000DB68;
    v18 = &unk_10003CED0;
    v19 = notificationCopy;
    selfCopy = self;
    [v12 setManifestToken:tokenCopy completionHandler:&v15];

    v13 = [GEOPlaceCardRequester sharedRequester:v15];
    [v13 clearCache];

    v14 = v19;
LABEL_6:
  }
}

- (void)pushManager:(id)manager receivedRAPStatusChangeNotification:(id)notification
{
  notificationCopy = notification;
  notificationCenter = [(MDState *)self->_state notificationCenter];
  v6 = [notificationCenter addRAPNotificationForProblemStatusChangeWithRapInfo:notificationCopy];
}

- (void)pushManager:(id)manager receivedPhotoLivenessMUID:(id)d title:(id)title message:(id)message actionURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  notificationCenter = [(MDState *)self->_state notificationCenter];
  v13 = [notificationCenter addUGCPhotoNotificationWithTitle:titleCopy message:messageCopy actionURL:lCopy];
}

- (void)pushManager:(id)manager receivedClearedPhotoAttributionNotificationWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  notificationCenter = [(MDState *)self->_state notificationCenter];
  v9 = [notificationCenter addUGCClearedPhotoAttributionNotificationWithTitle:titleCopy message:messageCopy];
}

- (void)clearRAPStatusChangeNotificationWithManager:(id)manager
{
  notificationCenter = [(MDState *)self->_state notificationCenter];
  [notificationCenter clearNotificationsOfType:15];
}

@end