@interface MSPMapsPushDaemonRemoteXPCProxy
- (MSPMapsPushDaemonRemoteProxy)target;
- (MSPMapsPushDaemonRemoteXPCProxy)initWithObserver:(id)a3;
- (void)pushDaemonProxyReceivedNotificationData:(id)a3 forType:(id)a4 recordIdentifier:(id)a5;
@end

@implementation MSPMapsPushDaemonRemoteXPCProxy

- (MSPMapsPushDaemonRemoteXPCProxy)initWithObserver:(id)a3
{
  v6.receiver = self;
  v6.super_class = MSPMapsPushDaemonRemoteXPCProxy;
  v3 = a3;
  v4 = [(MSPMapsPushDaemonRemoteXPCProxy *)&v6 init];
  objc_storeWeak(&v4->_target, v3);

  return v4;
}

- (void)pushDaemonProxyReceivedNotificationData:(id)a3 forType:(id)a4 recordIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained pushDaemonProxyReceivedNotificationData:v10 forType:v9 recordIdentifier:v8];
}

- (MSPMapsPushDaemonRemoteProxy)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end