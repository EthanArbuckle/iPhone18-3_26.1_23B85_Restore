@interface CAFTypeTestIndexByUnitObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)typeTestIndexByUnitService:(id)service didUpdateDistanceUnitRawValue:(unsigned __int16)value;
- (void)typeTestIndexByUnitService:(id)service didUpdateName:(id)name;
- (void)typeTestIndexByUnitService:(id)service didUpdateTestInt32:(int)int32;
@end

@implementation CAFTypeTestIndexByUnitObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTypeTestIndexByUnitObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)typeTestIndexByUnitService:(id)service didUpdateDistanceUnitRawValue:(unsigned __int16)value
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestIndexByUnitObservable.typeTestIndexByUnitService(_:didUpdateDistanceUnitRawValue:)();
}

- (void)typeTestIndexByUnitService:(id)service didUpdateTestInt32:(int)int32
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestIndexByUnitObservable.typeTestIndexByUnitService(_:didUpdateTestInt32:)();
}

- (void)typeTestIndexByUnitService:(id)service didUpdateName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestIndexByUnitObservable.typeTestIndexByUnitService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTypeTestIndexByUnitObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestIndexByUnitObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestIndexByUnitObservable.serviceDidFinishGroupUpdate(_:)();
}

@end