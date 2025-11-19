@interface CAFChargingRateObservable
- (NSString)description;
- (void)chargingRateService:(id)a3 didUpdateChargingSpeed:(id)a4;
- (void)chargingRateService:(id)a3 didUpdatePower:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFChargingRateObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFChargingRateObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)chargingRateService:(id)a3 didUpdatePower:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  CAFChargingRateObservable.chargingRateService(_:didUpdatePower:)(v12, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)chargingRateService:(id)a3 didUpdateChargingSpeed:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    v12 = v10;
    v13 = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    v12 = v10;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  v14 = a3;
  v15 = self;
  CAFChargingRateObservable.chargingRateService(_:didUpdateChargingSpeed:)(v15, v10);

  outlined destroy of Measurement<NSUnitSpeed>?(v10);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFChargingRateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFChargingRateObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFChargingRateObservable.serviceDidFinishGroupUpdate(_:)();
}

@end