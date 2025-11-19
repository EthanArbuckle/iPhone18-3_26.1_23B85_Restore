@interface CAFUIInputDeviceButtonObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)uIInputDeviceService:(id)a3 didUpdateUiInputDevicePurpose:(unsigned __int8)a4;
- (void)uiInputDeviceButtonService:(id)a3 didUpdateName:(id)a4;
- (void)uiInputDeviceButtonService:(id)a3 didUpdateUiInputDeviceButtonEvent:(unsigned __int8)a4;
@end

@implementation CAFUIInputDeviceButtonObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFUIInputDeviceButtonObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)uIInputDeviceService:(id)a3 didUpdateUiInputDevicePurpose:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFUIInputDeviceButtonObservable.uIInputDeviceService(_:didUpdateUiInputDevicePurpose:)(v7, a4);
}

- (void)uiInputDeviceButtonService:(id)a3 didUpdateUiInputDeviceButtonEvent:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFUIInputDeviceButtonObservable.uiInputDeviceButtonService(_:didUpdateUiInputDeviceButtonEvent:)(v7, a4);
}

- (void)uiInputDeviceButtonService:(id)a3 didUpdateName:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  CAFUIInputDeviceButtonObservable.uiInputDeviceButtonService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFUIInputDeviceButtonObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFUIInputDeviceButtonObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFUIInputDeviceButtonObservable.serviceDidFinishGroupUpdate(_:)();
}

@end