uint64_t CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateLockState:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateVehicleLayoutKey:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__vehicleLayoutKey);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateName:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__name);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFClimateControlsLockedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFClimateControlsLockedObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFClimateControlsLockedObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFClimateControlsLocked()
{
  result = lazy cache variable for type metadata for CAFClimateControlsLocked;
  if (!lazy cache variable for type metadata for CAFClimateControlsLocked)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFClimateControlsLocked);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFClimateControlsLockedObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFClimateControlsLockedObservable and conformance CAFClimateControlsLockedObservable(&lazy protocol witness table cache variable for type CAFClimateControlsLockedObservable and conformance CAFClimateControlsLockedObservable, a2, type metadata accessor for CAFClimateControlsLockedObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFClimateControlsLockedObservable and conformance CAFClimateControlsLockedObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFClimateControlsLockedObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFDefrostObservable.types.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__types) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFDefrostObservable.level : CAFDefrostObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFDefrostObservable.level.getter();
  *a2 = result;
  return result;
}

uint64_t CAFDefrostObservable.level.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFDefrostObservable.level.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA20CAFDefrostObservableC_s5UInt8VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFDefrostObservable.level.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFDefrostObservable.level.modify;
}

void CAFDefrostObservable.level.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA20CAFDefrostObservableC_s5UInt8VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFDefrostObservable.$level.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFDefrostObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFDefrostObservable.$types.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFDefrostObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForDefrostTypes])
  {
    CAFDefrostObservable.types.getter();
    v6 = NSStringFromDefrostTypes();
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
  if ([v3 registeredForLevel])
  {
    CAFDefrostObservable.level.getter();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v11;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFDefrostObservable.vehicleLayoutKey.getter();
    v1 = v12;
  }

  _StringGuts.grow(_:)(73);
  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230DD50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x7365707974207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x3A6C6576656C202CLL, 0xE900000000000020);
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDefrostObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDefrostObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDefrostObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__types;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFDefrostObservableCSo0F5TypesVGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFDefrostObservableCSo0F5TypesVGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA20CAFDefrostObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA20CAFDefrostObservableCs5UInt8VGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v11] = v15;
  v16 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFDefrostObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFDefrostObservableCSSGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v20);
  v21 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__name;
  swift_getKeyPath();
  v22 = *(v17 + 48);
  v23 = *(v17 + 52);
  swift_allocObject();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)(v24);
  *&v2[OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed] = a1;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for CAFDefrostObservable();
  v25 = a1;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  [v25 registerObserver_];

  return v26;
}

uint64_t CAFDefrostObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDefrostObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDefrostObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDefrostObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDefrostObservable@<X0>(void *a1@<X8>)
{
  result = CAFDefrostObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDefrostObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFDefrostObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFDefrostObservable.defrostService(_:didUpdateTypes:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__types);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDefrostObservable.defrostService(_:didUpdateLevel:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFDefrostObservable.defrostService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFDefrostObservable.defrostService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFDefrostObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDefrostObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFDefrostObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFDefrost()
{
  result = lazy cache variable for type metadata for CAFDefrost;
  if (!lazy cache variable for type metadata for CAFDefrost)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDefrost);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDefrostObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDefrostObservable and conformance CAFDefrostObservable(&lazy protocol witness table cache variable for type CAFDefrostObservable and conformance CAFDefrostObservable, a2, type metadata accessor for CAFDefrostObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDefrostObservable and conformance CAFDefrostObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFDefrostObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFFanObservable.fanLevel : CAFFanObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFFanObservable.fanLevel.getter();
  *a2 = result;
  return result;
}

void (*CAFFanObservable.fanLevel.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__fanLevel;
  OUTLINED_FUNCTION_5_6();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFFanObservable.fanLevel.modify;
}

uint64_t key path getter for CAFFanObservable.on : CAFFanObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFFanObservable.on.getter();
  *a2 = result;
  return result;
}

uint64_t CAFFanObservable.fanLevel.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v10 = *(v1 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v4 = v10;
  v5 = swift_readAtKeyPath();
  v7 = *v6;
  v5(&v9, 0);

  return v7;
}

uint64_t CAFFanObservable.fanLevel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

void (*CAFFanObservable.on.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__on;
  OUTLINED_FUNCTION_5_6();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFFanObservable.on.modify;
}

void CAFFanObservable.fanLevel.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t CAFFanObservable.$fanLevel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_0_6();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFFanObservable.autoMode.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__autoMode) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFFanObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFFanObservable.$autoMode.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFFanObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);
  v4 = [v3 registeredForFanLevel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFFanObservable.fanLevel.getter();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    CAFFanObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v8 = String.init<A>(describing:)();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForAutoMode])
  {
    CAFFanObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFFanObservable.vehicleLayoutKey.getter();
    v1 = v14;
  }

  _StringGuts.grow(_:)(83);
  MEMORY[0x245D0A530](0xD000000000000013, 0x800000024230DDD0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x654C6E6166207B20, 0xED0000203A6C6576);
  MEMORY[0x245D0A530](v16, v6);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFFanObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFFanObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFFanObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__fanLevel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA16CAFFanObservableCs5UInt8VGMd, &_s10CAFCombine13SafePublishedCyAA16CAFFanObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__on;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA16CAFFanObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA16CAFFanObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v11);
  v12 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v12);
  v13 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__autoMode;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA16CAFFanObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA16CAFFanObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v14);
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA16CAFFanObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA16CAFFanObservableCSSGMR);
  OUTLINED_FUNCTION_225(v17);
  v18 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v18);
  v19 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__name;
  swift_getKeyPath();
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafePublished.init(observedValuekeypath:)(v22);
  *&v2[OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CAFFanObservable();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  [v23 registerObserver_];

  return v24;
}

uint64_t CAFFanObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFanObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFanObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFanObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFanObservable@<X0>(void *a1@<X8>)
{
  result = CAFFanObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFanObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFFanObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFFanObservable.fanService(_:didUpdateFanLevel:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__fanLevel;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFFanObservable.fanService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__on;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFFanObservable.fanService(_:didUpdateAutoMode:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__autoMode);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFFanObservable.fanService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFFanObservable.fanService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFFanObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFanObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFFanObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFFan()
{
  result = lazy cache variable for type metadata for CAFFan;
  if (!lazy cache variable for type metadata for CAFFan)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFFan);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFanObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFFanObservable and conformance CAFFanObservable(&lazy protocol witness table cache variable for type CAFFanObservable and conformance CAFFanObservable, a2, type metadata accessor for CAFFanObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFanObservable and conformance CAFFanObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFFanObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFRecirculation.autoModeBridged.getter()
{
  if ([v0 hasAutoMode])
  {
    return [v0 autoMode];
  }

  else
  {
    return 2;
  }
}

uint64_t key path getter for CAFRecirculationObservable.on : CAFRecirculationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFRecirculationObservable.on.getter();
  *a2 = result & 1;
  return result;
}

uint64_t CAFRecirculationObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFRecirculationObservable.on.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFRecirculationObservableC_SbTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFRecirculationObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFRecirculationObservable.on.modify;
}

void CAFRecirculationObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFRecirculationObservableC_SbTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFRecirculationObservable.$on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFRecirculationObservable.autoMode.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__autoMode) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFRecirculationObservable.$autoMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__autoMode);

  specialized SafePublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t CAFRecirculationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    v6 = CAFRecirculationObservable.on.getter();
    if (v6)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v6)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  if ([v3 registeredForAutoMode])
  {
    CAFRecirculationObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(57);
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x800000024230DE50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRecirculationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFRecirculationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFRecirculationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFRecirculationObservableCSbGMd, &_s10CAFCombine13SafePublishedCyAA26CAFRecirculationObservableCSbGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__autoMode;
  KeyPath = swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFRecirculationObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFRecirculationObservableCSbSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(KeyPath);
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed] = a1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for CAFRecirculationObservable();
  v16 = a1;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  [v16 registerObserver_];

  return v17;
}

uint64_t CAFRecirculationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRecirculationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRecirculationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRecirculationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRecirculationObservable@<X0>(void *a1@<X8>)
{
  result = CAFRecirculationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRecirculationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFRecirculationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFRecirculationObservable.recirculationService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFRecirculationObservable.recirculationService(_:didUpdateAutoMode:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__autoMode);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFRecirculationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRecirculationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFRecirculationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFRecirculation()
{
  result = lazy cache variable for type metadata for CAFRecirculation;
  if (!lazy cache variable for type metadata for CAFRecirculation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRecirculation);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRecirculationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRecirculationObservable and conformance CAFRecirculationObservable(&lazy protocol witness table cache variable for type CAFRecirculationObservable and conformance CAFRecirculationObservable, a2, type metadata accessor for CAFRecirculationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRecirculationObservable and conformance CAFRecirculationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFRecirculationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel : CAFSteeringWheelHeatingCoolingObservable@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA40CAFSteeringWheelHeatingCoolingObservableC_s5Int32VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 22) = v10;
  return CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.modify;
}

void CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA40CAFSteeringWheelHeatingCoolingObservableC_s5Int32VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.$heatingCoolingLevel.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.autoMode.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__autoMode) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.$autoMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__autoMode);

  specialized SafePublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForHeatingCoolingLevel])
  {
    CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.getter();
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v5 = v6;
  }

  if ([v3 registeredForAutoMode])
  {
    CAFSteeringWheelHeatingCoolingObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(88);
  MEMORY[0x245D0A530](0xD00000000000002BLL, 0x800000024230DF10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230DF40);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSteeringWheelHeatingCoolingObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSteeringWheelHeatingCoolingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA40CAFSteeringWheelHeatingCoolingObservableCs5Int32VGMd, &_s10CAFCombine13SafePublishedCyAA40CAFSteeringWheelHeatingCoolingObservableCs5Int32VGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__autoMode;
  KeyPath = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA40CAFSteeringWheelHeatingCoolingObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA40CAFSteeringWheelHeatingCoolingObservableCSbSgGMR);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(KeyPath);
  *&v2[OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFSteeringWheelHeatingCoolingObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSteeringWheelHeatingCoolingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSteeringWheelHeatingCoolingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSteeringWheelHeatingCoolingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSteeringWheelHeatingCoolingObservable@<X0>(void *a1@<X8>)
{
  result = CAFSteeringWheelHeatingCoolingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSteeringWheelHeatingCoolingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFSteeringWheelHeatingCoolingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.steeringWheelHeatingCoolingService(_:didUpdateHeatingCoolingLevel:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.steeringWheelHeatingCoolingService(_:didUpdateAutoMode:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__autoMode);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSteeringWheelHeatingCoolingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSteeringWheelHeatingCooling()
{
  result = lazy cache variable for type metadata for CAFSteeringWheelHeatingCooling;
  if (!lazy cache variable for type metadata for CAFSteeringWheelHeatingCooling)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSteeringWheelHeatingCooling);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSteeringWheelHeatingCoolingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSteeringWheelHeatingCoolingObservable and conformance CAFSteeringWheelHeatingCoolingObservable(&lazy protocol witness table cache variable for type CAFSteeringWheelHeatingCoolingObservable and conformance CAFSteeringWheelHeatingCoolingObservable, a2, type metadata accessor for CAFSteeringWheelHeatingCoolingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSteeringWheelHeatingCoolingObservable and conformance CAFSteeringWheelHeatingCoolingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFSteeringWheelHeatingCoolingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFTemperatureLevel.onBridged.getter()
{
  if ([v0 hasOn])
  {
    return [v0 on];
  }

  else
  {
    return 2;
  }
}

uint64_t key path getter for CAFTemperatureLevelObservable.heatingCoolingLevel : CAFTemperatureLevelObservable@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = CAFTemperatureLevelObservable.heatingCoolingLevel.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTemperatureLevelObservable.heatingCoolingLevel : CAFTemperatureLevelObservable(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return CAFTemperatureLevelObservable.heatingCoolingLevel.setter();
}

uint64_t CAFTemperatureLevelObservable.heatingCoolingLevel.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);
  v9[4] = v3;

  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_20();
  v7 = *v6;
  v5(v9, 0);

  return v7;
}

uint64_t CAFTemperatureLevelObservable.heatingCoolingLevel.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFTemperatureLevelObservableC_s5Int32VTt3g5(v2);
}

void (*CAFTemperatureLevelObservable.heatingCoolingLevel.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v4, 0);

  *(v4 + 22) = v10;
  return CAFTemperatureLevelObservable.heatingCoolingLevel.modify;
}

void CAFTemperatureLevelObservable.heatingCoolingLevel.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFTemperatureLevelObservableC_s5Int32VTt3g5(v6);

  free(v1);
}

uint64_t key path getter for CAFTemperatureLevelObservable.on : CAFTemperatureLevelObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTemperatureLevelObservable.on.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTemperatureLevelObservable.on : CAFTemperatureLevelObservable(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFTemperatureLevelObservable.on.setter();
}

uint64_t CAFTemperatureLevelObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);
  v9[4] = v3;

  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_20();
  v7 = *v6;
  v5(v9, 0);

  return v7;
}

uint64_t CAFTemperatureLevelObservable.on.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFTemperatureLevelObservableC_SbSgTt3g5(v2);
}

void (*CAFTemperatureLevelObservable.on.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__on;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v4, 0);

  *(v4 + 88) = v10;
  return CAFTemperatureLevelObservable.on.modify;
}

void CAFTemperatureLevelObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFTemperatureLevelObservableC_SbSgTt3g5(v6);

  free(v1);
}

uint64_t CAFTemperatureLevelObservable.$heatingCoolingLevel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_0_6();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFTemperatureLevelObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFTemperatureLevelObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForHeatingCoolingLevel])
  {
    CAFTemperatureLevelObservable.heatingCoolingLevel.getter();
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v5 = v6;
  }

  v7 = 0x73696765726E753CLL;
  v8 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    CAFTemperatureLevelObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v7 = String.init<A>(describing:)();
    v8 = v9;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFTemperatureLevelObservable.vehicleLayoutKey.getter();
    v1 = v10;
  }

  _StringGuts.grow(_:)(93);
  MEMORY[0x245D0A530](0xD000000000000020, 0x800000024230DFE0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230DF40);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v7, v8);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTemperatureLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTemperatureLevelObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTemperatureLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__heatingCoolingLevel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA29CAFTemperatureLevelObservableCs5Int32VGMd, &_s10CAFCombine13SafePublishedCyAA29CAFTemperatureLevelObservableCs5Int32VGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__on;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA29CAFTemperatureLevelObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA29CAFTemperatureLevelObservableCSbSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFTemperatureLevelObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFTemperatureLevelObservableCSSGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v21);
  v22 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__name;
  swift_getKeyPath();
  v23 = *(v18 + 48);
  v24 = *(v18 + 52);
  swift_allocObject();
  v25 = OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)(v25);
  *&v2[OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFTemperatureLevelObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFTemperatureLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTemperatureLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTemperatureLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTemperatureLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTemperatureLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFTemperatureLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTemperatureLevelObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTemperatureLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateHeatingCoolingLevel:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__heatingCoolingLevel;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__on;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFTemperatureLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTemperatureLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTemperatureLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTemperatureLevel()
{
  result = lazy cache variable for type metadata for CAFTemperatureLevel;
  if (!lazy cache variable for type metadata for CAFTemperatureLevel)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTemperatureLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTemperatureLevelObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTemperatureLevelObservable and conformance CAFTemperatureLevelObservable(&lazy protocol witness table cache variable for type CAFTemperatureLevelObservable and conformance CAFTemperatureLevelObservable, a2, type metadata accessor for CAFTemperatureLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTemperatureLevelObservable and conformance CAFTemperatureLevelObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFTemperatureLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return swift_readAtKeyPath();
}

uint64_t CAFTemperatureObservable.currentTemperature.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__currentTemperature) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t key path setter for CAFTemperatureObservable.targetTemperature : CAFTemperatureObservable(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return CAFTemperatureObservable.targetTemperature.setter(v7);
}

uint64_t CAFTemperatureObservable.targetTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__targetTemperature;
  OUTLINED_FUNCTION_234();
  v4 = *(*(v1 + v3) + 16);
  v12 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);

  v5 = v12;
  v6 = swift_readAtKeyPath();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  (*(*(v9 - 8) + 16))(a1, v8, v9);
  v6(&v11, 0);
}

uint64_t CAFTemperatureObservable.targetTemperature.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v4 = OUTLINED_FUNCTION_30(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v6 + 16))(v10, a1, v3);
  v11 = v1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_10Foundation11MeasurementVySo17NSUnitTemperatureCGTt3g5();
  return (*(v6 + 8))(a1, v3);
}

void (*CAFTemperatureObservable.targetTemperature.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v3[9] = v4;
  OUTLINED_FUNCTION_30(v4);
  v6 = v5;
  v3[10] = v5;
  v8 = *(v7 + 64);
  v3[11] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[12] = v9;
  v3[13] = swift_getKeyPath();
  v3[14] = swift_getKeyPath();
  v10 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__targetTemperature;
  OUTLINED_FUNCTION_234();
  v11 = *(*(v1 + v10) + 16);
  v12 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);
  v3[7] = v12;

  v13 = v12;
  v14 = swift_readAtKeyPath();
  v15 = *(v6 + 16);
  v3[15] = v15;
  v3[16] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v9);
  v14(v3, 0);

  return CAFTemperatureObservable.targetTemperature.modify;
}

void CAFTemperatureObservable.targetTemperature.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 128);
    v5 = *(v2 + 104);
    v4 = *(v2 + 112);
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);
    v8 = *(v2 + 72);
    v9 = *(v2 + 80);
    v10 = *(v2 + 64);
    (*(v2 + 120))(v7, v6, v8);
    v11 = v10;
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_10Foundation11MeasurementVySo17NSUnitTemperatureCGTt3g5();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v13 = *(v2 + 104);
    v12 = *(v2 + 112);
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);
    v14 = *(v2 + 64);
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_10Foundation11MeasurementVySo17NSUnitTemperatureCGTt3g5();
  }

  free(v6);
  free(v7);

  free(v2);
}

uint64_t key path getter for CAFTemperatureObservable.on : CAFTemperatureObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFTemperatureObservable.on.getter();
  *a2 = result;
  return result;
}

uint64_t CAFTemperatureObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFTemperatureObservable.on.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_SbSgTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFTemperatureObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__on;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFTemperatureObservable.on.modify;
}

void CAFTemperatureObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_SbSgTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFTemperatureObservable.$targetTemperature.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_0_6();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFTemperatureObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFTemperatureObservable.$currentTemperature.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFTemperatureObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v5 = OUTLINED_FUNCTION_30(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);
  v15 = [v14 registeredForCurrentTemperature];
  v28 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if (v15)
  {
    CAFTemperatureObservable.currentTemperature.getter();
    v3 = String.init<A>(describing:)();
    v16 = v17;
  }

  v27 = v3;
  v18 = 0x73696765726E753CLL;
  v19 = 0xEE003E6465726574;
  if ([v14 registeredForTargetTemperature])
  {
    CAFTemperatureObservable.targetTemperature.getter(v11);
    lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v20;
    (*(v7 + 8))(v11, v4);
  }

  v21 = 0x73696765726E753CLL;
  v22 = 0xEE003E6465726574;
  if ([v14 registeredForOn])
  {
    LOBYTE(v30) = CAFTemperatureObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v21 = String.init<A>(describing:)();
    v22 = v23;
  }

  if ([v14 registeredForVehicleLayoutKey])
  {
    v28 = CAFTemperatureObservable.vehicleLayoutKey.getter();
    v2 = v24;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(110);
  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230E0B0);
  v29 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230E0D0);
  MEMORY[0x245D0A530](v27, v16);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230E0F0);
  MEMORY[0x245D0A530](v18, v19);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v21, v22);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v28, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v30;
}

uint64_t CAFTemperatureObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTemperatureObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTemperatureObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__currentTemperature;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTemperatureObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTemperatureObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGSgGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__targetTemperature;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA24CAFTemperatureObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGGMd, &_s10CAFCombine13SafePublishedCyAA24CAFTemperatureObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__on;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA24CAFTemperatureObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA24CAFTemperatureObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v14);
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTemperatureObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTemperatureObservableCSSGMR);
  OUTLINED_FUNCTION_225(v17);
  v18 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v18);
  v19 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__name;
  swift_getKeyPath();
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafePublished.init(observedValuekeypath:)(v22);
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CAFTemperatureObservable();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  [v23 registerObserver_];

  return v24;
}

uint64_t CAFTemperatureObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTemperatureObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTemperatureObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTemperatureObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTemperatureObservable@<X0>(void *a1@<X8>)
{
  result = CAFTemperatureObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTemperatureObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTemperatureObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTemperatureObservable.temperatureService(_:didUpdateCurrentTemperature:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__currentTemperature);

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t CAFTemperatureObservable.temperatureService(_:didUpdateTargetTemperature:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__targetTemperature;
  OUTLINED_FUNCTION_0_6();
  v5 = *(v2 + v4);

  specialized SafePublished.setValue(_:)(a2);
}

uint64_t CAFTemperatureObservable.temperatureService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__on;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFTemperatureObservable.temperatureService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFTemperatureObservable.temperatureService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFTemperatureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTemperatureObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTemperatureObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFTemperature.currentTemperature : CAFTemperature@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 currentTemperature];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void key path getter for CAFTemperature.targetTemperature : CAFTemperature(id *a1)
{
  v1 = [*a1 targetTemperature];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

void key path setter for CAFTemperature.targetTemperature : CAFTemperature(uint64_t a1, void **a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v5 = Measurement._bridgeToObjectiveC()();
  isa = v5.super.isa;
  [v2 setTargetTemperature_];
}

unint64_t lazy protocol witness table accessor for type CAFTemperature and conformance CAFTemperature()
{
  result = lazy protocol witness table cache variable for type CAFTemperature and conformance CAFTemperature;
  if (!lazy protocol witness table cache variable for type CAFTemperature and conformance CAFTemperature)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTemperature, 0x277CF86B0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTemperature and conformance CAFTemperature);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTemperatureObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTemperatureObservable and conformance CAFTemperatureObservable(&lazy protocol witness table cache variable for type CAFTemperatureObservable and conformance CAFTemperatureObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTemperatureObservable and conformance CAFTemperatureObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTemperatureObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitTemperature>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CAFTemperatureObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

char *CAFVent.combinationsBridged.getter()
{
  v1 = [v0 combinations];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array._getCount()(v2);
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
      v10 = [v8 unsignedLongLongValue];

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v13 + 16) = v12 + 1;
      *(v13 + 8 * v12 + 32) = v10;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t CAFVentObservable.combinations.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__combinations) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFVentObservable.currentIndex : CAFVentObservable@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = CAFVentObservable.currentIndex.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFVentObservable.currentIndex : CAFVentObservable(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return CAFVentObservable.currentIndex.setter();
}

uint64_t CAFVentObservable.currentIndex.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__currentIndex;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);
  v9[4] = v3;

  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_20();
  v7 = *v6;
  v5(v9, 0);

  return v7;
}

uint64_t CAFVentObservable.currentIndex.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFVentObservableC_s6UInt32VTt3g5(v2);
}

void (*CAFVentObservable.currentIndex.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__currentIndex;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v4, 0);

  *(v4 + 22) = v10;
  return CAFVentObservable.currentIndex.modify;
}

void CAFVentObservable.currentIndex.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFVentObservableC_s6UInt32VTt3g5(v6);

  free(v1);
}

uint64_t CAFVentObservable.autoMode.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__autoMode) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFVentObservable.on : CAFVentObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFVentObservable.on.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFVentObservable.on : CAFVentObservable(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CAFVentObservable.on.setter();
}

uint64_t CAFVentObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);
  v9[4] = v3;

  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_20();
  v7 = *v6;
  v5(v9, 0);

  return v7;
}

uint64_t CAFVentObservable.on.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFVentObservableC_SbSgTt3g5(v2);
}

void (*CAFVentObservable.on.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__on;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v4, 0);

  *(v4 + 88) = v10;
  return CAFVentObservable.on.modify;
}

void CAFVentObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFVentObservableC_SbSgTt3g5(v6);

  free(v1);
}

uint64_t CAFVentObservable.$currentIndex.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_0_6();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFVentObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFVentObservable.$combinations.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFVentObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForVentCombinations])
  {
    v6 = CAFVentObservable.combinations.getter();
    type metadata accessor for CAFVentTypes(0);
    v4 = MEMORY[0x245D0A590](v6, v7);
    v5 = v8;
  }

  v24 = v4;
  v9 = [v3 registeredForCurrentIndex];
  v10 = 0x73696765726E753CLL;
  v11 = 0xEE003E6465726574;
  if (v9)
  {
    CAFVentObservable.currentIndex.getter();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v12;
  }

  v23 = v10;
  v13 = [v3 registeredForAutoMode];
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if (v13)
  {
    CAFVentObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v14 = String.init<A>(describing:)();
    v15 = v16;
  }

  v17 = 0x73696765726E753CLL;
  v18 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    CAFVentObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v17 = String.init<A>(describing:)();
    v18 = v19;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFVentObservable.vehicleLayoutKey.getter();
    v1 = v20;
  }

  _StringGuts.grow(_:)(106);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000014);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v24, v5);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v23, v11);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v22, v15);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v17, v18);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000014);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFVentObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFVentObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFVentObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__combinations;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSaySo0F5TypesVGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSaySo0F5TypesVGGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__currentIndex;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA17CAFVentObservableCs6UInt32VGMd, &_s10CAFCombine13SafePublishedCyAA17CAFVentObservableCs6UInt32VGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v9] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__autoMode;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v13);
  v14 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v14);
  v15 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__on;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA17CAFVentObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA17CAFVentObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v16);
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSSGMR);
  OUTLINED_FUNCTION_225(v19);
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v20);
  v21 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__name;
  swift_getKeyPath();
  v22 = *(v19 + 48);
  v23 = *(v19 + 52);
  swift_allocObject();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)(v24);
  *&v2[OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed] = a1;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for CAFVentObservable();
  v25 = a1;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  [v25 registerObserver_];

  return v26;
}

uint64_t CAFVentObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFVentObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFVentObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFVentObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFVentObservable@<X0>(void *a1@<X8>)
{
  result = CAFVentObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFVentObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFVentObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

char *CAFVentObservable.ventService(_:didUpdateCombinations:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__combinations);
  v5 = specialized Array._getCount()(a2);
  if (v5)
  {
    v6 = v5;
    v16 = MEMORY[0x277D84F90];
    v7 = v5 & ~(v5 >> 63);

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v15 = v4;
    for (i = 0; i != v6; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D0A790](i, a2);
      }

      else
      {
        v10 = *(a2 + 8 * i + 32);
      }

      v11 = v10;
      v12 = [v10 unsignedLongLongValue];

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v16 + 16) = v14 + 1;
      *(v16 + 8 * v14 + 32) = v12;
    }
  }

  else
  {
  }

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFVentObservable.ventService(_:didUpdateCurrentIndex:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__currentIndex;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFVentObservable.ventService(_:didUpdateAutoMode:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__autoMode);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFVentObservable.ventService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__on;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFVentObservable.ventService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFVentObservable.ventService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFVentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFVentObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFVentObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFVent and conformance CAFVent()
{
  result = lazy protocol witness table cache variable for type CAFVent and conformance CAFVent;
  if (!lazy protocol witness table cache variable for type CAFVent and conformance CAFVent)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFVent, 0x277CF87A8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFVent and conformance CAFVent);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFVentObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFVentObservable and conformance CAFVentObservable(&lazy protocol witness table cache variable for type CAFVentObservable and conformance CAFVentObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFVentObservable and conformance CAFVentObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFVentObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFVentObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFZoneOnObservable.on : CAFZoneOnObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFZoneOnObservable.on.getter();
  *a2 = result & 1;
  return result;
}

uint64_t CAFZoneOnObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFZoneOnObservable.on.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA19CAFZoneOnObservableC_SbTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFZoneOnObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFZoneOnObservable.on.modify;
}

void CAFZoneOnObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA19CAFZoneOnObservableC_SbTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFZoneOnObservable.$on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFZoneOnObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFZoneOnObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    v6 = CAFZoneOnObservable.on.getter();
    if (v6)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v6)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFZoneOnObservable.vehicleLayoutKey.getter();
    v1 = v7;
  }

  _StringGuts.grow(_:)(58);
  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230E240);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFZoneOnObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFZoneOnObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFZoneOnObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA19CAFZoneOnObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA19CAFZoneOnObservableCSbGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFZoneOnObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFZoneOnObservableCSSGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__name;
  swift_getKeyPath();
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v19);
  *&v2[OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed] = a1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CAFZoneOnObservable();
  v20 = a1;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  [v20 registerObserver_];

  return v21;
}

uint64_t CAFZoneOnObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFZoneOnObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFZoneOnObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFZoneOnObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFZoneOnObservable@<X0>(void *a1@<X8>)
{
  result = CAFZoneOnObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFZoneOnObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFZoneOnObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFZoneOnObservable.zoneOnService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFZoneOnObservable.zoneOnService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFZoneOnObservable.zoneOnService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFZoneOnObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFZoneOnObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFZoneOnObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFZoneOn()
{
  result = lazy cache variable for type metadata for CAFZoneOn;
  if (!lazy cache variable for type metadata for CAFZoneOn)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFZoneOn);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFZoneOnObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFZoneOnObservable and conformance CAFZoneOnObservable(&lazy protocol witness table cache variable for type CAFZoneOnObservable and conformance CAFZoneOnObservable, a2, type metadata accessor for CAFZoneOnObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFZoneOnObservable and conformance CAFZoneOnObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFZoneOnObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFZonesSyncedObservable.on : CAFZonesSyncedObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFZonesSyncedObservable.on.getter();
  *a2 = result & 1;
  return result;
}

uint64_t CAFZonesSyncedObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFZonesSyncedObservable.on.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFZonesSyncedObservableC_SbTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFZonesSyncedObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFZonesSyncedObservable.on.modify;
}

void CAFZonesSyncedObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFZonesSyncedObservableC_SbTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFZonesSyncedObservable.$on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFZonesSyncedObservable.vehicleLayoutKey.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__vehicleLayoutKey) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFZonesSyncedObservable.name.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__name) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFZonesSyncedObservable.$vehicleLayoutKey.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFZonesSyncedObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForOn])
  {
    v4 = CAFZonesSyncedObservable.on.getter();
    if (v4)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v4)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  if ([v1 registeredForVehicleLayoutKey])
  {
    CAFZonesSyncedObservable.vehicleLayoutKey.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(63);
  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230E2C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  v5 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v5);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFZonesSyncedObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFZonesSyncedObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFZonesSyncedObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA24CAFZonesSyncedObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA24CAFZonesSyncedObservableCSbGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFZonesSyncedObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFZonesSyncedObservableCSSSgGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__name;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFZonesSyncedObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFZonesSyncedObservableCSSGMR);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)(v19);
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed] = a1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CAFZonesSyncedObservable();
  v20 = a1;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  [v20 registerObserver_];

  return v21;
}

uint64_t CAFZonesSyncedObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFZonesSyncedObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFZonesSyncedObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFZonesSyncedObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFZonesSyncedObservable@<X0>(void *a1@<X8>)
{
  result = CAFZonesSyncedObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFZonesSyncedObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFZonesSyncedObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateVehicleLayoutKey:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__vehicleLayoutKey);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateName:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__name);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFZonesSyncedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFZonesSyncedObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFZonesSyncedObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFZonesSynced()
{
  result = lazy cache variable for type metadata for CAFZonesSynced;
  if (!lazy cache variable for type metadata for CAFZonesSynced)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFZonesSynced);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFZonesSyncedObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFZonesSyncedObservable and conformance CAFZonesSyncedObservable(&lazy protocol witness table cache variable for type CAFZonesSyncedObservable and conformance CAFZonesSyncedObservable, a2, type metadata accessor for CAFZonesSyncedObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFZonesSyncedObservable and conformance CAFZonesSyncedObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFZonesSyncedObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFClosureStateObservable.latchState.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable__latchState) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFClosureStateObservable.vehicleLayoutKey.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFClosureStateObservable.$latchState.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFClosureStateObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForLatchState])
  {
    v6 = CAFClosureStateObservable.latchState.getter();
    if (v6)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v6)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFClosureStateObservable.vehicleLayoutKey.getter();
    v1 = v7;
  }

  _StringGuts.grow(_:)(72);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230E360);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x686374616C207B20, 0xEF203A6574617453);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFClosureStateObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFClosureStateObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFClosureStateObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable__latchState;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFClosureStateObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFClosureStateObservableCSbGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFClosureStateObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFClosureStateObservableCSSGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable__name;
  swift_getKeyPath();
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v19);
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed] = a1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CAFClosureStateObservable();
  v20 = a1;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  [v20 registerObserver_];

  return v21;
}

uint64_t CAFClosureStateObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFClosureStateObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFClosureStateObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFClosureStateObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFClosureStateObservable@<X0>(void *a1@<X8>)
{
  result = CAFClosureStateObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFClosureStateObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFClosureStateObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFClosureStateObservable.closureStateService(_:didUpdateLatchState:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable__latchState);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFClosureStateObservable.closureStateService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFClosureStateObservable.closureStateService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFClosureStateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFClosureStateObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFClosureStateObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFClosureState()
{
  result = lazy cache variable for type metadata for CAFClosureState;
  if (!lazy cache variable for type metadata for CAFClosureState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFClosureState);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFClosureStateObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFClosureStateObservable and conformance CAFClosureStateObservable(&lazy protocol witness table cache variable for type CAFClosureStateObservable and conformance CAFClosureStateObservable, a2, type metadata accessor for CAFClosureStateObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFClosureStateObservable and conformance CAFClosureStateObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFClosureStateObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFTargetSpeed.speedLimitedBridged.getter()
{
  if ([v0 hasSpeedLimited])
  {
    return [v0 speedLimited];
  }

  else
  {
    return 2;
  }
}

uint64_t CAFTargetSpeedObservable.targetSpeedState.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__targetSpeedState) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_231();

  return v5;
}

uint64_t CAFTargetSpeedObservable.speedKMH.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFTargetSpeedObservable.speedLimited.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__speedLimited) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_231();

  return v5;
}

uint64_t CAFTargetSpeedObservable.$targetSpeedState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFTargetSpeedObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v5 = OUTLINED_FUNCTION_30(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v27 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed);
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v12 registeredForTargetSpeedState])
  {
    CAFTargetSpeedObservable.targetSpeedState.getter();
    v15 = NSStringFromTargetSpeedState();
    if (v15)
    {
      v16 = v15;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v17;
    }

    else
    {
      v14 = 0xE900000000000029;
      v13 = 0x6E776F6E6B6E7528;
    }
  }

  v28 = v13;
  v29 = v14;
  v18 = 0x73696765726E753CLL;
  v19 = 0xEE003E6465726574;
  if ([v12 registeredForSpeedKMH])
  {
    CAFTargetSpeedObservable.speedKMH.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v20;
    (*(v7 + 8))(v11, v4);
  }

  v21 = [v12 registeredForSpeedMPH];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    CAFTargetSpeedObservable.speedMPH.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v24;
    (*(v7 + 8))(v11, v4);
  }

  if ([v12 registeredForSpeedLimited])
  {
    LOBYTE(v31) = CAFTargetSpeedObservable.speedLimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v3 = String.init<A>(describing:)();
    v2 = v25;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(101);
  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230E420);
  v30 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230E440);
  MEMORY[0x245D0A530](v28, v29);

  MEMORY[0x245D0A530](0x4B6465657073202CLL, 0xEC000000203A484DLL);
  MEMORY[0x245D0A530](v27, v19);

  MEMORY[0x245D0A530](0x4D6465657073202CLL, 0xEC000000203A4850);
  MEMORY[0x245D0A530](v22, v23);

  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230E460);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v31;
}

uint64_t CAFTargetSpeedObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTargetSpeedObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTargetSpeedObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__targetSpeedState;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableCSo0fG5StateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableCSo0fG5StateVGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__speedKMH;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__speedMPH;
  swift_getKeyPath();
  v18 = *(v13 + 48);
  v19 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__speedLimited;
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableCSbSgGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)(v25);
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFTargetSpeedObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFTargetSpeedObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTargetSpeedObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTargetSpeedObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTargetSpeedObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTargetSpeedObservable@<X0>(void *a1@<X8>)
{
  result = CAFTargetSpeedObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTargetSpeedObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTargetSpeedObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTargetSpeedObservable.targetSpeedService(_:didUpdateTargetSpeedState:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__targetSpeedState);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFTargetSpeedObservable.targetSpeedService(_:didUpdateSpeedKMH:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFTargetSpeedObservable.targetSpeedService(_:didUpdateSpeedKMH:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v9 = OUTLINED_FUNCTION_30(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19 - v14;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a1;
  a5();

  return (*(v11 + 8))(v15, v8);
}

uint64_t CAFTargetSpeedObservable.targetSpeedService(_:didUpdateSpeedLimited:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__speedLimited);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFTargetSpeedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTargetSpeedObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTargetSpeedObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFTargetSpeed.speedKMH : CAFTargetSpeed(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFTargetSpeed and conformance CAFTargetSpeed()
{
  result = lazy protocol witness table cache variable for type CAFTargetSpeed and conformance CAFTargetSpeed;
  if (!lazy protocol witness table cache variable for type CAFTargetSpeed and conformance CAFTargetSpeed)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTargetSpeed, 0x277CF86A8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTargetSpeed and conformance CAFTargetSpeed);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTargetSpeedObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTargetSpeedObservable and conformance CAFTargetSpeedObservable(&lazy protocol witness table cache variable for type CAFTargetSpeedObservable and conformance CAFTargetSpeedObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTargetSpeedObservable and conformance CAFTargetSpeedObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTargetSpeedObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFTargetSpeedObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  }

  return result;
}

unint64_t CAFDriveMode.defaultIndexBridged.getter()
{
  v1 = [v0 hasDefaultIndex];
  v2 = v1;
  if (v1)
  {
    v3 = [v0 defaultIndex];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

uint64_t CAFDriveMode.hiddenBridged.getter()
{
  if ([v0 hasHidden])
  {
    return [v0 hidden];
  }

  else
  {
    return 2;
  }
}

uint64_t CAFDriveModeObservable.identifiers.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__identifiers);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed);

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t CAFDriveModeObservable.currentIndex.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__currentIndex);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed);

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

unint64_t CAFDriveModeObservable.defaultIndex.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__defaultIndex);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 32);
}

uint64_t CAFDriveModeObservable.hidden.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__hidden);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed);

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t CAFDriveModeObservable.$identifiers.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFDriveModeObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed) registeredForHidden])
  {
    CAFDriveModeObservable.hidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v1 = String.init<A>(describing:)();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(43);
  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230E510);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6564646968207B20, 0xEB00000000203A6ELL);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDriveModeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDriveModeObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDriveModeObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__identifiers;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCSaySSGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCSaySSGGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__currentIndex;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCs6UInt32VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCs6UInt32VGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v9] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__defaultIndex;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCs6UInt32VSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__hidden;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v16);
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)(v17);
  *&v2[OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed] = a1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CAFDriveModeObservable();
  v18 = a1;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  [v18 registerObserver_];

  return v19;
}

uint64_t CAFDriveModeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDriveModeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDriveModeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDriveModeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDriveModeObservable@<X0>(void *a1@<X8>)
{
  result = CAFDriveModeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDriveModeObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFDriveModeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFDriveModeObservable.modeItemsService(_:didUpdateIdentifiers:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__identifiers);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDriveModeObservable.modeItemsService(_:didUpdateCurrentIndex:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__currentIndex);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDriveModeObservable.modeItemsService(_:didUpdateDefaultIndex:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__defaultIndex);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDriveModeObservable.driveModeService(_:didUpdateHidden:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__hidden);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDriveModeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDriveModeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFDriveModeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFModeItems.identifiers : CAFDriveMode(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifiers];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

unint64_t key path getter for CAFDriveMode.defaultIndexBridged : CAFDriveMode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = CAFDriveMode.defaultIndexBridged.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFDriveMode()
{
  result = lazy cache variable for type metadata for CAFDriveMode;
  if (!lazy cache variable for type metadata for CAFDriveMode)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDriveMode);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDriveModeObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDriveModeObservable and conformance CAFDriveModeObservable(&lazy protocol witness table cache variable for type CAFDriveModeObservable and conformance CAFDriveModeObservable, a2, type metadata accessor for CAFDriveModeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDriveModeObservable and conformance CAFDriveModeObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFDriveModeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFGearRecommendationObservable.gearShiftRecommendation.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable__gearShiftRecommendation) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFGearRecommendationObservable.$gearShiftRecommendation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable__gearShiftRecommendation);

  specialized SafePublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t CAFGearRecommendationObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_observed) registeredForGearShiftRecommendation])
  {
    CAFGearRecommendationObservable.gearShiftRecommendation.getter();
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(69);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230E5C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230E5F0);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFGearRecommendationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFGearRecommendationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFGearRecommendationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable__gearShiftRecommendation;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFGearRecommendationObservableCs4Int8VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFGearRecommendationObservableCs4Int8VGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFGearRecommendationObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFGearRecommendationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFGearRecommendationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFGearRecommendationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFGearRecommendationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFGearRecommendationObservable@<X0>(void *a1@<X8>)
{
  result = CAFGearRecommendationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFGearRecommendationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFGearRecommendationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFGearRecommendationObservable.gearRecommendationService(_:didUpdateGearShiftRecommendation:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable__gearShiftRecommendation);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFGearRecommendationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFGearRecommendationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFGearRecommendationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFGearRecommendation()
{
  result = lazy cache variable for type metadata for CAFGearRecommendation;
  if (!lazy cache variable for type metadata for CAFGearRecommendation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFGearRecommendation);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFGearRecommendationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFGearRecommendationObservable and conformance CAFGearRecommendationObservable(&lazy protocol witness table cache variable for type CAFGearRecommendationObservable and conformance CAFGearRecommendationObservable, a2, type metadata accessor for CAFGearRecommendationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFGearRecommendationObservable and conformance CAFGearRecommendationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFGearRecommendationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFTransmissionStatusObservable.transmissionMode.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable__transmissionMode) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_231();

  return v5;
}

uint64_t CAFTransmissionStatusObservable.gearPosition.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable__gearPosition) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_231();

  return v5;
}

uint64_t CAFTransmissionStatusObservable.$transmissionMode.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFTransmissionStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForTransmissionMode])
  {
    CAFTransmissionStatusObservable.transmissionMode.getter();
    v6 = NSStringFromTransmissionMode();
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

  if ([v3 registeredForGearPosition])
  {
    CAFTransmissionStatusObservable.gearPosition.getter();
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v9;
  }

  _StringGuts.grow(_:)(80);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230E6A0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230E6D0);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230E6F0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTransmissionStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTransmissionStatusObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTransmissionStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable__transmissionMode;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTransmissionStatusObservableCSo0F4ModeVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTransmissionStatusObservableCSo0F4ModeVGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable__gearPosition;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTransmissionStatusObservableCs5UInt8VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTransmissionStatusObservableCs5UInt8VGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFTransmissionStatusObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFTransmissionStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTransmissionStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTransmissionStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTransmissionStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTransmissionStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFTransmissionStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTransmissionStatusObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTransmissionStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTransmissionStatusObservable.transmissionStatusService(_:didUpdateTransmissionMode:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t CAFTransmissionStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTransmissionStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTransmissionStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTransmissionStatus()
{
  result = lazy cache variable for type metadata for CAFTransmissionStatus;
  if (!lazy cache variable for type metadata for CAFTransmissionStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTransmissionStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTransmissionStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTransmissionStatusObservable and conformance CAFTransmissionStatusObservable(&lazy protocol witness table cache variable for type CAFTransmissionStatusObservable and conformance CAFTransmissionStatusObservable, a2, type metadata accessor for CAFTransmissionStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTransmissionStatusObservable and conformance CAFTransmissionStatusObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFTransmissionStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFEnginePowerLevel.powerStateBridged.getter()
{
  v1 = [v0 hasPowerState];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 powerState];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFEnginePowerLevelObservable.powerLevel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFEnginePowerLevelObservable.powerState.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerState) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFEnginePowerLevelObservable.$powerLevel.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFEnginePowerLevelObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed);
  v12 = [v11 registeredForPowerLevel];
  v27 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v12)
  {
    CAFEnginePowerLevelObservable.powerLevel.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitPercent> and conformance Measurement<A>();
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v14;
    (*(v7 + 8))(v10, v6);
  }

  v26 = v13;
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if ([v11 registeredForPowerLevelMarkerAvailableMin])
  {
    CAFEnginePowerLevelObservable.powerLevelMarkerAvailableMin.getter();
    v15 = String.init<A>(describing:)();
    v16 = v17;
  }

  v18 = [v11 registeredForPowerLevelMarkerAvailableMax];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    CAFEnginePowerLevelObservable.powerLevelMarkerAvailableMax.getter();
    v19 = String.init<A>(describing:)();
    v20 = v21;
  }

  v22 = v19;
  if ([v11 registeredForPowerState])
  {
    LOWORD(v29) = CAFEnginePowerLevelObservable.powerState.getter() & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CAFPowerStateVSgMd, &_sSo13CAFPowerStateVSgMR);
    v3 = String.init<A>(describing:)();
    v2 = v23;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(138);
  OUTLINED_FUNCTION_1_33();
  v28 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x7265776F70207B20, 0xEF203A6C6576654CLL);
  MEMORY[0x245D0A530](v27, v26);

  OUTLINED_FUNCTION_1_33();
  MEMORY[0x245D0A530](v15, v16);

  OUTLINED_FUNCTION_1_33();
  MEMORY[0x245D0A530](v22, v20);

  MEMORY[0x245D0A530](0x537265776F70202CLL, 0xEE00203A65746174);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v29;
}

uint64_t CAFEnginePowerLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEnginePowerLevelObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEnginePowerLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerLevel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerLevelMarkerAvailableMin;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerLevelMarkerAvailableMax;
  swift_getKeyPath();
  v18 = *(v13 + 48);
  v19 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerState;
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableCSo13CAFPowerStateVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableCSo13CAFPowerStateVSgGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v21] = v25;
  *&v2[OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFEnginePowerLevelObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFEnginePowerLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEnginePowerLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEnginePowerLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEnginePowerLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEnginePowerLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFEnginePowerLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEnginePowerLevelObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFEnginePowerLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFEnginePowerLevelObservable.enginePowerLevelService(_:didUpdatePowerLevel:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t @objc CAFEnginePowerLevelObservable.enginePowerLevelService(_:didUpdatePowerLevelMarkerAvailableMin:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v14 = v12;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = a3;
  v17 = a1;
  a5();

  return outlined destroy of Measurement<CAFUnitPercent>?(v12);
}

uint64_t CAFEnginePowerLevelObservable.enginePowerLevelService(_:didUpdatePowerState:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerState);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFEnginePowerLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEnginePowerLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFEnginePowerLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFEnginePowerLevel.powerLevel : CAFEnginePowerLevel(id *a1)
{
  v1 = [*a1 powerLevel];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFEnginePowerLevel.powerLevelMarkerAvailableMin : CAFEnginePowerLevel@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

uint64_t key path getter for CAFEnginePowerLevel.powerStateBridged : CAFEnginePowerLevel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFEnginePowerLevel.powerStateBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFEnginePowerLevel and conformance CAFEnginePowerLevel()
{
  result = lazy protocol witness table cache variable for type CAFEnginePowerLevel and conformance CAFEnginePowerLevel;
  if (!lazy protocol witness table cache variable for type CAFEnginePowerLevel and conformance CAFEnginePowerLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEnginePowerLevel, 0x277CF8468);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEnginePowerLevel and conformance CAFEnginePowerLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEnginePowerLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEnginePowerLevelObservable and conformance CAFEnginePowerLevelObservable(&lazy protocol witness table cache variable for type CAFEnginePowerLevelObservable and conformance CAFEnginePowerLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEnginePowerLevelObservable and conformance CAFEnginePowerLevelObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEnginePowerLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<CAFUnitPercent>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CAFEnginePowerLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

unint64_t lazy protocol witness table accessor for type Measurement<CAFUnitPercent> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<CAFUnitPercent> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<CAFUnitPercent> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<CAFUnitPercent> and conformance Measurement<A>);
  }

  return result;
}

void OUTLINED_FUNCTION_1_33()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFEnginePowerObservable.power.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFEnginePowerObservable.powerState.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerState) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFEnginePowerObservable.$power.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFEnginePowerObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v4 = *(*(v36 - 8) + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  OUTLINED_FUNCTION_30(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed);
  v15 = 0xEE003E6465726574;
  if ([v14 registeredForPower])
  {
    v15 = v1;
    CAFEnginePowerObservable.power.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>();
    OUTLINED_FUNCTION_8_3();
    v16 = OUTLINED_FUNCTION_5_13();
    v17(v16);
  }

  v39 = 0x73696765726E753CLL;
  v40 = v15;
  v18 = 0xEE003E6465726574;
  if ([v14 registeredForPowerMin])
  {
    v18 = v1;
    CAFEnginePowerObservable.powerMin.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>();
    OUTLINED_FUNCTION_8_3();
    v19 = OUTLINED_FUNCTION_5_13();
    v20(v19);
  }

  v37 = 0x73696765726E753CLL;
  v38 = v18;
  v21 = 0x73696765726E753CLL;
  v22 = 0xEE003E6465726574;
  if ([v14 registeredForPowerMax])
  {
    CAFEnginePowerObservable.powerMax.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>();
    v21 = OUTLINED_FUNCTION_8_3();
    v22 = v23;
    (*(v8 + 8))(v13, v6);
  }

  v35 = v21;
  v24 = [v14 registeredForPowerMarkerAvailableMin];
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if (v24)
  {
    CAFEnginePowerObservable.powerMarkerAvailableMin.getter();
    v25 = String.init<A>(describing:)();
    v26 = v27;
  }

  v28 = [v14 registeredForPowerMarkerAvailableMax];
  v29 = 0x73696765726E753CLL;
  v30 = 0xEE003E6465726574;
  if (v28)
  {
    CAFEnginePowerObservable.powerMarkerAvailableMax.getter();
    v29 = String.init<A>(describing:)();
    v30 = v31;
  }

  v36 = v29;
  if ([v14 registeredForPowerState])
  {
    LOWORD(v42) = CAFEnginePowerObservable.powerState.getter() & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CAFPowerStateVSgMd, &_sSo13CAFPowerStateVSgMR);
    v3 = String.init<A>(describing:)();
    v2 = v32;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(146);
  OUTLINED_FUNCTION_4_18();
  v41 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x7265776F70207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v39, v40);

  MEMORY[0x245D0A530](0x4D7265776F70202CLL, 0xEC000000203A6E69);
  MEMORY[0x245D0A530](v37, v38);

  MEMORY[0x245D0A530](0x4D7265776F70202CLL, 0xEC000000203A7861);
  MEMORY[0x245D0A530](v35, v22);

  OUTLINED_FUNCTION_4_18();
  MEMORY[0x245D0A530](v34, v26);

  OUTLINED_FUNCTION_4_18();
  MEMORY[0x245D0A530](v36, v30);

  MEMORY[0x245D0A530](0x537265776F70202CLL, 0xEE00203A65746174);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v42;
}

uint64_t CAFEnginePowerObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEnginePowerObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEnginePowerObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__power;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerMin;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v13;
  v14 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerMax;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v14] = v15;
  v16 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerMarkerAvailableMin;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v16] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerMarkerAvailableMax;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v21] = v22;
  v23 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerState;
  swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableCSo13CAFPowerStateVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableCSo13CAFPowerStateVSgGMR);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v23] = v27;
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed] = a1;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAFEnginePowerObservable();
  v28 = a1;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  [v28 registerObserver_];

  return v29;
}

uint64_t CAFEnginePowerObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEnginePowerObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEnginePowerObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEnginePowerObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEnginePowerObservable@<X0>(void *a1@<X8>)
{
  result = CAFEnginePowerObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEnginePowerObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFEnginePowerObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFEnginePowerObservable.enginePowerService(_:didUpdatePower:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  OUTLINED_FUNCTION_30(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a1;
  a5();

  return (*(v10 + 8))(v15, v8);
}

uint64_t CAFEnginePowerObservable.enginePowerService(_:didUpdatePower:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t @objc CAFEnginePowerObservable.enginePowerService(_:didUpdatePowerMarkerAvailableMin:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    v14 = v12;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = a3;
  v17 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitPower>?(v12);
}

uint64_t CAFEnginePowerObservable.enginePowerService(_:didUpdatePowerState:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerState);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFEnginePowerObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEnginePowerObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFEnginePowerObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFEnginePower.power : CAFEnginePower(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFEnginePower.powerMarkerAvailableMin : CAFEnginePower@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFEnginePower and conformance CAFEnginePower()
{
  result = lazy protocol witness table cache variable for type CAFEnginePower and conformance CAFEnginePower;
  if (!lazy protocol witness table cache variable for type CAFEnginePower and conformance CAFEnginePower)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEnginePower, 0x277CF8460);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEnginePower and conformance CAFEnginePower);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEnginePowerObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEnginePowerObservable and conformance CAFEnginePowerObservable(&lazy protocol witness table cache variable for type CAFEnginePowerObservable and conformance CAFEnginePowerObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEnginePowerObservable and conformance CAFEnginePowerObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEnginePowerObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitPower>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CAFEnginePowerObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_4_18()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t CAFExteriorConditions.icyConditionsBridged.getter()
{
  v1 = [v0 hasIcyConditions];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 icyConditions];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFExteriorConditionsObservable.icyConditions.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable__icyConditions) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFExteriorConditionsObservable.temperature.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFExteriorConditionsObservable.$temperature.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFExteriorConditionsObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMR);
  v4 = *(*(v19[0] - 8) + 64);
  MEMORY[0x28223BE20](v19[0]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_observed);
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v10 registeredForTemperature])
  {
    CAFExteriorConditionsObservable.temperature.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v13;
    (*(v6 + 8))(v9, v5);
  }

  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if ([v10 registeredForIcyConditions])
  {
    LOWORD(v20) = CAFExteriorConditionsObservable.icyConditions.getter() & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CAFIcyConditionsVSgMd, &_sSo16CAFIcyConditionsVSgMR);
    v14 = String.init<A>(describing:)();
    v15 = v16;
  }

  if ([v10 registeredForAQI])
  {
    CAFExteriorConditionsObservable.aqi.getter();
    v3 = String.init<A>(describing:)();
    v2 = v17;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(85);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230EA20);
  v19[1] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230EA50);
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230EA70);
  MEMORY[0x245D0A530](v14, v15);

  MEMORY[0x245D0A530](0x203A697161202CLL, 0xE700000000000000);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v20;
}

uint64_t CAFExteriorConditionsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFExteriorConditionsObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFExteriorConditionsObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable__temperature;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFExteriorConditionsObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFExteriorConditionsObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable__icyConditions;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFExteriorConditionsObservableCSo06CAFIcyG0VSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFExteriorConditionsObservableCSo06CAFIcyG0VSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable__aqi;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFExteriorConditionsObservableC10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFExteriorConditionsObservableC10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v21;
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_observed] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for CAFExteriorConditionsObservable();
  v22 = a1;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  [v22 registerObserver_];

  return v23;
}

uint64_t CAFExteriorConditionsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFExteriorConditionsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFExteriorConditionsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFExteriorConditionsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFExteriorConditionsObservable@<X0>(void *a1@<X8>)
{
  result = CAFExteriorConditionsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFExteriorConditionsObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFExteriorConditionsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateIcyConditions:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable__icyConditions);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateTemperature:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t CAFExteriorConditionsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFExteriorConditionsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFExteriorConditionsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFExteriorConditions.temperature : CAFExteriorConditions(id *a1)
{
  v1 = [*a1 temperature];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFExteriorConditions.icyConditionsBridged : CAFExteriorConditions@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFExteriorConditions.icyConditionsBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFExteriorConditions.aqi : CAFExteriorConditions@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 aqi];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitAirQuality, 0x277CF8760);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGMd, _s10Foundation11MeasurementVySo17CAFUnitAirQualityCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

unint64_t lazy protocol witness table accessor for type CAFExteriorConditions and conformance CAFExteriorConditions()
{
  result = lazy protocol witness table cache variable for type CAFExteriorConditions and conformance CAFExteriorConditions;
  if (!lazy protocol witness table cache variable for type CAFExteriorConditions and conformance CAFExteriorConditions)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFExteriorConditions, 0x277CF8498);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFExteriorConditions and conformance CAFExteriorConditions);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFExteriorConditionsObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFExteriorConditionsObservable and conformance CAFExteriorConditionsObservable(&lazy protocol witness table cache variable for type CAFExteriorConditionsObservable and conformance CAFExteriorConditionsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFExteriorConditionsObservable and conformance CAFExteriorConditionsObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFExteriorConditionsObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<CAFUnitAirQuality>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CAFExteriorConditionsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFInteriorConditionsObservable.aqi.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable__aqi) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFInteriorConditionsObservable.$aqi.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable__aqi);

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t CAFInteriorConditionsObservable._description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_observed) registeredForAQI])
  {
    CAFInteriorConditionsObservable.aqi.getter();
    v3 = String.init<A>(describing:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xEE003E6465726574;
    v3 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(49);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230EB00);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A697161207B20, 0xE800000000000000);
  MEMORY[0x245D0A530](v3, v5);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFInteriorConditionsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFInteriorConditionsObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFInteriorConditionsObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable__aqi;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFInteriorConditionsObservableC10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFInteriorConditionsObservableC10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFInteriorConditionsObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFInteriorConditionsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFInteriorConditionsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFInteriorConditionsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFInteriorConditionsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFInteriorConditionsObservable@<X0>(void *a1@<X8>)
{
  result = CAFInteriorConditionsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFInteriorConditionsObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFInteriorConditionsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFInteriorConditionsObservable.interiorConditionsService(_:didUpdateAqi:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable__aqi);

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t CAFInteriorConditionsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFInteriorConditionsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFInteriorConditionsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFInteriorConditions and conformance CAFInteriorConditions()
{
  result = lazy protocol witness table cache variable for type CAFInteriorConditions and conformance CAFInteriorConditions;
  if (!lazy protocol witness table cache variable for type CAFInteriorConditions and conformance CAFInteriorConditions)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFInteriorConditions, 0x277CF84F0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFInteriorConditions and conformance CAFInteriorConditions);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFInteriorConditionsObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFInteriorConditionsObservable and conformance CAFInteriorConditionsObservable(&lazy protocol witness table cache variable for type CAFInteriorConditionsObservable and conformance CAFInteriorConditionsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFInteriorConditionsObservable and conformance CAFInteriorConditionsObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFInteriorConditionsObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFInteriorConditionsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFFuelConsumptionObservable.fuelEfficiency.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFFuelConsumptionObservable.$fuelEfficiency.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFFuelConsumptionObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_observed);
  v12 = 0xEE003E6465726574;
  if ([v11 registeredForFuelEfficiency])
  {
    CAFFuelConsumptionObservable.fuelEfficiency.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v13;
    (*(v7 + 8))(v10, v6);
  }

  v14 = 0x73696765726E753CLL;
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if ([v11 registeredForAverageFuelEfficiency])
  {
    CAFFuelConsumptionObservable.averageFuelEfficiency.getter();
    v15 = String.init<A>(describing:)();
    v16 = v17;
  }

  if ([v11 registeredForFuelEfficiencyMax])
  {
    CAFFuelConsumptionObservable.fuelEfficiencyMax.getter();
    v14 = String.init<A>(describing:)();
    v2 = v18;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(107);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x800000024230EBF0);
  v20[1] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000013, 0x800000024230EC10);
  MEMORY[0x245D0A530](v20[0], v12);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230EC30);
  MEMORY[0x245D0A530](v15, v16);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230EC50);
  MEMORY[0x245D0A530](v14, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v21;
}

uint64_t CAFFuelConsumptionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFFuelConsumptionObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFFuelConsumptionObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable__fuelEfficiency;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFFuelConsumptionObservableC10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFFuelConsumptionObservableC10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable__averageFuelEfficiency;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFFuelConsumptionObservableC10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFFuelConsumptionObservableC10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable__fuelEfficiencyMax;
  swift_getKeyPath();
  v18 = *(v13 + 48);
  v19 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v20;
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFFuelConsumptionObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFFuelConsumptionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFuelConsumptionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFuelConsumptionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFuelConsumptionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFuelConsumptionObservable@<X0>(void *a1@<X8>)
{
  result = CAFFuelConsumptionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFuelConsumptionObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFFuelConsumptionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFFuelConsumptionObservable.fuelConsumptionService(_:didUpdateFuelEfficiency:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t @objc CAFFuelConsumptionObservable.fuelConsumptionService(_:didUpdateAverageFuelEfficiency:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitFuelEfficiency, 0x277CCAE08);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
    v14 = v12;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = a3;
  v17 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitFuelEfficiency>?(v12);
}

uint64_t CAFFuelConsumptionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFuelConsumptionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFFuelConsumptionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFFuelConsumption.fuelEfficiency : CAFFuelConsumption(id *a1)
{
  v1 = [*a1 fuelEfficiency];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitFuelEfficiency, 0x277CCAE08);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFFuelConsumption.averageFuelEfficiency : CAFFuelConsumption@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitFuelEfficiency, 0x277CCAE08);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFFuelConsumption and conformance CAFFuelConsumption()
{
  result = lazy protocol witness table cache variable for type CAFFuelConsumption and conformance CAFFuelConsumption;
  if (!lazy protocol witness table cache variable for type CAFFuelConsumption and conformance CAFFuelConsumption)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFFuelConsumption, 0x277CF84B8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFFuelConsumption and conformance CAFFuelConsumption);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFuelConsumptionObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFFuelConsumptionObservable and conformance CAFFuelConsumptionObservable(&lazy protocol witness table cache variable for type CAFFuelConsumptionObservable and conformance CAFFuelConsumptionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFuelConsumptionObservable and conformance CAFFuelConsumptionObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFuelConsumptionObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitFuelEfficiency>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CAFFuelConsumptionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>);
  }

  return result;
}

uint64_t CAFFuelLevelObservable.fuelLevel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFFuelLevelObservable.fuelLevelState.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFFuelLevelObservable.$fuelLevel.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFFuelLevelObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_observed);
  v12 = [v11 registeredForFuelLevel];
  v35 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v12)
  {
    CAFFuelLevelObservable.fuelLevel.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitPercent> and conformance Measurement<A>();
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v14;
    (*(v7 + 8))(v10, v6);
  }

  v34 = v13;
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if ([v11 registeredForFuelLevelState])
  {
    CAFFuelLevelObservable.fuelLevelState.getter();
    v17 = NSStringFromFuelLevelState();
    if (v17)
    {
      v18 = v17;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v19;
    }

    else
    {
      v15 = 0x6E776F6E6B6E7528;
      v16 = 0xE900000000000029;
    }
  }

  v20 = [v11 registeredForFuelLevelMarkerLow];
  v21 = 0x73696765726E753CLL;
  v22 = 0xEE003E6465726574;
  if (v20)
  {
    CAFFuelLevelObservable.fuelLevelMarkerLow.getter();
    v21 = String.init<A>(describing:)();
    v22 = v23;
  }

  v24 = 0x73696765726E753CLL;
  v25 = 0xEE003E6465726574;
  if ([v11 registeredForFillLevelLabel])
  {
    CAFFuelLevelObservable.fillLevelLabel.getter();
    v26 = NSStringFromFillLevelLabel();
    if (v26)
    {
      v27 = v26;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v28;
    }

    else
    {
      v24 = 0x6E776F6E6B6E7528;
      v25 = 0xE900000000000029;
    }
  }

  if ([v11 registeredForPortSideIndicator])
  {
    CAFFuelLevelObservable.portSideIndicator.getter();
    v29 = NSStringFromPortSideIndicator();
    if (v29)
    {
      v30 = v29;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v31;
    }

    else
    {
      v3 = 0x6E776F6E6B6E7528;
      v2 = 0xE900000000000029;
    }
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(133);
  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230ED30);
  v36 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x4C6C657566207B20, 0xEE00203A6C657665);
  MEMORY[0x245D0A530](v35, v34);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v33, v16);

  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230ED70);
  MEMORY[0x245D0A530](v21, v22);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v24, v25);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230D860);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v37;
}

uint64_t CAFFuelLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFFuelLevelObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFFuelLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable__fuelLevel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable__fuelLevelState;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableCSo0fG5StateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableCSo0fG5StateVGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable__fuelLevelMarkerLow;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMR);
  OUTLINED_FUNCTION_225(v14);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v13] = v15;
  v16 = OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable__fillLevelLabel;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableCSo07CAFFillG5LabelVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableCSo07CAFFillG5LabelVGMR);
  OUTLINED_FUNCTION_225(v17);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v16] = v18;
  v19 = OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable__portSideIndicator;
  swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableCSo20CAFPortSideIndicatorVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFFuelLevelObservableCSo20CAFPortSideIndicatorVGMR);
  OUTLINED_FUNCTION_225(v20);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v19] = v21;
  *&v2[OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_observed] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for CAFFuelLevelObservable();
  v22 = a1;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  [v22 registerObserver_];

  return v23;
}

uint64_t CAFFuelLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFuelLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFuelLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFuelLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFuelLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFFuelLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFuelLevelObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFFuelLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevel:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevelState:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t CAFFuelLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFuelLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFFuelLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFFuelLevel.fuelLevel : CAFFuelLevel(id *a1)
{
  v1 = [*a1 fuelLevel];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFFuelLevel.fuelLevelMarkerLow : CAFFuelLevel@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 fuelLevelMarkerLow];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

unint64_t lazy protocol witness table accessor for type CAFFuelLevel and conformance CAFFuelLevel()
{
  result = lazy protocol witness table cache variable for type CAFFuelLevel and conformance CAFFuelLevel;
  if (!lazy protocol witness table cache variable for type CAFFuelLevel and conformance CAFFuelLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFFuelLevel, 0x277CF84C0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFFuelLevel and conformance CAFFuelLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFuelLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFFuelLevelObservable and conformance CAFFuelLevelObservable(&lazy protocol witness table cache variable for type CAFFuelLevelObservable and conformance CAFFuelLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFuelLevelObservable and conformance CAFFuelLevelObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFuelLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFFuelLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_2_26()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFFuelRemainingRangeObservable.distanceKM.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFFuelRemainingRangeObservable.hidden.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable__hidden) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFFuelRemainingRangeObservable.$distanceKM.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFFuelRemainingRangeObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed) registeredForHidden])
  {
    CAFFuelRemainingRangeObservable.hidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v1 = String.init<A>(describing:)();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(52);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230EE40);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6564646968207B20, 0xEB00000000203A6ELL);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFFuelRemainingRangeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFFuelRemainingRangeObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFFuelRemainingRangeObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable__distanceKM;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFFuelRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFFuelRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable__distanceMiles;
  swift_getKeyPath();
  v13 = *(v8 + 48);
  v14 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v15;
  v16 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable__hidden;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFFuelRemainingRangeObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFFuelRemainingRangeObservableCSbSgGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v20);
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFFuelRemainingRangeObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFFuelRemainingRangeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFuelRemainingRangeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFuelRemainingRangeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFuelRemainingRangeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFuelRemainingRangeObservable@<X0>(void *a1@<X8>)
{
  result = CAFFuelRemainingRangeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFuelRemainingRangeObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFFuelRemainingRangeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFFuelRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFFuelRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  a5();

  return (*(v9 + 8))(v12, v8);
}

uint64_t CAFFuelRemainingRangeObservable.fuelRemainingRangeService(_:didUpdateHidden:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable__hidden);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFFuelRemainingRangeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFuelRemainingRangeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFFuelRemainingRangeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFDistanceDisplay.distanceKM : CAFFuelRemainingRange(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFFuelRemainingRange and conformance CAFFuelRemainingRange()
{
  result = lazy protocol witness table cache variable for type CAFFuelRemainingRange and conformance CAFFuelRemainingRange;
  if (!lazy protocol witness table cache variable for type CAFFuelRemainingRange and conformance CAFFuelRemainingRange)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFFuelRemainingRange, 0x277CF84C8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFFuelRemainingRange and conformance CAFFuelRemainingRange);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFuelRemainingRangeObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFFuelRemainingRangeObservable and conformance CAFFuelRemainingRangeObservable(&lazy protocol witness table cache variable for type CAFFuelRemainingRangeObservable and conformance CAFFuelRemainingRangeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFuelRemainingRangeObservable and conformance CAFFuelRemainingRangeObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFuelRemainingRangeObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFFuelRemainingRangeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFBatteryConditioningObservable.batteryConditioningState.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable__batteryConditioningState) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFBatteryConditioningObservable.$batteryConditioningState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable__batteryConditioningState);

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t CAFBatteryConditioningObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_observed) registeredForBatteryConditioningState])
  {
    CAFBatteryConditioningObservable.batteryConditioningState.getter();
    v1 = NSStringFromBatteryConditioningState();
    if (v1)
    {
      v2 = v1;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v5 = 0xE900000000000029;
      v3 = 0x6E776F6E6B6E7528;
    }
  }

  else
  {
    v5 = 0xEE003E6465726574;
    v3 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(71);
  MEMORY[0x245D0A530](0xD000000000000023, 0x800000024230EF00);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x800000024230EF30);
  MEMORY[0x245D0A530](v3, v5);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFBatteryConditioningObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBatteryConditioningObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBatteryConditioningObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable__batteryConditioningState;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFBatteryConditioningObservableCSo0fG5StateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFBatteryConditioningObservableCSo0fG5StateVGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFBatteryConditioningObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFBatteryConditioningObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBatteryConditioningObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBatteryConditioningObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBatteryConditioningObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBatteryConditioningObservable@<X0>(void *a1@<X8>)
{
  result = CAFBatteryConditioningObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBatteryConditioningObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFBatteryConditioningObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFBatteryConditioningObservable.batteryConditioningService(_:didUpdateBatteryConditioningState:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable__batteryConditioningState);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFBatteryConditioningObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBatteryConditioningObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFBatteryConditioningObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFBatteryConditioning()
{
  result = lazy cache variable for type metadata for CAFBatteryConditioning;
  if (!lazy cache variable for type metadata for CAFBatteryConditioning)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFBatteryConditioning);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryConditioningObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFBatteryConditioningObservable and conformance CAFBatteryConditioningObservable(&lazy protocol witness table cache variable for type CAFBatteryConditioningObservable and conformance CAFBatteryConditioningObservable, a2, type metadata accessor for CAFBatteryConditioningObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryConditioningObservable and conformance CAFBatteryConditioningObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFBatteryConditioningObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFBatteryLevelObservable.batteryLevelState.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevelState) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFBatteryLevelObservable.batteryLevel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFBatteryLevelObservable.$batteryLevel.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFBatteryLevelObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed);
  v11 = [v10 registeredForBatteryLevel];
  v26 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v11)
  {
    CAFBatteryLevelObservable.batteryLevel.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitPercent> and conformance Measurement<A>();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v13;
    (*(v6 + 8))(v9, v5);
  }

  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if ([v10 registeredForBatteryLevelState])
  {
    CAFBatteryLevelObservable.batteryLevelState.getter();
    v16 = NSStringFromBatteryLevelState();
    if (v16)
    {
      v17 = v16;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v18;
    }

    else
    {
      v15 = 0xE900000000000029;
      v14 = 0x6E776F6E6B6E7528;
    }
  }

  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if ([v10 registeredForBatteryLevelMarkerLow])
  {
    CAFBatteryLevelObservable.batteryLevelMarkerLow.getter();
    v19 = String.init<A>(describing:)();
    v20 = v21;
  }

  if ([v10 registeredForBatteryLevelMarkerCriticalLow])
  {
    CAFBatteryLevelObservable.batteryLevelMarkerCriticalLow.getter();
    v3 = String.init<A>(describing:)();
    v2 = v22;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(137);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230F030);
  v27 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230F050);
  MEMORY[0x245D0A530](v26, v12);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230F070);
  MEMORY[0x245D0A530](v24, v15);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230F090);
  MEMORY[0x245D0A530](v19, v20);

  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230F0B0);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v28;
}

uint64_t CAFBatteryLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBatteryLevelObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBatteryLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevelState;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableCSo0fG5StateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableCSo0fG5StateVGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevelMarkerLow;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v21;
  v22 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevelMarkerCriticalLow;
  swift_getKeyPath();
  v23 = *(v18 + 48);
  v24 = *(v18 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v22] = v25;
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFBatteryLevelObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFBatteryLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBatteryLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBatteryLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBatteryLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBatteryLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFBatteryLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBatteryLevelObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFBatteryLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFBatteryLevelObservable.batteryLevelService(_:didUpdateBatteryLevelState:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevelState);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFBatteryLevelObservable.batteryLevelService(_:didUpdateBatteryLevel:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t @objc CAFBatteryLevelObservable.batteryLevelService(_:didUpdateBatteryLevelMarkerLow:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v14 = v12;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = a3;
  v17 = a1;
  a5();

  return outlined destroy of Measurement<CAFUnitPercent>?(v12);
}

uint64_t CAFBatteryLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBatteryLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFBatteryLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFBatteryLevel.batteryLevel : CAFBatteryLevel(id *a1)
{
  v1 = [*a1 batteryLevel];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFBatteryLevel and conformance CAFBatteryLevel()
{
  result = lazy protocol witness table cache variable for type CAFBatteryLevel and conformance CAFBatteryLevel;
  if (!lazy protocol witness table cache variable for type CAFBatteryLevel and conformance CAFBatteryLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFBatteryLevel, 0x277CF8348);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFBatteryLevel and conformance CAFBatteryLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFBatteryLevelObservable and conformance CAFBatteryLevelObservable(&lazy protocol witness table cache variable for type CAFBatteryLevelObservable and conformance CAFBatteryLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryLevelObservable and conformance CAFBatteryLevelObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFBatteryLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFBatteryRemainingRangeObservable.distanceKM.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFBatteryRemainingRangeObservable.hidden.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable__hidden) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFBatteryRemainingRangeObservable.$distanceKM.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFBatteryRemainingRangeObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed) registeredForHidden])
  {
    CAFBatteryRemainingRangeObservable.hidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v1 = String.init<A>(describing:)();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(55);
  MEMORY[0x245D0A530](0xD000000000000025, 0x800000024230F150);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6564646968207B20, 0xEB00000000203A6ELL);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFBatteryRemainingRangeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBatteryRemainingRangeObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBatteryRemainingRangeObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable__distanceKM;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFBatteryRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFBatteryRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable__distanceMiles;
  swift_getKeyPath();
  v13 = *(v8 + 48);
  v14 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v15;
  v16 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable__hidden;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFBatteryRemainingRangeObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFBatteryRemainingRangeObservableCSbSgGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v20);
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFBatteryRemainingRangeObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFBatteryRemainingRangeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBatteryRemainingRangeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBatteryRemainingRangeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBatteryRemainingRangeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBatteryRemainingRangeObservable@<X0>(void *a1@<X8>)
{
  result = CAFBatteryRemainingRangeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBatteryRemainingRangeObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFBatteryRemainingRangeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFBatteryRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFBatteryRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  a5();

  return (*(v9 + 8))(v12, v8);
}

uint64_t CAFBatteryRemainingRangeObservable.batteryRemainingRangeService(_:didUpdateHidden:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable__hidden);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFBatteryRemainingRangeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBatteryRemainingRangeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFBatteryRemainingRangeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFBatteryRemainingRange and conformance CAFBatteryRemainingRange()
{
  result = lazy protocol witness table cache variable for type CAFBatteryRemainingRange and conformance CAFBatteryRemainingRange;
  if (!lazy protocol witness table cache variable for type CAFBatteryRemainingRange and conformance CAFBatteryRemainingRange)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFBatteryRemainingRange, 0x277CF8350);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFBatteryRemainingRange and conformance CAFBatteryRemainingRange);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryRemainingRangeObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFBatteryRemainingRangeObservable and conformance CAFBatteryRemainingRangeObservable(&lazy protocol witness table cache variable for type CAFBatteryRemainingRangeObservable and conformance CAFBatteryRemainingRangeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryRemainingRangeObservable and conformance CAFBatteryRemainingRangeObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryRemainingRangeObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFBatteryRemainingRangeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFBatteryTemperatureObservable.temperatureState.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureState) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFBatteryTemperatureObservable.temperature.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFBatteryTemperatureObservable.$temperature.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFBatteryTemperatureObservable._description.getter()
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
  v13 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed);
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if ([v13 registeredForTemperature])
  {
    CAFBatteryTemperatureObservable.temperature.getter();
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
    CAFBatteryTemperatureObservable.temperatureState.getter();
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
    CAFBatteryTemperatureObservable.temperatureMin.getter();
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
    CAFBatteryTemperatureObservable.temperatureMax.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v32 = OUTLINED_FUNCTION_6_6();
    v33 = v34;
    v35 = *(v9 + 8);
    v36 = OUTLINED_FUNCTION_7_7();
    v37(v36);
  }

  if ([v13 registeredForTemperatureMarkerCold])
  {
    CAFBatteryTemperatureObservable.temperatureMarkerCold.getter();
    String.init<A>(describing:)();
  }

  if ([v13 registeredForTemperatureMarkerHot])
  {
    CAFBatteryTemperatureObservable.temperatureMarkerHot.getter();
    v3 = String.init<A>(describing:)();
    v2 = v38;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(172);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230F270);
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

uint64_t CAFBatteryTemperatureObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBatteryTemperatureObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBatteryTemperatureObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperature;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureState;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableCSo19CAFTemperatureStateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableCSo19CAFTemperatureStateVGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureMin;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v18;
  v19 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureMax;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v19] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureMarkerCold;
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v21] = v25;
  v26 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureMarkerHot;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v26] = v27;
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed] = a1;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAFBatteryTemperatureObservable();
  v28 = a1;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  [v28 registerObserver_];

  return v29;
}

uint64_t CAFBatteryTemperatureObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBatteryTemperatureObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBatteryTemperatureObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBatteryTemperatureObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBatteryTemperatureObservable@<X0>(void *a1@<X8>)
{
  result = CAFBatteryTemperatureObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBatteryTemperatureObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFBatteryTemperatureObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFBatteryTemperatureObservable.batteryTemperatureService(_:didUpdateTemperatureState:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureState);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFBatteryTemperatureObservable.batteryTemperatureService(_:didUpdateTemperature:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFBatteryTemperatureObservable.batteryTemperatureService(_:didUpdateTemperature:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t @objc CAFBatteryTemperatureObservable.batteryTemperatureService(_:didUpdateTemperatureMarkerCold:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFBatteryTemperatureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBatteryTemperatureObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFBatteryTemperatureObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFBatteryTemperature.temperature : CAFBatteryTemperature(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFBatteryTemperature.temperatureMarkerCold : CAFBatteryTemperature@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFBatteryTemperature and conformance CAFBatteryTemperature()
{
  result = lazy protocol witness table cache variable for type CAFBatteryTemperature and conformance CAFBatteryTemperature;
  if (!lazy protocol witness table cache variable for type CAFBatteryTemperature and conformance CAFBatteryTemperature)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFBatteryTemperature, 0x277CF8358);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFBatteryTemperature and conformance CAFBatteryTemperature);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryTemperatureObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFBatteryTemperatureObservable and conformance CAFBatteryTemperatureObservable(&lazy protocol witness table cache variable for type CAFBatteryTemperatureObservable and conformance CAFBatteryTemperatureObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryTemperatureObservable and conformance CAFBatteryTemperatureObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryTemperatureObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFBatteryTemperatureObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t CAFEnergyConsumptionObservable.energyEfficiency.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFEnergyConsumptionObservable.$energyEfficiency.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFEnergyConsumptionObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_observed);
  v12 = 0xEE003E6465726574;
  if ([v11 registeredForEnergyEfficiency])
  {
    CAFEnergyConsumptionObservable.energyEfficiency.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v13;
    (*(v7 + 8))(v10, v6);
  }

  v14 = 0x73696765726E753CLL;
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if ([v11 registeredForAverageEnergyEfficiency])
  {
    CAFEnergyConsumptionObservable.averageEnergyEfficiency.getter();
    v15 = String.init<A>(describing:)();
    v16 = v17;
  }

  if ([v11 registeredForEnergyEfficiencyMax])
  {
    CAFEnergyConsumptionObservable.energyEfficiencyMax.getter();
    v14 = String.init<A>(describing:)();
    v2 = v18;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(115);
  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230F410);
  v20[1] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230F440);
  MEMORY[0x245D0A530](v20[0], v12);

  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230F460);
  MEMORY[0x245D0A530](v15, v16);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230F480);
  MEMORY[0x245D0A530](v14, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v21;
}

uint64_t CAFEnergyConsumptionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEnergyConsumptionObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEnergyConsumptionObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable__energyEfficiency;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEnergyConsumptionObservableC10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEnergyConsumptionObservableC10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable__averageEnergyEfficiency;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEnergyConsumptionObservableC10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEnergyConsumptionObservableC10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable__energyEfficiencyMax;
  swift_getKeyPath();
  v18 = *(v13 + 48);
  v19 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v20;
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFEnergyConsumptionObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFEnergyConsumptionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEnergyConsumptionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEnergyConsumptionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEnergyConsumptionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEnergyConsumptionObservable@<X0>(void *a1@<X8>)
{
  result = CAFEnergyConsumptionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEnergyConsumptionObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFEnergyConsumptionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFEnergyConsumptionObservable.energyConsumptionService(_:didUpdateEnergyEfficiency:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t @objc CAFEnergyConsumptionObservable.energyConsumptionService(_:didUpdateAverageEnergyEfficiency:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitEnergyEfficiency, 0x277CF8768);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
    v14 = v12;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = a3;
  v17 = a1;
  a5();

  return outlined destroy of Measurement<CAFUnitEnergyEfficiency>?(v12);
}

uint64_t CAFEnergyConsumptionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEnergyConsumptionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFEnergyConsumptionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFEnergyConsumption.energyEfficiency : CAFEnergyConsumption(id *a1)
{
  v1 = [*a1 energyEfficiency];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitEnergyEfficiency, 0x277CF8768);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFEnergyConsumption.averageEnergyEfficiency : CAFEnergyConsumption@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitEnergyEfficiency, 0x277CF8768);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFEnergyConsumption and conformance CAFEnergyConsumption()
{
  result = lazy protocol witness table cache variable for type CAFEnergyConsumption and conformance CAFEnergyConsumption;
  if (!lazy protocol witness table cache variable for type CAFEnergyConsumption and conformance CAFEnergyConsumption)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEnergyConsumption, 0x277CF8450);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEnergyConsumption and conformance CAFEnergyConsumption);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEnergyConsumptionObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEnergyConsumptionObservable and conformance CAFEnergyConsumptionObservable(&lazy protocol witness table cache variable for type CAFEnergyConsumptionObservable and conformance CAFEnergyConsumptionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEnergyConsumptionObservable and conformance CAFEnergyConsumptionObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEnergyConsumptionObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<CAFUnitEnergyEfficiency>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CAFEnergyConsumptionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

unint64_t lazy protocol witness table accessor for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>);
  }

  return result;
}

uint64_t CAFProximityAlertsObservable.proximityAlertRearLeft.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6 | (v7 << 8);
}

uint64_t CAFProximityAlertsObservable.$proximityAlertRearLeft.getter(void *a1)
{
  v2 = *(v1 + *a1);

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFProximityAlertsObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForProximityAlertRearLeft])
  {
    CAFProximityAlertsObservable.proximityAlertRearLeft.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17CAFProximityAlertVSgMd, &_sSo17CAFProximityAlertVSgMR);
    v4 = String.init<A>(describing:)();
    v5 = v6;
  }

  if ([v3 registeredForProximityAlertRearRight])
  {
    CAFProximityAlertsObservable.proximityAlertRearRight.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17CAFProximityAlertVSgMd, &_sSo17CAFProximityAlertVSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(94);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x800000024230F540);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_0_18();
  MEMORY[0x245D0A530](v4, v5);

  OUTLINED_FUNCTION_0_18();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFProximityAlertsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFProximityAlertsObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFProximityAlertsObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable__proximityAlertRearLeft;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFProximityAlertsObservableCSo0F5AlertVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFProximityAlertsObservableCSo0F5AlertVSgGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable__proximityAlertRearRight;
  swift_getKeyPath();
  v13 = *(v8 + 48);
  v14 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v15;
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_observed] = a1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for CAFProximityAlertsObservable();
  v16 = a1;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  [v16 registerObserver_];

  return v17;
}

uint64_t CAFProximityAlertsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFProximityAlertsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFProximityAlertsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFProximityAlertsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFProximityAlertsObservable@<X0>(void *a1@<X8>)
{
  result = CAFProximityAlertsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFProximityAlertsObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFProximityAlertsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFProximityAlertsObservable.proximityAlertsService(_:didUpdateProximityAlertRearLeft:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFProximityAlertsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFProximityAlertsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFProximityAlertsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFProximityAlerts.proximityAlertRearLeftBridged : CAFProximityAlerts@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFProximityAlerts.proximityAlertRearLeftBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFProximityAlerts.proximityAlertRearRightBridged : CAFProximityAlerts@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFProximityAlerts.proximityAlertRearRightBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFProximityAlerts()
{
  result = lazy cache variable for type metadata for CAFProximityAlerts;
  if (!lazy cache variable for type metadata for CAFProximityAlerts)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFProximityAlerts);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFProximityAlertsObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFProximityAlertsObservable and conformance CAFProximityAlertsObservable(&lazy protocol witness table cache variable for type CAFProximityAlertsObservable and conformance CAFProximityAlertsObservable, a2, type metadata accessor for CAFProximityAlertsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFProximityAlertsObservable and conformance CAFProximityAlertsObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFProximityAlertsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_0_18()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFTurnSignalsObservable.turnSignalLeft.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFTurnSignalsObservable.$turnSignalLeft.getter(void *a1)
{
  v2 = *(v1 + *a1);

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFTurnSignalsObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForTurnSignalLeft])
  {
    CAFTurnSignalsObservable.turnSignalLeft.getter();
    v6 = NSStringFromTurnSignal();
    if (v6)
    {
      v7 = v6;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v8;
    }

    else
    {
      v4 = 0x6E776F6E6B6E7528;
      v5 = 0xE900000000000029;
    }
  }

  if ([v3 registeredForTurnSignalRight])
  {
    CAFTurnSignalsObservable.turnSignalRight.getter();
    v9 = NSStringFromTurnSignal();
    if (v9)
    {
      v10 = v9;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v11;
    }

    else
    {
      v2 = 0x6E776F6E6B6E7528;
      v1 = 0xE900000000000029;
    }
  }

  _StringGuts.grow(_:)(74);
  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230F640);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_0_19();
  MEMORY[0x245D0A530](v4, v5);

  OUTLINED_FUNCTION_0_19();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTurnSignalsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTurnSignalsObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTurnSignalsObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable__turnSignalLeft;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTurnSignalsObservableCSo0F6SignalVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTurnSignalsObservableCSo0F6SignalVGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable__turnSignalRight;
  swift_getKeyPath();
  v13 = *(v8 + 48);
  v14 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v15;
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_observed] = a1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for CAFTurnSignalsObservable();
  v16 = a1;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  [v16 registerObserver_];

  return v17;
}

uint64_t CAFTurnSignalsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTurnSignalsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTurnSignalsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTurnSignalsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTurnSignalsObservable@<X0>(void *a1@<X8>)
{
  result = CAFTurnSignalsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTurnSignalsObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTurnSignalsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTurnSignalsObservable.turnSignalsService(_:didUpdateTurnSignalLeft:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);

  specialized SafeReadOnlyPublished.value.setter();
}