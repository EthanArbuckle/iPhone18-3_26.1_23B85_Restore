@interface CAFTirePressureObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)tirePressureService:(id)a3 didUpdatePressure:(id)a4;
- (void)tirePressureService:(id)a3 didUpdatePressureState:(unsigned __int8)a4;
- (void)tirePressureService:(id)a3 didUpdateSensorState:(unsigned __int8)a4;
@end

@implementation CAFTirePressureObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFTirePressureObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)tirePressureService:(id)a3 didUpdateSensorState:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFTirePressureObservable.tirePressureService(_:didUpdateSensorState:)();
}

- (void)tirePressureService:(id)a3 didUpdatePressure:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPressure, 0x277CCAE38);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGMR);
    v12 = v10;
    v13 = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGMR);
    v12 = v10;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  v14 = a3;
  v15 = self;
  CAFTirePressureObservable.tirePressureService(_:didUpdatePressure:)();

  outlined destroy of Measurement<NSUnitPressure>?(v10);
}

- (void)tirePressureService:(id)a3 didUpdatePressureState:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFTirePressureObservable.tirePressureService(_:didUpdatePressureState:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFTirePressureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFTirePressureObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFTirePressureObservable.serviceDidFinishGroupUpdate(_:)();
}

@end