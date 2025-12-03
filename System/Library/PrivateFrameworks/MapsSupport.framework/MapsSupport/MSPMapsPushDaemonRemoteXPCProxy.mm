@interface MSPMapsPushDaemonRemoteXPCProxy
- (MSPMapsPushDaemonRemoteProxy)target;
- (MSPMapsPushDaemonRemoteXPCProxy)initWithObserver:(id)observer;
- (void)pushDaemonProxyReceivedNotificationData:(id)data forType:(id)type recordIdentifier:(id)identifier;
@end

@implementation MSPMapsPushDaemonRemoteXPCProxy

- (MSPMapsPushDaemonRemoteXPCProxy)initWithObserver:(id)observer
{
  v6.receiver = self;
  v6.super_class = MSPMapsPushDaemonRemoteXPCProxy;
  observerCopy = observer;
  v4 = [(MSPMapsPushDaemonRemoteXPCProxy *)&v6 init];
  objc_storeWeak(&v4->_target, observerCopy);

  return v4;
}

- (void)pushDaemonProxyReceivedNotificationData:(id)data forType:(id)type recordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained pushDaemonProxyReceivedNotificationData:dataCopy forType:typeCopy recordIdentifier:identifierCopy];
}

- (MSPMapsPushDaemonRemoteProxy)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end