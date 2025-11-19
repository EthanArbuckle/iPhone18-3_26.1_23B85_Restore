@interface MDGeoServicesServer
- (MDGeoServicesServer)initWithNotificationCenter:(id)a3;
- (void)dealloc;
- (void)expiredOfflineSubscriptions:(id)a3 withDisplayNames:(id)a4 forReason:(int64_t)a5;
- (void)finishedDownloadingOfflineSubscription:(id)a3 withDisplayName:(id)a4 willSyncToPairedDevice:(BOOL)a5;
- (void)geodInternalErrorNotification:(int64_t)a3;
- (void)geodProxyAuthFailedNotification:(int64_t)a3;
@end

@implementation MDGeoServicesServer

- (MDGeoServicesServer)initWithNotificationCenter:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MDGeoServicesServer;
  v6 = [(MDGeoServicesServer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationCenter, a3);
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

- (void)geodInternalErrorNotification:(int64_t)a3
{
  v5 = +[GEOPlatform sharedPlatform];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    switch(a3)
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

- (void)geodProxyAuthFailedNotification:(int64_t)a3
{
  v6 = @"Tap here to authenticate with AppleConnect";
  v7 = @"Proxy Authentication Failed";
  if (a3 <= 2)
  {
    v8 = @"Invalid token, going to attempt refresh";
    v9 = @"Proxy Authentication Failed";
    v10 = @"No Valid Authentication Session";
    if (a3 != 2)
    {
      v10 = @"Proxy Authentication Failed";
    }

    if (a3 != 1)
    {
      v9 = v10;
    }

    v11 = @"Proxy auth invalid failure reason";
    v12 = @"Auth proxy failure for unknown reasons";
    if (a3 != 1)
    {
      v8 = @"Tap here to authenticate with AppleConnect";
    }

    if (a3)
    {
      v12 = @"Tap here to authenticate with AppleConnect";
    }

    if (a3 != -1)
    {
      v11 = v12;
    }

    if (a3 <= 0)
    {
      v7 = @"Proxy Authentication Failed";
    }

    else
    {
      v7 = v9;
    }

    if (a3 <= 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = v8;
    }

    goto LABEL_28;
  }

  if (a3 <= 4)
  {
    v13 = @"You are missing group access to the current environment";
    if (a3 != 4)
    {
      v13 = @"Tap here to authenticate with AppleConnect";
    }

    v7 = @"Proxy Authentication Failed";
    if (a3 == 3)
    {
      v6 = @"You do not have permissions to access this environment";
    }

    else
    {
      v6 = v13;
    }

    goto LABEL_28;
  }

  if (a3 == 5)
  {
    v6 = @"Your environment does not have the proper URL(s)";
    goto LABEL_28;
  }

  if (a3 != 6)
  {
LABEL_28:
    v14 = [(MDNotificationCenter *)self->_notificationCenter addProxyAuthFailedNotificationWithTitle:v7 subtitle:v6, v3, v4];
  }
}

- (void)finishedDownloadingOfflineSubscription:(id)a3 withDisplayName:(id)a4 willSyncToPairedDevice:(BOOL)a5
{
  if (a5)
  {
    v7 = @"watch pending";
  }

  else
  {
    v7 = 0;
  }

  v8 = a4;
  v9 = a3;
  [GEOAPPortal captureUserAction:370 target:0 value:v7];
  [(MDNotificationCenter *)self->_notificationCenter addOfflineMapDownloadedNotificationForIdentifier:v9 displayName:v8];
}

- (void)expiredOfflineSubscriptions:(id)a3 withDisplayNames:(id)a4 forReason:(int64_t)a5
{
  v15 = a3;
  v8 = a4;
  if (a5 > 3)
  {
    if (a5 == 4)
    {
      [GEOAPPortal captureUserAction:373 target:0 value:@"not updated"];
      v10 = GeoOfflineConfig_UpdateRequiredExpirationInterval[1];
      [(MDNotificationCenter *)self->_notificationCenter addOfflineMapsExpiredNotificationForIdentifiers:v15 displayNames:v8 dueToNotBeingUpdatedWithinTimeInterval:GEOConfigGetUint64()];
      goto LABEL_16;
    }

    if (a5 == 5)
    {
      [GEOAPPortal captureUserAction:373 target:0 value:@"unsupported"];
      [(MDNotificationCenter *)self->_notificationCenter addOfflineMapsUnsupportedExpirationNotificationForIdentifiers:v15 displayNames:v8];
      goto LABEL_16;
    }
  }

  else
  {
    if ((a5 - 1) < 2)
    {
      v9 = @"not in use";
      goto LABEL_11;
    }

    if (a5 == 3)
    {
      [GEOAPPortal captureUserAction:373 target:0 value:@"regulatory"];
      [(MDNotificationCenter *)self->_notificationCenter addOfflineMapsRegulatoryRegionExpirationNotificationForIdentifiers:v15 displayNames:v8];
      goto LABEL_16;
    }
  }

  v9 = @"<unknown>";
LABEL_11:
  [GEOAPPortal captureUserAction:373 target:0 value:v9];
  if (a5 == 2)
  {
    notificationCenter = self->_notificationCenter;
    v12 = &GeoOfflineConfig_OptimizeStorageNeverUsedDeleteInterval;
  }

  else
  {
    if (a5 != 1)
    {
      goto LABEL_16;
    }

    notificationCenter = self->_notificationCenter;
    v12 = &GeoOfflineConfig_OptimizeStorageLastUsedDeleteInterval;
  }

  v13 = *v12;
  v14 = v12[1];
  [(MDNotificationCenter *)notificationCenter addOfflineMapsExpiredNotificationForIdentifiers:v15 displayNames:v8 dueToNotBeingUsedWithinTimeInterval:GEOConfigGetUint64()];
LABEL_16:
}

@end