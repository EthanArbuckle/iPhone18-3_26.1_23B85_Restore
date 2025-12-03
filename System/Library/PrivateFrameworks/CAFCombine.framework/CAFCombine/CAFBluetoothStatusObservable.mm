@interface CAFBluetoothStatusObservable
- (NSString)description;
- (void)bluetoothStatusService:(id)service didUpdateContentURLAction:(id)action;
- (void)bluetoothStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFBluetoothStatusObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFBluetoothStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)bluetoothStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status
{
  serviceCopy = service;
  selfCopy = self;
  CAFBluetoothStatusObservable.bluetoothStatusService(_:didUpdateModuleStatus:)();
}

- (void)bluetoothStatusService:(id)service didUpdateContentURLAction:(id)action
{
  if (action)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFBluetoothStatusObservable.bluetoothStatusService(_:didUpdateContentURLAction:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFBluetoothStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFBluetoothStatusObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFBluetoothStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end