@interface CAFTargetChargingLevelObservable
- (NSString)description;
- (void)chargingLevelService:(id)service didUpdateChargingLevel:(id)level;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFTargetChargingLevelObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTargetChargingLevelObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)chargingLevelService:(id)service didUpdateChargingLevel:(id)level
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
  CAFTargetChargingLevelObservable.chargingLevelService(_:didUpdateChargingLevel:)(selfCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTargetChargingLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTargetChargingLevelObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTargetChargingLevelObservable.serviceDidFinishGroupUpdate(_:)();
}

@end