@interface CAFEngineRPMObservable
- (NSString)description;
- (void)engineRPMService:(id)a3 didUpdateRotationalSpeedMarkerRedline:(id)a4;
- (void)engineRPMService:(id)a3 didUpdateRotationalSpeedState:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFEngineRPMObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFEngineRPMObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)engineRPMService:(id)a3 didUpdateRotationalSpeedState:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeedState:)();
}

- (void)engineRPMService:(id)a3 didUpdateRotationalSpeedMarkerRedline:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitRotationalSpeed, 0x277CF8778);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
    v12 = v10;
    v13 = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
    v12 = v10;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  v14 = a3;
  v15 = self;
  CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeedMarkerRedline:)(v15, v10);

  outlined destroy of Measurement<CAFUnitRotationalSpeed>?(v10);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFEngineRPMObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFEngineRPMObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFEngineRPMObservable.serviceDidFinishGroupUpdate(_:)();
}

@end