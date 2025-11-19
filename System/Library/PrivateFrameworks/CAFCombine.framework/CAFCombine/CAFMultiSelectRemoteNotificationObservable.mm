@interface CAFMultiSelectRemoteNotificationObservable
- (NSString)description;
- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateSelectableNotificationEntries:(id)a4;
- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateSelectedEntryIndices:(id)a4;
- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4;
- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateTrailingButton:(id)a4;
- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateTrailingButtonState:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFMultiSelectRemoteNotificationObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFMultiSelectRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(v8, v7);
}

- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateTrailingButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateTrailingButton:)(v8, v7);
}

- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateTrailingButtonState:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateTrailingButtonState:)();
}

- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateSelectableNotificationEntries:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSelectableNotificationEntries:)(v8, v7);
}

- (void)multiSelectRemoteNotificationService:(id)a3 didUpdateSelectedEntryIndices:(id)a4
{
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSelectedEntryIndices:)(v8, v6);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFMultiSelectRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFMultiSelectRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFMultiSelectRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end