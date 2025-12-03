@interface CAFMultiSelectRemoteNotificationObservable
- (NSString)description;
- (void)multiSelectRemoteNotificationService:(id)service didUpdateSelectableNotificationEntries:(id)entries;
- (void)multiSelectRemoteNotificationService:(id)service didUpdateSelectedEntryIndices:(id)indices;
- (void)multiSelectRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color;
- (void)multiSelectRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button;
- (void)multiSelectRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFMultiSelectRemoteNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFMultiSelectRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)multiSelectRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color
{
  serviceCopy = service;
  colorCopy = color;
  selfCopy = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(selfCopy, colorCopy);
}

- (void)multiSelectRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button
{
  serviceCopy = service;
  buttonCopy = button;
  selfCopy = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateTrailingButton:)(selfCopy, buttonCopy);
}

- (void)multiSelectRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateTrailingButtonState:)();
}

- (void)multiSelectRemoteNotificationService:(id)service didUpdateSelectableNotificationEntries:(id)entries
{
  serviceCopy = service;
  entriesCopy = entries;
  selfCopy = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSelectableNotificationEntries:)(selfCopy, entriesCopy);
}

- (void)multiSelectRemoteNotificationService:(id)service didUpdateSelectedEntryIndices:(id)indices
{
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSelectedEntryIndices:)(selfCopy, v6);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFMultiSelectRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFMultiSelectRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFMultiSelectRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end