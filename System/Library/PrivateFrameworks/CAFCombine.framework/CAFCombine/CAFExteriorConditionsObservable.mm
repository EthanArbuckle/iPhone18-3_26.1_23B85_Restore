@interface CAFExteriorConditionsObservable
- (NSString)description;
- (void)exteriorConditionsService:(id)a3 didUpdateAqi:(id)a4;
- (void)exteriorConditionsService:(id)a3 didUpdateIcyConditions:(unsigned __int8)a4;
- (void)exteriorConditionsService:(id)a3 didUpdateTemperature:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFExteriorConditionsObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFExteriorConditionsObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)exteriorConditionsService:(id)a3 didUpdateTemperature:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateTemperature:)(v12, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)exteriorConditionsService:(id)a3 didUpdateIcyConditions:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateIcyConditions:)();
}

- (void)exteriorConditionsService:(id)a3 didUpdateAqi:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitAirQuality, 0x277CF8760);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGMd, _s10Foundation11MeasurementVySo17CAFUnitAirQualityCGMR);
    v12 = v10;
    v13 = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGMd, _s10Foundation11MeasurementVySo17CAFUnitAirQualityCGMR);
    v12 = v10;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  v14 = a3;
  v15 = self;
  CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateAqi:)(v15, v10);

  outlined destroy of Measurement<CAFUnitAirQuality>?(v10);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFExteriorConditionsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFExteriorConditionsObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFExteriorConditionsObservable.serviceDidFinishGroupUpdate(_:)();
}

@end