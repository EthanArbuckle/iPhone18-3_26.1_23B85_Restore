@interface NPKBluetoothConnectivityCoordinator
- (NPKBluetoothConnectivityCoordinator)init;
- (NPKBluetoothConnectivityCoordinatorDelegate)delegate;
@end

@implementation NPKBluetoothConnectivityCoordinator

- (NPKBluetoothConnectivityCoordinator)init
{
  v3.receiver = self;
  v3.super_class = NPKBluetoothConnectivityCoordinator;
  result = [(NPKBluetoothConnectivityCoordinator *)&v3 init];
  if (result)
  {
    result->_bluetoothAvailableAndEnabled = 0;
  }

  return result;
}

- (NPKBluetoothConnectivityCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end