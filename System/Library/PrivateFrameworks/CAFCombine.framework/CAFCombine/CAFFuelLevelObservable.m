@interface CAFFuelLevelObservable
- (NSString)description;
- (void)fuelLevelService:(id)a3 didUpdateFillLevelLabel:(unsigned __int8)a4;
- (void)fuelLevelService:(id)a3 didUpdateFuelLevel:(id)a4;
- (void)fuelLevelService:(id)a3 didUpdateFuelLevelMarkerLow:(id)a4;
- (void)fuelLevelService:(id)a3 didUpdateFuelLevelState:(unsigned __int8)a4;
- (void)fuelLevelService:(id)a3 didUpdatePortSideIndicator:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFFuelLevelObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFFuelLevelObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)fuelLevelService:(id)a3 didUpdateFuelLevel:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevel:)(v12, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)fuelLevelService:(id)a3 didUpdateFuelLevelState:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevelState:)(v7, a4);
}

- (void)fuelLevelService:(id)a3 didUpdateFuelLevelMarkerLow:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v12 = v10;
    v13 = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v12 = v10;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  v14 = a3;
  v15 = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevelMarkerLow:)(v15, v10);

  outlined destroy of Measurement<CAFUnitPercent>?(v10);
}

- (void)fuelLevelService:(id)a3 didUpdateFillLevelLabel:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdateFillLevelLabel:)(v7, a4);
}

- (void)fuelLevelService:(id)a3 didUpdatePortSideIndicator:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFFuelLevelObservable.fuelLevelService(_:didUpdatePortSideIndicator:)(v7, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFFuelLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFFuelLevelObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFFuelLevelObservable.serviceDidFinishGroupUpdate(_:)();
}

@end