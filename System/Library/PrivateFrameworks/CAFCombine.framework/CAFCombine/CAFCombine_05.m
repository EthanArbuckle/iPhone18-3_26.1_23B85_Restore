id protocol witness for CAFObservable.observed.getter in conformance CAFOverlayViewObservable@<X0>(void *a1@<X8>)
{
  result = CAFOverlayViewObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFOverlayViewObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFOverlayViewObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFOverlayViewObservable.overlayViewService(_:didUpdateDisplayPanelIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFOverlayViewObservable.overlayViewService(_:didUpdateOn:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__on);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFOverlayViewObservable.overlayViewService(_:didUpdateOriginX:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFOverlayViewObservable.overlayViewService(_:didUpdateDisplayPanelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFOverlayViewObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFOverlayViewObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFOverlayViewObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFOverlayView()
{
  result = lazy cache variable for type metadata for CAFOverlayView;
  if (!lazy cache variable for type metadata for CAFOverlayView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFOverlayView);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFOverlayViewObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFOverlayViewObservable and conformance CAFOverlayViewObservable(&lazy protocol witness table cache variable for type CAFOverlayViewObservable and conformance CAFOverlayViewObservable, a2, type metadata accessor for CAFOverlayViewObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFOverlayViewObservable and conformance CAFOverlayViewObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFOverlayViewObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_5_10()
{

  JUMPOUT(0x245D0A530);
}

uint64_t key path getter for CAFRequestContentObservable.on : CAFRequestContentObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFRequestContentObservable.on.getter();
  *a2 = result & 1;
  return result;
}

uint64_t CAFRequestContentObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFRequestContentObservable.on.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFRequestContentObservableC_SbTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFRequestContentObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFRequestContentObservable.on.modify;
}

void CAFRequestContentObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFRequestContentObservableC_SbTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFRequestContentObservable.$on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFRequestContentObservable.userDismissible.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__userDismissible) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFRequestContentObservable.contentURL.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFRequestContentObservable.$contentURL.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFRequestContentObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);
  v4 = [v3 registeredForOn];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v7 = CAFRequestContentObservable.on.getter();
    if (v7)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (v7)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v23 = v5;
  v8 = [v3 registeredForContentURL];
  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if (v8)
  {
    v9 = CAFRequestContentObservable.contentURL.getter();
    v10 = v11;
  }

  v22 = v9;
  v12 = [v3 registeredForUserDismissible];
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if (v12)
  {
    v15 = CAFRequestContentObservable.userDismissible.getter();
    if (v15)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v15)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }
  }

  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if ([v3 registeredForDisplayPanelIdentifier])
  {
    v16 = CAFRequestContentObservable.displayPanelIdentifier.getter();
    v17 = v18;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFRequestContentObservable.displayZoneIdentifier.getter();
    v1 = v19;
  }

  _StringGuts.grow(_:)(136);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v23, v6);

  MEMORY[0x245D0A530](0x6E65746E6F63202CLL, 0xEE00203A4C525574);
  MEMORY[0x245D0A530](v22, v10);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000013);
  MEMORY[0x245D0A530](v21, v14);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v16, v17);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRequestContentObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFRequestContentObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFRequestContentObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA27CAFRequestContentObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA27CAFRequestContentObservableCSbGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__contentURL;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRequestContentObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRequestContentObservableCSSGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__userDismissible;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRequestContentObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRequestContentObservableCSbGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v21 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v21);
  v22 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v23 = OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)(v23);
  v24 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v25 = OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)(v25);
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFRequestContentObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFRequestContentObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRequestContentObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRequestContentObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRequestContentObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRequestContentObservable@<X0>(void *a1@<X8>)
{
  result = CAFRequestContentObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRequestContentObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFRequestContentObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFRequestContentObservable.requestContentService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFRequestContentObservable.requestContentService(_:didUpdateUserDismissible:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__userDismissible);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFRequestContentObservable.requestContentService(_:didUpdateContentURL:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFRequestContentObservable.requestContentService(_:didUpdateContentURL:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFRequestContentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRequestContentObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFRequestContentObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFRequestContent()
{
  result = lazy cache variable for type metadata for CAFRequestContent;
  if (!lazy cache variable for type metadata for CAFRequestContent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRequestContent);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRequestContentObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRequestContentObservable and conformance CAFRequestContentObservable(&lazy protocol witness table cache variable for type CAFRequestContentObservable and conformance CAFRequestContentObservable, a2, type metadata accessor for CAFRequestContentObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRequestContentObservable and conformance CAFRequestContentObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFRequestContentObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFRequestTemporaryContentObservable.on : CAFRequestTemporaryContentObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFRequestTemporaryContentObservable.on.getter();
  *a2 = result & 1;
  return result;
}

uint64_t CAFRequestTemporaryContentObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFRequestTemporaryContentObservable.on.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFRequestTemporaryContentObservableC_SbTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFRequestTemporaryContentObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__on;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFRequestTemporaryContentObservable.on.modify;
}

void CAFRequestTemporaryContentObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFRequestTemporaryContentObservableC_SbTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t key path getter for CAFRequestTemporaryContentObservable.temporaryContentURL : CAFRequestTemporaryContentObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFRequestTemporaryContentObservable.temporaryContentURL : CAFRequestTemporaryContentObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CAFRequestTemporaryContentObservable.temporaryContentURL.setter();
}

uint64_t CAFRequestTemporaryContentObservable.temporaryContentURL.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__temporaryContentURL;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);
  swift_retain_n();

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v7 = v5[1];

  v4(&v9, 0);

  return v6;
}

uint64_t CAFRequestTemporaryContentObservable.temporaryContentURL.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_197();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFRequestTemporaryContentObservableC_SSTt3g5(v2);
}

void (*CAFRequestTemporaryContentObservable.temporaryContentURL.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v3;
  v3[10] = v1;
  v3[11] = swift_getKeyPath();
  v3[12] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__temporaryContentURL;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);
  v3[9] = v6;
  swift_retain_n();

  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_5();
  v11 = *v9;
  v10 = v9[1];

  v8(v3, 0);

  v3[7] = v11;
  v3[8] = v10;
  return CAFRequestTemporaryContentObservable.temporaryContentURL.modify;
}

void CAFRequestTemporaryContentObservable.temporaryContentURL.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 80);
  v8 = v3[11];
  v7 = v3[12];
  if (a2)
  {

    OUTLINED_FUNCTION_3_12();
    v9 = v3[8];
  }

  else
  {
    OUTLINED_FUNCTION_3_12();
  }

  free(v3);
}

uint64_t CAFRequestTemporaryContentObservable.$on.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFRequestTemporaryContentObservable.displayPanelIdentifier.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFRequestTemporaryContentObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);
  v2 = [v1 registeredForOn];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    v5 = CAFRequestTemporaryContentObservable.on.getter();
    if (v5)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v5)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForTemporaryContentURL])
  {
    v6 = CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForDisplayPanelIdentifier])
  {
    v9 = CAFRequestTemporaryContentObservable.displayPanelIdentifier.getter();
    v10 = v11;
  }

  if ([v1 registeredForDisplayZoneIdentifier])
  {
    CAFRequestTemporaryContentObservable.displayZoneIdentifier.getter();
  }

  _StringGuts.grow(_:)(133);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v14, v4);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000017);
  MEMORY[0x245D0A530](v6, v7);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v9, v10);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  v12 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v12);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRequestTemporaryContentObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFRequestTemporaryContentObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFRequestTemporaryContentObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA36CAFRequestTemporaryContentObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA36CAFRequestTemporaryContentObservableCSbGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__temporaryContentURL;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA36CAFRequestTemporaryContentObservableCSSGMd, _s10CAFCombine13SafePublishedCyAA36CAFRequestTemporaryContentObservableCSSGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__displayPanelIdentifier;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFRequestTemporaryContentObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFRequestTemporaryContentObservableCSSGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v20);
  v21 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  *&v2[OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed] = a1;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for CAFRequestTemporaryContentObservable();
  v25 = a1;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  [v25 registerObserver_];

  return v26;
}

uint64_t CAFRequestTemporaryContentObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRequestTemporaryContentObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRequestTemporaryContentObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRequestTemporaryContentObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRequestTemporaryContentObservable@<X0>(void *a1@<X8>)
{
  result = CAFRequestTemporaryContentObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRequestTemporaryContentObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFRequestTemporaryContentObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFRequestTemporaryContentObservable.requestTemporaryContentService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFRequestTemporaryContentObservable.requestTemporaryContentService(_:didUpdateTemporaryContentURL:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__temporaryContentURL;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t @objc CAFRequestTemporaryContentObservable.requestTemporaryContentService(_:didUpdateTemporaryContentURL:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFRequestTemporaryContentObservable.requestTemporaryContentService(_:didUpdateDisplayPanelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFRequestTemporaryContentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRequestTemporaryContentObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFRequestTemporaryContentObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path setter for CAFRequestTemporaryContent.temporaryContentURL : CAFRequestTemporaryContent(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D0A4C0](*a1, a1[1]);
  [v2 setTemporaryContentURL_];
}

unint64_t type metadata accessor for CAFRequestTemporaryContent()
{
  result = lazy cache variable for type metadata for CAFRequestTemporaryContent;
  if (!lazy cache variable for type metadata for CAFRequestTemporaryContent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRequestTemporaryContent);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRequestTemporaryContentObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRequestTemporaryContentObservable and conformance CAFRequestTemporaryContentObservable(&lazy protocol witness table cache variable for type CAFRequestTemporaryContentObservable and conformance CAFRequestTemporaryContentObservable, a2, type metadata accessor for CAFRequestTemporaryContentObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRequestTemporaryContentObservable and conformance CAFRequestTemporaryContentObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFRequestTemporaryContentObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_3_12()
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFRequestTemporaryContentObservableC_SSTt3g5(v0);
}

uint64_t CAFBooleanSetting.sortOrderBridged.getter()
{
  v1 = [v0 hasSortOrder];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 sortOrder];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFBooleanSettingObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFBooleanSettingObservable.category.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__category] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFBooleanSettingObservable.disabled.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t key path getter for CAFBooleanSettingObservable.on : CAFBooleanSettingObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFBooleanSettingObservable.on.getter();
  *a2 = result & 1;
  return result;
}

uint64_t CAFBooleanSettingObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFBooleanSettingObservable.on.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFBooleanSettingObservableC_SbTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFBooleanSettingObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFBooleanSettingObservable.on.modify;
}

void CAFBooleanSettingObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFBooleanSettingObservableC_SbTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFBooleanSettingObservable.$on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFBooleanSettingObservable.sectionIdentifier.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFBooleanSettingObservable.prominenceInfo.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);

  v2 = v1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFBooleanSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFBooleanSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);
  v2 = [v1 registeredForOn];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    v5 = CAFBooleanSettingObservable.on.getter();
    if (v5)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v5)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDetailedDescription])
  {
    CAFBooleanSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v6 = String.init<A>(describing:)();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDescription])
  {
    CAFBooleanSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v9 = String.init<A>(describing:)();
    v10 = v11;
  }

  if ([v1 registeredForBooleanNotificationInfo])
  {
    CAFBooleanSettingObservable.BOOLeanNotificationInfo.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo34CAFBooleanSettingNotificationEntryCSgMd, &_sSo34CAFBooleanSettingNotificationEntryCSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(137);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v14, v4);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v6, v7);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v9, v10);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  v12 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v12);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFBooleanSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFBooleanSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFBooleanSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo24CAFProminenceInformationCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on;
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA27CAFBooleanSettingObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA27CAFBooleanSettingObservableCSbGMR);
  OUTLINED_FUNCTION_225(v34);
  OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafePublished.init(observedValuekeypath:)();
  v35 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v36);
  OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafePublished.init(observedValuekeypath:)();
  v38 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__BOOLeanNotificationInfo;
  swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo0fG17NotificationEntryCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo0fG17NotificationEntryCSgGMR);
  OUTLINED_FUNCTION_225(v39);
  OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v40 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v41 = OUTLINED_FUNCTION_0_7();
  *&v2[v40] = specialized SafePublished.init(observedValuekeypath:)(v41);
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed] = a1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for CAFBooleanSettingObservable();
  v42 = a1;
  v43 = objc_msgSendSuper2(&v45, sel_init);
  [v42 registerObserver_];

  return v43;
}

uint64_t CAFBooleanSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBooleanSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBooleanSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBooleanSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBooleanSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFBooleanSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBooleanSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFBooleanSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFBooleanSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFBooleanSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFBooleanSettingObservable.BOOLeanSettingService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFBooleanSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBooleanSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFBooleanSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFBooleanSetting.sortOrderBridged : CAFBooleanSetting@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFBooleanSetting.sortOrderBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

id key path getter for CAFAutomakerSetting.prominenceInfo : CAFBooleanSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 prominenceInfo];
  *a2 = result;
  return result;
}

id key path getter for CAFBooleanSetting.userVisibleDetailedDescription : CAFBooleanSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userVisibleDetailedDescription];
  *a2 = result;
  return result;
}

void key path getter for CAFAutomakerSetting.sectionIdentifier : CAFBooleanSetting(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_213(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

id key path getter for CAFBooleanSetting.BOOLeanNotificationInfo : CAFBooleanSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 BOOLeanNotificationInfo];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFBooleanSetting()
{
  result = lazy cache variable for type metadata for CAFBooleanSetting;
  if (!lazy cache variable for type metadata for CAFBooleanSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFBooleanSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBooleanSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFBooleanSettingObservable and conformance CAFBooleanSettingObservable(&lazy protocol witness table cache variable for type CAFBooleanSettingObservable and conformance CAFBooleanSettingObservable, a2, type metadata accessor for CAFBooleanSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBooleanSettingObservable and conformance CAFBooleanSettingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFBooleanSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t CAFButtonSettingObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFButtonSettingObservable.category.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__category] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFButtonSettingObservable.disabled.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFButtonSettingObservable.sectionIdentifier.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t key path getter for CAFButtonSettingObservable.buttonAction : CAFButtonSettingObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFButtonSettingObservable.buttonAction.getter();
  *a2 = result;
  return result;
}

uint64_t CAFButtonSettingObservable.buttonAction.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFButtonSettingObservable.buttonAction.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFButtonSettingObservableC_So0L6ActionVTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFButtonSettingObservable.buttonAction.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFButtonSettingObservable.buttonAction.modify;
}

void CAFButtonSettingObservable.buttonAction.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFButtonSettingObservableC_So0L6ActionVTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFButtonSettingObservable.$buttonAction.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFButtonSettingObservable.prominenceInfo.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);

  v2 = v1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFButtonSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFButtonSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForButtonAction])
  {
    CAFButtonSettingObservable.buttonAction.getter();
    v4 = NSStringFromButtonAction();
    if (v4)
    {
      v5 = v4;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v6;
    }

    else
    {
      v3 = 0xE900000000000029;
      v2 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v1 registeredForNotificationInfo])
  {
    CAFButtonSettingObservable.notificationInfo.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAFSettingNotificationEntryCSgMd, &_sSo27CAFSettingNotificationEntryCSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(75);
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x800000024230CDC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230BA20);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230CDE0);
  v7 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v7);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFButtonSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFButtonSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFButtonSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction;
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFButtonSettingObservableCSo0D6ActionVGMd, _s10CAFCombine13SafePublishedCyAA26CAFButtonSettingObservableCSo0D6ActionVGMR);
  OUTLINED_FUNCTION_225(v34);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v33] = v35;
  v36 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__notificationInfo;
  swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo27CAFSettingNotificationEntryCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo27CAFSettingNotificationEntryCSgGMR);
  OUTLINED_FUNCTION_225(v37);
  OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v38 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v39 = OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafePublished.init(observedValuekeypath:)(v39);
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed] = a1;
  v43.receiver = v2;
  v43.super_class = type metadata accessor for CAFButtonSettingObservable();
  v40 = a1;
  v41 = objc_msgSendSuper2(&v43, sel_init);
  [v40 registerObserver_];

  return v41;
}

uint64_t CAFButtonSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFButtonSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFButtonSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFButtonSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFButtonSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFButtonSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFButtonSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFButtonSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFButtonSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFButtonSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFButtonSettingObservable.buttonSettingService(_:didUpdateButtonAction:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFButtonSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFButtonSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFButtonSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFButtonSetting.notificationInfo : CAFButtonSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notificationInfo];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFButtonSetting()
{
  result = lazy cache variable for type metadata for CAFButtonSetting;
  if (!lazy cache variable for type metadata for CAFButtonSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFButtonSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFButtonSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFButtonSettingObservable and conformance CAFButtonSettingObservable(&lazy protocol witness table cache variable for type CAFButtonSettingObservable and conformance CAFButtonSettingObservable, a2, type metadata accessor for CAFButtonSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFButtonSettingObservable and conformance CAFButtonSettingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFButtonSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFDeepLinkSettingObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFDeepLinkSettingObservable.category.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__category] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFDeepLinkSettingObservable.disabled.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFDeepLinkSettingObservable.sectionIdentifier.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFDeepLinkSettingObservable.prominenceInfo.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed);

  v2 = v1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFDeepLinkSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFDeepLinkSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed);
  v2 = [v1 registeredForUserVisibleValue];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFDeepLinkSettingObservable.userVisibleValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v3 = OUTLINED_FUNCTION_16_4();
    v4 = v5;
  }

  v21 = v3;
  v6 = [v1 registeredForContentURLAction];
  v7 = 0x73696765726E753CLL;
  v8 = 0xEE003E6465726574;
  if (v6)
  {
    v7 = CAFDeepLinkSettingObservable.contentURLAction.getter();
    v8 = v9;
  }

  v20 = v7;
  v10 = [v1 registeredForUserVisibleDetailedDescription];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    CAFDeepLinkSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v11 = OUTLINED_FUNCTION_16_4();
    v12 = v13;
  }

  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDescription])
  {
    CAFDeepLinkSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v14 = OUTLINED_FUNCTION_16_4();
    v15 = v16;
  }

  if ([v1 registeredForNotificationInfo])
  {
    CAFDeepLinkSettingObservable.notificationInfo.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAFSettingNotificationEntryCSgMd, &_sSo27CAFSettingNotificationEntryCSgMR);
    OUTLINED_FUNCTION_16_4();
  }

  _StringGuts.grow(_:)(167);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v21, v4);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000014);
  MEMORY[0x245D0A530](v20, v8);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v19, v12);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v14, v15);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000014);
  v17 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v17);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDeepLinkSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFDeepLinkSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFDeepLinkSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__userVisibleValue;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafePublished.init(observedValuekeypath:)();
  v34 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__contentURLAction;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v35 = OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafePublished.init(observedValuekeypath:)(v35);
  v36 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v37);
  OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v38 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafePublished.init(observedValuekeypath:)();
  v39 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__notificationInfo;
  swift_getKeyPath();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo27CAFSettingNotificationEntryCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo27CAFSettingNotificationEntryCSgGMR);
  OUTLINED_FUNCTION_225(v40);
  OUTLINED_FUNCTION_0_7();
  *&v2[v39] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v41 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v42 = OUTLINED_FUNCTION_0_7();
  *&v2[v41] = specialized SafePublished.init(observedValuekeypath:)(v42);
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed] = a1;
  v46.receiver = v2;
  v46.super_class = type metadata accessor for CAFDeepLinkSettingObservable();
  v43 = a1;
  v44 = objc_msgSendSuper2(&v46, sel_init);
  [v43 registerObserver_];

  return v44;
}

uint64_t CAFDeepLinkSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDeepLinkSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDeepLinkSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDeepLinkSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDeepLinkSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFDeepLinkSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDeepLinkSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFDeepLinkSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDeepLinkSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDeepLinkSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFDeepLinkSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFAutomakerSetting.sectionIdentifier : CAFDeepLinkSetting(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

unint64_t type metadata accessor for CAFDeepLinkSetting()
{
  result = lazy cache variable for type metadata for CAFDeepLinkSetting;
  if (!lazy cache variable for type metadata for CAFDeepLinkSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDeepLinkSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDeepLinkSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDeepLinkSettingObservable and conformance CAFDeepLinkSettingObservable(&lazy protocol witness table cache variable for type CAFDeepLinkSettingObservable and conformance CAFDeepLinkSettingObservable, a2, type metadata accessor for CAFDeepLinkSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDeepLinkSettingObservable and conformance CAFDeepLinkSettingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFDeepLinkSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return String.init<A>(describing:)();
}

uint64_t CAFFloatSettingObservable.sortOrder.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__sortOrder);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFFloatSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__category);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);

  v1 = v0;
  OUTLINED_FUNCTION_231();

  return v3;
}

uint64_t CAFFloatSettingObservable.disabled.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFFloatSettingObservable.prominenceInfo.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__prominenceInfo);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t key path setter for CAFFloatSettingObservable.value : CAFFloatSettingObservable(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return CAFFloatSettingObservable.value.setter();
}

float CAFFloatSettingObservable.value.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__value;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFFloatSettingObservable.value.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA25CAFFloatSettingObservableC_SfTt3g5(v1);
}

void (*CAFFloatSettingObservable.value.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__value;
  swift_beginAccess();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 22) = v10;
  return CAFFloatSettingObservable.value.modify;
}

void CAFFloatSettingObservable.value.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA25CAFFloatSettingObservableC_SfTt3g5(*(*a1 + 64));

  free(v1);
}

uint64_t CAFFloatSettingObservable.$value.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__value;
  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFFloatSettingObservable.sectionIdentifier.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFFloatSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFFloatSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForFloatValue])
  {
    CAFFloatSettingObservable.value.getter();
    v2 = Float.description.getter();
    v3 = v4;
  }

  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if ([v1 registeredForMaximumSymbolName])
  {
    CAFFloatSettingObservable.maximumSymbolName.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  if ([v1 registeredForMinimumSymbolName])
  {
    CAFFloatSettingObservable.minimumSymbolName.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(91);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230CF70);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x65756C6176207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v2, v3);

  OUTLINED_FUNCTION_10_5();
  MEMORY[0x245D0A530](v5, v6);

  OUTLINED_FUNCTION_10_5();
  v8 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v8);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFFloatSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFFloatSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFFloatSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSo24CAFProminenceInformationCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__value;
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA25CAFFloatSettingObservableCSfGMd, _s10CAFCombine13SafePublishedCyAA25CAFFloatSettingObservableCSfGMR);
  OUTLINED_FUNCTION_225(v34);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v33] = v35;
  v36 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__maximumSymbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafePublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__minimumSymbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafePublished.init(observedValuekeypath:)();
  v38 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v39 = OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafePublished.init(observedValuekeypath:)(v39);
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed] = a1;
  v43.receiver = v2;
  v43.super_class = type metadata accessor for CAFFloatSettingObservable();
  v40 = a1;
  v41 = objc_msgSendSuper2(&v43, sel_init);
  [v40 registerObserver_];

  return v41;
}

uint64_t CAFFloatSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFloatSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFloatSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFloatSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFloatSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFFloatSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFloatSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFFloatSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFFloatSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFFloatSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__prominenceInfo);
  v4 = a2;

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFFloatSettingObservable.floatSettingService(_:didUpdateValue:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__value;
  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFFloatSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFloatSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFFloatSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFFloatSetting()
{
  result = lazy cache variable for type metadata for CAFFloatSetting;
  if (!lazy cache variable for type metadata for CAFFloatSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFFloatSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFloatSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFFloatSettingObservable and conformance CAFFloatSettingObservable(&lazy protocol witness table cache variable for type CAFFloatSettingObservable and conformance CAFFloatSettingObservable, a2, type metadata accessor for CAFFloatSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFloatSettingObservable and conformance CAFFloatSettingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFFloatSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_10_5()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return swift_beginAccess();
}

uint64_t CAFIntegerSettingObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFIntegerSettingObservable.category.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__category] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t key path getter for CAFIntegerSettingObservable.value : CAFIntegerSettingObservable@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = CAFIntegerSettingObservable.value.getter();
  *a2 = result;
  return result;
}

uint64_t CAFIntegerSettingObservable.value.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFIntegerSettingObservable.value.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFIntegerSettingObservableC_s5Int32VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFIntegerSettingObservable.value.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 22) = v10;
  return CAFIntegerSettingObservable.value.modify;
}

void CAFIntegerSettingObservable.value.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFIntegerSettingObservableC_s5Int32VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFIntegerSettingObservable.$value.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFIntegerSettingObservable.prominenceInfo.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);

  v2 = v1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFIntegerSettingObservable.sectionIdentifier.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFIntegerSettingObservable.disabled.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFIntegerSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFIntegerSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);
  v2 = [v1 registeredForInt32Value];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFIntegerSettingObservable.value.getter();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v30 = v3;
  v31 = v4;
  v5 = [v1 registeredForUserVisibleValue];
  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if (v5)
  {
    CAFIntegerSettingObservable.userVisibleValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v6 = OUTLINED_FUNCTION_10_6();
  }

  v28 = v6;
  v29 = v7;
  v8 = [v1 registeredForUserVisibleDescription];
  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if (v8)
  {
    CAFIntegerSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v9 = OUTLINED_FUNCTION_10_6();
    v10 = v11;
  }

  v27 = v9;
  v12 = [v1 registeredForUserVisibleDetailedDescription];
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if (v12)
  {
    CAFIntegerSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v13 = OUTLINED_FUNCTION_10_6();
    v14 = v15;
  }

  v26 = v13;
  v16 = [v1 registeredForMaximumSymbolName];
  v17 = 0x73696765726E753CLL;
  v18 = 0xEE003E6465726574;
  if (v16)
  {
    CAFIntegerSettingObservable.maximumSymbolName.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v17 = OUTLINED_FUNCTION_10_6();
    v18 = v19;
  }

  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if ([v1 registeredForMinimumSymbolName])
  {
    CAFIntegerSettingObservable.minimumSymbolName.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v20 = OUTLINED_FUNCTION_10_6();
    v21 = v22;
  }

  if ([v1 registeredForStepperBarHidden])
  {
    CAFIntegerSettingObservable.stepperBarHidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    OUTLINED_FUNCTION_10_6();
  }

  _StringGuts.grow(_:)(201);
  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x65756C6176207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v30, v31);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530](0xD000000000000014);
  MEMORY[0x245D0A530](v28, v29);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v27, v10);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v26, v14);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v25, v18);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v20, v21);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530](0xD000000000000014);
  v23 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v23);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFIntegerSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFIntegerSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFIntegerSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo24CAFProminenceInformationCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value;
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA27CAFIntegerSettingObservableCs5Int32VGMd, _s10CAFCombine13SafePublishedCyAA27CAFIntegerSettingObservableCs5Int32VGMR);
  OUTLINED_FUNCTION_225(v34);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v33] = v35;
  v36 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__userVisibleValue;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafePublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafePublished.init(observedValuekeypath:)();
  v38 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v39);
  OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v40 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__maximumSymbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v40] = specialized SafePublished.init(observedValuekeypath:)();
  v41 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__minimumSymbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v41] = specialized SafePublished.init(observedValuekeypath:)();
  v42 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__stepperBarHidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v43 = OUTLINED_FUNCTION_0_7();
  *&v2[v42] = specialized SafePublished.init(observedValuekeypath:)(v43);
  v44 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v45 = OUTLINED_FUNCTION_0_7();
  *&v2[v44] = specialized SafePublished.init(observedValuekeypath:)(v45);
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed] = a1;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for CAFIntegerSettingObservable();
  v46 = a1;
  v47 = objc_msgSendSuper2(&v49, sel_init);
  [v46 registerObserver_];

  return v47;
}

uint64_t CAFIntegerSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFIntegerSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFIntegerSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFIntegerSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFIntegerSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFIntegerSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFIntegerSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFIntegerSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFIntegerSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t @objc CAFIntegerSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFIntegerSettingObservable.integerSettingService(_:didUpdateValue:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFIntegerSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFIntegerSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFIntegerSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFIntegerSetting()
{
  result = lazy cache variable for type metadata for CAFIntegerSetting;
  if (!lazy cache variable for type metadata for CAFIntegerSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFIntegerSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFIntegerSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFIntegerSettingObservable and conformance CAFIntegerSettingObservable(&lazy protocol witness table cache variable for type CAFIntegerSettingObservable and conformance CAFIntegerSettingObservable, a2, type metadata accessor for CAFIntegerSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFIntegerSettingObservable and conformance CAFIntegerSettingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFIntegerSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return String.init<A>(describing:)();
}

void CAFMultipleSelectImageSetting.indicesUserVisibleValueBridged.getter()
{
  v1 = [v0 indicesUserVisibleValue];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array._getCount()(v2);
  if (!v3)
  {
LABEL_10:

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

    goto LABEL_10;
  }

  __break(1u);
}

void CAFMultipleSelectImageSetting.indicesUserVisibleValueBridged.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v7 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v7 + 16);
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

  [v1 setIndicesUserVisibleValue_];
}

uint64_t CAFMultipleSelectImageSettingObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFMultipleSelectImageSettingObservable.category.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__category] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFMultipleSelectImageSettingObservable.disabled.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t key path getter for CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue : CAFMultipleSelectImageSettingObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue : CAFMultipleSelectImageSettingObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.setter(v4);
}

uint64_t CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);
  swift_retain_n();

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;

  v4(&v8, 0);

  return v6;
}

uint64_t CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA39CAFMultipleSelectImageSettingObservableC_Says5UInt8VGTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[9] = v1;
  v3[10] = swift_getKeyPath();
  v3[11] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);
  v3[8] = v6;
  swift_retain_n();

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;

  v8(v3, 0);

  v3[7] = v10;
  return CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.modify;
}

void CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 56);
  v4 = *v5;
  v6 = *(*a1 + 72);
  v8 = v3[10];
  v7 = v3[11];
  if (a2)
  {

    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA39CAFMultipleSelectImageSettingObservableC_Says5UInt8VGTt3g5(v9, v6, v8, v7);
    v10 = *v5;
  }

  else
  {
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA39CAFMultipleSelectImageSettingObservableC_Says5UInt8VGTt3g5(v4, v6, v3[10], v3[11]);
  }

  free(v3);
}

uint64_t CAFMultipleSelectImageSettingObservable.$indicesUserVisibleValue.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFMultipleSelectImageSettingObservable.listUserVisibleValue.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_5_9();

  return v4;
}

uint64_t CAFMultipleSelectImageSettingObservable.sectionIdentifier.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFMultipleSelectImageSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFMultipleSelectImageSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForIndicesUserVisibleValue])
  {
    CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.getter();
    v2 = MEMORY[0x245D0A590]();
    v3 = v4;
  }

  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if ([v1 registeredForListUserVisibleValue])
  {
    CAFMultipleSelectImageSettingObservable.listUserVisibleValue.getter();
    v5 = MEMORY[0x245D0A590]();
    v6 = v7;
  }

  v18 = v5;
  v19 = v2;
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v1 registeredForImageList])
  {
    CAFMultipleSelectImageSettingObservable.images.getter();
    v8 = MEMORY[0x245D0A590]();
    v9 = v10;
  }

  v11 = [v1 registeredForUserVisibleDetailedDescription];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    CAFMultipleSelectImageSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v12 = String.init<A>(describing:)();
    v13 = v14;
  }

  if ([v1 registeredForUserVisibleDescription])
  {
    CAFMultipleSelectImageSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(179);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v19, v3);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000018);
  MEMORY[0x245D0A530](v18, v6);

  MEMORY[0x245D0A530](0x736567616D69202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v17, v9);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v12, v13);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  v15 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v15);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMultipleSelectImageSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFMultipleSelectImageSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFMultipleSelectImageSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo24CAFProminenceInformationCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue;
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA39CAFMultipleSelectImageSettingObservableCSays5UInt8VGGMd, _s10CAFCombine13SafePublishedCyAA39CAFMultipleSelectImageSettingObservableCSays5UInt8VGGMR);
  OUTLINED_FUNCTION_225(v34);
  OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafePublished.init(observedValuekeypath:)();
  v35 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__listUserVisibleValue;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSaySSGGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSaySSGGMR);
  OUTLINED_FUNCTION_225(v36);
  OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__images;
  swift_getKeyPath();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSay10Foundation4DataVGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSay10Foundation4DataVGGMR);
  OUTLINED_FUNCTION_225(v38);
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v39 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v40);
  OUTLINED_FUNCTION_0_7();
  *&v2[v39] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v41 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v41] = specialized SafePublished.init(observedValuekeypath:)();
  v42 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v43 = OUTLINED_FUNCTION_0_7();
  *&v2[v42] = specialized SafePublished.init(observedValuekeypath:)(v43);
  *&v2[OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed] = a1;
  v47.receiver = v2;
  v47.super_class = type metadata accessor for CAFMultipleSelectImageSettingObservable();
  v44 = a1;
  v45 = objc_msgSendSuper2(&v47, sel_init);
  [v44 registerObserver_];

  return v45;
}

uint64_t CAFMultipleSelectImageSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMultipleSelectImageSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMultipleSelectImageSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMultipleSelectImageSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMultipleSelectImageSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFMultipleSelectImageSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMultipleSelectImageSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFMultipleSelectImageSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

void CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateIndicesUserVisibleValue:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);
  v6 = specialized Array._getCount()(a2);
  if (!v6)
  {

LABEL_12:

    specialized SafePublished.value.setter();

    return;
  }

  v7 = v6;
  v13 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D0A790](i, a2);
      }

      else
      {
        v9 = *(a2 + 8 * i + 32);
      }

      v10 = v9;
      v11 = [v9 unsignedCharValue];

      v12 = *(v13 + 16);
      if (v12 >= *(v13 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v13 + 16) = v12 + 1;
      *(v13 + v12 + 32) = v11;
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateListUserVisibleValue:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_17_3(*a3);

  a4(v5);
}

uint64_t @objc CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateListUserVisibleValue:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a6();
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMultipleSelectImageSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMultipleSelectImageSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFMultipleSelectImageSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path setter for CAFMultipleSelectImageSetting.indicesUserVisibleValueBridged : CAFMultipleSelectImageSetting(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFMultipleSelectImageSetting.indicesUserVisibleValueBridged.setter(v4);
}

void key path getter for CAFMultipleSelectImageSetting.listUserVisibleValue : CAFMultipleSelectImageSetting(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a3 = v5;
}

unint64_t lazy protocol witness table accessor for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting()
{
  result = lazy protocol witness table cache variable for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting;
  if (!lazy protocol witness table cache variable for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFMultipleSelectImageSetting, 0x277CF8538);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMultipleSelectImageSettingObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFMultipleSelectImageSettingObservable and conformance CAFMultipleSelectImageSettingObservable(&lazy protocol witness table cache variable for type CAFMultipleSelectImageSettingObservable and conformance CAFMultipleSelectImageSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMultipleSelectImageSettingObservable and conformance CAFMultipleSelectImageSettingObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMultipleSelectImageSettingObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFMultipleSelectImageSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFMultipleSelectSettingObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFMultipleSelectSettingObservable.category.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__category] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFMultipleSelectSettingObservable.disabled.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFMultipleSelectSettingObservable.selectSettingEntryList.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectSettingEntryList] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_5_9();

  return v4;
}

uint64_t key path getter for CAFMultipleSelectSettingObservable.selectedEntryIndices : CAFMultipleSelectSettingObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFMultipleSelectSettingObservable.selectedEntryIndices.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFMultipleSelectSettingObservable.selectedEntryIndices : CAFMultipleSelectSettingObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFMultipleSelectSettingObservable.selectedEntryIndices.setter(v4);
}

uint64_t CAFMultipleSelectSettingObservable.selectedEntryIndices.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);
  swift_retain_n();

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;

  v4(&v8, 0);

  return v6;
}

uint64_t CAFMultipleSelectSettingObservable.selectedEntryIndices.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFMultipleSelectSettingObservableC_Says5UInt8VGTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFMultipleSelectSettingObservable.selectedEntryIndices.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[9] = v1;
  v3[10] = swift_getKeyPath();
  v3[11] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);
  v3[8] = v6;
  swift_retain_n();

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;

  v8(v3, 0);

  v3[7] = v10;
  return CAFMultipleSelectSettingObservable.selectedEntryIndices.modify;
}

void CAFMultipleSelectSettingObservable.selectedEntryIndices.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 56);
  v4 = *v5;
  v6 = *(*a1 + 72);
  v8 = v3[10];
  v7 = v3[11];
  if (a2)
  {

    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFMultipleSelectSettingObservableC_Says5UInt8VGTt3g5(v9, v6, v8, v7);
    v10 = *v5;
  }

  else
  {
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFMultipleSelectSettingObservableC_Says5UInt8VGTt3g5(v4, v6, v3[10], v3[11]);
  }

  free(v3);
}

uint64_t CAFMultipleSelectSettingObservable.$selectedEntryIndices.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFMultipleSelectSettingObservable.prominenceInfo.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_5_9();

  return v4;
}

uint64_t CAFMultipleSelectSettingObservable.sectionIdentifier.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFMultipleSelectSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFMultipleSelectSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForSelectSettingEntryList])
  {
    v4 = CAFMultipleSelectSettingObservable.selectSettingEntryList.getter();
    v5 = [v4 description];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v6;
  }

  v7 = [v1 registeredForSelectedEntryIndices];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    CAFMultipleSelectSettingObservable.selectedEntryIndices.getter();
    v8 = MEMORY[0x245D0A590]();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDetailedDescription])
  {
    CAFMultipleSelectSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v1 registeredForUserVisibleDescription])
  {
    CAFMultipleSelectSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(161);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v16, v3);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000018);
  MEMORY[0x245D0A530](v8, v9);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v11, v12);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  v14 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v14);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMultipleSelectSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFMultipleSelectSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFMultipleSelectSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectSettingEntryList;
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo09CAFSelectH9EntryListCGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo09CAFSelectH9EntryListCGMR);
  OUTLINED_FUNCTION_225(v34);
  OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v35 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA34CAFMultipleSelectSettingObservableCSays5UInt8VGGMd, _s10CAFCombine13SafePublishedCyAA34CAFMultipleSelectSettingObservableCSays5UInt8VGGMR);
  OUTLINED_FUNCTION_225(v36);
  OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafePublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v38);
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v39 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v39] = specialized SafePublished.init(observedValuekeypath:)();
  v40 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v41 = OUTLINED_FUNCTION_0_7();
  *&v2[v40] = specialized SafePublished.init(observedValuekeypath:)(v41);
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed] = a1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for CAFMultipleSelectSettingObservable();
  v42 = a1;
  v43 = objc_msgSendSuper2(&v45, sel_init);
  [v42 registerObserver_];

  return v43;
}

uint64_t CAFMultipleSelectSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMultipleSelectSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMultipleSelectSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMultipleSelectSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMultipleSelectSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFMultipleSelectSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMultipleSelectSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFMultipleSelectSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFMultipleSelectSettingObservable.multipleSelectSettingService(_:didUpdateSelectSettingEntryList:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectSettingEntryList);
  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter();
}

void CAFMultipleSelectSettingObservable.multipleSelectSettingService(_:didUpdateSelectedEntryIndices:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);
  v6 = specialized Array._getCount()(a2);
  if (!v6)
  {

LABEL_12:

    specialized SafePublished.value.setter();

    return;
  }

  v7 = v6;
  v13 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D0A790](i, a2);
      }

      else
      {
        v9 = *(a2 + 8 * i + 32);
      }

      v10 = v9;
      v11 = [v9 unsignedCharValue];

      v12 = *(v13 + 16);
      if (v12 >= *(v13 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v13 + 16) = v12 + 1;
      *(v13 + v12 + 32) = v11;
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMultipleSelectSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMultipleSelectSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFMultipleSelectSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFMultipleSelectSetting.selectSettingEntryList : CAFMultipleSelectSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectSettingEntryList];
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFMultipleSelectSetting and conformance CAFMultipleSelectSetting()
{
  result = lazy protocol witness table cache variable for type CAFMultipleSelectSetting and conformance CAFMultipleSelectSetting;
  if (!lazy protocol witness table cache variable for type CAFMultipleSelectSetting and conformance CAFMultipleSelectSetting)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFMultipleSelectSetting, 0x277CF8540);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFMultipleSelectSetting and conformance CAFMultipleSelectSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMultipleSelectSettingObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFMultipleSelectSettingObservable and conformance CAFMultipleSelectSettingObservable(&lazy protocol witness table cache variable for type CAFMultipleSelectSettingObservable and conformance CAFMultipleSelectSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMultipleSelectSettingObservable and conformance CAFMultipleSelectSettingObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMultipleSelectSettingObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFMultipleSelectSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFSettingsSectionObservable.userVisibleSectionName.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed);

  v3 = v5;
  OUTLINED_FUNCTION_232();

  return v6;
}

uint64_t CAFSettingsSectionObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFSettingsSectionObservable.$identifier.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFSettingsSectionObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed);
  v2 = [v1 registeredForIdentifier];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    v3 = CAFSettingsSectionObservable.identifier.getter();
    v4 = v5;
  }

  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleSectionName])
  {
    CAFSettingsSectionObservable.userVisibleSectionName.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v6 = String.init<A>(describing:)();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleFooter])
  {
    CAFSettingsSectionObservable.userVisibleFooter.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v9 = String.init<A>(describing:)();
    v10 = v11;
  }

  if ([v1 registeredForSortOrder])
  {
    CAFSettingsSectionObservable.sortOrder.getter();
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  _StringGuts.grow(_:)(119);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x800000024230D370);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v14, v4);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230D390);
  MEMORY[0x245D0A530](v6, v7);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230D3B0);
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0x724F74726F73202CLL, 0xED0000203A726564);
  v12 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v12);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSettingsSectionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFSettingsSectionObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFSettingsSectionObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCSSGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__userVisibleSectionName;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCSSSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__userVisibleFooter;
  swift_getKeyPath();
  v17 = *(v13 + 48);
  v18 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  v19 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__sortOrder;
  swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCs5UInt8VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCs5UInt8VGMR);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v19] = v23;
  v24 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__name;
  swift_getKeyPath();
  v25 = *(v8 + 48);
  v26 = *(v8 + 52);
  swift_allocObject();
  v27 = OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)(v27);
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed] = a1;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAFSettingsSectionObservable();
  v28 = a1;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  [v28 registerObserver_];

  return v29;
}

uint64_t CAFSettingsSectionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSettingsSectionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSettingsSectionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSettingsSectionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSettingsSectionObservable@<X0>(void *a1@<X8>)
{
  result = CAFSettingsSectionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSettingsSectionObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFSettingsSectionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSettingsSectionObservable.settingsSectionService(_:didUpdateUserVisibleSectionName:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_4_12(a1, a2, a3, a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFSettingsSectionObservable.settingsSectionService(_:didUpdateUserVisibleSectionName:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSettingsSectionObservable.settingsSectionService(_:didUpdateSortOrder:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__sortOrder);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSettingsSectionObservable.settingsSectionService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_4_12(a1, a2, a3, a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFSettingsSectionObservable.settingsSectionService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSettingsSectionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSettingsSectionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFSettingsSectionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSettingsSection()
{
  result = lazy cache variable for type metadata for CAFSettingsSection;
  if (!lazy cache variable for type metadata for CAFSettingsSection)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSettingsSection);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSettingsSectionObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSettingsSectionObservable and conformance CAFSettingsSectionObservable(&lazy protocol witness table cache variable for type CAFSettingsSectionObservable and conformance CAFSettingsSectionObservable, a2, type metadata accessor for CAFSettingsSectionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSettingsSectionObservable and conformance CAFSettingsSectionObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFSettingsSectionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFSingleSelectImageSettingObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFSingleSelectImageSettingObservable.category.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__category] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFSingleSelectImageSettingObservable.disabled.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t key path getter for CAFSingleSelectImageSettingObservable.currentUserVisibleValue : CAFSingleSelectImageSettingObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSingleSelectImageSettingObservable.currentUserVisibleValue.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSingleSelectImageSettingObservable.currentUserVisibleValue.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFSingleSelectImageSettingObservable.currentUserVisibleValue.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA37CAFSingleSelectImageSettingObservableC_s5UInt8VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFSingleSelectImageSettingObservable.currentUserVisibleValue.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFSingleSelectImageSettingObservable.currentUserVisibleValue.modify;
}

void CAFSingleSelectImageSettingObservable.currentUserVisibleValue.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA37CAFSingleSelectImageSettingObservableC_s5UInt8VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFSingleSelectImageSettingObservable.$currentUserVisibleValue.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFSingleSelectImageSettingObservable.listUserVisibleValue.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_5_9();

  return v4;
}

uint64_t CAFSingleSelectImageSettingObservable.sectionIdentifier.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFSingleSelectImageSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFSingleSelectImageSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);
  v2 = [v1 registeredForCurrentUserVisibleValue];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFSingleSelectImageSettingObservable.currentUserVisibleValue.getter();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v5;
  }

  v20 = v3;
  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForListUserVisibleValue])
  {
    CAFSingleSelectImageSettingObservable.listUserVisibleValue.getter();
    v6 = MEMORY[0x245D0A590]();
    v7 = v8;
  }

  v19 = v6;
  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForImageList])
  {
    CAFSingleSelectImageSettingObservable.images.getter();
    v9 = MEMORY[0x245D0A590]();
    v10 = v11;
  }

  v12 = [v1 registeredForUserVisibleDetailedDescription];
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if (v12)
  {
    CAFSingleSelectImageSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v13 = String.init<A>(describing:)();
    v14 = v15;
  }

  if ([v1 registeredForUserVisibleDescription])
  {
    CAFSingleSelectImageSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(177);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v20, v4);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000018);
  MEMORY[0x245D0A530](v19, v7);

  MEMORY[0x245D0A530](0x736567616D69202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v18, v10);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v13, v14);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  v16 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v16);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSingleSelectImageSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFSingleSelectImageSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFSingleSelectImageSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue;
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA37CAFSingleSelectImageSettingObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA37CAFSingleSelectImageSettingObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v34);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v33] = v35;
  v36 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__listUserVisibleValue;
  swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSaySSGGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSaySSGGMR);
  OUTLINED_FUNCTION_225(v37);
  OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v38 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__images;
  swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSay10Foundation4DataVGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSay10Foundation4DataVGGMR);
  OUTLINED_FUNCTION_225(v39);
  OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v40 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v41);
  OUTLINED_FUNCTION_0_7();
  *&v2[v40] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v42 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v42] = specialized SafePublished.init(observedValuekeypath:)();
  v43 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v44 = OUTLINED_FUNCTION_0_7();
  *&v2[v43] = specialized SafePublished.init(observedValuekeypath:)(v44);
  *&v2[OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed] = a1;
  v48.receiver = v2;
  v48.super_class = type metadata accessor for CAFSingleSelectImageSettingObservable();
  v45 = a1;
  v46 = objc_msgSendSuper2(&v48, sel_init);
  [v45 registerObserver_];

  return v46;
}

uint64_t CAFSingleSelectImageSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSingleSelectImageSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSingleSelectImageSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSingleSelectImageSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSingleSelectImageSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFSingleSelectImageSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSingleSelectImageSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFSingleSelectImageSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSingleSelectImageSettingObservable.singleSelectImageSettingService(_:didUpdateCurrentUserVisibleValue:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFSingleSelectImageSettingObservable.singleSelectImageSettingService(_:didUpdateListUserVisibleValue:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_17_3(*a3);

  a4(v5);
}

uint64_t @objc CAFSingleSelectImageSettingObservable.singleSelectImageSettingService(_:didUpdateListUserVisibleValue:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a6();
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSingleSelectImageSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSingleSelectImageSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFSingleSelectImageSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSingleSelectImageSetting()
{
  result = lazy cache variable for type metadata for CAFSingleSelectImageSetting;
  if (!lazy cache variable for type metadata for CAFSingleSelectImageSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSingleSelectImageSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSingleSelectImageSettingObservable and conformance CAFSingleSelectImageSettingObservable(&lazy protocol witness table cache variable for type CAFSingleSelectImageSettingObservable and conformance CAFSingleSelectImageSettingObservable, a2, type metadata accessor for CAFSingleSelectImageSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSingleSelectImageSettingObservable and conformance CAFSingleSelectImageSettingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFSingleSelectImageSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFSingleSelectSettingObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFSingleSelectSettingObservable.category.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__category] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFSingleSelectSettingObservable.disabled.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFSingleSelectSettingObservable.selectSettingEntryList.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectSettingEntryList] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_5_9();

  return v4;
}

uint64_t key path getter for CAFSingleSelectSettingObservable.selectedEntryIndex : CAFSingleSelectSettingObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSingleSelectSettingObservable.selectedEntryIndex.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSingleSelectSettingObservable.selectedEntryIndex.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFSingleSelectSettingObservable.selectedEntryIndex.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFSingleSelectSettingObservableC_s5UInt8VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFSingleSelectSettingObservable.selectedEntryIndex.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFSingleSelectSettingObservable.selectedEntryIndex.modify;
}

void CAFSingleSelectSettingObservable.selectedEntryIndex.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFSingleSelectSettingObservableC_s5UInt8VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFSingleSelectSettingObservable.$selectedEntryIndex.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFSingleSelectSettingObservable.sectionIdentifier.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFSingleSelectSettingObservable.prominenceInfo.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_5_9();

  return v4;
}

uint64_t CAFSingleSelectSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFSingleSelectSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForSelectSettingEntryList])
  {
    v4 = CAFSingleSelectSettingObservable.selectSettingEntryList.getter();
    v5 = [v4 description];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v6;
  }

  v7 = [v1 registeredForSelectedEntryIndex];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    CAFSingleSelectSettingObservable.selectedEntryIndex.getter();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v10;
  }

  v21 = v8;
  v22 = v2;
  v11 = [v1 registeredForUserVisibleDetailedDescription];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    CAFSingleSelectSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v12 = String.init<A>(describing:)();
    v13 = v14;
  }

  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDescription])
  {
    CAFSingleSelectSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v15 = String.init<A>(describing:)();
    v16 = v17;
  }

  if ([v1 registeredForSelectSettingEntryListNotificationInfo])
  {
    CAFSingleSelectSettingObservable.selectSettingEntryListNotificationInfo.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37CAFSelectSettingNotificationEntryListCSgMd, &_sSo37CAFSelectSettingNotificationEntryListCSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(201);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v22, v3);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000016);
  MEMORY[0x245D0A530](v21, v9);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v20, v13);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v15, v16);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  v18 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v18);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSingleSelectSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFSingleSelectSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFSingleSelectSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectSettingEntryList;
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo09CAFSelectH9EntryListCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo09CAFSelectH9EntryListCGMR);
  OUTLINED_FUNCTION_225(v34);
  OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v35 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA32CAFSingleSelectSettingObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA32CAFSingleSelectSettingObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v36);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v35] = v37;
  v38 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v39);
  OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v40 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v40] = specialized SafePublished.init(observedValuekeypath:)();
  v41 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectSettingEntryListNotificationInfo;
  swift_getKeyPath();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo09CAFSelectH21NotificationEntryListCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo09CAFSelectH21NotificationEntryListCSgGMR);
  OUTLINED_FUNCTION_225(v42);
  OUTLINED_FUNCTION_0_7();
  *&v2[v41] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v43 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v44 = OUTLINED_FUNCTION_0_7();
  *&v2[v43] = specialized SafePublished.init(observedValuekeypath:)(v44);
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed] = a1;
  v48.receiver = v2;
  v48.super_class = type metadata accessor for CAFSingleSelectSettingObservable();
  v45 = a1;
  v46 = objc_msgSendSuper2(&v48, sel_init);
  [v45 registerObserver_];

  return v46;
}

uint64_t CAFSingleSelectSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSingleSelectSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSingleSelectSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSingleSelectSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSingleSelectSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFSingleSelectSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSingleSelectSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFSingleSelectSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectSettingEntryList:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectSettingEntryList);
  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectedEntryIndex:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSingleSelectSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSingleSelectSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFSingleSelectSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFSingleSelectSetting.selectSettingEntryListNotificationInfo : CAFSingleSelectSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectSettingEntryListNotificationInfo];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFSingleSelectSetting()
{
  result = lazy cache variable for type metadata for CAFSingleSelectSetting;
  if (!lazy cache variable for type metadata for CAFSingleSelectSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSingleSelectSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSingleSelectSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSingleSelectSettingObservable and conformance CAFSingleSelectSettingObservable(&lazy protocol witness table cache variable for type CAFSingleSelectSettingObservable and conformance CAFSingleSelectSettingObservable, a2, type metadata accessor for CAFSingleSelectSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSingleSelectSettingObservable and conformance CAFSingleSelectSettingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFSingleSelectSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFStaticSettingObservable.sortOrder.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__sortOrder) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFStaticSettingObservable.category.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__category] + 16);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed);

  v2 = v0;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFStaticSettingObservable.disabled.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFStaticSettingObservable.prominenceInfo.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed);

  v2 = v1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFStaticSettingObservable.sectionIdentifier.getter(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFStaticSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFStaticSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed);
  v2 = [v1 registeredForUserVisibleValue];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    v3 = CAFStaticSettingObservable.userVisibleValue.getter();
    v4 = v5;
  }

  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForChildrenSettingsIdentifiers])
  {
    CAFStaticSettingObservable.childrenSettingsIdentifiers.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v6 = String.init<A>(describing:)();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDetailedDescription])
  {
    CAFStaticSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v9 = String.init<A>(describing:)();
    v10 = v11;
  }

  if ([v1 registeredForUserVisibleDescription])
  {
    CAFStaticSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(154);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000015);
  MEMORY[0x245D0A530](v14, v4);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v6, v7);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v9, v10);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  v12 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v12);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFStaticSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFStaticSettingObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFStaticSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__category;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__disabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__userVisibleValue;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v34 = OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafePublished.init(observedValuekeypath:)(v34);
  v35 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__childrenSettingsIdentifiers;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSaySSGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSaySSGSgGMR);
  OUTLINED_FUNCTION_225(v36);
  OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafePublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v38);
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v39 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v39] = specialized SafePublished.init(observedValuekeypath:)();
  v40 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v41 = OUTLINED_FUNCTION_0_7();
  *&v2[v40] = specialized SafePublished.init(observedValuekeypath:)(v41);
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed] = a1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for CAFStaticSettingObservable();
  v42 = a1;
  v43 = objc_msgSendSuper2(&v45, sel_init);
  [v42 registerObserver_];

  return v43;
}

uint64_t CAFStaticSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFStaticSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFStaticSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFStaticSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFStaticSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFStaticSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFStaticSettingObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFStaticSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateCategory:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__category);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFStaticSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFStaticSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFStaticSettingObservable.staticSettingService(_:didUpdateChildrenSettingsIdentifiers:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__childrenSettingsIdentifiers);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);
  v8 = a2;

  a4(a2);
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFStaticSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFStaticSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFStaticSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFStaticSetting.childrenSettingsIdentifiers : CAFStaticSetting(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 childrenSettingsIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

unint64_t type metadata accessor for CAFStaticSetting()
{
  result = lazy cache variable for type metadata for CAFStaticSetting;
  if (!lazy cache variable for type metadata for CAFStaticSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFStaticSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFStaticSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFStaticSettingObservable and conformance CAFStaticSettingObservable(&lazy protocol witness table cache variable for type CAFStaticSettingObservable and conformance CAFStaticSettingObservable, a2, type metadata accessor for CAFStaticSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFStaticSettingObservable and conformance CAFStaticSettingObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFStaticSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFChargingRateObservable.power.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFChargingRateObservable.$power.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFChargingRateObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v15[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
  v3 = *(*(v15[0] - 8) + 64);
  MEMORY[0x28223BE20](v15[0]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_observed);
  v10 = 0xEE003E6465726574;
  if ([v9 registeredForPower])
  {
    CAFChargingRateObservable.power.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>();
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v11;
    (*(v5 + 8))(v8, v4);
  }

  v12 = 0x73696765726E753CLL;
  if ([v9 registeredForChargingSpeed])
  {
    CAFChargingRateObservable.chargingSpeed.getter();
    v12 = String.init<A>(describing:)();
    v1 = v13;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230D700);
  v15[1] = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x7265776F70207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v2, v10);

  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230D720);
  MEMORY[0x245D0A530](v12, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v16;
}

uint64_t CAFChargingRateObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFChargingRateObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFChargingRateObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable__power;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFChargingRateObservableC10Foundation11MeasurementVySo11NSUnitPowerCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFChargingRateObservableC10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable__chargingSpeed;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFChargingRateObservableC10Foundation11MeasurementVySo11NSUnitSpeedCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFChargingRateObservableC10Foundation11MeasurementVySo11NSUnitSpeedCGSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFChargingRateObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFChargingRateObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFChargingRateObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFChargingRateObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFChargingRateObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFChargingRateObservable@<X0>(void *a1@<X8>)
{
  result = CAFChargingRateObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFChargingRateObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFChargingRateObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFChargingRateObservable.chargingRateService(_:didUpdatePower:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t CAFChargingRateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFChargingRateObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFChargingRateObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFChargingRate.power : CAFChargingRate(id *a1)
{
  v1 = [*a1 power];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFChargingRate.chargingSpeed : CAFChargingRate@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 chargingSpeed];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

unint64_t lazy protocol witness table accessor for type CAFChargingRate and conformance CAFChargingRate()
{
  result = lazy protocol witness table cache variable for type CAFChargingRate and conformance CAFChargingRate;
  if (!lazy protocol witness table cache variable for type CAFChargingRate and conformance CAFChargingRate)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFChargingRate, 0x277CF83B8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFChargingRate and conformance CAFChargingRate);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFChargingRateObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFChargingRateObservable and conformance CAFChargingRateObservable(&lazy protocol witness table cache variable for type CAFChargingRateObservable and conformance CAFChargingRateObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFChargingRateObservable and conformance CAFChargingRateObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFChargingRateObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitSpeed>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CAFChargingRateObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  }

  return result;
}

uint64_t CAFChargingStatusObservable.chargingModeIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__chargingModeIdentifier) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFChargingStatusObservable.chargingState.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6 | (v7 << 8);
}

uint64_t CAFChargingStatusObservable.$chargingModeIdentifier.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFChargingStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed);
  v4 = [v3 registeredForChargingModeIdentifier];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFChargingStatusObservable.chargingModeIdentifier.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v5 = OUTLINED_FUNCTION_4_14();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForChargingState])
  {
    CAFChargingStatusObservable.chargingState.getter();
    OUTLINED_FUNCTION_1_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CAFChargingStateVSgMd, _sSo16CAFChargingStateVSgMR);
    v8 = OUTLINED_FUNCTION_4_14();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForCableState])
  {
    CAFChargingStatusObservable.cableState.getter();
    OUTLINED_FUNCTION_1_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CAFCableStateVSgMd, &_sSo13CAFCableStateVSgMR);
    v11 = OUTLINED_FUNCTION_4_14();
    v12 = v13;
  }

  if ([v3 registeredForPortSideIndicator])
  {
    CAFChargingStatusObservable.portSideIndicator.getter();
    OUTLINED_FUNCTION_1_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFPortSideIndicatorVSgMd, &_sSo20CAFPortSideIndicatorVSgMR);
    v2 = OUTLINED_FUNCTION_4_14();
    v1 = v14;
  }

  _StringGuts.grow(_:)(122);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v16, v6);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000011);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x53656C626163202CLL, 0xEE00203A65746174);
  MEMORY[0x245D0A530](v11, v12);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFChargingStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFChargingStatusObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFChargingStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__chargingModeIdentifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__chargingState;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo0F5StateVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo0F5StateVSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v9] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__cableState;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo13CAFCableStateVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo13CAFCableStateVSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__portSideIndicator;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo20CAFPortSideIndicatorVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo20CAFPortSideIndicatorVSgGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v15] = v17;
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed] = a1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CAFChargingStatusObservable();
  v18 = a1;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  [v18 registerObserver_];

  return v19;
}

uint64_t CAFChargingStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFChargingStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFChargingStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFChargingStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFChargingStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFChargingStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFChargingStatusObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFChargingStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFChargingStatusObservable.chargingStatusService(_:didUpdateChargingModeIdentifier:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__chargingModeIdentifier);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFChargingStatusObservable.chargingStatusService(_:didUpdateChargingState:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{
  v7 = *(v4 + *a3);

  a4(a2);
}

uint64_t CAFChargingStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFChargingStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFChargingStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFChargingStatus.chargingModeIdentifier : CAFChargingStatus(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 chargingModeIdentifier];
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

uint64_t key path getter for CAFChargingStatus.chargingStateBridged : CAFChargingStatus@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFChargingStatus.chargingStateBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFChargingStatus.cableStateBridged : CAFChargingStatus@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFChargingStatus.cableStateBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFChargingStatus.portSideIndicatorBridged : CAFChargingStatus@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFChargingStatus.portSideIndicatorBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFChargingStatus()
{
  result = lazy cache variable for type metadata for CAFChargingStatus;
  if (!lazy cache variable for type metadata for CAFChargingStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFChargingStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFChargingStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFChargingStatusObservable and conformance CAFChargingStatusObservable(&lazy protocol witness table cache variable for type CAFChargingStatusObservable and conformance CAFChargingStatusObservable, a2, type metadata accessor for CAFChargingStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFChargingStatusObservable and conformance CAFChargingStatusObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFChargingStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return String.init<A>(describing:)();
}

uint64_t CAFChargingTimeObservable.remainingTime.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable__remainingTime) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFChargingTimeObservable.$remainingTime.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable__remainingTime);

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t CAFChargingTimeObservable._description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_observed) registeredForRemainingTime])
  {
    CAFChargingTimeObservable.remainingTime.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitDuration> and conformance Measurement<A>();
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v8 = 0xEE003E6465726574;
    v6 = 0x73696765726E753CLL;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230D900);
  v10[1] = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230D920);
  MEMORY[0x245D0A530](v6, v8);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v11;
}

uint64_t CAFChargingTimeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFChargingTimeObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFChargingTimeObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable__remainingTime;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFChargingTimeObservableC10Foundation11MeasurementVySo14NSUnitDurationCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFChargingTimeObservableC10Foundation11MeasurementVySo14NSUnitDurationCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFChargingTimeObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFChargingTimeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFChargingTimeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFChargingTimeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFChargingTimeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFChargingTimeObservable@<X0>(void *a1@<X8>)
{
  result = CAFChargingTimeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFChargingTimeObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFChargingTimeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFChargingTimeObservable.chargingTimeService(_:didUpdateRemainingTime:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable__remainingTime);

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t CAFChargingTimeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFChargingTimeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFChargingTimeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFChargingTime.remainingTime : CAFChargingTime(id *a1)
{
  v1 = [*a1 remainingTime];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFChargingTime and conformance CAFChargingTime()
{
  result = lazy protocol witness table cache variable for type CAFChargingTime and conformance CAFChargingTime;
  if (!lazy protocol witness table cache variable for type CAFChargingTime and conformance CAFChargingTime)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFChargingTime, 0x277CF83C8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFChargingTime and conformance CAFChargingTime);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFChargingTimeObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFChargingTimeObservable and conformance CAFChargingTimeObservable(&lazy protocol witness table cache variable for type CAFChargingTimeObservable and conformance CAFChargingTimeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFChargingTimeObservable and conformance CAFChargingTimeObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFChargingTimeObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFChargingTimeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path setter for CAFMinimumChargingLevelObservable.chargingLevel : CAFMinimumChargingLevelObservable(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return CAFMinimumChargingLevelObservable.chargingLevel.setter(v7);
}

uint64_t CAFMinimumChargingLevelObservable.chargingLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel;
  OUTLINED_FUNCTION_234();
  v4 = *(*(v1 + v3) + 16);
  v13 = *(v1 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed);

  v5 = v13;
  v6 = swift_readAtKeyPath();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_1_29(v9);
  (*(v10 + 16))(a1, v8);
  v6(&v12, 0);
}

uint64_t CAFMinimumChargingLevelObservable.chargingLevel.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_30(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v10, a1, v3);
  v11 = v1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA33CAFMinimumChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
  return (*(v5 + 8))(a1, v3);
}

void (*CAFMinimumChargingLevelObservable.chargingLevel.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
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
  v10 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel;
  OUTLINED_FUNCTION_234();
  v11 = *(*(v1 + v10) + 16);
  v12 = *(v1 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed);
  v3[7] = v12;

  v13 = v12;
  v14 = swift_readAtKeyPath();
  v15 = *(v6 + 16);
  v3[15] = v15;
  v3[16] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v9);
  v14(v3, 0);

  return CAFMinimumChargingLevelObservable.chargingLevel.modify;
}

void CAFMinimumChargingLevelObservable.chargingLevel.modify(uint64_t *a1, char a2)
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
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA33CAFMinimumChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v13 = *(v2 + 104);
    v12 = *(v2 + 112);
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);
    v14 = *(v2 + 64);
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA33CAFMinimumChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
  }

  free(v6);
  free(v7);

  free(v2);
}

uint64_t CAFMinimumChargingLevelObservable.$chargingLevel.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFMinimumChargingLevelObservable.distanceKM.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFMinimumChargingLevelObservable.$distanceKM.getter(void *a1)
{
  v2 = *(v1 + *a1);

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFMinimumChargingLevelObservable._description.getter()
{
  _StringGuts.grow(_:)(44);
  MEMORY[0x245D0A530](0xD000000000000024, 0x800000024230D9C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFMinimumChargingLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFMinimumChargingLevelObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFMinimumChargingLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA33CAFMinimumChargingLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMd, _s10CAFCombine13SafePublishedCyAA33CAFMinimumChargingLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__distanceKM;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA33CAFMinimumChargingLevelObservableC10Foundation11MeasurementVySo12NSUnitLengthCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA33CAFMinimumChargingLevelObservableC10Foundation11MeasurementVySo12NSUnitLengthCGSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__distanceMiles;
  swift_getKeyPath();
  v18 = *(v13 + 48);
  v19 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v20;
  *&v2[OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFMinimumChargingLevelObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFMinimumChargingLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMinimumChargingLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMinimumChargingLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMinimumChargingLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMinimumChargingLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFMinimumChargingLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMinimumChargingLevelObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFMinimumChargingLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFMinimumChargingLevelObservable.chargingLevelService(_:didUpdateChargingLevel:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  specialized SafePublished.setValue(_:)(a2, specialized SafePublished.value.setter);
}

uint64_t CAFMinimumChargingLevelObservable.chargingLevelService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFMinimumChargingLevelObservable.chargingLevelService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v14 = v12;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = a3;
  v17 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitLength>?(v12);
}

uint64_t CAFMinimumChargingLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMinimumChargingLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFMinimumChargingLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t specialized SafePublished.setValue(_:)(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR) - 8) + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_1_29(v8);
  (*(v9 + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  return a2(v7);
}

void specialized SafePublished.setValue(_:)(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR) - 8) + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_1_29(v6);
  (*(v7 + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  specialized SafePublished.value.setter();
}

void key path getter for CAFChargingLevel.chargingLevel : CAFMinimumChargingLevel(id *a1)
{
  v1 = [*a1 chargingLevel];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

void key path setter for CAFChargingLevel.chargingLevel : CAFMinimumChargingLevel(uint64_t a1, void **a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v5 = Measurement._bridgeToObjectiveC()();
  isa = v5.super.isa;
  [v2 setChargingLevel_];
}

uint64_t key path getter for CAFChargingLevel.distanceKM : CAFMinimumChargingLevel@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFMinimumChargingLevel and conformance CAFMinimumChargingLevel()
{
  result = lazy protocol witness table cache variable for type CAFMinimumChargingLevel and conformance CAFMinimumChargingLevel;
  if (!lazy protocol witness table cache variable for type CAFMinimumChargingLevel and conformance CAFMinimumChargingLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFMinimumChargingLevel, 0x277CF8528);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFMinimumChargingLevel and conformance CAFMinimumChargingLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMinimumChargingLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFMinimumChargingLevelObservable and conformance CAFMinimumChargingLevelObservable(&lazy protocol witness table cache variable for type CAFMinimumChargingLevelObservable and conformance CAFMinimumChargingLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMinimumChargingLevelObservable and conformance CAFMinimumChargingLevelObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMinimumChargingLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitLength>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CAFMinimumChargingLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path setter for CAFTargetChargingLevelObservable.chargingLevel : CAFTargetChargingLevelObservable(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return CAFTargetChargingLevelObservable.chargingLevel.setter(v7);
}

uint64_t CAFTargetChargingLevelObservable.chargingLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel;
  OUTLINED_FUNCTION_234();
  v4 = *(*(v1 + v3) + 16);
  v12 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed);

  v5 = v12;
  v6 = swift_readAtKeyPath();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  (*(*(v9 - 8) + 16))(a1, v8, v9);
  v6(&v11, 0);
}

uint64_t CAFTargetChargingLevelObservable.chargingLevel.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v4 = OUTLINED_FUNCTION_30(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v6 + 16))(v10, a1, v3);
  v11 = v1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTargetChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
  return (*(v6 + 8))(a1, v3);
}

void (*CAFTargetChargingLevelObservable.chargingLevel.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
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
  v10 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel;
  OUTLINED_FUNCTION_234();
  v11 = *(*(v1 + v10) + 16);
  v12 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed);
  v3[7] = v12;

  v13 = v12;
  v14 = swift_readAtKeyPath();
  v15 = *(v6 + 16);
  v3[15] = v15;
  v3[16] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v9);
  v14(v3, 0);

  return CAFTargetChargingLevelObservable.chargingLevel.modify;
}

void CAFTargetChargingLevelObservable.chargingLevel.modify(uint64_t *a1, char a2)
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
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTargetChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v13 = *(v2 + 104);
    v12 = *(v2 + 112);
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);
    v14 = *(v2 + 64);
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTargetChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
  }

  free(v6);
  free(v7);

  free(v2);
}

uint64_t CAFTargetChargingLevelObservable.$chargingLevel.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFTargetChargingLevelObservable.distanceKM.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();
}

uint64_t CAFTargetChargingLevelObservable._description.getter()
{
  _StringGuts.grow(_:)(43);
  MEMORY[0x245D0A530](0xD000000000000023, 0x800000024230DA60);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFTargetChargingLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTargetChargingLevelObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTargetChargingLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA32CAFTargetChargingLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMd, _s10CAFCombine13SafePublishedCyAA32CAFTargetChargingLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__distanceKM;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTargetChargingLevelObservableC10Foundation11MeasurementVySo12NSUnitLengthCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTargetChargingLevelObservableC10Foundation11MeasurementVySo12NSUnitLengthCGSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__distanceMiles;
  swift_getKeyPath();
  v18 = *(v13 + 48);
  v19 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v17] = v20;
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFTargetChargingLevelObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFTargetChargingLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTargetChargingLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTargetChargingLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTargetChargingLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTargetChargingLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFTargetChargingLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTargetChargingLevelObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFTargetChargingLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTargetChargingLevelObservable.chargingLevelService(_:didUpdateChargingLevel:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  specialized SafePublished.setValue(_:)(a2);
}

uint64_t CAFTargetChargingLevelObservable.chargingLevelService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFTargetChargingLevelObservable.chargingLevelService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v14 = v12;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = a3;
  v17 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitLength>?(v12);
}

uint64_t CAFTargetChargingLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTargetChargingLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFTargetChargingLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFTargetChargingLevel and conformance CAFTargetChargingLevel()
{
  result = lazy protocol witness table cache variable for type CAFTargetChargingLevel and conformance CAFTargetChargingLevel;
  if (!lazy protocol witness table cache variable for type CAFTargetChargingLevel and conformance CAFTargetChargingLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTargetChargingLevel, 0x277CF86A0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTargetChargingLevel and conformance CAFTargetChargingLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTargetChargingLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTargetChargingLevelObservable and conformance CAFTargetChargingLevelObservable(&lazy protocol witness table cache variable for type CAFTargetChargingLevelObservable and conformance CAFTargetChargingLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTargetChargingLevelObservable and conformance CAFTargetChargingLevelObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTargetChargingLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFTargetChargingLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

id CAFAutoClimateControl.levelBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setLevel_];
}

id CAFAutoClimateControl.intensityBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setIntensity_];
}

uint64_t key path getter for CAFAutoClimateControlObservable.level : CAFAutoClimateControlObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFAutoClimateControlObservable.level.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void (*CAFAutoClimateControlObservable.level.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v5 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v5;
  v5[8] = v1;
  v5[9] = swift_getKeyPath();
  v5[10] = swift_getKeyPath();
  v6 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__level;
  OUTLINED_FUNCTION_234();
  v7 = *(*(v1 + v6) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  v8 = v2;
  v9 = OUTLINED_FUNCTION_2_5();
  v11 = OUTLINED_FUNCTION_4_7(v9, v10);
  v12(v11);

  *(v5 + 88) = v1;
  *(v5 + 89) = v3;
  return CAFAutoClimateControlObservable.level.modify;
}

uint64_t key path getter for CAFAutoClimateControlObservable.intensity : CAFAutoClimateControlObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFAutoClimateControlObservable.intensity.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFAutoClimateControlObservable.level.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_234();
  v3 = *(*(v1 + v2) + 16);
  v11 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  v4 = v11;
  v5 = swift_readAtKeyPath();
  v7 = *v6;
  v8 = v6[1];
  v5(v10, 0);

  return v7 | (v8 << 8);
}

uint64_t CAFAutoClimateControlObservable.level.setter(__int16 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1 & 0x1FF, v8, KeyPath, v7);
}

void (*CAFAutoClimateControlObservable.intensity.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v5 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v5;
  v5[8] = v1;
  v5[9] = swift_getKeyPath();
  v5[10] = swift_getKeyPath();
  v6 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__intensity;
  OUTLINED_FUNCTION_234();
  v7 = *(*(v1 + v6) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  v8 = v2;
  v9 = OUTLINED_FUNCTION_2_5();
  v11 = OUTLINED_FUNCTION_4_7(v9, v10);
  v12(v11);

  *(v5 + 88) = v1;
  *(v5 + 89) = v3;
  return CAFAutoClimateControlObservable.intensity.modify;
}

void CAFAutoClimateControlObservable.level.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88) | (*(*a1 + 89) << 8), *(*a1 + 64), v3[9], v3[10]);

  free(v3);
}

uint64_t CAFAutoClimateControlObservable.$level.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFAutoClimateControlObservable.vehicleLayoutKey.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__vehicleLayoutKey) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFAutoClimateControlObservable.name.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__name) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFAutoClimateControlObservable.$vehicleLayoutKey.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFAutoClimateControlObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForAutoModeLevel])
  {
    CAFAutoClimateControlObservable.level.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    v2 = String.init<A>(describing:)();
    v3 = v4;
  }

  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if ([v1 registeredForAutoModeIntensity])
  {
    CAFAutoClimateControlObservable.intensity.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutoModeIntensityVSgMd, &_sSo20CAFAutoModeIntensityVSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  if ([v1 registeredForVehicleLayoutKey])
  {
    CAFAutoClimateControlObservable.vehicleLayoutKey.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(88);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230DB10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6C6576656C207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0x736E65746E69202CLL, 0xED0000203A797469);
  MEMORY[0x245D0A530](v5, v6);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  v8 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v8);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFAutoClimateControlObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFAutoClimateControlObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFAutoClimateControlObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__level;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFAutoClimateControlObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFAutoClimateControlObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__intensity;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFAutoClimateControlObservableCSo0D13ModeIntensityVSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFAutoClimateControlObservableCSo0D13ModeIntensityVSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFAutoClimateControlObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFAutoClimateControlObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v14);
  OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__name;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFAutoClimateControlObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFAutoClimateControlObservableCSSGMR);
  OUTLINED_FUNCTION_225(v16);
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)(v17);
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed] = a1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CAFAutoClimateControlObservable();
  v18 = a1;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  [v18 registerObserver_];

  return v19;
}

uint64_t CAFAutoClimateControlObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFAutoClimateControlObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFAutoClimateControlObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFAutoClimateControlObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFAutoClimateControlObservable@<X0>(void *a1@<X8>)
{
  result = CAFAutoClimateControlObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFAutoClimateControlObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFAutoClimateControlObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateLevel:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  v7 = *a3;
  OUTLINED_FUNCTION_234();
  v8 = *(v4 + v7);

  a4(a2);
}

uint64_t CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateVehicleLayoutKey:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__vehicleLayoutKey);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateName:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__name);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFAutoClimateControlObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFAutoClimateControlObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFAutoClimateControlObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFAutoClimateControl.levelBridged : CAFAutoClimateControl@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFAutoClimateControl.levelBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFAutoClimateControl.intensityBridged : CAFAutoClimateControl@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFAutoClimateControl.intensityBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void key path getter for CAFAutoClimateControl.vehicleLayoutKey : CAFAutoClimateControl(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 vehicleLayoutKey];
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

unint64_t type metadata accessor for CAFAutoClimateControl()
{
  result = lazy cache variable for type metadata for CAFAutoClimateControl;
  if (!lazy cache variable for type metadata for CAFAutoClimateControl)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFAutoClimateControl);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFAutoClimateControlObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFAutoClimateControlObservable and conformance CAFAutoClimateControlObservable(&lazy protocol witness table cache variable for type CAFAutoClimateControlObservable and conformance CAFAutoClimateControlObservable, a2, type metadata accessor for CAFAutoClimateControlObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAutoClimateControlObservable and conformance CAFAutoClimateControlObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFAutoClimateControlObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFCabinObservable.maxACOn : CAFCabinObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCabinObservable.maxACOn.getter();
  *a2 = result;
  return result;
}

uint64_t CAFCabinObservable.maxACOn.setter(uint64_t a1)
{
  return CAFCabinObservable.maxACOn.setter(a1);
}

{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFCabinObservableC_SbSgTt3g5(a1, v5, KeyPath, v4);
}

uint64_t CAFCabinObservable.maxACOn.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = OUTLINED_FUNCTION_4_6(v6, v7);
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFCabinObservable.maxDefrostOn : CAFCabinObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCabinObservable.maxDefrostOn.getter();
  *a2 = result;
  return result;
}

uint64_t CAFCabinObservable.maxDefrostOn.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = OUTLINED_FUNCTION_4_6(v6, v7);
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFCabinObservable.hvacOn : CAFCabinObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCabinObservable.hvacOn.getter();
  *a2 = result;
  return result;
}

uint64_t CAFCabinObservable.hvacOn.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = OUTLINED_FUNCTION_4_6(v6, v7);
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFCabinObservable.compressorOn : CAFCabinObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCabinObservable.compressorOn.getter();
  *a2 = result;
  return result;
}

uint64_t CAFCabinObservable.maxACOn.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v10 = *(v1 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v4 = v10;
  v5 = swift_readAtKeyPath();
  v7 = *v6;
  v5(&v9, 0);

  return v7;
}

uint64_t CAFCabinObservable.compressorOn.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = OUTLINED_FUNCTION_4_6(v6, v7);
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFCabinObservable.maxACOn.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFCabinObservableC_SbSgTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFCabinObservable.$maxACOn.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);

  specialized SafePublished.projectedValue.getter();
  v5 = v4;

  return v5;
}

uint64_t CAFCabinObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);
  v4 = [v3 registeredForMaxACOn];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFCabinObservable.maxACOn.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v5 = OUTLINED_FUNCTION_4_14();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForMaxDefrostOn])
  {
    CAFCabinObservable.maxDefrostOn.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v8 = OUTLINED_FUNCTION_4_14();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForHVACOn])
  {
    CAFCabinObservable.hvacOn.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v11 = OUTLINED_FUNCTION_4_14();
    v12 = v13;
  }

  if ([v3 registeredForACCompressorOn])
  {
    CAFCabinObservable.compressorOn.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v2 = OUTLINED_FUNCTION_4_14();
    v1 = v14;
  }

  _StringGuts.grow(_:)(88);
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230DBE0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x434178616D207B20, 0xEC000000203A6E4FLL);
  MEMORY[0x245D0A530](v16, v6);

  OUTLINED_FUNCTION_9_4();
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x6E4F63617668202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v11, v12);

  OUTLINED_FUNCTION_9_4();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFCabinObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFCabinObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFCabinObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable__maxACOn;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFCabinObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA18CAFCabinObservableCSbSgGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v2[v7] = OUTLINED_FUNCTION_8_2();
  v11 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable__maxDefrostOn;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v11] = OUTLINED_FUNCTION_8_2();
  v12 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable__hvacOn;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v12] = OUTLINED_FUNCTION_8_2();
  v13 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable__compressorOn;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v13] = OUTLINED_FUNCTION_8_2();
  *&v2[OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed] = a1;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for CAFCabinObservable();
  v14 = a1;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  [v14 registerObserver_];

  return v15;
}

uint64_t CAFCabinObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCabinObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCabinObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCabinObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCabinObservable@<X0>(void *a1@<X8>)
{
  result = CAFCabinObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCabinObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFCabinObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFCabinObservable.cabinService(_:didUpdateMaxACOn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(v3 + v4);

  specialized SafePublished.value.setter();
}

uint64_t CAFCabinObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCabinObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFCabinObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFCabin()
{
  result = lazy cache variable for type metadata for CAFCabin;
  if (!lazy cache variable for type metadata for CAFCabin)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCabin);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCabinObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCabinObservable and conformance CAFCabinObservable(&lazy protocol witness table cache variable for type CAFCabinObservable and conformance CAFCabinObservable, a2, type metadata accessor for CAFCabinObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCabinObservable and conformance CAFCabinObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFCabinObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return specialized SafePublished.init(observedValuekeypath:)(v0);
}

void OUTLINED_FUNCTION_9_4()
{

  JUMPOUT(0x245D0A530);
}

uint64_t key path getter for CAFClimateControlsLockedObservable.lockState : CAFClimateControlsLockedObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFClimateControlsLockedObservable.lockState.getter();
  *a2 = result;
  return result;
}

uint64_t CAFClimateControlsLockedObservable.lockState.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFClimateControlsLockedObservable.lockState.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFClimateControlsLockedObservableC_So12CAFLockStateVTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFClimateControlsLockedObservable.lockState.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFClimateControlsLockedObservable.lockState.modify;
}

void CAFClimateControlsLockedObservable.lockState.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFClimateControlsLockedObservableC_So12CAFLockStateVTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFClimateControlsLockedObservable.$lockState.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFClimateControlsLockedObservable.vehicleLayoutKey.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__vehicleLayoutKey) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFClimateControlsLockedObservable.name.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__name) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFClimateControlsLockedObservable.$vehicleLayoutKey.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFClimateControlsLockedObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForLockState])
  {
    CAFClimateControlsLockedObservable.lockState.getter();
    v4 = NSStringFromLockState();
    if (v4)
    {
      v5 = v4;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v6;
    }

    else
    {
      v3 = 0xE900000000000029;
      v2 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v1 registeredForVehicleLayoutKey])
  {
    CAFClimateControlsLockedObservable.vehicleLayoutKey.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(80);
  MEMORY[0x245D0A530](0xD000000000000025, 0x800000024230DCC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x536B636F6C207B20, 0xEE00203A65746174);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  v7 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v7);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFClimateControlsLockedObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    locked = CAFClimateControlsLockedObservable._description.getter();
    v7 = v3[1];
    *v3 = locked;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFClimateControlsLockedObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA34CAFClimateControlsLockedObservableCSo12CAFLockStateVGMd, _s10CAFCombine13SafePublishedCyAA34CAFClimateControlsLockedObservableCSo12CAFLockStateVGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFClimateControlsLockedObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFClimateControlsLockedObservableCSSSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__name;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFClimateControlsLockedObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFClimateControlsLockedObservableCSSGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v20);
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFClimateControlsLockedObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFClimateControlsLockedObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFClimateControlsLockedObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFClimateControlsLockedObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFClimateControlsLockedObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFClimateControlsLockedObservable@<X0>(void *a1@<X8>)
{
  result = CAFClimateControlsLockedObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFClimateControlsLockedObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFClimateControlsLockedObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}