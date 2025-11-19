uint64_t CAFTurnSignalsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTurnSignalsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTurnSignalsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTurnSignals()
{
  result = lazy cache variable for type metadata for CAFTurnSignals;
  if (!lazy cache variable for type metadata for CAFTurnSignals)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTurnSignals);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTurnSignalsObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTurnSignalsObservable and conformance CAFTurnSignalsObservable(&lazy protocol witness table cache variable for type CAFTurnSignalsObservable and conformance CAFTurnSignalsObservable, a2, type metadata accessor for CAFTurnSignalsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTurnSignalsObservable and conformance CAFTurnSignalsObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFTurnSignalsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_0_19()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFEngineRPM.rotationalSpeedStateBridged.getter()
{
  v1 = [v0 hasRotationalSpeedState];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 rotationalSpeedState];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFEngineRPMObservable.rotationalSpeedState.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeedState) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFEngineRPMObservable.rotationalSpeed.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFEngineRPMObservable.$rotationalSpeed.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFEngineRPMObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMR);
  v4 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
  v6 = OUTLINED_FUNCTION_30(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed);
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if ([v13 registeredForRotationalSpeed])
  {
    CAFEngineRPMObservable.rotationalSpeed.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v16;
    (*(v8 + 8))(v12, v5);
  }

  v30 = v14;
  v31 = v15;
  v17 = [v13 registeredForRotationalSpeedState];
  v18 = 0x73696765726E753CLL;
  v19 = 0xEE003E6465726574;
  if (v17)
  {
    LOWORD(v33) = CAFEngineRPMObservable.rotationalSpeedState.getter() & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CAFRotationalSpeedStateVSgMd, &_sSo23CAFRotationalSpeedStateVSgMR);
    v18 = String.init<A>(describing:)();
    v19 = v20;
  }

  v29 = v18;
  v21 = [v13 registeredForRotationalSpeedMarkerRedline];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    CAFEngineRPMObservable.rotationalSpeedMarkerRedline.getter();
    v22 = String.init<A>(describing:)();
    v23 = v24;
  }

  v28 = v22;
  if ([v13 registeredForRotationalSpeedMax])
  {
    CAFEngineRPMObservable.rotationalSpeedMax.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v25;
    (*(v27 + 8))(v12, v5);
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(136);
  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230F780);
  v32 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230F7A0);
  MEMORY[0x245D0A530](v30, v31);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230F7C0);
  MEMORY[0x245D0A530](v29, v19);

  MEMORY[0x245D0A530](0xD000000000000020, 0x800000024230F7E0);
  MEMORY[0x245D0A530](v28, v23);

  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230F810);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v33;
}

uint64_t CAFEngineRPMObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEngineRPMObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEngineRPMObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeed;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableC10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableC10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeedState;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableCSo23CAFRotationalSpeedStateVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableCSo23CAFRotationalSpeedStateVSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeedMarkerRedline;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableC10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableC10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v21;
  v22 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeedMax;
  swift_getKeyPath();
  v23 = *(v8 + 48);
  v24 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v22] = v25;
  *&v2[OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFEngineRPMObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFEngineRPMObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEngineRPMObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEngineRPMObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEngineRPMObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEngineRPMObservable@<X0>(void *a1@<X8>)
{
  result = CAFEngineRPMObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEngineRPMObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFEngineRPMObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeedState:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeedState);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeed:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t @objc CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeed:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
  v9 = OUTLINED_FUNCTION_30(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19 - v14;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitRotationalSpeed, 0x277CF8778);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a1;
  a5();

  return (*(v11 + 8))(v15, v8);
}

uint64_t CAFEngineRPMObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEngineRPMObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFEngineRPMObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFEngineRPM.rotationalSpeedStateBridged : CAFEngineRPM@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFEngineRPM.rotationalSpeedStateBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFEngineRPM.rotationalSpeedMarkerRedline : CAFEngineRPM@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 rotationalSpeedMarkerRedline];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitRotationalSpeed, 0x277CF8778);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void key path getter for CAFEngineRPM.rotationalSpeed : CAFEngineRPM(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitRotationalSpeed, 0x277CF8778);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFEngineRPM and conformance CAFEngineRPM()
{
  result = lazy protocol witness table cache variable for type CAFEngineRPM and conformance CAFEngineRPM;
  if (!lazy protocol witness table cache variable for type CAFEngineRPM and conformance CAFEngineRPM)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEngineRPM, 0x277CF8470);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEngineRPM and conformance CAFEngineRPM);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEngineRPMObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEngineRPMObservable and conformance CAFEngineRPMObservable(&lazy protocol witness table cache variable for type CAFEngineRPMObservable and conformance CAFEngineRPMObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEngineRPMObservable and conformance CAFEngineRPMObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEngineRPMObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<CAFUnitRotationalSpeed>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CAFEngineRPMObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

unint64_t lazy protocol witness table accessor for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>);
  }

  return result;
}

uint64_t CAFEngineTemperatureObservable.temperatureState.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureState) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFEngineTemperatureObservable.temperature.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFEngineTemperatureObservable.$temperature.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFEngineTemperatureObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  v4 = *(*(v46 - 8) + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v5);
  v43 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v12);
  v13 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed);
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if ([v13 registeredForTemperature])
  {
    CAFEngineTemperatureObservable.temperature.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v14 = OUTLINED_FUNCTION_6_6();
    v15 = v16;
    v17 = *(v9 + 8);
    v18 = OUTLINED_FUNCTION_7_7();
    v19(v18);
  }

  v45 = v15;
  v20 = [v13 registeredForTemperatureState];
  v47 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if (v20)
  {
    CAFEngineTemperatureObservable.temperatureState.getter();
    v22 = NSStringFromTemperatureState();
    if (v22)
    {
      v23 = v22;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v24;
    }

    else
    {
      v21 = 0xE900000000000029;
      v47 = 0x6E776F6E6B6E7528;
    }
  }

  v42 = v21;
  v44 = v14;
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v13 registeredForTemperatureMin])
  {
    CAFEngineTemperatureObservable.temperatureMin.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v25 = OUTLINED_FUNCTION_6_6();
    v26 = v27;
    v28 = *(v9 + 8);
    v29 = OUTLINED_FUNCTION_7_7();
    v30(v29);
  }

  v31 = [v13 registeredForTemperatureMax];
  v32 = 0x73696765726E753CLL;
  v33 = 0xEE003E6465726574;
  if (v31)
  {
    CAFEngineTemperatureObservable.temperatureMax.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v32 = OUTLINED_FUNCTION_6_6();
    v33 = v34;
    v35 = *(v9 + 8);
    v36 = OUTLINED_FUNCTION_7_7();
    v37(v36);
  }

  if ([v13 registeredForTemperatureMarkerCold])
  {
    CAFEngineTemperatureObservable.temperatureMarkerCold.getter();
    String.init<A>(describing:)();
  }

  if ([v13 registeredForTemperatureMarkerHot])
  {
    CAFEngineTemperatureObservable.temperatureMarkerHot.getter();
    v3 = String.init<A>(describing:)();
    v2 = v38;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(171);
  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230F8A0);
  v48 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230EA50);
  MEMORY[0x245D0A530](v44, v45);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230F2A0);
  MEMORY[0x245D0A530](v47, v42);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v41, v26);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v32, v33);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230F300);
  v39 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x245D0A530](v39);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230F320);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v49;
}

uint64_t CAFEngineTemperatureObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEngineTemperatureObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEngineTemperatureObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperature;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureState;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableCSo19CAFTemperatureStateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableCSo19CAFTemperatureStateVGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureMin;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v18;
  v19 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureMax;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v19] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureMarkerCold;
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v21] = v25;
  v26 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureMarkerHot;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v26] = v27;
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed] = a1;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAFEngineTemperatureObservable();
  v28 = a1;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  [v28 registerObserver_];

  return v29;
}

uint64_t CAFEngineTemperatureObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEngineTemperatureObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEngineTemperatureObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEngineTemperatureObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEngineTemperatureObservable@<X0>(void *a1@<X8>)
{
  result = CAFEngineTemperatureObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEngineTemperatureObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFEngineTemperatureObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFEngineTemperatureObservable.engineTemperatureService(_:didUpdateTemperatureState:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureState);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFEngineTemperatureObservable.engineTemperatureService(_:didUpdateTemperature:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a1;
  a5();

  return (*(v10 + 8))(v15, v8);
}

uint64_t CAFEngineTemperatureObservable.engineTemperatureService(_:didUpdateTemperature:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t @objc CAFEngineTemperatureObservable.engineTemperatureService(_:didUpdateTemperatureMarkerCold:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR) - 8) + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    v14 = v12;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = a3;
  v17 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitTemperature>?(v12);
}

uint64_t CAFEngineTemperatureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEngineTemperatureObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFEngineTemperatureObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFEngineTemperature and conformance CAFEngineTemperature()
{
  result = lazy protocol witness table cache variable for type CAFEngineTemperature and conformance CAFEngineTemperature;
  if (!lazy protocol witness table cache variable for type CAFEngineTemperature and conformance CAFEngineTemperature)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEngineTemperature, 0x277CF8478);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEngineTemperature and conformance CAFEngineTemperature);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEngineTemperatureObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEngineTemperatureObservable and conformance CAFEngineTemperatureObservable(&lazy protocol witness table cache variable for type CAFEngineTemperatureObservable and conformance CAFEngineTemperatureObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEngineTemperatureObservable and conformance CAFEngineTemperatureObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEngineTemperatureObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFEngineTemperatureObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

unint64_t CAFInteriorAmbientLights.brightnessBridged.getter()
{
  v1 = [v0 hasBrightness];
  v2 = v1;
  if (v1)
  {
    v3 = [v0 brightness];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

id CAFInteriorAmbientLights.brightnessBridged.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setBrightness_];
}

uint64_t key path getter for CAFInteriorAmbientLightsObservable.primaryColor : CAFInteriorAmbientLightsObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFInteriorAmbientLightsObservable.primaryColor.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFInteriorAmbientLightsObservable.primaryColor : CAFInteriorAmbientLightsObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CAFInteriorAmbientLightsObservable.primaryColor.setter();
}

uint64_t CAFInteriorAmbientLightsObservable.primaryColor.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__primaryColor;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);
  swift_retain_n();

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v7 = v5[1];

  v4(&v9, 0);

  return v6;
}

uint64_t CAFInteriorAmbientLightsObservable.primaryColor.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_197();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFInteriorAmbientLightsObservableC_SSTt3g5(v2);
}

void (*CAFInteriorAmbientLightsObservable.primaryColor.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v3;
  v3[10] = v1;
  v3[11] = swift_getKeyPath();
  v3[12] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__primaryColor;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);
  v3[9] = v6;
  swift_retain_n();

  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_5();
  v11 = *v9;
  v10 = v9[1];

  v8(v3, 0);

  v3[7] = v11;
  v3[8] = v10;
  return CAFInteriorAmbientLightsObservable.primaryColor.modify;
}

void CAFInteriorAmbientLightsObservable.primaryColor.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 80);
  v8 = v3[11];
  v7 = v3[12];
  if (a2)
  {

    OUTLINED_FUNCTION_2_32();
    v9 = v3[8];
  }

  else
  {
    OUTLINED_FUNCTION_2_32();
  }

  free(v3);
}

unint64_t key path getter for CAFInteriorAmbientLightsObservable.brightness : CAFInteriorAmbientLightsObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFInteriorAmbientLightsObservable.brightness.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFInteriorAmbientLightsObservable.brightness.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__brightness;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v7 = *(v5 + 4);
  v4(v9, 0);

  return v6 | (v7 << 32);
}

uint64_t CAFInteriorAmbientLightsObservable.brightness.setter(unint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFInteriorAmbientLightsObservableC_s6UInt32VSgTt3g5(a1 | ((HIDWORD(a1) & 1) << 32), v5, KeyPath, v4);
}

void (*CAFInteriorAmbientLightsObservable.brightness.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__brightness;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v11 = *(v9 + 4);
  v8(v3, 0);

  *(v3 + 22) = v10;
  *(v3 + 92) = v11;
  return CAFInteriorAmbientLightsObservable.brightness.modify;
}

void CAFInteriorAmbientLightsObservable.brightness.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFInteriorAmbientLightsObservableC_s6UInt32VSgTt3g5(*(*a1 + 88) | (*(*a1 + 92) << 32), *(*a1 + 64), v1[9], v1[10]);

  free(v1);
}

uint64_t CAFInteriorAmbientLightsObservable.$primaryColor.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFInteriorAmbientLightsObservable.supportedColors.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__supportedColors) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFInteriorAmbientLightsObservable.$supportedColors.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__supportedColors);

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t CAFInteriorAmbientLightsObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForPrimaryColor])
  {
    v2 = CAFInteriorAmbientLightsObservable.primaryColor.getter();
    v3 = v4;
  }

  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if ([v1 registeredForBrightness])
  {
    CAFInteriorAmbientLightsObservable.brightness.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  if ([v1 registeredForSupportedColors])
  {
    CAFInteriorAmbientLightsObservable.supportedColors.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFSupportedColorsCSgMd, &_sSo18CAFSupportedColorsCSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(98);
  MEMORY[0x245D0A530](0xD000000000000025, 0x800000024230F970);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230F9A0);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0x746867697262202CLL, 0xEE00203A7373656ELL);
  MEMORY[0x245D0A530](v5, v6);

  MEMORY[0x245D0A530](0xD000000000000013, 0x800000024230F9C0);
  v8 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v8);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFInteriorAmbientLightsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFInteriorAmbientLightsObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFInteriorAmbientLightsObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__primaryColor;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA34CAFInteriorAmbientLightsObservableCSSGMd, &_s10CAFCombine13SafePublishedCyAA34CAFInteriorAmbientLightsObservableCSSGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__brightness;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA34CAFInteriorAmbientLightsObservableCs6UInt32VSgGMd, _s10CAFCombine13SafePublishedCyAA34CAFInteriorAmbientLightsObservableCs6UInt32VSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__supportedColors;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFInteriorAmbientLightsObservableCSo18CAFSupportedColorsCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFInteriorAmbientLightsObservableCSo18CAFSupportedColorsCSgGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFInteriorAmbientLightsObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFInteriorAmbientLightsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFInteriorAmbientLightsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFInteriorAmbientLightsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFInteriorAmbientLightsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFInteriorAmbientLightsObservable@<X0>(void *a1@<X8>)
{
  result = CAFInteriorAmbientLightsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFInteriorAmbientLightsObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFInteriorAmbientLightsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdatePrimaryColor:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__primaryColor;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdateBrightness:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__brightness;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdateSupportedColors:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__supportedColors);
  v4 = a2;

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFInteriorAmbientLightsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFInteriorAmbientLightsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFInteriorAmbientLightsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFInteriorAmbientLights.primaryColor : CAFInteriorAmbientLights(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 primaryColor];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void key path setter for CAFInteriorAmbientLights.primaryColor : CAFInteriorAmbientLights(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D0A4C0](*a1, a1[1]);
  [v2 setPrimaryColor_];
}

unint64_t key path getter for CAFInteriorAmbientLights.brightnessBridged : CAFInteriorAmbientLights@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFInteriorAmbientLights.brightnessBridged.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id key path getter for CAFInteriorAmbientLights.supportedColors : CAFInteriorAmbientLights@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 supportedColors];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFInteriorAmbientLights()
{
  result = lazy cache variable for type metadata for CAFInteriorAmbientLights;
  if (!lazy cache variable for type metadata for CAFInteriorAmbientLights)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFInteriorAmbientLights);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFInteriorAmbientLightsObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFInteriorAmbientLightsObservable and conformance CAFInteriorAmbientLightsObservable(&lazy protocol witness table cache variable for type CAFInteriorAmbientLightsObservable and conformance CAFInteriorAmbientLightsObservable, a2, type metadata accessor for CAFInteriorAmbientLightsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFInteriorAmbientLightsObservable and conformance CAFInteriorAmbientLightsObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFInteriorAmbientLightsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFInteriorAmbientLightsObservableC_SSTt3g5(v0);
}

unint64_t CAFMediaSource.currentFrequencyBridged.getter()
{
  v1 = [v0 hasCurrentFrequency];
  v2 = v1;
  if (v1)
  {
    v3 = [v0 currentFrequency];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

unint64_t CAFMediaSourceObservable.currentFrequency.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__currentFrequency);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 32);
}

uint64_t CAFMediaSourceObservable.currentMediaItemIdentifier.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFMediaSourceObservable.mediaSourceSemanticType.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__mediaSourceSemanticType);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed);

  v1 = v0;
  OUTLINED_FUNCTION_231();

  return v3;
}

uint64_t CAFMediaSourceObservable.disabled.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__disabled);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed);

  v1 = v0;
  OUTLINED_FUNCTION_231();

  return v3;
}

uint64_t CAFMediaSourceObservable.mediaItems.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed);

  v2 = v1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFMediaSourceObservable.$currentFrequency.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFMediaSourceObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed);
  v2 = [v1 registeredForCurrentFrequency];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFMediaSourceObservable.currentFrequency.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v3 = OUTLINED_FUNCTION_7_8();
  }

  v38 = v3;
  v39 = v4;
  v5 = [v1 registeredForCurrentMediaItemIdentifier];
  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if (v5)
  {
    CAFMediaSourceObservable.currentMediaItemIdentifier.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v6 = OUTLINED_FUNCTION_7_8();
  }

  v36 = v6;
  v37 = v7;
  v8 = [v1 registeredForMediaItems];
  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if (v8)
  {
    CAFMediaSourceObservable.mediaItems.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CAFMediaItemsCSgMd, &_sSo13CAFMediaItemsCSgMR);
    v9 = OUTLINED_FUNCTION_7_8();
    v10 = v11;
  }

  v35 = v9;
  v12 = [v1 registeredForUserVisibleLabel];
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if (v12)
  {
    CAFMediaSourceObservable.userVisibleLabel.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v13 = OUTLINED_FUNCTION_7_8();
    v14 = v15;
  }

  v34 = v13;
  v16 = [v1 registeredForIdentifier];
  v17 = 0x73696765726E753CLL;
  v18 = 0xEE003E6465726574;
  if (v16)
  {
    v17 = CAFMediaSourceObservable.identifier.getter();
    v18 = v19;
  }

  v33 = v17;
  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if ([v1 registeredForMediaSourceSemanticType])
  {
    CAFMediaSourceObservable.mediaSourceSemanticType.getter();
    v22 = NSStringFromMediaSourceSemanticType();
    if (v22)
    {
      v23 = v22;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v24;
    }

    else
    {
      v21 = 0xE900000000000029;
      v20 = 0x6E776F6E6B6E7528;
    }
  }

  v32 = v20;
  v25 = [v1 registeredForDisabled];
  v26 = 0x73696765726E753CLL;
  v27 = 0xEE003E6465726574;
  if (v25)
  {
    v28 = CAFMediaSourceObservable.disabled.getter();
    if (v28)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v28)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }
  }

  if ([v1 registeredForMediaItemImages])
  {
    CAFMediaSourceObservable.mediaItemImages.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFMediaItemImagesCSgMd, &_sSo18CAFMediaItemImagesCSgMR);
    OUTLINED_FUNCTION_7_8();
  }

  _StringGuts.grow(_:)(205);
  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530](0xD00000000000001BLL);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v38, v39);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v36, v37);

  MEMORY[0x245D0A530](0x49616964656D202CLL, 0xEE00203A736D6574);
  MEMORY[0x245D0A530](v35, v10);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v34, v14);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v33, v18);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530](0xD00000000000001BLL);
  MEMORY[0x245D0A530](v32, v21);

  MEMORY[0x245D0A530](0x6C6261736964202CLL, 0xEC000000203A6465);
  MEMORY[0x245D0A530](v31, v27);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  v29 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v29);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMediaSourceObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFMediaSourceObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFMediaSourceObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__currentFrequency;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCs6UInt32VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__currentMediaItemIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__mediaItems;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0F5ItemsCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0F5ItemsCSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__userVisibleLabel;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__identifier;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSSGMR);
  OUTLINED_FUNCTION_225(v16);
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__mediaSourceSemanticType;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0fG12SemanticTypeVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0fG12SemanticTypeVGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v18] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__disabled;
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSbGMR);
  OUTLINED_FUNCTION_225(v22);
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__mediaItemImages;
  swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0F10ItemImagesCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0F10ItemImagesCSgGMR);
  OUTLINED_FUNCTION_225(v24);
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for CAFMediaSourceObservable();
  v27 = a1;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  [v27 registerObserver_];

  return v28;
}

uint64_t CAFMediaSourceObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMediaSourceObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMediaSourceObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMediaSourceObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMediaSourceObservable@<X0>(void *a1@<X8>)
{
  result = CAFMediaSourceObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMediaSourceObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFMediaSourceObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateCurrentFrequency:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__currentFrequency);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateCurrentMediaItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFMediaSourceObservable.mediaSourceService(_:didUpdateCurrentMediaItemIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaSourceSemanticType:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__mediaSourceSemanticType);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateDisabled:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__disabled);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaItems:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFMediaSourceObservable.mediaSourceService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFMediaSourceObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMediaSourceObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFMediaSourceObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t key path getter for CAFMediaSource.currentFrequencyBridged : CAFMediaSource@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFMediaSource.currentFrequencyBridged.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id key path getter for CAFMediaSource.mediaItems : CAFMediaSource@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaItems];
  *a2 = result;
  return result;
}

id key path getter for CAFMediaSource.mediaItemImages : CAFMediaSource@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaItemImages];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFMediaSource()
{
  result = lazy cache variable for type metadata for CAFMediaSource;
  if (!lazy cache variable for type metadata for CAFMediaSource)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFMediaSource);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMediaSourceObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFMediaSourceObservable and conformance CAFMediaSourceObservable(&lazy protocol witness table cache variable for type CAFMediaSourceObservable and conformance CAFMediaSourceObservable, a2, type metadata accessor for CAFMediaSourceObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMediaSourceObservable and conformance CAFMediaSourceObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFMediaSourceObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return String.init<A>(describing:)();
}

uint64_t key path getter for CAFRouteObservable.routeState : CAFRouteObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFRouteObservable.routeState.getter();
  *a2 = result;
  return result;
}

uint64_t CAFRouteObservable.routeState.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = OUTLINED_FUNCTION_4_6(v6, v7);
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFRouteObservable.userVisibleApplicationName : CAFRouteObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFRouteObservable.userVisibleApplicationName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFRouteObservable.userVisibleApplicationName : CAFRouteObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CAFRouteObservable.userVisibleApplicationName.setter();
}

uint64_t CAFRouteObservable.userVisibleApplicationName.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);
  swift_retain_n();

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v5 = v3[1];

  v2(&v7, 0);

  return v4;
}

uint64_t CAFRouteObservable.userVisibleApplicationName.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_197();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFRouteObservableC_SSSgTt3g5(v2);
}

uint64_t CAFRouteObservable.userVisibleApplicationName.modify()
{
  v2 = __swift_coroFrameAllocStub(0x68uLL);
  *(OUTLINED_FUNCTION_13_4(v2) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);
  v1[9] = v3;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v4 = v3;
  v5 = OUTLINED_FUNCTION_2_5();
  v8 = *v6;
  v7 = v6[1];

  v9 = OUTLINED_FUNCTION_7_5();
  v5(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v8;
  v1[8] = v7;
  return OUTLINED_FUNCTION_23_2();
}

void CAFRouteObservable.userVisibleApplicationName.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 64);

    v8 = v6;
    OUTLINED_FUNCTION_25_3();
    v9 = v2[8];
  }

  else
  {
    v10 = v6;
    OUTLINED_FUNCTION_25_3();
  }

  free(v2);
}

uint64_t key path getter for CAFRouteObservable.applicationEnabled : CAFRouteObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFRouteObservable.applicationEnabled.getter();
  *a2 = result & 1;
  return result;
}

uint64_t key path setter for CAFRouteObservable.applicationEnabled : CAFRouteObservable(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return CAFRouteObservable.applicationEnabled.setter();
}

uint64_t CAFRouteObservable.applicationEnabled.setter()
{
  return CAFRouteObservable.applicationEnabled.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_27_3();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFRouteObservableC_SbTt3g5(v2);
}

uint64_t CAFRouteObservable.applicationEnabled.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = OUTLINED_FUNCTION_4_6(v6, v7);
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFRouteObservable.userEnabled : CAFRouteObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFRouteObservable.userEnabled.getter();
  *a2 = result & 1;
  return result;
}

uint64_t key path setter for CAFRouteObservable.userEnabled : CAFRouteObservable(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return CAFRouteObservable.userEnabled.setter();
}

uint64_t CAFRouteObservable.applicationEnabled.getter(uint64_t *a1)
{
  v3 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v4 = v1;
  v5 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_28_2(v5, v6);
  v7();

  return v2;
}

uint64_t CAFRouteObservable.userEnabled.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = OUTLINED_FUNCTION_4_6(v6, v7);
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFRouteObservable.applicationEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFRouteObservableC_SbTt3g5(v4);

  free(v1);
}

uint64_t CAFRouteObservable.vehicleEnabled.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__vehicleEnabled) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFRouteObservable.$vehicleEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__vehicleEnabled);

  specialized SafePublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t key path getter for CAFRouteObservable.geodeticSystem : CAFRouteObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFRouteObservable.geodeticSystem.getter();
  *a2 = result;
  return result;
}

uint64_t CAFRouteObservable.routeState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_27_3();

  return a4(v6);
}

uint64_t CAFRouteObservable.geodeticSystem.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = OUTLINED_FUNCTION_4_6(v6, v7);
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFRouteObservable.routeState.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

id key path getter for CAFRouteObservable.origin : CAFRouteObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFRouteObservable.origin.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFRouteObservable.origin : CAFRouteObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFRouteObservable.origin.setter();
}

uint64_t CAFRouteObservable.origin.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 72) = v0;
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = *v7;
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v8;
  return OUTLINED_FUNCTION_23_2();
}

id key path getter for CAFRouteObservable.destination : CAFRouteObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFRouteObservable.destination.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFRouteObservable.destination : CAFRouteObservable(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFRouteObservable.destination.setter();
}

uint64_t CAFRouteObservable.destination.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 72) = v0;
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = *v7;
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v8;
  return OUTLINED_FUNCTION_23_2();
}

id key path getter for CAFRouteObservable.legs : CAFRouteObservable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CAFRouteObservable.legs.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFRouteObservable.legs : CAFRouteObservable(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return CAFRouteObservable.legs.setter(v2);
}

id CAFRouteObservable.origin.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);
  swift_retain_n();

  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_2();
  v6 = *v5;
  v7 = *v5;
  v4(&v9, 0);

  return v6;
}

uint64_t CAFRouteObservable.origin.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

uint64_t CAFRouteObservable.legs.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 72) = v0;
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = *v7;
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v8;
  return OUTLINED_FUNCTION_23_2();
}

void CAFRouteObservable.origin.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = (*a1 + 56);
  v7 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v8 = *(*a1 + 72);
  if (a2)
  {
    v9 = *(*a1 + 56);
    v10 = v8;
    v11 = OUTLINED_FUNCTION_26_2();
    a3(v11);
  }

  else
  {
    v12 = v8;
    v13 = OUTLINED_FUNCTION_26_2();
    a3(v13);
  }

  free(v4);
}

uint64_t CAFRouteObservable.$routeState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_16_3();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFRouteObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForRouteState])
  {
    CAFRouteObservable.routeState.getter();
    v4 = NSStringFromRouteState();
    if (v4)
    {
      v5 = v4;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v6;
    }

    else
    {
      v2 = 0x6E776F6E6B6E7528;
      v3 = 0xE900000000000029;
    }
  }

  v47 = v3;
  v7 = [v1 registeredForUserVisibleApplicationName];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    CAFRouteObservable.userVisibleApplicationName.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v8 = OUTLINED_FUNCTION_32_2();
  }

  v44 = v8;
  v45 = v9;
  v10 = [v1 registeredForApplicationEnabled];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    v13 = CAFRouteObservable.applicationEnabled.getter();
    v11 = (v13 & 1) != 0 ? 1702195828 : 0x65736C6166;
    v12 = 0xE500000000000000;
    if (v13)
    {
      v12 = 0xE400000000000000;
    }
  }

  v42 = v12;
  v43 = v11;
  v46 = v2;
  v14 = [v1 registeredForUserEnabled];
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if (v14)
  {
    v17 = CAFRouteObservable.userEnabled.getter();
    if (v17)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v17)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }
  }

  v41 = v15;
  v18 = [v1 registeredForVehicleEnabled];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    v21 = CAFRouteObservable.vehicleEnabled.getter();
    if (v21)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v21)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }
  }

  v40 = v19;
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if ([v1 registeredForGeodeticSystem])
  {
    CAFRouteObservable.geodeticSystem.getter();
    v24 = NSStringFromGeodeticSystem();
    if (v24)
    {
      v25 = v24;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v26;
    }

    else
    {
      v22 = 0x6E776F6E6B6E7528;
      v23 = 0xE900000000000029;
    }
  }

  v39 = v22;
  v27 = [v1 registeredForOrigin];
  v28 = 0x73696765726E753CLL;
  v29 = 0xEE003E6465726574;
  if (v27)
  {
    CAFRouteObservable.origin.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFPointOfInterestCSgMd, _sSo18CAFPointOfInterestCSgMR);
    v28 = OUTLINED_FUNCTION_32_2();
    v29 = v30;
  }

  v38 = v28;
  v31 = [v1 registeredForDestination];
  v32 = 0x73696765726E753CLL;
  v33 = 0xEE003E6465726574;
  if (v31)
  {
    CAFRouteObservable.destination.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFPointOfInterestCSgMd, _sSo18CAFPointOfInterestCSgMR);
    v32 = OUTLINED_FUNCTION_32_2();
    v33 = v34;
  }

  if ([v1 registeredForLegs])
  {
    CAFRouteObservable.legs.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CAFRouteLegsCSgMd, &_sSo12CAFRouteLegsCSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  _StringGuts.grow(_:)(195);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6574756F72207B20, 0xEF203A6574617453);
  MEMORY[0x245D0A530](v46, v47);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v44, v45);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v43, v42);

  MEMORY[0x245D0A530](0x6E4572657375202CLL, 0xEF203A64656C6261);
  MEMORY[0x245D0A530](v41, v16);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD000000000000012);
  MEMORY[0x245D0A530](v40, v20);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD000000000000012);
  MEMORY[0x245D0A530](v39, v23);

  MEMORY[0x245D0A530](0x6E696769726F202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v38, v29);

  MEMORY[0x245D0A530](0x6E6974736564202CLL, 0xEF203A6E6F697461);
  MEMORY[0x245D0A530](v37, v33);

  MEMORY[0x245D0A530](0x203A7367656C202CLL, 0xE800000000000000);
  v35 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v35);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRouteObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFRouteObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFRouteObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__routeState;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo0D5StateVGMd, _s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo0D5StateVGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__userVisibleApplicationName;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSSSgGMd, _s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__applicationEnabled;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSbGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__userEnabled;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__vehicleEnabled;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA18CAFRouteObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA18CAFRouteObservableCSbGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__geodeticSystem;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo17CAFGeodeticSystemVGMd, &_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo17CAFGeodeticSystemVGMR);
  OUTLINED_FUNCTION_225(v18);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v17] = v19;
  v20 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__origin;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo18CAFPointOfInterestCSgGMd, _s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo18CAFPointOfInterestCSgGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__destination;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__legs;
  swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo0D4LegsCSgGMd, &_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo0D4LegsCSgGMR);
  OUTLINED_FUNCTION_225(v24);
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed] = a1;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for CAFRouteObservable();
  v25 = a1;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  [v25 registerObserver_];

  return v26;
}

uint64_t CAFRouteObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRouteObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRouteObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRouteObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRouteObservable@<X0>(void *a1@<X8>)
{
  result = CAFRouteObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRouteObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFRouteObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFRouteObservable.routeService(_:didUpdateUserVisibleApplicationName:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__userVisibleApplicationName;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t CAFRouteObservable.routeService(_:didUpdateApplicationEnabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  OUTLINED_FUNCTION_16_3();
  v5 = *(v3 + v4);

  specialized SafePublished.value.setter();
}

uint64_t CAFRouteObservable.routeService(_:didUpdateVehicleEnabled:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__vehicleEnabled);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFRouteObservable.routeService(_:didUpdateRouteState:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  v7 = *a3;
  OUTLINED_FUNCTION_16_3();
  v8 = *(v4 + v7);

  a4(a2);
}

uint64_t CAFRouteObservable.routeService(_:didUpdateOrigin:)(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void *))
{
  v7 = *a3;
  OUTLINED_FUNCTION_16_3();
  v8 = *(v4 + v7);
  v9 = a2;

  a4(a2);
}

uint64_t CAFRouteObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRouteObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFRouteObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFRoute.userVisibleApplicationName : CAFRoute(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 userVisibleApplicationName];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for CAFRoute.userVisibleApplicationName : CAFRoute(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x245D0A4C0](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setUserVisibleApplicationName_];
}

id key path getter for CAFRoute.origin : CAFRoute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 origin];
  *a2 = result;
  return result;
}

id key path getter for CAFRoute.destination : CAFRoute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 destination];
  *a2 = result;
  return result;
}

id key path getter for CAFRoute.legs : CAFRoute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 legs];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFRoute()
{
  result = lazy cache variable for type metadata for CAFRoute;
  if (!lazy cache variable for type metadata for CAFRoute)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRoute);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRouteObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRouteObservable and conformance CAFRouteObservable(&lazy protocol witness table cache variable for type CAFRouteObservable and conformance CAFRouteObservable, a2, type metadata accessor for CAFRouteObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRouteObservable and conformance CAFRouteObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFRouteObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_6_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 64) = *(v1 + a1);

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFRouteObservableC_SSSgTt3g5(v0);
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return String.init<A>(describing:)();
}

uint64_t CAFNowPlayingObservable.currentMediaSourceIdentifier.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  OUTLINED_FUNCTION_7_9(OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_232();

  return v4;
}

uint64_t CAFNowPlayingObservable.userVisibleDescription.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__userVisibleDescription);
  OUTLINED_FUNCTION_7_9(OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed);

  v1 = v0;
  OUTLINED_FUNCTION_232();

  return v3;
}

uint64_t CAFNowPlayingObservable.artwork.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__artwork);
  OUTLINED_FUNCTION_7_9(OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed);

  v1 = v0;
  OUTLINED_FUNCTION_232();

  return v3;
}

uint64_t CAFNowPlayingObservable.jumpBackwardInterval.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFNowPlayingObservable.playbackState.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFNowPlayingObservable.$currentMediaSourceIdentifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFNowPlayingObservable._description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed);
  [v3 registeredForCurrentMediaSourceIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v5 = CAFNowPlayingObservable.currentMediaSourceIdentifier.getter();
  }

  v49 = v5;
  v50 = v4;
  [v3 registeredForTitle];
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v8 = CAFNowPlayingObservable.title.getter();
  }

  v47 = v8;
  v48 = v7;
  [v3 registeredForArtist];
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    v11 = CAFNowPlayingObservable.artist.getter();
  }

  v45 = v11;
  v46 = v10;
  [v3 registeredForAlbum];
  OUTLINED_FUNCTION_9_2();
  if (v15)
  {
    v14 = CAFNowPlayingObservable.album.getter();
  }

  v43 = v14;
  v44 = v13;
  [v3 registeredForUserVisibleDescription];
  OUTLINED_FUNCTION_9_2();
  if (v18)
  {
    CAFNowPlayingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v17 = String.init<A>(describing:)();
  }

  v41 = v17;
  v42 = v16;
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if ([v3 registeredForArtwork])
  {
    v21 = CAFNowPlayingObservable.artwork.getter();
    v23 = v22;
    v19 = Data.description.getter();
    v20 = v24;
    outlined consume of Data._Representation(v21, v23);
  }

  v40 = v19;
  v25 = [v3 registeredForJumpBackwardInterval];
  v26 = 0x73696765726E753CLL;
  v27 = 0xEE003E6465726574;
  if (v25)
  {
    CAFNowPlayingObservable.jumpBackwardInterval.getter();
    v26 = String.init<A>(describing:)();
    v27 = v28;
  }

  v39 = v26;
  v29 = [v3 registeredForJumpForwardInterval];
  v30 = 0x73696765726E753CLL;
  v31 = 0xEE003E6465726574;
  if (v29)
  {
    CAFNowPlayingObservable.jumpForwardInterval.getter();
    v30 = String.init<A>(describing:)();
    v31 = v32;
  }

  v33 = 0x73696765726E753CLL;
  v34 = 0xEE003E6465726574;
  if ([v3 registeredForPlaybackState])
  {
    CAFNowPlayingObservable.playbackState.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CAFPlaybackStateVSgMd, &_sSo16CAFPlaybackStateVSgMR);
    v33 = String.init<A>(describing:)();
    v34 = v35;
  }

  if ([v3 registeredForAudioContentBadge])
  {
    CAFNowPlayingObservable.audioContentBadge.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAudioContentBadgeVSgMd, &_sSo20CAFAudioContentBadgeVSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(234);
  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230FE10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230FE30);
  MEMORY[0x245D0A530](v49, v50);

  MEMORY[0x245D0A530](0x3A656C746974202CLL, 0xE900000000000020);
  MEMORY[0x245D0A530](v47, v48);

  MEMORY[0x245D0A530](0x747369747261202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v45, v46);

  MEMORY[0x245D0A530](0x3A6D75626C61202CLL, 0xE900000000000020);
  MEMORY[0x245D0A530](v43, v44);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230BDB0);
  MEMORY[0x245D0A530](v41, v42);

  MEMORY[0x245D0A530](0x726F77747261202CLL, 0xEB00000000203A6BLL);
  MEMORY[0x245D0A530](v40, v20);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230FE60);
  MEMORY[0x245D0A530](v39, v27);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230FE80);
  MEMORY[0x245D0A530](v38, v31);

  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230FEA0);
  MEMORY[0x245D0A530](v33, v34);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230FEC0);
  v36 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v36);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFNowPlayingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFNowPlayingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFNowPlayingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__currentMediaSourceIdentifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__title;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__artist;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__album;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__userVisibleDescription;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v17);
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__artwork;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableC10Foundation4DataVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableC10Foundation4DataVGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__jumpBackwardInterval;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableC10Foundation11MeasurementVySo14NSUnitDurationCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableC10Foundation11MeasurementVySo14NSUnitDurationCGSgGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v20] = v22;
  v23 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__jumpForwardInterval;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v23] = v24;
  v25 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__playbackState;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSo16CAFPlaybackStateVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSo16CAFPlaybackStateVSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v25] = v27;
  v28 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__audioContentBadge;
  swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSo20CAFAudioContentBadgeVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSo20CAFAudioContentBadgeVSgGMR);
  OUTLINED_FUNCTION_225(v29);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v28] = v30;
  *&v2[OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed] = a1;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for CAFNowPlayingObservable();
  v31 = a1;
  v32 = objc_msgSendSuper2(&v34, sel_init);
  [v31 registerObserver_];

  return v32;
}

uint64_t CAFNowPlayingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFNowPlayingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFNowPlayingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFNowPlayingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFNowPlayingObservable@<X0>(void *a1@<X8>)
{
  result = CAFNowPlayingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFNowPlayingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFNowPlayingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFNowPlayingObservable.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdateUserVisibleDescription:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__userVisibleDescription);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdateArtwork:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__artwork);
  v0 = OUTLINED_FUNCTION_197();
  outlined copy of Data._Representation(v0, v1);
  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdateJumpBackwardInterval:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFNowPlayingObservable.nowPlayingService(_:didUpdateJumpBackwardInterval:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v14 = v12;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = a3;
  v17 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitDuration>?(v12);
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdatePlaybackState:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_3(*a3);
  a4(a2);
}

uint64_t CAFNowPlayingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFNowPlayingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFNowPlayingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFNowPlaying.userVisibleDescription : CAFNowPlaying(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 userVisibleDescription];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path getter for CAFNowPlaying.artwork : CAFNowPlaying(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 artwork];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t key path getter for CAFNowPlaying.jumpBackwardInterval : CAFNowPlaying@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

uint64_t key path getter for CAFNowPlaying.playbackStateBridged : CAFNowPlaying@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFNowPlaying.playbackStateBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFNowPlaying.audioContentBadgeBridged : CAFNowPlaying@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFNowPlaying.audioContentBadgeBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFNowPlaying and conformance CAFNowPlaying()
{
  result = lazy protocol witness table cache variable for type CAFNowPlaying and conformance CAFNowPlaying;
  if (!lazy protocol witness table cache variable for type CAFNowPlaying and conformance CAFNowPlaying)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFNowPlaying, 0x277CF8558);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFNowPlaying and conformance CAFNowPlaying);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFNowPlayingObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFNowPlayingObservable and conformance CAFNowPlayingObservable(&lazy protocol witness table cache variable for type CAFNowPlayingObservable and conformance CAFNowPlayingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFNowPlayingObservable and conformance CAFNowPlayingObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFNowPlayingObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitDuration>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t partial apply for closure #1 in CAFNowPlayingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_7_9@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
}

uint64_t CAFPairedDevicesActionObservable._description.getter()
{
  _StringGuts.grow(_:)(43);
  MEMORY[0x245D0A530](0xD000000000000023, 0x800000024230FF50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFPairedDevicesActionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFPairedDevicesActionObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFPairedDevicesActionObservable.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescription];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_observed] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAFPairedDevicesActionObservable();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 registerObserver_];

  return v7;
}

uint64_t CAFPairedDevicesActionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFPairedDevicesActionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFPairedDevicesActionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFPairedDevicesActionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFPairedDevicesActionObservable@<X0>(void *a1@<X8>)
{
  result = CAFPairedDevicesActionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFPairedDevicesActionObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFPairedDevicesActionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFPairedDevicesActionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFPairedDevicesActionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFPairedDevicesActionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFPairedDevicesAction()
{
  result = lazy cache variable for type metadata for CAFPairedDevicesAction;
  if (!lazy cache variable for type metadata for CAFPairedDevicesAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFPairedDevicesAction);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFPairedDevicesActionObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFPairedDevicesActionObservable and conformance CAFPairedDevicesActionObservable(&lazy protocol witness table cache variable for type CAFPairedDevicesActionObservable and conformance CAFPairedDevicesActionObservable, a2, type metadata accessor for CAFPairedDevicesActionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPairedDevicesActionObservable and conformance CAFPairedDevicesActionObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFPairedDevicesActionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFPairedDevicesInformationObservable.pairedDeviceList.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable__pairedDeviceList) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFPairedDevicesInformationObservable.$pairedDeviceList.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable__pairedDeviceList);

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t CAFPairedDevicesInformationObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_observed) registeredForPairedDeviceList])
  {
    v1 = CAFPairedDevicesInformationObservable.pairedDeviceList.getter();
    v2 = [v1 description];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xEE003E6465726574;
    v3 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(68);
  MEMORY[0x245D0A530](0xD000000000000028, 0x8000000242310020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x8000000242310050);
  MEMORY[0x245D0A530](v3, v5);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFPairedDevicesInformationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFPairedDevicesInformationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFPairedDevicesInformationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable__pairedDeviceList;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFPairedDevicesInformationObservableCSo0F10DeviceListCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFPairedDevicesInformationObservableCSo0F10DeviceListCGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_observed] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CAFPairedDevicesInformationObservable();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 registerObserver_];

  return v12;
}

uint64_t CAFPairedDevicesInformationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFPairedDevicesInformationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFPairedDevicesInformationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFPairedDevicesInformationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFPairedDevicesInformationObservable@<X0>(void *a1@<X8>)
{
  result = CAFPairedDevicesInformationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFPairedDevicesInformationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFPairedDevicesInformationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFPairedDevicesInformationObservable.pairedDevicesInformationService(_:didUpdatePairedDeviceList:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable__pairedDeviceList);

  v5 = a2;
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFPairedDevicesInformationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFPairedDevicesInformationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFPairedDevicesInformationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFPairedDevicesInformation.pairedDeviceList : CAFPairedDevicesInformation@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pairedDeviceList];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFPairedDevicesInformation()
{
  result = lazy cache variable for type metadata for CAFPairedDevicesInformation;
  if (!lazy cache variable for type metadata for CAFPairedDevicesInformation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFPairedDevicesInformation);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFPairedDevicesInformationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFPairedDevicesInformationObservable and conformance CAFPairedDevicesInformationObservable(&lazy protocol witness table cache variable for type CAFPairedDevicesInformationObservable and conformance CAFPairedDevicesInformationObservable, a2, type metadata accessor for CAFPairedDevicesInformationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPairedDevicesInformationObservable and conformance CAFPairedDevicesInformationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFPairedDevicesInformationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFSeatBeltObservable.seatOccupancy.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6 | (v7 << 8);
}

uint64_t CAFSeatBeltObservable.seatBeltIndicator.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__seatBeltIndicator) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFSeatBeltObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFSeatBeltObservable.$vehicleLayoutKey.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFSeatBeltObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed);
  v4 = [v3 registeredForVehicleLayoutKey];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFSeatBeltObservable.vehicleLayoutKey.getter();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForSeatOccupancy])
  {
    CAFSeatBeltObservable.seatOccupancy.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CAFSeatOccupancyVSgMd, &_sSo16CAFSeatOccupancyVSgMR);
    v8 = String.init<A>(describing:)();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForBuckleState])
  {
    CAFSeatBeltObservable.buckleState.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CAFLockStateVSgMd, &_sSo12CAFLockStateVSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v3 registeredForSeatBeltIndicator])
  {
    CAFSeatBeltObservable.seatBeltIndicator.getter();
    v14 = NSStringFromSeatBeltIndicator();
    if (v14)
    {
      v15 = v14;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v16;
    }

    else
    {
      v1 = 0xE900000000000029;
      v2 = 0x6E776F6E6B6E7528;
    }
  }

  _StringGuts.grow(_:)(111);
  MEMORY[0x245D0A530](0xD000000000000018, 0x8000000242310110);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x245D0A530](v18, v6);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310150);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x656C6B637562202CLL, 0xEF203A6574617453);
  MEMORY[0x245D0A530](v11, v12);

  OUTLINED_FUNCTION_10_5();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSeatBeltObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSeatBeltObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSeatBeltObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__seatOccupancy;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo0F9OccupancyVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo0F9OccupancyVSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__buckleState;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo12CAFLockStateVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo12CAFLockStateVSgGMR);
  OUTLINED_FUNCTION_225(v14);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v13] = v15;
  v16 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__seatBeltIndicator;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo0fG9IndicatorVGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo0fG9IndicatorVGMR);
  OUTLINED_FUNCTION_225(v17);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v16] = v18;
  v19 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__name;
  swift_getKeyPath();
  v20 = *(v8 + 48);
  v21 = *(v8 + 52);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafePublished.init(observedValuekeypath:)(v22);
  *&v2[OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CAFSeatBeltObservable();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  [v23 registerObserver_];

  return v24;
}

uint64_t CAFSeatBeltObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSeatBeltObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSeatBeltObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSeatBeltObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSeatBeltObservable@<X0>(void *a1@<X8>)
{
  result = CAFSeatBeltObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSeatBeltObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFSeatBeltObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSeatBeltObservable.seatBeltService(_:didUpdateSeatOccupancy:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_3(*a3);
  a4(a2);
}

uint64_t CAFSeatBeltObservable.seatBeltService(_:didUpdateSeatBeltIndicator:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__seatBeltIndicator);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSeatBeltObservable.seatBeltService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFSeatBeltObservable.seatBeltService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSeatBeltObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSeatBeltObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFSeatBeltObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFSeatBelt.seatOccupancyBridged : CAFSeatBelt@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSeatBelt.seatOccupancyBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFSeatBelt.buckleStateBridged : CAFSeatBelt@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSeatBelt.buckleStateBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFSeatBelt()
{
  result = lazy cache variable for type metadata for CAFSeatBelt;
  if (!lazy cache variable for type metadata for CAFSeatBelt)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSeatBelt);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatBeltObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSeatBeltObservable and conformance CAFSeatBeltObservable(&lazy protocol witness table cache variable for type CAFSeatBeltObservable and conformance CAFSeatBeltObservable, a2, type metadata accessor for CAFSeatBeltObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatBeltObservable and conformance CAFSeatBeltObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFSeatBeltObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFSeatFanObservable.on : CAFSeatFanObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSeatFanObservable.on.getter();
  *a2 = result;
  return result;
}

void (*CAFSeatFanObservable.on.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__on;
  OUTLINED_FUNCTION_5_6();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFSeatFanObservable.on.modify;
}

uint64_t key path getter for CAFSeatFanObservable.fanLevel : CAFSeatFanObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSeatFanObservable.fanLevel.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSeatFanObservable.on.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v10 = *(v1 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v4 = v10;
  v5 = swift_readAtKeyPath();
  v7 = *v6;
  v5(&v9, 0);

  return v7;
}

uint64_t CAFSeatFanObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

void (*CAFSeatFanObservable.fanLevel.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__fanLevel;
  OUTLINED_FUNCTION_5_6();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFSeatFanObservable.fanLevel.modify;
}

void CAFSeatFanObservable.on.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t CAFSeatFanObservable.$on.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_0_6();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFSeatFanObservable.autoMode.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__autoMode) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFSeatFanObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFSeatFanObservable.$autoMode.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFSeatFanObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);
  v4 = [v3 registeredForOn];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFSeatFanObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForFanLevel])
  {
    CAFSeatFanObservable.fanLevel.getter();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForAutoMode])
  {
    CAFSeatFanObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFSeatFanObservable.vehicleLayoutKey.getter();
    v1 = v14;
  }

  _StringGuts.grow(_:)(87);
  MEMORY[0x245D0A530](0xD000000000000017, 0x80000002423101E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v16, v6);

  MEMORY[0x245D0A530](0x76654C6E6166202CLL, 0xEC000000203A6C65);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSeatFanObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSeatFanObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSeatFanObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA20CAFSeatFanObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA20CAFSeatFanObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__fanLevel;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA20CAFSeatFanObservableCs5UInt8VGMd, &_s10CAFCombine13SafePublishedCyAA20CAFSeatFanObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__autoMode;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFSeatFanObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFSeatFanObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v14);
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFSeatFanObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFSeatFanObservableCSSGMR);
  OUTLINED_FUNCTION_225(v17);
  v18 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v18);
  v19 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__name;
  swift_getKeyPath();
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafePublished.init(observedValuekeypath:)(v22);
  *&v2[OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CAFSeatFanObservable();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  [v23 registerObserver_];

  return v24;
}

uint64_t CAFSeatFanObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSeatFanObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSeatFanObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSeatFanObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSeatFanObservable@<X0>(void *a1@<X8>)
{
  result = CAFSeatFanObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSeatFanObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFSeatFanObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSeatFanObservable.fanService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__on;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFSeatFanObservable.fanService(_:didUpdateFanLevel:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__fanLevel;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFSeatFanObservable.fanService(_:didUpdateAutoMode:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__autoMode);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSeatFanObservable.fanService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFSeatFanObservable.fanService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSeatFanObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSeatFanObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFSeatFanObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSeatFan()
{
  result = lazy cache variable for type metadata for CAFSeatFan;
  if (!lazy cache variable for type metadata for CAFSeatFan)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSeatFan);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatFanObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSeatFanObservable and conformance CAFSeatFanObservable(&lazy protocol witness table cache variable for type CAFSeatFanObservable and conformance CAFSeatFanObservable, a2, type metadata accessor for CAFSeatFanObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatFanObservable and conformance CAFSeatFanObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFSeatFanObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFSeatHeatingCoolingObservable.on : CAFSeatHeatingCoolingObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSeatHeatingCoolingObservable.on.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFSeatHeatingCoolingObservable.on : CAFSeatHeatingCoolingObservable(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFSeatHeatingCoolingObservable.on.setter();
}

uint64_t CAFSeatHeatingCoolingObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);
  v9[4] = v3;

  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_20();
  v7 = *v6;
  v5(v9, 0);

  return v7;
}

uint64_t CAFSeatHeatingCoolingObservable.on.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFSeatHeatingCoolingObservableC_SbSgTt3g5(v2);
}

void (*CAFSeatHeatingCoolingObservable.on.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__on;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v4, 0);

  *(v4 + 88) = v10;
  return CAFSeatHeatingCoolingObservable.on.modify;
}

void CAFSeatHeatingCoolingObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFSeatHeatingCoolingObservableC_SbSgTt3g5(v6);

  free(v1);
}

uint64_t key path getter for CAFSeatHeatingCoolingObservable.heatingCoolingLevel : CAFSeatHeatingCoolingObservable@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = CAFSeatHeatingCoolingObservable.heatingCoolingLevel.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFSeatHeatingCoolingObservable.heatingCoolingLevel : CAFSeatHeatingCoolingObservable(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return CAFSeatHeatingCoolingObservable.heatingCoolingLevel.setter();
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingLevel.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);
  v9[4] = v3;

  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_20();
  v7 = *v6;
  v5(v9, 0);

  return v7;
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingLevel.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFSeatHeatingCoolingObservableC_s5Int32VTt3g5(v2);
}

void (*CAFSeatHeatingCoolingObservable.heatingCoolingLevel.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v4, 0);

  *(v4 + 22) = v10;
  return CAFSeatHeatingCoolingObservable.heatingCoolingLevel.modify;
}

void CAFSeatHeatingCoolingObservable.heatingCoolingLevel.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFSeatHeatingCoolingObservableC_s5Int32VTt3g5(v6);

  free(v1);
}

uint64_t CAFSeatHeatingCoolingObservable.$on.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_0_6();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFSeatHeatingCoolingObservable.autoMode.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__autoMode) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFSeatHeatingCoolingObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFSeatHeatingCoolingObservable.$autoMode.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFSeatHeatingCoolingObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);
  v4 = [v3 registeredForOn];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFSeatHeatingCoolingObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForHeatingCoolingLevel])
  {
    CAFSeatHeatingCoolingObservable.heatingCoolingLevel.getter();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForAutoMode])
  {
    CAFSeatHeatingCoolingObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFSeatHeatingCoolingObservable.vehicleLayoutKey.getter();
    v1 = v14;
  }

  _StringGuts.grow(_:)(109);
  MEMORY[0x245D0A530](0xD000000000000022, 0x8000000242310270);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v16, v6);

  MEMORY[0x245D0A530](0xD000000000000017, 0x80000002423102A0);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSeatHeatingCoolingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSeatHeatingCoolingObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSeatHeatingCoolingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFSeatHeatingCoolingObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFSeatHeatingCoolingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__heatingCoolingLevel;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFSeatHeatingCoolingObservableCs5Int32VGMd, &_s10CAFCombine13SafePublishedCyAA31CAFSeatHeatingCoolingObservableCs5Int32VGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__autoMode;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFSeatHeatingCoolingObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFSeatHeatingCoolingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v14);
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFSeatHeatingCoolingObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFSeatHeatingCoolingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v17);
  v18 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v18);
  v19 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__name;
  swift_getKeyPath();
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafePublished.init(observedValuekeypath:)(v22);
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CAFSeatHeatingCoolingObservable();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  [v23 registerObserver_];

  return v24;
}

uint64_t CAFSeatHeatingCoolingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSeatHeatingCoolingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSeatHeatingCoolingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSeatHeatingCoolingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSeatHeatingCoolingObservable@<X0>(void *a1@<X8>)
{
  result = CAFSeatHeatingCoolingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSeatHeatingCoolingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFSeatHeatingCoolingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__on;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateHeatingCoolingLevel:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateAutoMode:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__autoMode);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSeatHeatingCoolingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSeatHeatingCoolingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFSeatHeatingCoolingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSeatHeatingCooling()
{
  result = lazy cache variable for type metadata for CAFSeatHeatingCooling;
  if (!lazy cache variable for type metadata for CAFSeatHeatingCooling)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSeatHeatingCooling);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatHeatingCoolingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSeatHeatingCoolingObservable and conformance CAFSeatHeatingCoolingObservable(&lazy protocol witness table cache variable for type CAFSeatHeatingCoolingObservable and conformance CAFSeatHeatingCoolingObservable, a2, type metadata accessor for CAFSeatHeatingCoolingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatHeatingCoolingObservable and conformance CAFSeatHeatingCoolingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFSeatHeatingCoolingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFActivityIndicatorObservable.cameraActive.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFActivityIndicatorObservable.$cameraActive.getter(void *a1)
{
  v2 = *(v1 + *a1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFActivityIndicatorObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForCameraActive])
  {
    CAFActivityIndicatorObservable.cameraActive.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v4 = String.init<A>(describing:)();
    v5 = v6;
  }

  if ([v3 registeredForMicrophoneActive])
  {
    CAFActivityIndicatorObservable.microphoneActive.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(79);
  MEMORY[0x245D0A530](0xD000000000000021, 0x8000000242310360);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310390);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000014, 0x80000002423103B0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFActivityIndicatorObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFActivityIndicatorObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFActivityIndicatorObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable__cameraActive;
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFActivityIndicatorObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFActivityIndicatorObservableCSbSgGMR);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(KeyPath);
  v12 = OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable__microphoneActive;
  v13 = swift_getKeyPath();
  v14 = *(v9 + 48);
  v15 = *(v9 + 52);
  swift_allocObject();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_observed] = a1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for CAFActivityIndicatorObservable();
  v16 = a1;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  [v16 registerObserver_];

  return v17;
}

uint64_t CAFActivityIndicatorObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFActivityIndicatorObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFActivityIndicatorObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFActivityIndicatorObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFActivityIndicatorObservable@<X0>(void *a1@<X8>)
{
  result = CAFActivityIndicatorObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFActivityIndicatorObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFActivityIndicatorObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFActivityIndicatorObservable.activityIndicatorService(_:didUpdateCameraActive:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFActivityIndicatorObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFActivityIndicatorObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFActivityIndicatorObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFActivityIndicator()
{
  result = lazy cache variable for type metadata for CAFActivityIndicator;
  if (!lazy cache variable for type metadata for CAFActivityIndicator)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFActivityIndicator);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFActivityIndicatorObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFActivityIndicatorObservable and conformance CAFActivityIndicatorObservable(&lazy protocol witness table cache variable for type CAFActivityIndicatorObservable and conformance CAFActivityIndicatorObservable, a2, type metadata accessor for CAFActivityIndicatorObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFActivityIndicatorObservable and conformance CAFActivityIndicatorObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFActivityIndicatorObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFBluetoothStatusObservable.moduleStatus.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable__moduleStatus) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFBluetoothStatusObservable.contentURLAction.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable__contentURLAction) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFBluetoothStatusObservable.$moduleStatus.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFBluetoothStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForModuleStatus])
  {
    CAFBluetoothStatusObservable.moduleStatus.getter();
    v6 = NSStringFromModuleStatus();
    if (v6)
    {
      v7 = v6;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v8;
    }

    else
    {
      v5 = 0xE900000000000029;
      v4 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v3 registeredForContentURLAction])
  {
    CAFBluetoothStatusObservable.contentURLAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v9;
  }

  _StringGuts.grow(_:)(77);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x8000000242310450);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310470);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230BA40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFBluetoothStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBluetoothStatusObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBluetoothStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable__moduleStatus;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFBluetoothStatusObservableCSo09CAFModuleG0VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFBluetoothStatusObservableCSo09CAFModuleG0VGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable__contentURLAction;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFBluetoothStatusObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFBluetoothStatusObservableCSSSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed] = a1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for CAFBluetoothStatusObservable();
  v16 = a1;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  [v16 registerObserver_];

  return v17;
}

uint64_t CAFBluetoothStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBluetoothStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBluetoothStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBluetoothStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBluetoothStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFBluetoothStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBluetoothStatusObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFBluetoothStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFBluetoothStatusObservable.bluetoothStatusService(_:didUpdateModuleStatus:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable__moduleStatus);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFBluetoothStatusObservable.bluetoothStatusService(_:didUpdateContentURLAction:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable__contentURLAction);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFBluetoothStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBluetoothStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFBluetoothStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFBluetoothStatus()
{
  result = lazy cache variable for type metadata for CAFBluetoothStatus;
  if (!lazy cache variable for type metadata for CAFBluetoothStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFBluetoothStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBluetoothStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFBluetoothStatusObservable and conformance CAFBluetoothStatusObservable(&lazy protocol witness table cache variable for type CAFBluetoothStatusObservable and conformance CAFBluetoothStatusObservable, a2, type metadata accessor for CAFBluetoothStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBluetoothStatusObservable and conformance CAFBluetoothStatusObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFBluetoothStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFCellularStatus.cellularTypeBridged.getter()
{
  v1 = [v0 hasCellularType];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 cellularType];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFCellularStatusObservable.moduleStatus.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__moduleStatus);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);

  v1 = v3;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFCellularStatusObservable.signalBars.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__signalBars);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);

  v1 = v3;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFCellularStatusObservable.cellularType.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__cellularType);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFCellularStatusObservable.contentURLAction.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__contentURLAction);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFCellularStatusObservable.$moduleStatus.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFCellularStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForModuleStatus])
  {
    CAFCellularStatusObservable.moduleStatus.getter();
    v6 = NSStringFromModuleStatus();
    if (v6)
    {
      v7 = v6;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v8;
    }

    else
    {
      v5 = 0xE900000000000029;
      v4 = 0x6E776F6E6B6E7528;
    }
  }

  v9 = [v3 registeredForSignalBars];
  v10 = 0x73696765726E753CLL;
  v11 = 0xEE003E6465726574;
  if (v9)
  {
    CAFCellularStatusObservable.signalBars.getter();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v12;
  }

  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForCellularType])
  {
    CAFCellularStatusObservable.cellularType.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CAFCellularTypeVSgMd, &_sSo15CAFCellularTypeVSgMR);
    v13 = String.init<A>(describing:)();
    v14 = v15;
  }

  if ([v3 registeredForContentURLAction])
  {
    CAFCellularStatusObservable.contentURLAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v16;
  }

  _StringGuts.grow(_:)(110);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v18, v5);

  MEMORY[0x245D0A530](0x6C616E676973202CLL, 0xEE00203A73726142);
  MEMORY[0x245D0A530](v10, v11);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000010);
  MEMORY[0x245D0A530](v13, v14);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFCellularStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFCellularStatusObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFCellularStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__moduleStatus;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSo09CAFModuleG0VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSo09CAFModuleG0VGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__signalBars;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCs5UInt8VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__cellularType;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSo0F4TypeVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSo0F4TypeVSgGMR);
  OUTLINED_FUNCTION_225(v14);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v13] = v15;
  v16 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__contentURLAction;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v17);
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed] = a1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CAFCellularStatusObservable();
  v18 = a1;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  [v18 registerObserver_];

  return v19;
}

uint64_t CAFCellularStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCellularStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCellularStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCellularStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCellularStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFCellularStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCellularStatusObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFCellularStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFCellularStatusObservable.cellularStatusService(_:didUpdateModuleStatus:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t CAFCellularStatusObservable.cellularStatusService(_:didUpdateCellularType:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__cellularType);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCellularStatusObservable.cellularStatusService(_:didUpdateContentURLAction:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__contentURLAction);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCellularStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCellularStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFCellularStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFCellularStatus.cellularTypeBridged : CAFCellularStatus@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCellularStatus.cellularTypeBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFCellularStatus()
{
  result = lazy cache variable for type metadata for CAFCellularStatus;
  if (!lazy cache variable for type metadata for CAFCellularStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCellularStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCellularStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCellularStatusObservable and conformance CAFCellularStatusObservable(&lazy protocol witness table cache variable for type CAFCellularStatusObservable and conformance CAFCellularStatusObservable, a2, type metadata accessor for CAFCellularStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCellularStatusObservable and conformance CAFCellularStatusObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFCellularStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFCurrentUserStatusObservable.image.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFCurrentUserStatusObservable.hidden.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__hidden) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFCurrentUserStatusObservable.$image.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFCurrentUserStatusObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed);
  v2 = [v1 registeredForImage];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFCurrentUserStatusObservable.image.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v3 = OUTLINED_FUNCTION_4_14();
    v4 = v5;
  }

  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleLabel])
  {
    CAFCurrentUserStatusObservable.userVisibleLabel.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v6 = OUTLINED_FUNCTION_4_14();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForContentURLAction])
  {
    CAFCurrentUserStatusObservable.contentURLAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v9 = OUTLINED_FUNCTION_4_14();
    v10 = v11;
  }

  if ([v1 registeredForHidden])
  {
    CAFCurrentUserStatusObservable.hidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    OUTLINED_FUNCTION_4_14();
  }

  _StringGuts.grow(_:)(106);
  MEMORY[0x245D0A530](0xD000000000000021, 0x80000002423105C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6567616D69207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v14, v4);

  OUTLINED_FUNCTION_3_23();
  MEMORY[0x245D0A530](v6, v7);

  OUTLINED_FUNCTION_3_23();
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0x6E6564646968202CLL, 0xEA0000000000203ALL);
  v12 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v12);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFCurrentUserStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFCurrentUserStatusObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFCurrentUserStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__image;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableC10Foundation4DataVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableC10Foundation4DataVSgGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__userVisibleLabel;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableCSSSgGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__contentURLAction;
  swift_getKeyPath();
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__hidden;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableCSbSgGMR);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v22);
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CAFCurrentUserStatusObservable();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  [v23 registerObserver_];

  return v24;
}

uint64_t CAFCurrentUserStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCurrentUserStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCurrentUserStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCurrentUserStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCurrentUserStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFCurrentUserStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCurrentUserStatusObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFCurrentUserStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateImage:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__image);

  v2 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v2, v3);
  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateHidden:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__hidden);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCurrentUserStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCurrentUserStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFCurrentUserStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFCurrentUserStatus.image : CAFCurrentUserStatus(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 image];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

unint64_t type metadata accessor for CAFCurrentUserStatus()
{
  result = lazy cache variable for type metadata for CAFCurrentUserStatus;
  if (!lazy cache variable for type metadata for CAFCurrentUserStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCurrentUserStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCurrentUserStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCurrentUserStatusObservable and conformance CAFCurrentUserStatusObservable(&lazy protocol witness table cache variable for type CAFCurrentUserStatusObservable and conformance CAFCurrentUserStatusObservable, a2, type metadata accessor for CAFCurrentUserStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCurrentUserStatusObservable and conformance CAFCurrentUserStatusObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t partial apply for closure #1 in CAFCurrentUserStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_3_23()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFDeepLinkStatusItemObservable.userVisibleLabel.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__userVisibleLabel);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed);

  v1 = v3;
  OUTLINED_FUNCTION_232();

  return v4;
}

uint64_t CAFDeepLinkStatusItemObservable.sortOrder.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__sortOrder);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed);

  v1 = v3;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFDeepLinkStatusItemObservable.disabled.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_231();

  return v5;
}

uint64_t CAFDeepLinkStatusItemObservable.identifier.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFDeepLinkStatusItemObservable.$identifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFDeepLinkStatusItemObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed) registeredForContentURLAction])
  {
    CAFDeepLinkStatusItemObservable.contentURLAction.getter();
  }

  _StringGuts.grow(_:)(62);
  MEMORY[0x245D0A530](0xD000000000000022, 0x8000000242310660);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x8000000242310690);
  v1 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDeepLinkStatusItemObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFDeepLinkStatusItemObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFDeepLinkStatusItemObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__userVisibleLabel;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__sortOrder;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCs5UInt8VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v14] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__disabled;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__hidden;
  swift_getKeyPath();
  v21 = *(v18 + 48);
  v22 = *(v18 + 52);
  swift_allocObject();
  v23 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v23);
  v24 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__contentURLAction;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v25 = OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)(v25);
  v26 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v27 = OUTLINED_FUNCTION_0_7();
  *&v2[v26] = specialized SafePublished.init(observedValuekeypath:)(v27);
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed] = a1;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAFDeepLinkStatusItemObservable();
  v28 = a1;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  [v28 registerObserver_];

  return v29;
}

uint64_t CAFDeepLinkStatusItemObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDeepLinkStatusItemObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDeepLinkStatusItemObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDeepLinkStatusItemObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDeepLinkStatusItemObservable@<X0>(void *a1@<X8>)
{
  result = CAFDeepLinkStatusItemObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDeepLinkStatusItemObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFDeepLinkStatusItemObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateUserVisibleLabel:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__userVisibleLabel);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDeepLinkStatusItemObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDeepLinkStatusItemObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFDeepLinkStatusItemObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFDeepLinkStatusItem()
{
  result = lazy cache variable for type metadata for CAFDeepLinkStatusItem;
  if (!lazy cache variable for type metadata for CAFDeepLinkStatusItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDeepLinkStatusItem);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDeepLinkStatusItemObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDeepLinkStatusItemObservable and conformance CAFDeepLinkStatusItemObservable(&lazy protocol witness table cache variable for type CAFDeepLinkStatusItemObservable and conformance CAFDeepLinkStatusItemObservable, a2, type metadata accessor for CAFDeepLinkStatusItemObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDeepLinkStatusItemObservable and conformance CAFDeepLinkStatusItemObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFDeepLinkStatusItemObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFStatusItemObservable.userVisibleLabel.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__userVisibleLabel);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed);

  v1 = v3;
  OUTLINED_FUNCTION_232();

  return v4;
}

uint64_t CAFStatusItemObservable.sortOrder.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__sortOrder);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed);

  v1 = v3;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFStatusItemObservable.disabled.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_231();

  return v5;
}

uint64_t CAFStatusItemObservable.identifier.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFStatusItemObservable.$identifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFStatusItemObservable._description.getter()
{
  _StringGuts.grow(_:)(34);
  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x8000000242310710);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFStatusItemObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFStatusItemObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFStatusItemObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__userVisibleLabel;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__sortOrder;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCs5UInt8VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v14] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__disabled;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__hidden;
  swift_getKeyPath();
  v21 = *(v18 + 48);
  v22 = *(v18 + 52);
  swift_allocObject();
  v23 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v23);
  v24 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v25 = OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)(v25);
  *&v2[OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFStatusItemObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFStatusItemObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFStatusItemObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFStatusItemObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFStatusItemObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFStatusItemObservable@<X0>(void *a1@<X8>)
{
  result = CAFStatusItemObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFStatusItemObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFStatusItemObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFStatusItemObservable.automakerStatusItemService(_:didUpdateUserVisibleLabel:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__userVisibleLabel);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFStatusItemObservable.automakerStatusItemService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFStatusItemObservable.automakerStatusItemService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFStatusItemObservable.automakerStatusItemService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFStatusItemObservable.automakerStatusItemService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFStatusItemObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFStatusItemObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFStatusItemObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFStatusItem()
{
  result = lazy cache variable for type metadata for CAFStatusItem;
  if (!lazy cache variable for type metadata for CAFStatusItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFStatusItem);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFStatusItemObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFStatusItemObservable and conformance CAFStatusItemObservable(&lazy protocol witness table cache variable for type CAFStatusItemObservable and conformance CAFStatusItemObservable, a2, type metadata accessor for CAFStatusItemObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFStatusItemObservable and conformance CAFStatusItemObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFStatusItemObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFWiFiStatusObservable.moduleStatus.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__moduleStatus) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_231();

  return v5;
}

uint64_t CAFWiFiStatusObservable.signalBars.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__signalBars) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_231();

  return v5;
}

uint64_t CAFWiFiStatusObservable.contentURLAction.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__contentURLAction) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFWiFiStatusObservable.$moduleStatus.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFWiFiStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForModuleStatus])
  {
    CAFWiFiStatusObservable.moduleStatus.getter();
    v6 = NSStringFromModuleStatus();
    if (v6)
    {
      v7 = v6;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v8;
    }

    else
    {
      v5 = 0xE900000000000029;
      v4 = 0x6E776F6E6B6E7528;
    }
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v3 registeredForSignalBars])
  {
    CAFWiFiStatusObservable.signalBars.getter();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v11;
  }

  if ([v3 registeredForContentURLAction])
  {
    CAFWiFiStatusObservable.contentURLAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v12;
  }

  _StringGuts.grow(_:)(88);
  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x8000000242310790);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310470);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6C616E676973202CLL, 0xEE00203A73726142);
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230BA40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFWiFiStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFWiFiStatusObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFWiFiStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__moduleStatus;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCSo09CAFModuleH0VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCSo09CAFModuleH0VGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__signalBars;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCs5UInt8VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCs5UInt8VGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__contentURLAction;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCSSSgGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFWiFiStatusObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFWiFiStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFWiFiStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFWiFiStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFWiFiStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFWiFiStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFWiFiStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFWiFiStatusObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFWiFiStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateModuleStatus:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateContentURLAction:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__contentURLAction);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFWiFiStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFWiFiStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFWiFiStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFWiFiStatus()
{
  result = lazy cache variable for type metadata for CAFWiFiStatus;
  if (!lazy cache variable for type metadata for CAFWiFiStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFWiFiStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFWiFiStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFWiFiStatusObservable and conformance CAFWiFiStatusObservable(&lazy protocol witness table cache variable for type CAFWiFiStatusObservable and conformance CAFWiFiStatusObservable, a2, type metadata accessor for CAFWiFiStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFWiFiStatusObservable and conformance CAFWiFiStatusObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFWiFiStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFProtocolPerfTestObservable.testInt16 : CAFProtocolPerfTestObservable@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  result = CAFProtocolPerfTestObservable.testInt16.getter();
  *a2 = result;
  return result;
}

uint64_t CAFProtocolPerfTestObservable.testInt16.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt16;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFProtocolPerfTestObservable.testInt16.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFProtocolPerfTestObservableC_s5Int16VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFProtocolPerfTestObservable.testInt16.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt16;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 44) = v10;
  return CAFProtocolPerfTestObservable.testInt16.modify;
}

void CAFProtocolPerfTestObservable.testInt16.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFProtocolPerfTestObservableC_s5Int16VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFProtocolPerfTestObservable.testInt32.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFProtocolPerfTestObservable.testUInt16.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testUInt16) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFProtocolPerfTestObservable.testString2 : CAFProtocolPerfTestObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFProtocolPerfTestObservable.testString2.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFProtocolPerfTestObservable.testString2 : CAFProtocolPerfTestObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CAFProtocolPerfTestObservable.testString2.setter();
}

uint64_t CAFProtocolPerfTestObservable.testString2.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString2;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);
  swift_retain_n();

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v7 = v5[1];

  v4(&v9, 0);

  return v6;
}

uint64_t CAFProtocolPerfTestObservable.testString2.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_197();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFProtocolPerfTestObservableC_SSTt3g5(v2);
}

void (*CAFProtocolPerfTestObservable.testString2.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v3;
  v3[10] = v1;
  v3[11] = swift_getKeyPath();
  v3[12] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString2;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);
  v3[9] = v6;
  swift_retain_n();

  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_5();
  v11 = *v9;
  v10 = v9[1];

  v8(v3, 0);

  v3[7] = v11;
  v3[8] = v10;
  return CAFProtocolPerfTestObservable.testString2.modify;
}

void CAFProtocolPerfTestObservable.testString2.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 80);
  v8 = v3[11];
  v7 = v3[12];
  if (a2)
  {

    OUTLINED_FUNCTION_6_9();
    v9 = v3[8];
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
  }

  free(v3);
}

uint64_t CAFProtocolPerfTestObservable.$testInt16.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFProtocolPerfTestObservable.testString.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFProtocolPerfTestObservable.$testInt32.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFProtocolPerfTestObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);
  v2 = [v1 registeredForTestInt32];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFProtocolPerfTestObservable.testInt32.getter();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v5;
  }

  v28 = v3;
  v6 = [v1 registeredForTestInt16];
  v7 = 0x73696765726E753CLL;
  v8 = 0xEE003E6465726574;
  if (v6)
  {
    CAFProtocolPerfTestObservable.testInt16.getter();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v9;
  }

  v27 = v7;
  v10 = [v1 registeredForTestUInt32];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    CAFProtocolPerfTestObservable.testUInt32.getter();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v13;
  }

  v26 = v11;
  v14 = [v1 registeredForTestUInt16];
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if (v14)
  {
    CAFProtocolPerfTestObservable.testUInt16.getter();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v17;
  }

  v25 = v15;
  v18 = [v1 registeredForTestString];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    v19 = CAFProtocolPerfTestObservable.testString.getter();
    v20 = v21;
  }

  if ([v1 registeredForTestString2])
  {
    CAFProtocolPerfTestObservable.testString2.getter();
  }

  _StringGuts.grow(_:)(133);
  MEMORY[0x245D0A530](0xD000000000000020, 0x8000000242310880);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x4974736574207B20, 0xEE00203A3233746ELL);
  MEMORY[0x245D0A530](v28, v4);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xED0000203A363174);
  MEMORY[0x245D0A530](v27, v8);

  MEMORY[0x245D0A530](0x495574736574202CLL, 0xEE00203A3233746ELL);
  MEMORY[0x245D0A530](v26, v12);

  MEMORY[0x245D0A530](0x495574736574202CLL, 0xEE00203A3631746ELL);
  MEMORY[0x245D0A530](v25, v16);

  MEMORY[0x245D0A530](0x745374736574202CLL, 0xEE00203A676E6972);
  MEMORY[0x245D0A530](v24, v20);

  MEMORY[0x245D0A530](0x745374736574202CLL, 0xEF203A32676E6972);
  v22 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v22);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFProtocolPerfTestObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFProtocolPerfTestObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFProtocolPerfTestObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt32;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs5Int32VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs5Int32VGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt16;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA29CAFProtocolPerfTestObservableCs5Int16VGMd, _s10CAFCombine13SafePublishedCyAA29CAFProtocolPerfTestObservableCs5Int16VGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testUInt32;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs6UInt32VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs6UInt32VGMR);
  OUTLINED_FUNCTION_225(v14);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v13] = v15;
  v16 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testUInt16;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs6UInt16VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs6UInt16VGMR);
  OUTLINED_FUNCTION_225(v17);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v16] = v18;
  v19 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString;
  swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCSSGMR);
  OUTLINED_FUNCTION_225(v20);
  v21 = OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafePublished.init(observedValuekeypath:)(v21);
  v22 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString2;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA29CAFProtocolPerfTestObservableCSSGMd, &_s10CAFCombine13SafePublishedCyAA29CAFProtocolPerfTestObservableCSSGMR);
  OUTLINED_FUNCTION_225(v23);
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__name;
  swift_getKeyPath();
  v26 = *(v20 + 48);
  v27 = *(v20 + 52);
  swift_allocObject();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v28);
  *&v2[OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed] = a1;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for CAFProtocolPerfTestObservable();
  v29 = a1;
  v30 = objc_msgSendSuper2(&v32, sel_init);
  [v29 registerObserver_];

  return v30;
}

uint64_t CAFProtocolPerfTestObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFProtocolPerfTestObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFProtocolPerfTestObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFProtocolPerfTestObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFProtocolPerfTestObservable@<X0>(void *a1@<X8>)
{
  result = CAFProtocolPerfTestObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFProtocolPerfTestObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFProtocolPerfTestObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestInt16:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt16;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestInt32:)(uint64_t a1, unsigned int a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_3(*a3);
  a4(a2);
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestUInt16:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testUInt16);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestString2:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString2;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t @objc CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestString:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFProtocolPerfTestObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFProtocolPerfTestObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFProtocolPerfTestObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path setter for CAFProtocolPerfTest.testString2 : CAFProtocolPerfTest(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D0A4C0](*a1, a1[1]);
  [v2 setTestString2_];
}

unint64_t type metadata accessor for CAFProtocolPerfTest()
{
  result = lazy cache variable for type metadata for CAFProtocolPerfTest;
  if (!lazy cache variable for type metadata for CAFProtocolPerfTest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFProtocolPerfTest);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFProtocolPerfTestObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFProtocolPerfTestObservable and conformance CAFProtocolPerfTestObservable(&lazy protocol witness table cache variable for type CAFProtocolPerfTestObservable and conformance CAFProtocolPerfTestObservable, a2, type metadata accessor for CAFProtocolPerfTestObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFProtocolPerfTestObservable and conformance CAFProtocolPerfTestObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFProtocolPerfTestObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFProtocolPerfTestObservableC_SSTt3g5(v0);
}

uint64_t CAFTestControlAsyncObservable._description.getter()
{
  _StringGuts.grow(_:)(40);
  MEMORY[0x245D0A530](0xD000000000000020, 0x8000000242310910);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFTestControlAsyncObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTestControlAsyncObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTestControlAsyncObservable.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescription];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_observed] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAFTestControlAsyncObservable();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 registerObserver_];

  return v7;
}

uint64_t CAFTestControlAsyncObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTestControlAsyncObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTestControlAsyncObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTestControlAsyncObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTestControlAsyncObservable@<X0>(void *a1@<X8>)
{
  result = CAFTestControlAsyncObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTestControlAsyncObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTestControlAsyncObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTestControlAsyncObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTestControlAsyncObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTestControlAsyncObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTestControlAsync()
{
  result = lazy cache variable for type metadata for CAFTestControlAsync;
  if (!lazy cache variable for type metadata for CAFTestControlAsync)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTestControlAsync);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTestControlAsyncObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTestControlAsyncObservable and conformance CAFTestControlAsyncObservable(&lazy protocol witness table cache variable for type CAFTestControlAsyncObservable and conformance CAFTestControlAsyncObservable, a2, type metadata accessor for CAFTestControlAsyncObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTestControlAsyncObservable and conformance CAFTestControlAsyncObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFTestControlAsyncObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFTestControlEventObservable._description.getter()
{
  _StringGuts.grow(_:)(40);
  MEMORY[0x245D0A530](0xD000000000000020, 0x80000002423109A0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFTestControlEventObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTestControlEventObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTestControlEventObservable.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescription];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_observed] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAFTestControlEventObservable();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 registerObserver_];

  return v7;
}

uint64_t CAFTestControlEventObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTestControlEventObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTestControlEventObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTestControlEventObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTestControlEventObservable@<X0>(void *a1@<X8>)
{
  result = CAFTestControlEventObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTestControlEventObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTestControlEventObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTestControlEventObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTestControlEventObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTestControlEventObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTestControlEvent()
{
  result = lazy cache variable for type metadata for CAFTestControlEvent;
  if (!lazy cache variable for type metadata for CAFTestControlEvent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTestControlEvent);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTestControlEventObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTestControlEventObservable and conformance CAFTestControlEventObservable(&lazy protocol witness table cache variable for type CAFTestControlEventObservable and conformance CAFTestControlEventObservable, a2, type metadata accessor for CAFTestControlEventObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTestControlEventObservable and conformance CAFTestControlEventObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFTestControlEventObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFTestControlSyncObservable._description.getter()
{
  _StringGuts.grow(_:)(39);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x8000000242310A30);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFTestControlSyncObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTestControlSyncObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTestControlSyncObservable.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescription];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_observed] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAFTestControlSyncObservable();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 registerObserver_];

  return v7;
}

uint64_t CAFTestControlSyncObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTestControlSyncObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTestControlSyncObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTestControlSyncObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTestControlSyncObservable@<X0>(void *a1@<X8>)
{
  result = CAFTestControlSyncObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTestControlSyncObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTestControlSyncObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTestControlSyncObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTestControlSyncObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTestControlSyncObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTestControlSync()
{
  result = lazy cache variable for type metadata for CAFTestControlSync;
  if (!lazy cache variable for type metadata for CAFTestControlSync)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTestControlSync);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTestControlSyncObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTestControlSyncObservable and conformance CAFTestControlSyncObservable(&lazy protocol witness table cache variable for type CAFTestControlSyncObservable and conformance CAFTestControlSyncObservable, a2, type metadata accessor for CAFTestControlSyncObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTestControlSyncObservable and conformance CAFTestControlSyncObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFTestControlSyncObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

unint64_t CAFTypeTestIndexByPosition.testInt32Bridged.getter()
{
  v1 = [v0 hasTestInt32];
  v2 = v1;
  if (v1)
  {
    v3 = [v0 testInt32];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

id CAFTypeTestIndexByPosition.testInt32Bridged.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestInt32_];
}

unint64_t key path getter for CAFTypeTestIndexByPositionObservable.testInt32 : CAFTypeTestIndexByPositionObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestIndexByPositionObservable.testInt32.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestIndexByPositionObservable.testInt32.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed);

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v7 = *(v5 + 4);
  v4(v9, 0);

  return v6 | (v7 << 32);
}

uint64_t CAFTypeTestIndexByPositionObservable.testInt32.setter(unint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFTypeTestIndexByPositionObservableC_s5Int32VSgTt3g5(a1 | ((HIDWORD(a1) & 1) << 32), v5, KeyPath, v4);
}

void (*CAFTypeTestIndexByPositionObservable.testInt32.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v11 = *(v9 + 4);
  v8(v3, 0);

  *(v3 + 22) = v10;
  *(v3 + 92) = v11;
  return CAFTypeTestIndexByPositionObservable.testInt32.modify;
}

void CAFTypeTestIndexByPositionObservable.testInt32.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFTypeTestIndexByPositionObservableC_s5Int32VSgTt3g5(*(*a1 + 88) | (*(*a1 + 92) << 32), *(*a1 + 64), v1[9], v1[10]);

  free(v1);
}

uint64_t CAFTypeTestIndexByPositionObservable.$testInt32.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFTypeTestIndexByPositionObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFTypeTestIndexByPositionObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForVehicleLayoutKey])
  {
    v4 = CAFTypeTestIndexByPositionObservable.vehicleLayoutKey.getter();
    v5 = v6;
  }

  if ([v3 registeredForTestInt32])
  {
    CAFTypeTestIndexByPositionObservable.testInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(82);
  MEMORY[0x245D0A530](0xD000000000000027, 0x8000000242310AC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x8000000242310130);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xED0000203A323374);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestIndexByPositionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTypeTestIndexByPositionObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTypeTestIndexByPositionObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFTypeTestIndexByPositionObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFTypeTestIndexByPositionObservableCSSGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA36CAFTypeTestIndexByPositionObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA36CAFTypeTestIndexByPositionObservableCs5Int32VSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__name;
  swift_getKeyPath();
  v18 = *(v8 + 48);
  v19 = *(v8 + 52);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v20);
  *&v2[OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFTypeTestIndexByPositionObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFTypeTestIndexByPositionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestIndexByPositionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestIndexByPositionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestIndexByPositionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestIndexByPositionObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestIndexByPositionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestIndexByPositionObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTypeTestIndexByPositionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTypeTestIndexByPositionObservable.typeTestIndexByPositionService(_:didUpdateTestInt32:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestIndexByPositionObservable.typeTestIndexByPositionService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFTypeTestIndexByPositionObservable.typeTestIndexByPositionService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFTypeTestIndexByPositionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTypeTestIndexByPositionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTypeTestIndexByPositionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t key path getter for CAFTypeTestIndexByPosition.testInt32Bridged : CAFTypeTestIndexByPosition@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestIndexByPosition.testInt32Bridged.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFTypeTestIndexByPosition()
{
  result = lazy cache variable for type metadata for CAFTypeTestIndexByPosition;
  if (!lazy cache variable for type metadata for CAFTypeTestIndexByPosition)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTypeTestIndexByPosition);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTypeTestIndexByPositionObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTypeTestIndexByPositionObservable and conformance CAFTypeTestIndexByPositionObservable(&lazy protocol witness table cache variable for type CAFTypeTestIndexByPositionObservable and conformance CAFTypeTestIndexByPositionObservable, a2, type metadata accessor for CAFTypeTestIndexByPositionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTypeTestIndexByPositionObservable and conformance CAFTypeTestIndexByPositionObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFTypeTestIndexByPositionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFTypeTestIndexByUnitObservable.distanceUnitRawValue.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__distanceUnitRawValue) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

unint64_t key path getter for CAFTypeTestIndexByUnitObservable.testInt32 : CAFTypeTestIndexByUnitObservable@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFTypeTestIndexByUnitObservable.testInt32.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestIndexByUnitObservable.testInt32.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v7 = *(v5 + 4);
  v4(v9, 0);

  return v6 | (v7 << 32);
}

uint64_t CAFTypeTestIndexByUnitObservable.testInt32.setter(unint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTypeTestIndexByUnitObservableC_s5Int32VSgTt3g5(a1 | ((HIDWORD(a1) & 1) << 32), v5, KeyPath, v4);
}

void (*CAFTypeTestIndexByUnitObservable.testInt32.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v11 = *(v9 + 4);
  v8(v3, 0);

  *(v3 + 22) = v10;
  *(v3 + 92) = v11;
  return CAFTypeTestIndexByUnitObservable.testInt32.modify;
}

void CAFTypeTestIndexByUnitObservable.testInt32.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTypeTestIndexByUnitObservableC_s5Int32VSgTt3g5(*(*a1 + 88) | (*(*a1 + 92) << 32), *(*a1 + 64), v1[9], v1[10]);

  free(v1);
}

uint64_t CAFTypeTestIndexByUnitObservable.$testInt32.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFTypeTestIndexByUnitObservable.name.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__name) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFTypeTestIndexByUnitObservable.$distanceUnitRawValue.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFTypeTestIndexByUnitObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForDistanceUnit])
  {
    CAFTypeTestIndexByUnitObservable.distanceUnitRawValue.getter();
    type metadata accessor for CAFUnitType(0);
    v4 = String.init<A>(describing:)();
    v5 = v6;
  }

  if ([v3 registeredForTestInt32])
  {
    CAFTypeTestIndexByUnitObservable.testInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(82);
  MEMORY[0x245D0A530](0xD000000000000023, 0x8000000242310B80);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000019, 0x8000000242310BB0);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xED0000203A323374);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestIndexByUnitObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTypeTestIndexByUnitObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTypeTestIndexByUnitObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__distanceUnitRawValue;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTypeTestIndexByUnitObservableCSo11CAFUnitTypeVGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTypeTestIndexByUnitObservableCSo11CAFUnitTypeVGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA32CAFTypeTestIndexByUnitObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA32CAFTypeTestIndexByUnitObservableCs5Int32VSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__name;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTypeTestIndexByUnitObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTypeTestIndexByUnitObservableCSSGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v21);
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for CAFTypeTestIndexByUnitObservable();
  v22 = a1;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  [v22 registerObserver_];

  return v23;
}

uint64_t CAFTypeTestIndexByUnitObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestIndexByUnitObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestIndexByUnitObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestIndexByUnitObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestIndexByUnitObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestIndexByUnitObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestIndexByUnitObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTypeTestIndexByUnitObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTypeTestIndexByUnitObservable.typeTestIndexByUnitService(_:didUpdateDistanceUnitRawValue:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__distanceUnitRawValue);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFTypeTestIndexByUnitObservable.typeTestIndexByUnitService(_:didUpdateTestInt32:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTypeTestIndexByUnitObservable.typeTestIndexByUnitService(_:didUpdateName:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__name);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFTypeTestIndexByUnitObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTypeTestIndexByUnitObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTypeTestIndexByUnitObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTypeTestIndexByUnit()
{
  result = lazy cache variable for type metadata for CAFTypeTestIndexByUnit;
  if (!lazy cache variable for type metadata for CAFTypeTestIndexByUnit)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTypeTestIndexByUnit);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTypeTestIndexByUnitObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTypeTestIndexByUnitObservable and conformance CAFTypeTestIndexByUnitObservable(&lazy protocol witness table cache variable for type CAFTypeTestIndexByUnitObservable and conformance CAFTypeTestIndexByUnitObservable, a2, type metadata accessor for CAFTypeTestIndexByUnitObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTypeTestIndexByUnitObservable and conformance CAFTypeTestIndexByUnitObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFTypeTestIndexByUnitObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFTypeTestMulti.testBoolBridged.getter()
{
  if ([v0 hasTestBool])
  {
    return [v0 testBool];
  }

  else
  {
    return 2;
  }
}

id CAFTypeTestMulti.testUInt8Bridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestUInt8_];
}

id CAFTypeTestMulti.testUInt16Bridged.setter(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestUInt16_];
}

id CAFTypeTestMulti.testUInt32Bridged.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestUInt32_];
}

id CAFTypeTestMulti.testUInt64Bridged.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  return [v2 setTestUInt64_];
}

uint64_t CAFTypeTestMulti.testInt8Bridged.getter()
{
  v1 = [v0 hasTestInt8];
  v2 = v1;
  if (v1)
  {
    LOBYTE(v1) = [v0 testInt8];
  }

  return v1 | ((v2 ^ 1) << 8);
}

id CAFTypeTestMulti.testInt8Bridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestInt8_];
}

uint64_t CAFTypeTestMulti.testInt16Bridged.getter()
{
  v1 = [v0 hasTestInt16];
  if (v1)
  {
    v2 = [v0 testInt16];
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 ^ 1) << 16);
}

id CAFTypeTestMulti.testInt16Bridged.setter(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestInt16_];
}

unint64_t CAFTypeTestMulti.testUInt32Bridged.getter(const char **a1)
{
  v1 = OUTLINED_FUNCTION_48_0(a1);
  v2 = v1;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_85_0();
    v5 = [v3 v4];
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 ^ 1u) << 32);
}

id CAFTypeTestMulti.testUInt64Bridged.getter(const char **a1)
{
  if (!OUTLINED_FUNCTION_48_0(a1))
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_85_0();
  return [v1 v2];
}

id CAFTypeTestMulti.testInt64Bridged.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  return [v2 setTestInt64_];
}

unint64_t CAFTypeTestMulti.testFloatBridged.getter()
{
  v1 = [v0 hasTestFloat];
  v2 = v1;
  if (v1)
  {
    [v0 testFloat];
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v2 ^ 1u) << 32);
}

id CAFTypeTestMulti.testFloatBridged.setter(uint64_t a1, double a2)
{
  LODWORD(a2) = a1;
  if ((a1 & 0x100000000) != 0)
  {
    *&a2 = 0.0;
  }

  return [v2 setTestFloat_];
}

uint64_t CAFTypeTestMulti.testUInt8Bridged.getter(const char **a1)
{
  v1 = OUTLINED_FUNCTION_48_0(a1);
  v2 = v1;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_85_0();
    v1 = [v3 v4];
  }

  return v1 | ((v2 ^ 1) << 8);
}

id CAFTypeTestMulti.testEnumBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestEnum_];
}

uint64_t CAFTypeTestMulti.testUInt16Bridged.getter(const char **a1)
{
  v1 = OUTLINED_FUNCTION_48_0(a1);
  v2 = v1;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_85_0();
    v1 = [v3 v4];
  }

  return v1 | ((v2 ^ 1) << 16);
}

id CAFTypeTestMulti.testDimensionUnitRawValueBridged.setter(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestDimensionUnitRawValue_];
}

char *CAFTypeTestMulti.testArrayBoolBridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayBool);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized Array._getCount()(v1);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0A790](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 BOOLValue];

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v13 + 16) = v12 + 1;
      *(v13 + v12 + 32) = v10;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

void CAFTypeTestMulti.testArrayBoolBridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v8 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(v8 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v4;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTestArrayBool_];
  }

  else
  {
    [v1 setTestArrayBool_];
  }
}

void CAFTypeTestMulti.testArrayUInt8Bridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayUInt8);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array._getCount()(v1);
    if (!v3)
    {
LABEL_11:

      return;
    }

    v4 = v3;
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v4 & 0x8000000000000000) == 0)
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x245D0A790](i, v2);
        }

        else
        {
          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = [v6 unsignedCharValue];

        v9 = *(v10 + 16);
        if (v9 >= *(v10 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        *(v10 + 16) = v9 + 1;
        *(v10 + v9 + 32) = v8;
      }

      goto LABEL_11;
    }

    __break(1u);
  }
}

void CAFTypeTestMulti.testArrayUInt8Bridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v8 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(v8 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v4;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTestArrayUInt8_];
  }

  else
  {
    [v1 setTestArrayUInt8_];
  }
}

void CAFTypeTestMulti.testArrayUInt16Bridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayUInt16);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array._getCount()(v1);
    if (!v3)
    {
LABEL_11:

      return;
    }

    v4 = v3;
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v4 & 0x8000000000000000) == 0)
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x245D0A790](i, v2);
        }

        else
        {
          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = [v6 unsignedShortValue];

        v9 = *(v10 + 16);
        if (v9 >= *(v10 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        *(v10 + 16) = v9 + 1;
        *(v10 + 2 * v9 + 32) = v8;
      }

      goto LABEL_11;
    }

    __break(1u);
  }
}

void CAFTypeTestMulti.testArrayUInt16Bridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v8 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(v8 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 += 2;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTestArrayUInt16_];
  }

  else
  {
    [v1 setTestArrayUInt16_];
  }
}

void CAFTypeTestMulti.testArrayUInt32Bridged.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CAFTypeTestMulti.testArrayUInt32Bridged.getter(&selRef_testArrayUInt32, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &selRef_unsignedIntValue, a4, a5, a6, a7, a8, a9, a10);
}

{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_46_0();
  v13 = OUTLINED_FUNCTION_23_0();
  v15 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v13, v14);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = specialized Array._getCount()(v15);
  if (!v17)
  {
LABEL_13:

LABEL_14:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v18 = v17;
  v19 = OUTLINED_FUNCTION_60_0();
  v11(v19);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = a10;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x245D0A790](v20, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 *v10];

      OUTLINED_FUNCTION_79_0();
      if (v26)
      {
        (v11)(v25 > 1, v23, 1);
        v21 = a10;
      }

      ++v20;
      *(v21 + 16) = v23;
      *(v21 + 4 * v12 + 32) = v24;
    }

    while (v18 != v20);
    goto LABEL_13;
  }

  __break(1u);
}

void CAFTypeTestMulti.testArrayUInt64Bridged.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CAFTypeTestMulti.testArrayUInt64Bridged.getter(&selRef_testArrayUInt64, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &selRef_unsignedLongLongValue, a4, a5, a6, a7, a8, a9, a10);
}

{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_46_0();
  v13 = OUTLINED_FUNCTION_23_0();
  v15 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v13, v14);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = specialized Array._getCount()(v15);
  if (!v17)
  {
LABEL_13:

LABEL_14:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v18 = v17;
  v19 = OUTLINED_FUNCTION_60_0();
  v11(v19);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = a10;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x245D0A790](v20, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 *v10];

      OUTLINED_FUNCTION_79_0();
      if (v26)
      {
        (v11)(v25 > 1, v23, 1);
        v21 = a10;
      }

      ++v20;
      *(v21 + 16) = v23;
      *(v21 + 8 * v12 + 32) = v24;
    }

    while (v18 != v20);
    goto LABEL_13;
  }

  __break(1u);
}

void CAFTypeTestMulti.testArrayInt8Bridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayInt8);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array._getCount()(v1);
    if (!v3)
    {
LABEL_11:

      return;
    }

    v4 = v3;
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v4 & 0x8000000000000000) == 0)
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x245D0A790](i, v2);
        }

        else
        {
          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = [v6 charValue];

        v9 = *(v10 + 16);
        if (v9 >= *(v10 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        *(v10 + 16) = v9 + 1;
        *(v10 + v9 + 32) = v8;
      }

      goto LABEL_11;
    }

    __break(1u);
  }
}

void CAFTypeTestMulti.testArrayInt8Bridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v8 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(v8 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v4;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTestArrayInt8_];
  }

  else
  {
    [v1 setTestArrayInt8_];
  }
}

void CAFTypeTestMulti.testArrayInt16Bridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayInt16);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array._getCount()(v1);
    if (!v3)
    {
LABEL_11:

      return;
    }

    v4 = v3;
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v4 & 0x8000000000000000) == 0)
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x245D0A790](i, v2);
        }

        else
        {
          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = [v6 shortValue];

        v9 = *(v10 + 16);
        if (v9 >= *(v10 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        *(v10 + 16) = v9 + 1;
        *(v10 + 2 * v9 + 32) = v8;
      }

      goto LABEL_11;
    }

    __break(1u);
  }
}

void CAFTypeTestMulti.testArrayInt16Bridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v8 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(v8 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 += 2;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTestArrayInt16_];
  }

  else
  {
    [v1 setTestArrayInt16_];
  }
}

void CAFTypeTestMulti.testArrayUInt32Bridged.setter()
{
  OUTLINED_FUNCTION_57_0();
  v4 = v3;
  if (v1)
  {
    v5 = v1;
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v2;
      v13 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v8 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) *v7];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = *(v13 + 16);
        OUTLINED_FUNCTION_84_0();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_84_0();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 += 4;
        --v6;
      }

      while (v6);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_23_0();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v0 *v4];
  OUTLINED_FUNCTION_30_0();
}