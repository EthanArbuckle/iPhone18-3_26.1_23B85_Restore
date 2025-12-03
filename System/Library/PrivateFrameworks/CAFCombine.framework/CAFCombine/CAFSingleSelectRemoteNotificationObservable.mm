@interface CAFSingleSelectRemoteNotificationObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)singleSelectRemoteNotificationService:(id)service didUpdateSelectableNotificationEntries:(id)entries;
- (void)singleSelectRemoteNotificationService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index;
- (void)singleSelectRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color;
- (void)singleSelectRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button;
- (void)singleSelectRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state;
@end

@implementation CAFSingleSelectRemoteNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFSingleSelectRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)singleSelectRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color
{
  serviceCopy = service;
  colorCopy = color;
  selfCopy = self;
  CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(selfCopy, colorCopy);
}

- (void)singleSelectRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button
{
  serviceCopy = service;
  buttonCopy = button;
  selfCopy = self;
  CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateTrailingButton:)(selfCopy, buttonCopy);
}

- (void)singleSelectRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateTrailingButtonState:)(selfCopy, state);
}

- (void)singleSelectRemoteNotificationService:(id)service didUpdateSelectableNotificationEntries:(id)entries
{
  serviceCopy = service;
  entriesCopy = entries;
  selfCopy = self;
  CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateSelectableNotificationEntries:)(selfCopy, entriesCopy);
}

- (void)singleSelectRemoteNotificationService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index
{
  serviceCopy = service;
  selfCopy = self;
  CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateSelectedEntryIndex:)(selfCopy, index);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFSingleSelectRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFSingleSelectRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFSingleSelectRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end