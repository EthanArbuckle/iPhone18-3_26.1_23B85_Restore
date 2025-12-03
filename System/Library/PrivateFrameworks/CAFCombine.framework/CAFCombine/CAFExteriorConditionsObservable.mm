@interface CAFExteriorConditionsObservable
- (NSString)description;
- (void)exteriorConditionsService:(id)service didUpdateAqi:(id)aqi;
- (void)exteriorConditionsService:(id)service didUpdateIcyConditions:(unsigned __int8)conditions;
- (void)exteriorConditionsService:(id)service didUpdateTemperature:(id)temperature;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFExteriorConditionsObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFExteriorConditionsObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)exteriorConditionsService:(id)service didUpdateTemperature:(id)temperature
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateTemperature:)(selfCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)exteriorConditionsService:(id)service didUpdateIcyConditions:(unsigned __int8)conditions
{
  serviceCopy = service;
  selfCopy = self;
  CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateIcyConditions:)();
}

- (void)exteriorConditionsService:(id)service didUpdateAqi:(id)aqi
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  if (aqi)
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
  serviceCopy = service;
  selfCopy = self;
  CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateAqi:)(selfCopy, v10);

  outlined destroy of Measurement<CAFUnitAirQuality>?(v10);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFExteriorConditionsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFExteriorConditionsObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFExteriorConditionsObservable.serviceDidFinishGroupUpdate(_:)();
}

@end