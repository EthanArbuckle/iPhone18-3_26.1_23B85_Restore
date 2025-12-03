@interface EDRemoteClientResumer
- (EDRemoteClient)remoteClient;
- (EDRemoteClientResumer)initWithRemoteClient:(id)client;
- (void)resumeForUpdates;
@end

@implementation EDRemoteClientResumer

- (EDRemoteClientResumer)initWithRemoteClient:(id)client
{
  clientCopy = client;
  v8.receiver = self;
  v8.super_class = EDRemoteClientResumer;
  v5 = [(EDRemoteClientResumer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_remoteClient, clientCopy);
  }

  return v6;
}

- (void)resumeForUpdates
{
  remoteClient = [(EDRemoteClientResumer *)self remoteClient];
  clientResumer = [remoteClient clientResumer];
  [clientResumer resumeForUpdates];
}

- (EDRemoteClient)remoteClient
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteClient);

  return WeakRetained;
}

@end