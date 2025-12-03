@interface PUConnectionUnlockClient
- (PUConnection)connection;
- (PUConnectionUnlockClient)initWithConnection:(id)connection;
- (void)didGetRemoteDeviceState:(id)state error:(id)error;
- (void)remoteDeviceDidUnlock;
@end

@implementation PUConnectionUnlockClient

- (PUConnectionUnlockClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v7.receiver = self;
  v7.super_class = PUConnectionUnlockClient;
  v5 = [(PUConnectionUnlockClient *)&v7 self];

  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v5;
}

- (void)remoteDeviceDidUnlock
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained remoteDeviceDidUnlock];
}

- (void)didGetRemoteDeviceState:(id)state error:(id)error
{
  errorCopy = error;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained didGetRemoteDeviceState:stateCopy error:errorCopy];
}

- (PUConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end