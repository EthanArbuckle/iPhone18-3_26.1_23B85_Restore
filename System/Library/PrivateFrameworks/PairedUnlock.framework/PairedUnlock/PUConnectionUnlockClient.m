@interface PUConnectionUnlockClient
- (PUConnection)connection;
- (PUConnectionUnlockClient)initWithConnection:(id)a3;
- (void)didGetRemoteDeviceState:(id)a3 error:(id)a4;
- (void)remoteDeviceDidUnlock;
@end

@implementation PUConnectionUnlockClient

- (PUConnectionUnlockClient)initWithConnection:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PUConnectionUnlockClient;
  v5 = [(PUConnectionUnlockClient *)&v7 self];

  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
  }

  return v5;
}

- (void)remoteDeviceDidUnlock
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained remoteDeviceDidUnlock];
}

- (void)didGetRemoteDeviceState:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained didGetRemoteDeviceState:v7 error:v6];
}

- (PUConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end