@interface CAFBatteryLevelObservable
- (NSString)description;
- (void)batteryLevelService:(id)service didUpdateBatteryLevel:(id)level;
- (void)batteryLevelService:(id)service didUpdateBatteryLevelState:(unsigned __int8)state;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFBatteryLevelObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFBatteryLevelObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)batteryLevelService:(id)service didUpdateBatteryLevel:(id)level
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFBatteryLevelObservable.batteryLevelService(_:didUpdateBatteryLevel:)(selfCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)batteryLevelService:(id)service didUpdateBatteryLevelState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFBatteryLevelObservable.batteryLevelService(_:didUpdateBatteryLevelState:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFBatteryLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFBatteryLevelObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFBatteryLevelObservable.serviceDidFinishGroupUpdate(_:)();
}

@end