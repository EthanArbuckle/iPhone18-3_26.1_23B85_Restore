@interface CAFUIInputDeviceButtonObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)uIInputDeviceService:(id)service didUpdateUiInputDevicePurpose:(unsigned __int8)purpose;
- (void)uiInputDeviceButtonService:(id)service didUpdateName:(id)name;
- (void)uiInputDeviceButtonService:(id)service didUpdateUiInputDeviceButtonEvent:(unsigned __int8)event;
@end

@implementation CAFUIInputDeviceButtonObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFUIInputDeviceButtonObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)uIInputDeviceService:(id)service didUpdateUiInputDevicePurpose:(unsigned __int8)purpose
{
  serviceCopy = service;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.uIInputDeviceService(_:didUpdateUiInputDevicePurpose:)(selfCopy, purpose);
}

- (void)uiInputDeviceButtonService:(id)service didUpdateUiInputDeviceButtonEvent:(unsigned __int8)event
{
  serviceCopy = service;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.uiInputDeviceButtonService(_:didUpdateUiInputDeviceButtonEvent:)(selfCopy, event);
}

- (void)uiInputDeviceButtonService:(id)service didUpdateName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.uiInputDeviceButtonService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFUIInputDeviceButtonObservable.serviceDidFinishGroupUpdate(_:)();
}

@end