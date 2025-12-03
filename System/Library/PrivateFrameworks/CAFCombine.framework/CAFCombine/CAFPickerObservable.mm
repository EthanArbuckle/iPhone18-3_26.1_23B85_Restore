@interface CAFPickerObservable
- (NSString)description;
- (void)pickerService:(id)service didUpdateEntryList:(id)list;
- (void)pickerService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index;
- (void)pickerService:(id)service didUpdateUserSelectionEnabled:(BOOL)enabled;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFPickerObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFPickerObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)pickerService:(id)service didUpdateEntryList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  CAFPickerObservable.pickerService(_:didUpdateEntryList:)(selfCopy, listCopy);
}

- (void)pickerService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index
{
  serviceCopy = service;
  selfCopy = self;
  CAFPickerObservable.pickerService(_:didUpdateSelectedEntryIndex:)();
}

- (void)pickerService:(id)service didUpdateUserSelectionEnabled:(BOOL)enabled
{
  serviceCopy = service;
  selfCopy = self;
  CAFPickerObservable.pickerService(_:didUpdateUserSelectionEnabled:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFPickerObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFPickerObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFPickerObservable.serviceDidFinishGroupUpdate(_:)();
}

@end