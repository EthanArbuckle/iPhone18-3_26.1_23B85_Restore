@interface NotificationFromGEODHandler
- (NotificationFromGEODHandler)initWithDelegate:(id)delegate;
- (NotificationFromGEODHandlerDelegate)delegate;
- (void)clearIncompatibleOfflineDataNotification;
- (void)expiredOfflineSubscriptions:(id)subscriptions withDisplayNames:(id)names forReason:(int64_t)reason;
- (void)geoDInternalError:(int64_t)error;
- (void)notifyForIncompatibleOfflineDataVersionsForIdentifiers:(id)identifiers displayNames:(id)names completionHandler:(id)handler;
- (void)pairedDeviceHasInsufficientDiskSpace:(unint64_t)space forSubscriptions:(id)subscriptions withDisplayNames:(id)names;
- (void)pingWithReply:(id)reply;
- (void)proxyAuthFailed:(int64_t)failed;
- (void)willExpireOfflineSubscriptionsWithIdentifiers:(id)identifiers displayNames:(id)names unlessUpdatedByDate:(id)date completionHandler:(id)handler;
@end

@implementation NotificationFromGEODHandler

- (NotificationFromGEODHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = NotificationFromGEODHandler;
  v5 = [(NotificationFromGEODHandler *)&v10 init];
  self = v5;
  if (!v5 || (objc_storeWeak(&v5->_delegate, delegateCopy), v6 = [[GEODaemonToMapsPushDaemonListener alloc] initWithMapsPushDaemon:self], geodListener = self->_geodListener, self->_geodListener = v6, geodListener, self->_geodListener))
  {
    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_5:
    selfCopy = 0;
  }

  return selfCopy;
}

- (NotificationFromGEODHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)proxyAuthFailed:(int64_t)failed
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    GEOConfigGetDouble();
    v6 = v5;
    GEOMachAbsoluteTimeGetCurrent();
    v8 = v7;
    if (v7 - self->_lastProxyAuthEvent > v6 || self->_lastProxyAuthReason != failed)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained geodProxyAuthFailedNotification:failed];

      self->_lastProxyAuthEvent = v8;
      self->_lastProxyAuthReason = failed;
    }
  }
}

- (void)geoDInternalError:(int64_t)error
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    GEOConfigGetDouble();
    v6 = v5;
    GEOMachAbsoluteTimeGetCurrent();
    v8 = v7;
    if (v7 - self->_lastInternalErrorTime > v6 || self->_lastInternalErrorCode != error)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained geodInternalErrorNotification:error];

      self->_lastInternalErrorTime = v8;
      self->_lastInternalErrorCode = error;
    }
  }
}

- (void)pingWithReply:(id)reply
{
  if (reply)
  {
    (*(reply + 2))(reply);
  }
}

- (void)expiredOfflineSubscriptions:(id)subscriptions withDisplayNames:(id)names forReason:(int64_t)reason
{
  namesCopy = names;
  subscriptionsCopy = subscriptions;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained expiredOfflineSubscriptions:subscriptionsCopy withDisplayNames:namesCopy forReason:reason];
}

- (void)willExpireOfflineSubscriptionsWithIdentifiers:(id)identifiers displayNames:(id)names unlessUpdatedByDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  namesCopy = names;
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained willExpireOfflineSubscriptionsWithIdentifiers:identifiersCopy displayNames:namesCopy unlessUpdatedByDate:dateCopy completionHandler:handlerCopy];
}

- (void)notifyForIncompatibleOfflineDataVersionsForIdentifiers:(id)identifiers displayNames:(id)names completionHandler:(id)handler
{
  handlerCopy = handler;
  namesCopy = names;
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained notifyForIncompatibleOfflineDataVersionsForIdentifiers:identifiersCopy displayNames:namesCopy completionHandler:handlerCopy];
}

- (void)clearIncompatibleOfflineDataNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clearIncompatibleOfflineDataNotification];
}

- (void)pairedDeviceHasInsufficientDiskSpace:(unint64_t)space forSubscriptions:(id)subscriptions withDisplayNames:(id)names
{
  namesCopy = names;
  subscriptionsCopy = subscriptions;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pairedDeviceHasInsufficientDiskSpace:space forSubscriptions:subscriptionsCopy withDisplayNames:namesCopy];
}

@end