@interface CAFBluetoothStatusObservable
- (NSString)description;
- (void)bluetoothStatusService:(id)a3 didUpdateContentURLAction:(id)a4;
- (void)bluetoothStatusService:(id)a3 didUpdateModuleStatus:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFBluetoothStatusObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFBluetoothStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)bluetoothStatusService:(id)a3 didUpdateModuleStatus:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFBluetoothStatusObservable.bluetoothStatusService(_:didUpdateModuleStatus:)();
}

- (void)bluetoothStatusService:(id)a3 didUpdateContentURLAction:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFBluetoothStatusObservable.bluetoothStatusService(_:didUpdateContentURLAction:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFBluetoothStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFBluetoothStatusObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFBluetoothStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end