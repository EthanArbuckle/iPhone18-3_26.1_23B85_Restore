@interface EDRemoteClientResumer
- (EDRemoteClient)remoteClient;
- (EDRemoteClientResumer)initWithRemoteClient:(id)a3;
- (void)resumeForUpdates;
@end

@implementation EDRemoteClientResumer

- (EDRemoteClientResumer)initWithRemoteClient:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EDRemoteClientResumer;
  v5 = [(EDRemoteClientResumer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_remoteClient, v4);
  }

  return v6;
}

- (void)resumeForUpdates
{
  v3 = [(EDRemoteClientResumer *)self remoteClient];
  v2 = [v3 clientResumer];
  [v2 resumeForUpdates];
}

- (EDRemoteClient)remoteClient
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteClient);

  return WeakRetained;
}

@end