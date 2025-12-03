@interface CAFSingleSelectImageSettingObservable
- (NSString)description;
- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category;
- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info;
- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)singleSelectImageSettingService:(id)service didUpdateCurrentUserVisibleValue:(unsigned __int8)value;
- (void)singleSelectImageSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description;
@end

@implementation CAFSingleSelectImageSettingObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFSingleSelectImageSettingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateSortOrder:)();
}

- (void)automakerSettingService:(id)service didUpdateCategory:(unsigned __int8)category
{
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateCategory:)();
}

- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(selfCopy, info);
}

- (void)singleSelectImageSettingService:(id)service didUpdateCurrentUserVisibleValue:(unsigned __int8)value
{
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectImageSettingObservable.singleSelectImageSettingService(_:didUpdateCurrentUserVisibleValue:)();
}

- (void)singleSelectImageSettingService:(id)service didUpdateUserVisibleDetailedDescription:(id)description
{
  serviceCopy = service;
  descriptionCopy = description;
  selfCopy = self;
  CAFSingleSelectImageSettingObservable.singleSelectImageSettingService(_:didUpdateUserVisibleDetailedDescription:)(selfCopy, description);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFSingleSelectImageSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFSingleSelectImageSettingObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFSingleSelectImageSettingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end