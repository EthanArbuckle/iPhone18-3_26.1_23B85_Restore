@interface CAFEqualizerObservable
- (NSString)description;
- (void)equalizerService:(id)service didUpdateName:(id)name;
- (void)equalizerService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)equalizerService:(id)service didUpdateType:(unsigned __int8)type;
- (void)equalizerService:(id)service didUpdateUserVisibleLabel:(id)label;
- (void)equalizerService:(id)service didUpdateValue:(char)value;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFEqualizerObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFEqualizerObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)equalizerService:(id)service didUpdateType:(unsigned __int8)type
{
  serviceCopy = service;
  selfCopy = self;
  CAFEqualizerObservable.equalizerService(_:didUpdateType:)(selfCopy, type);
}

- (void)equalizerService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFEqualizerObservable.equalizerService(_:didUpdateSortOrder:)(selfCopy, order);
}

- (void)equalizerService:(id)service didUpdateValue:(char)value
{
  serviceCopy = service;
  selfCopy = self;
  CAFEqualizerObservable.equalizerService(_:didUpdateValue:)();
}

- (void)equalizerService:(id)service didUpdateUserVisibleLabel:(id)label
{
  if (label)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFEqualizerObservable.equalizerService(_:didUpdateUserVisibleLabel:)();
}

- (void)equalizerService:(id)service didUpdateName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFEqualizerObservable.equalizerService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFEqualizerObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFEqualizerObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFEqualizerObservable.serviceDidFinishGroupUpdate(_:)();
}

@end