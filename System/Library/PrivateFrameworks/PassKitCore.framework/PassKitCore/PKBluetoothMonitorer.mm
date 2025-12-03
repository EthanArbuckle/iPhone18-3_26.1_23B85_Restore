@interface PKBluetoothMonitorer
- (PKBluetoothMonitorer)initWithManagerOptions:(id)options;
- (PKBluetoothMonitorerDelegate)delegate;
- (int64_t)state;
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation PKBluetoothMonitorer

- (PKBluetoothMonitorer)initWithManagerOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = PKBluetoothMonitorer;
  v5 = [(PKBluetoothMonitorer *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695D258]) initWithDelegate:v5 queue:0 options:optionsCopy];
    bluetoothManager = v5->_bluetoothManager;
    v5->_bluetoothManager = v6;
  }

  return v5;
}

- (int64_t)state
{
  result = [(CBCentralManager *)self->_bluetoothManager state];
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

- (void)centralManagerDidUpdateState:(id)state
{
  state = [state state];
  if ((state - 1) >= 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = state;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained bluetoothMonitorerRecievedUpdatedBluetoothState:v5];
}

- (PKBluetoothMonitorerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end