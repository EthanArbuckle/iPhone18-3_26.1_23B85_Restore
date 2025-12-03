@interface CAFMultipleSelectSettingObservable
- (NSString)description;
- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category;
- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info;
- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)multipleSelectSettingService:(id)service didUpdateSelectSettingEntryList:(id)list;
- (void)multipleSelectSettingService:(id)service didUpdateSelectedEntryIndices:(id)indices;
- (void)multipleSelectSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFMultipleSelectSettingObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFMultipleSelectSettingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateSortOrder:)();
}

- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category
{
  serviceCopy = service;
  selfCopy = self;
  CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateCategory:)();
}

- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(selfCopy, info);
}

- (void)multipleSelectSettingService:(id)service didUpdateSelectSettingEntryList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  CAFMultipleSelectSettingObservable.multipleSelectSettingService(_:didUpdateSelectSettingEntryList:)(selfCopy, listCopy);
}

- (void)multipleSelectSettingService:(id)service didUpdateSelectedEntryIndices:(id)indices
{
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFMultipleSelectSettingObservable.multipleSelectSettingService(_:didUpdateSelectedEntryIndices:)(selfCopy, v6);
}

- (void)multipleSelectSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  CAFMultipleSelectSettingObservable.multipleSelectSettingService(_:didUpdateUserVisibleDetailedDescription:)(selfCopy, description);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFMultipleSelectSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFMultipleSelectSettingObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFMultipleSelectSettingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end