@interface NotificationFromGEODHandler
- (NotificationFromGEODHandler)initWithDelegate:(id)a3;
- (NotificationFromGEODHandlerDelegate)delegate;
- (void)clearIncompatibleOfflineDataNotification;
- (void)expiredOfflineSubscriptions:(id)a3 withDisplayNames:(id)a4 forReason:(int64_t)a5;
- (void)geoDInternalError:(int64_t)a3;
- (void)notifyForIncompatibleOfflineDataVersionsForIdentifiers:(id)a3 displayNames:(id)a4 completionHandler:(id)a5;
- (void)pairedDeviceHasInsufficientDiskSpace:(unint64_t)a3 forSubscriptions:(id)a4 withDisplayNames:(id)a5;
- (void)pingWithReply:(id)a3;
- (void)proxyAuthFailed:(int64_t)a3;
- (void)willExpireOfflineSubscriptionsWithIdentifiers:(id)a3 displayNames:(id)a4 unlessUpdatedByDate:(id)a5 completionHandler:(id)a6;
@end

@implementation NotificationFromGEODHandler

- (NotificationFromGEODHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = NotificationFromGEODHandler;
  v5 = [(NotificationFromGEODHandler *)&v10 init];
  self = v5;
  if (!v5 || (objc_storeWeak(&v5->_delegate, v4), v6 = [[GEODaemonToMapsPushDaemonListener alloc] initWithMapsPushDaemon:self], geodListener = self->_geodListener, self->_geodListener = v6, geodListener, self->_geodListener))
  {
    self = self;
    v8 = self;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

- (NotificationFromGEODHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)proxyAuthFailed:(int64_t)a3
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    GEOConfigGetDouble();
    v6 = v5;
    GEOMachAbsoluteTimeGetCurrent();
    v8 = v7;
    if (v7 - self->_lastProxyAuthEvent > v6 || self->_lastProxyAuthReason != a3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained geodProxyAuthFailedNotification:a3];

      self->_lastProxyAuthEvent = v8;
      self->_lastProxyAuthReason = a3;
    }
  }
}

- (void)geoDInternalError:(int64_t)a3
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    GEOConfigGetDouble();
    v6 = v5;
    GEOMachAbsoluteTimeGetCurrent();
    v8 = v7;
    if (v7 - self->_lastInternalErrorTime > v6 || self->_lastInternalErrorCode != a3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained geodInternalErrorNotification:a3];

      self->_lastInternalErrorTime = v8;
      self->_lastInternalErrorCode = a3;
    }
  }
}

- (void)pingWithReply:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)expiredOfflineSubscriptions:(id)a3 withDisplayNames:(id)a4 forReason:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained expiredOfflineSubscriptions:v9 withDisplayNames:v8 forReason:a5];
}

- (void)willExpireOfflineSubscriptionsWithIdentifiers:(id)a3 displayNames:(id)a4 unlessUpdatedByDate:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained willExpireOfflineSubscriptionsWithIdentifiers:v13 displayNames:v12 unlessUpdatedByDate:v11 completionHandler:v10];
}

- (void)notifyForIncompatibleOfflineDataVersionsForIdentifiers:(id)a3 displayNames:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained notifyForIncompatibleOfflineDataVersionsForIdentifiers:v10 displayNames:v9 completionHandler:v8];
}

- (void)clearIncompatibleOfflineDataNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clearIncompatibleOfflineDataNotification];
}

- (void)pairedDeviceHasInsufficientDiskSpace:(unint64_t)a3 forSubscriptions:(id)a4 withDisplayNames:(id)a5
{
  v8 = a5;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pairedDeviceHasInsufficientDiskSpace:a3 forSubscriptions:v9 withDisplayNames:v8];
}

@end