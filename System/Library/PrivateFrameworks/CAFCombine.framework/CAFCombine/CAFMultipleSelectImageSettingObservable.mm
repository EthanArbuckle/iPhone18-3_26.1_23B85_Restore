@interface CAFMultipleSelectImageSettingObservable
- (NSString)description;
- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category;
- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info;
- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)multipleSelectImageSettingService:(id)service didUpdateIndicesUserVisibleValue:(id)value;
- (void)multipleSelectImageSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFMultipleSelectImageSettingObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFMultipleSelectImageSettingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateSortOrder:)();
}

- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category
{
  serviceCopy = service;
  selfCopy = self;
  CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateCategory:)();
}

- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(selfCopy, info);
}

- (void)multipleSelectImageSettingService:(id)service didUpdateIndicesUserVisibleValue:(id)value
{
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateIndicesUserVisibleValue:)(selfCopy, v6);
}

- (void)multipleSelectImageSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateUserVisibleDetailedDescription:)(selfCopy, description);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFMultipleSelectImageSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFMultipleSelectImageSettingObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFMultipleSelectImageSettingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end