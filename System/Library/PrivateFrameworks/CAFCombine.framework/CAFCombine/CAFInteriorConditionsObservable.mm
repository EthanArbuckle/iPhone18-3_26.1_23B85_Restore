@interface CAFInteriorConditionsObservable
- (NSString)description;
- (void)interiorConditionsService:(id)service didUpdateAqi:(id)aqi;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFInteriorConditionsObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFInteriorConditionsObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)interiorConditionsService:(id)service didUpdateAqi:(id)aqi
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
  CAFInteriorConditionsObservable.interiorConditionsService(_:didUpdateAqi:)();

  outlined destroy of Measurement<CAFUnitAirQuality>?(v10);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFInteriorConditionsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFInteriorConditionsObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFInteriorConditionsObservable.serviceDidFinishGroupUpdate(_:)();
}

@end