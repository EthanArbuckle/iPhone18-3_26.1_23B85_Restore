@interface CAFMultipleSelectImageSettingObservable
- (NSString)description;
- (void)automakerSettingService:(id)a3 didUpdateCategory:(unsigned __int8)a4;
- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4;
- (void)automakerSettingService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4;
- (void)multipleSelectImageSettingService:(id)a3 didUpdateIndicesUserVisibleValue:(id)a4;
- (void)multipleSelectImageSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFMultipleSelectImageSettingObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFMultipleSelectImageSettingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateSortOrder:)();
}

- (void)automakerSettingService:(id)a3 didUpdateCategory:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateCategory:)();
}

- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(v8, a4);
}

- (void)multipleSelectImageSettingService:(id)a3 didUpdateIndicesUserVisibleValue:(id)a4
{
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateIndicesUserVisibleValue:)(v8, v6);
}

- (void)multipleSelectImageSettingService:(id)a3 didUpdateUserVisibleDetailedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateUserVisibleDetailedDescription:)(v8, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFMultipleSelectImageSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFMultipleSelectImageSettingObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFMultipleSelectImageSettingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end