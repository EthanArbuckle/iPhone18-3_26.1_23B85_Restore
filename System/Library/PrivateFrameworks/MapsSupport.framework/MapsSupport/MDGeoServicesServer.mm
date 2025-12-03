@interface MDGeoServicesServer
- (MDGeoServicesServer)initWithNotificationCenter:(id)center;
- (void)dealloc;
- (void)expiredOfflineSubscriptions:(id)subscriptions withDisplayNames:(id)names forReason:(int64_t)reason;
- (void)finishedDownloadingOfflineSubscription:(id)subscription withDisplayName:(id)name willSyncToPairedDevice:(BOOL)device;
- (void)geodInternalErrorNotification:(int64_t)notification;
- (void)geodProxyAuthFailedNotification:(int64_t)notification;
@end

@implementation MDGeoServicesServer

- (MDGeoServicesServer)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v11.receiver = self;
  v11.super_class = MDGeoServicesServer;
  v6 = [(MDGeoServicesServer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationCenter, center);
    v8 = [[NotificationFromGEODHandler alloc] initWithDelegate:v7];
    notificationFromGEODHandler = v7->_notificationFromGEODHandler;
    v7->_notificationFromGEODHandler = v8;

    [(NotificationFromGEODHandler *)v7->_notificationFromGEODHandler resume];
  }

  return v7;
}

- (void)dealloc
{
  [(NotificationFromGEODHandler *)self->_notificationFromGEODHandler setDelegate:0];
  v3.receiver = self;
  v3.super_class = MDGeoServicesServer;
  [(MDGeoServicesServer *)&v3 dealloc];
}

- (void)geodInternalErrorNotification:(int64_t)notification
{
  v5 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v5 isInternalInstall];

  if (isInternalInstall)
  {
    switch(notification)
    {
      case -1001:
        v7 = @"The VPN connection appears to be failing. Can not change to new environment.";
        break;
      case 0:
        return;
      case -1000:
        v7 = @"The VPN connection appears to be failing. Some Maps endpoints will not be reachable.";
        break;
      default:
        v7 = @"Unknown error";
        break;
    }

    v8 = [(MDNotificationCenter *)self->_notificationCenter addGeoDInternalNotificationWithTitle:@"GeoD Internal (only) Error" subtitle:v7];
  }
}

- (void)geodProxyAuthFailedNotification:(int64_t)notification
{
  v6 = @"Tap here to authenticate with AppleConnect";
  v7 = @"Proxy Authentication Failed";
  if (notification <= 2)
  {
    v8 = @"Invalid token, going to attempt refresh";
    v9 = @"Proxy Authentication Failed";
    v10 = @"No Valid Authentication Session";
    if (notification != 2)
    {
      v10 = @"Proxy Authentication Failed";
    }

    if (notification != 1)
    {
      v9 = v10;
    }

    v11 = @"Proxy auth invalid failure reason";
    v12 = @"Auth proxy failure for unknown reasons";
    if (notification != 1)
    {
      v8 = @"Tap here to authenticate with AppleConnect";
    }

    if (notification)
    {
      v12 = @"Tap here to authenticate with AppleConnect";
    }

    if (notification != -1)
    {
      v11 = v12;
    }

    if (notification <= 0)
    {
      v7 = @"Proxy Authentication Failed";
    }

    else
    {
      v7 = v9;
    }

    if (notification <= 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = v8;
    }

    goto LABEL_28;
  }

  if (notification <= 4)
  {
    v13 = @"You are missing group access to the current environment";
    if (notification != 4)
    {
      v13 = @"Tap here to authenticate with AppleConnect";
    }

    v7 = @"Proxy Authentication Failed";
    if (notification == 3)
    {
      v6 = @"You do not have permissions to access this environment";
    }

    else
    {
      v6 = v13;
    }

    goto LABEL_28;
  }

  if (notification == 5)
  {
    v6 = @"Your environment does not have the proper URL(s)";
    goto LABEL_28;
  }

  if (notification != 6)
  {
LABEL_28:
    v14 = [(MDNotificationCenter *)self->_notificationCenter addProxyAuthFailedNotificationWithTitle:v7 subtitle:v6, v3, v4];
  }
}

- (void)finishedDownloadingOfflineSubscription:(id)subscription withDisplayName:(id)name willSyncToPairedDevice:(BOOL)device
{
  if (device)
  {
    v7 = @"watch pending";
  }

  else
  {
    v7 = 0;
  }

  nameCopy = name;
  subscriptionCopy = subscription;
  [GEOAPPortal captureUserAction:370 target:0 value:v7];
  [(MDNotificationCenter *)self->_notificationCenter addOfflineMapDownloadedNotificationForIdentifier:subscriptionCopy displayName:nameCopy];
}

- (void)expiredOfflineSubscriptions:(id)subscriptions withDisplayNames:(id)names forReason:(int64_t)reason
{
  subscriptionsCopy = subscriptions;
  namesCopy = names;
  if (reason > 3)
  {
    if (reason == 4)
    {
      [GEOAPPortal captureUserAction:373 target:0 value:@"not updated"];
      v10 = GeoOfflineConfig_UpdateRequiredExpirationInterval[1];
      [(MDNotificationCenter *)self->_notificationCenter addOfflineMapsExpiredNotificationForIdentifiers:subscriptionsCopy displayNames:namesCopy dueToNotBeingUpdatedWithinTimeInterval:GEOConfigGetUint64()];
      goto LABEL_16;
    }

    if (reason == 5)
    {
      [GEOAPPortal captureUserAction:373 target:0 value:@"unsupported"];
      [(MDNotificationCenter *)self->_notificationCenter addOfflineMapsUnsupportedExpirationNotificationForIdentifiers:subscriptionsCopy displayNames:namesCopy];
      goto LABEL_16;
    }
  }

  else
  {
    if ((reason - 1) < 2)
    {
      v9 = @"not in use";
      goto LABEL_11;
    }

    if (reason == 3)
    {
      [GEOAPPortal captureUserAction:373 target:0 value:@"regulatory"];
      [(MDNotificationCenter *)self->_notificationCenter addOfflineMapsRegulatoryRegionExpirationNotificationForIdentifiers:subscriptionsCopy displayNames:namesCopy];
      goto LABEL_16;
    }
  }

  v9 = @"<unknown>";
LABEL_11:
  [GEOAPPortal captureUserAction:373 target:0 value:v9];
  if (reason == 2)
  {
    notificationCenter = self->_notificationCenter;
    v12 = &GeoOfflineConfig_OptimizeStorageNeverUsedDeleteInterval;
  }

  else
  {
    if (reason != 1)
    {
      goto LABEL_16;
    }

    notificationCenter = self->_notificationCenter;
    v12 = &GeoOfflineConfig_OptimizeStorageLastUsedDeleteInterval;
  }

  v13 = *v12;
  v14 = v12[1];
  [(MDNotificationCenter *)notificationCenter addOfflineMapsExpiredNotificationForIdentifiers:subscriptionsCopy displayNames:namesCopy dueToNotBeingUsedWithinTimeInterval:GEOConfigGetUint64()];
LABEL_16:
}

@end