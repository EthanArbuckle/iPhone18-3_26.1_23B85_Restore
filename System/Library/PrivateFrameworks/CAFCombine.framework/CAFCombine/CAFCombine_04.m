uint64_t OUTLINED_FUNCTION_162@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 120) = *(v3 + a1);
  v5 = *(v1 + 16);
  result = v2;
  v7 = *(v4 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_163()
{

  return Published.init(initialValue:)();
}

uint64_t OUTLINED_FUNCTION_170()
{

  return Published.init(initialValue:)();
}

uint64_t OUTLINED_FUNCTION_171()
{

  return outlined destroy of CAUVehicleLayoutKey?(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_174()
{

  return swift_setAtReferenceWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_175(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
}

uint64_t OUTLINED_FUNCTION_201(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 128) = a3;
  *(v3 - 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_202()
{

  return dispatch thunk of ObservableObject.objectWillChange.getter();
}

uint64_t OUTLINED_FUNCTION_203()
{

  return Published.projectedValue.getter();
}

uint64_t OUTLINED_FUNCTION_204(unint64_t *a1)
{

  return lazy protocol witness table accessor for type Published<String?>.Publisher and conformance Published<A>.Publisher(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_205()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_206(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
}

uint64_t OUTLINED_FUNCTION_207()
{
}

uint64_t OUTLINED_FUNCTION_208(unint64_t *a1)
{

  return lazy protocol witness table accessor for type Published<String?>.Publisher and conformance Published<A>.Publisher(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_209()
{

  return Published.projectedValue.getter();
}

uint64_t OUTLINED_FUNCTION_210()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_211()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_212()
{

  return Published.init(initialValue:)();
}

uint64_t OUTLINED_FUNCTION_214()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_216()
{

  return swift_setAtReferenceWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_224()
{

  return swift_readAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_225(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_229()
{

  return static Published.subscript.setter();
}

void OUTLINED_FUNCTION_230()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_231()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_232()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_233()
{
}

uint64_t OUTLINED_FUNCTION_234()
{

  return swift_beginAccess();
}

uint64_t CAFSoundDistribution.fadeBridged.getter()
{
  v1 = [v0 hasFade];
  v2 = v1;
  if (v1)
  {
    LOBYTE(v1) = [v0 fade];
  }

  return v1 | ((v2 ^ 1) << 8);
}

id CAFSoundDistribution.fadeBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setFade_];
}

uint64_t key path getter for CAFSoundDistributionObservable.balance : CAFSoundDistributionObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSoundDistributionObservable.balance.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSoundDistributionObservable.balance.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable__balance;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFSoundDistributionObservable.balance.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA30CAFSoundDistributionObservableC_s4Int8VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFSoundDistributionObservable.balance.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable__balance;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v4, 0);

  *(v4 + 88) = v10;
  return CAFSoundDistributionObservable.balance.modify;
}

void CAFSoundDistributionObservable.balance.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA30CAFSoundDistributionObservableC_s4Int8VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t key path getter for CAFSoundDistributionObservable.fade : CAFSoundDistributionObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSoundDistributionObservable.fade.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFSoundDistributionObservable.fade.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable__fade;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_observed);

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v7 = v5[1];
  v4(v9, 0);

  return v6 | (v7 << 8);
}

uint64_t CAFSoundDistributionObservable.fade.setter(__int16 a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA30CAFSoundDistributionObservableC_s4Int8VSgTt3g5(a1 & 0x1FF, v5, KeyPath, v4);
}

void (*CAFSoundDistributionObservable.fade.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable__fade;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v11 = v9[1];
  v8(v4, 0);

  *(v4 + 88) = v10;
  *(v4 + 89) = v11;
  return CAFSoundDistributionObservable.fade.modify;
}

void CAFSoundDistributionObservable.fade.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA30CAFSoundDistributionObservableC_s4Int8VSgTt3g5(*(*a1 + 88) | (*(*a1 + 89) << 8), *(*a1 + 64), v1[9], v1[10]);

  free(v1);
}

uint64_t CAFSoundDistributionObservable.$balance.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_0_6();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFSoundDistributionObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForBalance])
  {
    CAFSoundDistributionObservable.balance.getter();
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v5 = v6;
  }

  if ([v3 registeredForFade])
  {
    CAFSoundDistributionObservable.fade.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8VSgMd, &_ss4Int8VSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(62);
  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230B7A0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6E616C6162207B20, 0xEC000000203A6563);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x203A65646166202CLL, 0xE800000000000000);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSoundDistributionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSoundDistributionObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSoundDistributionObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable__balance;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA30CAFSoundDistributionObservableCs4Int8VGMd, &_s10CAFCombine13SafePublishedCyAA30CAFSoundDistributionObservableCs4Int8VGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v11;
  v12 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable__fade;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA30CAFSoundDistributionObservableCs4Int8VSgGMd, _s10CAFCombine13SafePublishedCyAA30CAFSoundDistributionObservableCs4Int8VSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v16;
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFSoundDistributionObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFSoundDistributionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSoundDistributionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSoundDistributionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSoundDistributionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSoundDistributionObservable@<X0>(void *a1@<X8>)
{
  result = CAFSoundDistributionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSoundDistributionObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFSoundDistributionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSoundDistributionObservable.soundDistributionService(_:didUpdateBalance:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable__balance;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFSoundDistributionObservable.soundDistributionService(_:didUpdateFade:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable__fade;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFSoundDistributionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSoundDistributionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFSoundDistributionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFSoundDistribution.fadeBridged : CAFSoundDistribution@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSoundDistribution.fadeBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFSoundDistribution()
{
  result = lazy cache variable for type metadata for CAFSoundDistribution;
  if (!lazy cache variable for type metadata for CAFSoundDistribution)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSoundDistribution);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSoundDistributionObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable(&lazy protocol witness table cache variable for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable, a2, type metadata accessor for CAFSoundDistributionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFSoundDistributionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFSoundDistributionObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_readAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_3_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 56) = *(v1 + a1);
}

uint64_t CAFVolume.muteBridged.getter()
{
  if ([v0 hasMute])
  {
    return [v0 mute];
  }

  else
  {
    return 2;
  }
}

uint64_t CAFVolumeObservable.volumeType.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__volumeType) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFVolumeObservable.volume : CAFVolumeObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFVolumeObservable.volume.getter();
  *a2 = result;
  return result;
}

void (*CAFVolumeObservable.volume.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__volume;
  OUTLINED_FUNCTION_5_6();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFVolumeObservable.volume.modify;
}

uint64_t CAFVolumeObservable.userVisibleLabel.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__userVisibleLabel) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t key path getter for CAFVolumeObservable.mute : CAFVolumeObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFVolumeObservable.mute.getter();
  *a2 = result;
  return result;
}

uint64_t CAFVolumeObservable.volume.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v10 = *(v1 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_observed);

  v4 = v10;
  v5 = swift_readAtKeyPath();
  v7 = *v6;
  v5(&v9, 0);

  return v7;
}

uint64_t CAFVolumeObservable.volume.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

void (*CAFVolumeObservable.mute.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__mute;
  OUTLINED_FUNCTION_5_6();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFVolumeObservable.mute.modify;
}

void CAFVolumeObservable.volume.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t CAFVolumeObservable.$volume.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_0_6();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFVolumeObservable.name.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__name) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFVolumeObservable.$volumeType.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFVolumeObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForVolumeType])
  {
    CAFVolumeObservable.volumeType.getter();
    v4 = NSStringFromVolumeType();
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

  v7 = [v1 registeredForVolume];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    CAFVolumeObservable.volume.getter();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleLabel])
  {
    CAFVolumeObservable.userVisibleLabel.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v1 registeredForMute])
  {
    CAFVolumeObservable.mute.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(88);
  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230B840);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6D756C6F76207B20, 0xEF203A6570795465);
  MEMORY[0x245D0A530](v16, v3);

  MEMORY[0x245D0A530](0x656D756C6F76202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230B700);
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0x203A6574756D202CLL, 0xE800000000000000);
  v14 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v14);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFVolumeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFVolumeObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFVolumeObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__volumeType;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFVolumeObservableCSo0F4TypeVGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFVolumeObservableCSo0F4TypeVGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__volume;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA19CAFVolumeObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA19CAFVolumeObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__userVisibleLabel;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFVolumeObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFVolumeObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v14);
  OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__mute;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA19CAFVolumeObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA19CAFVolumeObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v16);
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__name;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFVolumeObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFVolumeObservableCSSGMR);
  OUTLINED_FUNCTION_225(v19);
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v20);
  *&v2[OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFVolumeObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFVolumeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFVolumeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFVolumeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFVolumeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFVolumeObservable@<X0>(void *a1@<X8>)
{
  result = CAFVolumeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFVolumeObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFVolumeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFVolumeObservable.volumeService(_:didUpdateVolumeType:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__volumeType);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFVolumeObservable.volumeService(_:didUpdateVolume:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__volume;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFVolumeObservable.volumeService(_:didUpdateUserVisibleLabel:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__userVisibleLabel);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFVolumeObservable.volumeService(_:didUpdateMute:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__mute;
  OUTLINED_FUNCTION_0_6();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFVolumeObservable.volumeService(_:didUpdateName:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable__name);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFVolumeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFVolumeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFVolumeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFVolume()
{
  result = lazy cache variable for type metadata for CAFVolume;
  if (!lazy cache variable for type metadata for CAFVolume)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFVolume);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFVolumeObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFVolumeObservable and conformance CAFVolumeObservable(&lazy protocol witness table cache variable for type CAFVolumeObservable and conformance CAFVolumeObservable, a2, type metadata accessor for CAFVolumeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFVolumeObservable and conformance CAFVolumeObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFVolumeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine19CAFVolumeObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return swift_beginAccess();
}

uint64_t CAFAutomakerAppObservable.identifier.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFAutomakerAppObservable.$identifier.getter(void *a1)
{
  v2 = *(v1 + *a1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFAutomakerAppObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForIdentifier])
  {
    v4 = CAFAutomakerAppObservable.identifier.getter();
    v5 = v6;
  }

  if ([v3 registeredForAppClipIdentifier])
  {
    v2 = CAFAutomakerAppObservable.appClipIdentifier.getter();
    v1 = v7;
  }

  _StringGuts.grow(_:)(73);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230B8E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230B900);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFAutomakerAppObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFAutomakerAppObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFAutomakerAppObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFAutomakerAppObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFAutomakerAppObservableCSSGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v2[v7] = OUTLINED_FUNCTION_0_8();
  v11 = OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable__appClipIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v11] = OUTLINED_FUNCTION_0_8();
  v12 = OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v12] = OUTLINED_FUNCTION_0_8();
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_observed] = a1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CAFAutomakerAppObservable();
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [v13 registerObserver_];

  return v14;
}

uint64_t CAFAutomakerAppObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFAutomakerAppObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFAutomakerAppObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFAutomakerAppObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFAutomakerAppObservable@<X0>(void *a1@<X8>)
{
  result = CAFAutomakerAppObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFAutomakerAppObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFAutomakerAppObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFAutomakerAppObservable.automakerAppService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFAutomakerAppObservable.automakerAppService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFAutomakerAppObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFAutomakerAppObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFAutomakerAppObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFAutomakerApp.identifier : CAFAutomakerApp(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

unint64_t type metadata accessor for CAFAutomakerApp()
{
  result = lazy cache variable for type metadata for CAFAutomakerApp;
  if (!lazy cache variable for type metadata for CAFAutomakerApp)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFAutomakerApp);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFAutomakerAppObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFAutomakerAppObservable and conformance CAFAutomakerAppObservable(&lazy protocol witness table cache variable for type CAFAutomakerAppObservable and conformance CAFAutomakerAppObservable, a2, type metadata accessor for CAFAutomakerAppObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAutomakerAppObservable and conformance CAFAutomakerAppObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFAutomakerAppObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFAutomakerAppObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return specialized SafePublished.init(observedValuekeypath:)(v0);
}

uint64_t OUTLINED_FUNCTION_1_9()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

id CAFCameraButton.buttonActionBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setButtonAction_];
}

uint64_t CAFCameraButton.disabledBridged.getter(SEL *a1, SEL *a2)
{
  if ([v2 *a1])
  {
    return [v2 *a2];
  }

  else
  {
    return 2;
  }
}

uint64_t CAFCameraButton.buttonActionBridged.getter(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = v4;
  if (v4)
  {
    v4 = [v2 *a2];
  }

  return v4 | ((v5 ^ 1) << 8);
}

id CAFCameraButton.selectedEntryIndexBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setSelectedEntryIndex_];
}

uint64_t key path getter for CAFCameraButtonObservable.buttonAction : CAFCameraButtonObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCameraButtonObservable.buttonAction.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void (*CAFCameraButtonObservable.buttonAction.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v5 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v5;
  v5[8] = v1;
  v5[9] = swift_getKeyPath();
  v5[10] = swift_getKeyPath();
  v6 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__buttonAction;
  OUTLINED_FUNCTION_234();
  v7 = *(*(v1 + v6) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed);

  v8 = v2;
  v9 = OUTLINED_FUNCTION_2_5();
  v11 = OUTLINED_FUNCTION_4_7(v9, v10);
  v12(v11);

  *(v5 + 88) = v1;
  *(v5 + 89) = v3;
  return CAFCameraButtonObservable.buttonAction.modify;
}

uint64_t CAFCameraButtonObservable.contentURLAction.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__contentURLAction);
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed);

  v1 = v3;
  OUTLINED_FUNCTION_232();

  return v4;
}

uint64_t CAFCameraButtonObservable.sortOrder.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__sortOrder);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed);

  v1 = v0;
  OUTLINED_FUNCTION_231();

  return v3;
}

uint64_t CAFCameraButtonObservable.disabled.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231();

  return v4;
}

uint64_t CAFCameraButtonObservable.childrenIdentifiers.getter()
{
  OUTLINED_FUNCTION_228(OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__childrenIdentifiers);
  OUTLINED_FUNCTION_7_4(OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed);

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t key path getter for CAFCameraButtonObservable.selectedEntryIndex : CAFCameraButtonObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCameraButtonObservable.selectedEntryIndex.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFCameraButtonObservable.buttonAction.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_234();
  v3 = *(*(v1 + v2) + 16);
  v11 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed);

  v4 = v11;
  v5 = swift_readAtKeyPath();
  v7 = *v6;
  v8 = v6[1];
  v5(v10, 0);

  return v7 | (v8 << 8);
}

uint64_t CAFCameraButtonObservable.buttonAction.setter(__int16 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1 & 0x1FF, v8, KeyPath, v7);
}

void (*CAFCameraButtonObservable.selectedEntryIndex.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v5 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v5;
  v5[8] = v1;
  v5[9] = swift_getKeyPath();
  v5[10] = swift_getKeyPath();
  v6 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v7 = *(*(v1 + v6) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed);

  v8 = v2;
  v9 = OUTLINED_FUNCTION_2_5();
  v11 = OUTLINED_FUNCTION_4_7(v9, v10);
  v12(v11);

  *(v5 + 88) = v1;
  *(v5 + 89) = v3;
  return CAFCameraButtonObservable.selectedEntryIndex.modify;
}

void CAFCameraButtonObservable.buttonAction.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88) | (*(*a1 + 89) << 8), *(*a1 + 64), v3[9], v3[10]);

  free(v3);
}

uint64_t CAFCameraButtonObservable.$buttonAction.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFCameraButtonObservable.symbolName.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_228(*a1);
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFCameraButtonObservable.$contentURLAction.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFCameraButtonObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed);
  [v1 registeredForButtonAction];
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    CAFCameraButtonObservable.buttonAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CAFButtonActionVSgMd, &_sSo15CAFButtonActionVSgMR);
    v3 = OUTLINED_FUNCTION_5_7();
  }

  v47 = v3;
  v48 = v2;
  [v1 registeredForContentURLAction];
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    CAFCameraButtonObservable.contentURLAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v6 = OUTLINED_FUNCTION_5_7();
  }

  v45 = v6;
  v46 = v5;
  [v1 registeredForSortOrder];
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    CAFCameraButtonObservable.sortOrder.getter();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v43 = v9;
  v44 = v8;
  [v1 registeredForSymbolName];
  OUTLINED_FUNCTION_9_2();
  if (v13)
  {
    v12 = CAFCameraButtonObservable.symbolName.getter();
  }

  v41 = v12;
  v42 = v11;
  v14 = [v1 registeredForDisabled];
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if (v14)
  {
    CAFCameraButtonObservable.disabled.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v15 = OUTLINED_FUNCTION_5_7();
    v16 = v17;
  }

  v40 = v15;
  v18 = [v1 registeredForSelected];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    CAFCameraButtonObservable.selected.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v19 = OUTLINED_FUNCTION_5_7();
    v20 = v21;
  }

  v39 = v19;
  v22 = [v1 registeredForHidden];
  v23 = 0x73696765726E753CLL;
  v24 = 0xEE003E6465726574;
  if (v22)
  {
    CAFCameraButtonObservable.hidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v23 = OUTLINED_FUNCTION_5_7();
    v24 = v25;
  }

  v38 = v23;
  v26 = [v1 registeredForIdentifier];
  v27 = 0x73696765726E753CLL;
  v28 = 0xEE003E6465726574;
  if (v26)
  {
    v27 = CAFCameraButtonObservable.identifier.getter();
    v28 = v29;
  }

  v37 = v27;
  v30 = [v1 registeredForChildrenIdentifiers];
  v31 = 0x73696765726E753CLL;
  v32 = 0xEE003E6465726574;
  if (v30)
  {
    CAFCameraButtonObservable.childrenIdentifiers.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v31 = OUTLINED_FUNCTION_5_7();
    v32 = v33;
  }

  if ([v1 registeredForSelectedEntryIndex])
  {
    CAFCameraButtonObservable.selectedEntryIndex.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    OUTLINED_FUNCTION_5_7();
  }

  _StringGuts.grow(_:)(210);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230BA00);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230BA20);
  MEMORY[0x245D0A530](v47, v48);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230BA40);
  MEMORY[0x245D0A530](v45, v46);

  MEMORY[0x245D0A530](0x724F74726F73202CLL, 0xED0000203A726564);
  MEMORY[0x245D0A530](v43, v44);

  MEMORY[0x245D0A530](0x6C6F626D7973202CLL, 0xEE00203A656D614ELL);
  MEMORY[0x245D0A530](v41, v42);

  MEMORY[0x245D0A530](0x6C6261736964202CLL, 0xEC000000203A6465);
  MEMORY[0x245D0A530](v40, v16);

  MEMORY[0x245D0A530](0x7463656C6573202CLL, 0xEC000000203A6465);
  MEMORY[0x245D0A530](v39, v20);

  MEMORY[0x245D0A530](0x6E6564646968202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v38, v24);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v37, v28);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230BA60);
  MEMORY[0x245D0A530](v36, v32);

  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230BA80);
  v34 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v34);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFCameraButtonObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFCameraButtonObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFCameraButtonObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__buttonAction;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA25CAFCameraButtonObservableCSo15CAFButtonActionVSgGMd, _s10CAFCombine13SafePublishedCyAA25CAFCameraButtonObservableCSo15CAFButtonActionVSgGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v7] = v9;
  v10 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__contentURLAction;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCs5UInt8VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__symbolName;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCSSGMR);
  OUTLINED_FUNCTION_225(v16);
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v20);
  v21 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__selected;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  v27 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__childrenIdentifiers;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCSaySSGSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFCameraButtonObservableCSaySSGSgGMR);
  OUTLINED_FUNCTION_225(v28);
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)();
  v29 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__selectedEntryIndex;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA25CAFCameraButtonObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA25CAFCameraButtonObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v30);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v29] = v31;
  v32 = OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v33 = OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafePublished.init(observedValuekeypath:)(v33);
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed] = a1;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for CAFCameraButtonObservable();
  v34 = a1;
  v35 = objc_msgSendSuper2(&v37, sel_init);
  [v34 registerObserver_];

  return v35;
}

uint64_t CAFCameraButtonObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCameraButtonObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCameraButtonObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCameraButtonObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCameraButtonObservable@<X0>(void *a1@<X8>)
{
  result = CAFCameraButtonObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCameraButtonObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFCameraButtonObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFCameraButtonObservable.cameraButtonService(_:didUpdateContentURLAction:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__contentURLAction);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCameraButtonObservable.cameraButtonService(_:didUpdateSortOrder:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__sortOrder);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCameraButtonObservable.cameraButtonService(_:didUpdateDisabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3(*a3);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFCameraButtonObservable.cameraButtonService(_:didUpdateSymbolName:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFCameraButtonObservable.cameraButtonService(_:didUpdateChildrenIdentifiers:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable__childrenIdentifiers);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCameraButtonObservable.cameraButtonService(_:didUpdateButtonAction:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  v7 = *a3;
  OUTLINED_FUNCTION_234();
  v8 = *(v4 + v7);

  a4(a2);
}

uint64_t CAFCameraButtonObservable.cameraButtonService(_:didUpdateSymbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCameraButtonObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCameraButtonObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFCameraButtonObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFCameraButton.buttonActionBridged : CAFCameraButton@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCameraButton.buttonActionBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void key path getter for CAFCameraButton.contentURLAction : CAFCameraButton(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 contentURLAction];
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

void key path getter for CAFCameraButton.childrenIdentifiers : CAFCameraButton(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 childrenIdentifiers];
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

uint64_t key path getter for CAFCameraButton.selectedEntryIndexBridged : CAFCameraButton@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCameraButton.selectedEntryIndexBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFCameraButton()
{
  result = lazy cache variable for type metadata for CAFCameraButton;
  if (!lazy cache variable for type metadata for CAFCameraButton)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCameraButton);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCameraButtonObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCameraButtonObservable and conformance CAFCameraButtonObservable(&lazy protocol witness table cache variable for type CAFCameraButtonObservable and conformance CAFCameraButtonObservable, a2, type metadata accessor for CAFCameraButtonObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCameraButtonObservable and conformance CAFCameraButtonObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFCameraButtonObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFCameraButtonObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_7_4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
}

uint64_t OUTLINED_FUNCTION_13_2()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
}

uint64_t key path getter for CAFCameraGeneralObservable.on : CAFCameraGeneralObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFCameraGeneralObservable.on.getter();
  *a2 = result & 1;
  return result;
}

uint64_t CAFCameraGeneralObservable.on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFCameraGeneralObservable.on.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFCameraGeneralObservableC_SbTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFCameraGeneralObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable__on;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFCameraGeneralObservable.on.modify;
}

void CAFCameraGeneralObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFCameraGeneralObservableC_SbTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFCameraGeneralObservable.$on.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFCameraGeneralObservable.userDismissible.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable__userDismissible) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFCameraGeneralObservable.$userDismissible.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable__userDismissible);

  specialized SafePublished.projectedValue.getter();
  v3 = v2;

  return v3;
}

uint64_t CAFCameraGeneralObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    v6 = CAFCameraGeneralObservable.on.getter();
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

  if ([v3 registeredForUserDismissible])
  {
    v7 = CAFCameraGeneralObservable.userDismissible.getter();
    if (v7)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v7)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }
  }

  _StringGuts.grow(_:)(64);
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x800000024230BB20);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000013, 0x800000024230BB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFCameraGeneralObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFCameraGeneralObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFCameraGeneralObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFCameraGeneralObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA26CAFCameraGeneralObservableCSbGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable__userDismissible;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFCameraGeneralObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFCameraGeneralObservableCSbGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_observed] = a1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for CAFCameraGeneralObservable();
  v15 = a1;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  [v15 registerObserver_];

  return v16;
}

uint64_t CAFCameraGeneralObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCameraGeneralObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCameraGeneralObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCameraGeneralObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCameraGeneralObservable@<X0>(void *a1@<X8>)
{
  result = CAFCameraGeneralObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCameraGeneralObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFCameraGeneralObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFCameraGeneralObservable.cameraGeneralService(_:didUpdateOn:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable__on;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFCameraGeneralObservable.cameraGeneralService(_:didUpdateUserDismissible:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable__userDismissible);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCameraGeneralObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCameraGeneralObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFCameraGeneralObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFCameraGeneral()
{
  result = lazy cache variable for type metadata for CAFCameraGeneral;
  if (!lazy cache variable for type metadata for CAFCameraGeneral)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCameraGeneral);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCameraGeneralObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCameraGeneralObservable and conformance CAFCameraGeneralObservable(&lazy protocol witness table cache variable for type CAFCameraGeneralObservable and conformance CAFCameraGeneralObservable, a2, type metadata accessor for CAFCameraGeneralObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCameraGeneralObservable and conformance CAFCameraGeneralObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFCameraGeneralObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFCameraGeneralObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFCriticalInputStreamObservable.on.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable__on) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFCriticalInputStreamObservable.inputStreamUID.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFCriticalInputStreamObservable.$inputStreamUID.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFCriticalInputStreamObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForInputStreamUID])
  {
    v4 = CAFCriticalInputStreamObservable.inputStreamUID.getter();
    v5 = v6;
  }

  if ([v3 registeredForOn])
  {
    v7 = CAFCriticalInputStreamObservable.on.getter();
    if (v7)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v7)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }
  }

  _StringGuts.grow(_:)(69);
  MEMORY[0x245D0A530](0xD000000000000023, 0x800000024230BBF0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000013, 0x800000024230BC20);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFCriticalInputStreamObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFCriticalInputStreamObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFCriticalInputStreamObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable__inputStreamUID;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFCriticalInputStreamObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFCriticalInputStreamObservableCSSGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable__on;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFCriticalInputStreamObservableCSbGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFCriticalInputStreamObservableCSbGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable__name;
  swift_getKeyPath();
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v19);
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_observed] = a1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CAFCriticalInputStreamObservable();
  v20 = a1;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  [v20 registerObserver_];

  return v21;
}

uint64_t CAFCriticalInputStreamObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCriticalInputStreamObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCriticalInputStreamObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCriticalInputStreamObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCriticalInputStreamObservable@<X0>(void *a1@<X8>)
{
  result = CAFCriticalInputStreamObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCriticalInputStreamObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFCriticalInputStreamObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFCriticalInputStreamObservable.criticalInputStreamService(_:didUpdateOn:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable__on);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFCriticalInputStreamObservable.criticalInputStreamService(_:didUpdateInputStreamUID:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFCriticalInputStreamObservable.criticalInputStreamService(_:didUpdateInputStreamUID:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFCriticalInputStreamObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCriticalInputStreamObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFCriticalInputStreamObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFCriticalInputStream()
{
  result = lazy cache variable for type metadata for CAFCriticalInputStream;
  if (!lazy cache variable for type metadata for CAFCriticalInputStream)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCriticalInputStream);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCriticalInputStreamObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCriticalInputStreamObservable and conformance CAFCriticalInputStreamObservable(&lazy protocol witness table cache variable for type CAFCriticalInputStreamObservable and conformance CAFCriticalInputStreamObservable, a2, type metadata accessor for CAFCriticalInputStreamObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCriticalInputStreamObservable and conformance CAFCriticalInputStreamObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFCriticalInputStreamObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFCriticalInputStreamObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFHistoricalNotification.userDismissibleBridged.getter()
{
  if ([v0 hasUserDismissible])
  {
    return [v0 userDismissible];
  }

  else
  {
    return 2;
  }
}

uint64_t CAFHistoricalNotification.userActionBridged.getter()
{
  v1 = [v0 hasUserAction];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 userAction];
  }

  return v1 | ((v2 ^ 1) << 8);
}

id CAFHistoricalNotification.userActionBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setUserAction_];
}

uint64_t CAFHistoricalNotificationObservable.userVisibleFullDescription.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__userVisibleFullDescription) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_232();

  return v5;
}

uint64_t CAFHistoricalNotificationObservable.timestamp.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__timestamp) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t key path getter for CAFHistoricalNotificationObservable.symbolName : CAFHistoricalNotificationObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFHistoricalNotificationObservable.symbolName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CAFHistoricalNotificationObservable.symbolName : CAFHistoricalNotificationObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CAFHistoricalNotificationObservable.symbolName.setter();
}

uint64_t CAFHistoricalNotificationObservable.symbolName.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);
  swift_retain_n();

  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = *v3;
  v5 = v3[1];

  v2(&v7, 0);

  return v4;
}

uint64_t CAFHistoricalNotificationObservable.symbolName.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_197();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA35CAFHistoricalNotificationObservableC_SSTt3g5(v2);
}

uint64_t CAFHistoricalNotificationObservable.symbolName.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v3;
  v3[10] = v1;
  v3[11] = swift_getKeyPath();
  v3[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);
  v3[9] = v4;
  swift_retain_n();

  v5 = v4;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);

  v3[7] = v9;
  v3[8] = v8;
  return OUTLINED_FUNCTION_23_2();
}

void CAFHistoricalNotificationObservable.symbolName.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 80);
  v8 = v3[11];
  v7 = v3[12];
  if (a2)
  {

    OUTLINED_FUNCTION_25_2();
    v9 = v3[8];
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }

  free(v3);
}

uint64_t key path getter for CAFHistoricalNotificationObservable.notificationSeverity : CAFHistoricalNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFHistoricalNotificationObservable.notificationSeverity.getter();
  *a2 = result;
  return result;
}

uint64_t CAFHistoricalNotificationObservable.notificationSeverity.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t CAFHistoricalNotificationObservable.historicalNotificationUserActions.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__historicalNotificationUserActions) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFHistoricalNotificationObservable.userDismissible : CAFHistoricalNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFHistoricalNotificationObservable.userDismissible.getter();
  *a2 = result;
  return result;
}

uint64_t CAFHistoricalNotificationObservable.notificationSeverity.getter(uint64_t *a1)
{
  v3 = *a1;
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v4 = v1;
  v5 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_28_2(v5, v6);
  v7();

  return v2;
}

uint64_t CAFHistoricalNotificationObservable.notificationSeverity.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

uint64_t CAFHistoricalNotificationObservable.userDismissible.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFHistoricalNotificationObservable.notificationSeverity.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t key path getter for CAFHistoricalNotificationObservable.hidden : CAFHistoricalNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFHistoricalNotificationObservable.hidden.getter();
  *a2 = result & 1;
  return result;
}

uint64_t CAFHistoricalNotificationObservable.hidden.getter()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3(OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v2 = v0;
  v3 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_28_2(v3, v4);
  v5();

  return v1;
}

uint64_t CAFHistoricalNotificationObservable.hidden.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA35CAFHistoricalNotificationObservableC_SbTt3g5(a1, v5, KeyPath, v4);
}

uint64_t CAFHistoricalNotificationObservable.hidden.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFHistoricalNotificationObservable.hidden.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA35CAFHistoricalNotificationObservableC_SbTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t key path getter for CAFHistoricalNotificationObservable.userAction : CAFHistoricalNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFHistoricalNotificationObservable.userAction.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFHistoricalNotificationObservable.userAction.getter()
{
  swift_beginAccess();
  OUTLINED_FUNCTION_27_2();
  v8 = *(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v1 = v8;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v5 = v3[1];
  v2(v7, 0);

  return v4 | (v5 << 8);
}

uint64_t CAFHistoricalNotificationObservable.userAction.setter(__int16 a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA35CAFHistoricalNotificationObservableC_s5UInt8VSgTt3g5(a1 & 0x1FF, v5, KeyPath, v4);
}

uint64_t CAFHistoricalNotificationObservable.userAction.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2(v6, v7);
  v9 = *(v8 + 1);
  v10 = OUTLINED_FUNCTION_7_5();
  v11(v10);

  *(v1 + 88) = v0;
  *(v1 + 89) = v9;
  return OUTLINED_FUNCTION_23_2();
}

void CAFHistoricalNotificationObservable.userAction.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA35CAFHistoricalNotificationObservableC_s5UInt8VSgTt3g5(*(*a1 + 88) | (*(*a1 + 89) << 8), *(*a1 + 64), v1[9], v1[10]);

  free(v1);
}

uint64_t CAFHistoricalNotificationObservable.$symbolName.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_16_3();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFHistoricalNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);

  v3 = v5;
  OUTLINED_FUNCTION_232();

  return v6;
}

uint64_t CAFHistoricalNotificationObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFHistoricalNotificationObservable._description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed);
  v9 = [v8 registeredForUserVisibleLabel];
  v10 = 0x73696765726E753CLL;
  v11 = 0xEE003E6465726574;
  if (v9)
  {
    v10 = CAFHistoricalNotificationObservable.userVisibleLabel.getter();
  }

  v56 = v10;
  v57 = v11;
  v12 = [v8 registeredForUserVisibleDescription];
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if (v12)
  {
    v13 = CAFHistoricalNotificationObservable.userVisibleDescription.getter();
  }

  v54 = v13;
  v55 = v14;
  v15 = [v8 registeredForUserVisibleFullDescription];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v15)
  {
    v59 = CAFHistoricalNotificationObservable.userVisibleFullDescription.getter();
    v60 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v16 = OUTLINED_FUNCTION_5_7();
  }

  v52 = v16;
  v53 = v17;
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if ([v8 registeredForTimestamp])
  {
    CAFHistoricalNotificationObservable.timestamp.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitDuration> and conformance Measurement<A>();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v21;
    (*(v3 + 8))(v7, v2);
  }

  v51 = v20;
  v22 = [v8 registeredForSymbolName];
  v23 = 0x73696765726E753CLL;
  v24 = 0xEE003E6465726574;
  if (v22)
  {
    v23 = CAFHistoricalNotificationObservable.symbolName.getter();
    v24 = v25;
  }

  v49 = v23;
  v26 = 0x73696765726E753CLL;
  v27 = 0xEE003E6465726574;
  if ([v8 registeredForNotificationSeverity])
  {
    CAFHistoricalNotificationObservable.notificationSeverity.getter();
    v28 = NSStringFromNotificationSeverity();
    if (v28)
    {
      v29 = v28;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v30;
    }

    else
    {
      v27 = 0xE900000000000029;
      v26 = 0x6E776F6E6B6E7528;
    }
  }

  v50 = v19;
  v31 = [v8 registeredForHistoricalNotificationUserActions];
  v32 = 0x73696765726E753CLL;
  v33 = 0xEE003E6465726574;
  if (v31)
  {
    v59 = CAFHistoricalNotificationObservable.historicalNotificationUserActions.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo36CAFHistoricalNotificationUserActionsCSgMd, &_sSo36CAFHistoricalNotificationUserActionsCSgMR);
    v32 = OUTLINED_FUNCTION_5_7();
    v33 = v34;
  }

  v47 = v32;
  v48 = v26;
  v35 = [v8 registeredForUserDismissible];
  v36 = 0x73696765726E753CLL;
  v37 = 0xEE003E6465726574;
  if (v35)
  {
    LOBYTE(v59) = CAFHistoricalNotificationObservable.userDismissible.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v36 = OUTLINED_FUNCTION_5_7();
    v37 = v38;
  }

  v46 = v36;
  v39 = [v8 registeredForHidden];
  v40 = 0x73696765726E753CLL;
  v41 = 0xEE003E6465726574;
  if (v39)
  {
    v42 = CAFHistoricalNotificationObservable.hidden.getter();
    if (v42)
    {
      v40 = 1702195828;
    }

    else
    {
      v40 = 0x65736C6166;
    }

    if (v42)
    {
      v41 = 0xE400000000000000;
    }

    else
    {
      v41 = 0xE500000000000000;
    }
  }

  if ([v8 registeredForUserAction])
  {
    LOWORD(v59) = CAFHistoricalNotificationObservable.userAction.getter() & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    OUTLINED_FUNCTION_5_7();
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(271);
  MEMORY[0x245D0A530](0xD000000000000026, 0x800000024230BD60);
  v58 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v56, v57);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230BDB0);
  MEMORY[0x245D0A530](v54, v55);

  MEMORY[0x245D0A530](0xD00000000000001ELL, 0x800000024230BDD0);
  MEMORY[0x245D0A530](v52, v53);

  MEMORY[0x245D0A530](0x7473656D6974202CLL, 0xED0000203A706D61);
  MEMORY[0x245D0A530](v50, v51);

  MEMORY[0x245D0A530](0x6C6F626D7973202CLL, 0xEE00203A656D614ELL);
  MEMORY[0x245D0A530](v49, v24);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230BDF0);
  MEMORY[0x245D0A530](v48, v27);

  MEMORY[0x245D0A530](0xD000000000000025, 0x800000024230BE10);
  MEMORY[0x245D0A530](v47, v33);

  MEMORY[0x245D0A530](0xD000000000000013, 0x800000024230BB40);
  MEMORY[0x245D0A530](v46, v37);

  MEMORY[0x245D0A530](0x6E6564646968202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v45, v41);

  MEMORY[0x245D0A530](0x634172657375202CLL, 0xEE00203A6E6F6974);
  v43 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v43);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v59;
}

uint64_t CAFHistoricalNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v6 = CAFHistoricalNotificationObservable._description.getter();
    v7 = v3[1];
    *v3 = v6;
    v3[1] = v8;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFHistoricalNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA35CAFHistoricalNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA35CAFHistoricalNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__userVisibleFullDescription;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA35CAFHistoricalNotificationObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA35CAFHistoricalNotificationObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__timestamp;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA35CAFHistoricalNotificationObservableC10Foundation11MeasurementVySo14NSUnitDurationCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA35CAFHistoricalNotificationObservableC10Foundation11MeasurementVySo14NSUnitDurationCGGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v14] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__symbolName;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCSSGMd, _s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__notificationSeverity;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCSo23CAFNotificationSeverityVGMd, _s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCSo23CAFNotificationSeverityVGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v20] = v22;
  v23 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__historicalNotificationUserActions;
  swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA35CAFHistoricalNotificationObservableCSo0fG11UserActionsCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA35CAFHistoricalNotificationObservableCSo0fG11UserActionsCSgGMR);
  OUTLINED_FUNCTION_225(v24);
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__userDismissible;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v26);
  v27 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v27);
  v28 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__hidden;
  swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCSbGMd, &_s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCSbGMR);
  OUTLINED_FUNCTION_225(v29);
  OUTLINED_FUNCTION_0_7();
  *&v2[v28] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__userAction;
  swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA35CAFHistoricalNotificationObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v31);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v30] = v32;
  v33 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v34 = OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafePublished.init(observedValuekeypath:)(v34);
  *&v2[OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed] = a1;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for CAFHistoricalNotificationObservable();
  v35 = a1;
  v36 = objc_msgSendSuper2(&v38, sel_init);
  [v35 registerObserver_];

  return v36;
}

uint64_t CAFHistoricalNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFHistoricalNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFHistoricalNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFHistoricalNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFHistoricalNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFHistoricalNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFHistoricalNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFHistoricalNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserVisibleFullDescription:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__userVisibleFullDescription);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateTimestamp:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__timestamp);

  specialized SafeReadOnlyPublished.setValue(_:)(a2);
}

uint64_t CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateSymbolName:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__symbolName;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter();
}

uint64_t CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateNotificationSeverity:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__notificationSeverity;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateHistoricalNotificationUserActions:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__historicalNotificationUserActions);
  v4 = a2;

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserDismissible:)(uint64_t a1, char a2, uint64_t *a3, void (*a4)(void))
{
  v7 = *a3;
  OUTLINED_FUNCTION_16_3();
  v8 = *(v4 + v7);

  a4(a2 & 1);
}

uint64_t CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserAction:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable__userAction;
  OUTLINED_FUNCTION_16_3();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFHistoricalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFHistoricalNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFHistoricalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void specialized SafeReadOnlyPublished.setValue(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  specialized SafeReadOnlyPublished.value.setter();
}

void specialized SafeReadOnlyPublished.setValue(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgSgMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgSgMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGSgSgMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgSgMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_0_9(v4);
  specialized SafeReadOnlyPublished.value.setter();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
  OUTLINED_FUNCTION_165(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  OUTLINED_FUNCTION_2_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_1_12();
  specialized SafeReadOnlyPublished.value.setter();
}

void key path getter for CAFHistoricalNotification.userVisibleFullDescription : CAFHistoricalNotification(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 userVisibleFullDescription];
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

void key path getter for CAFHistoricalNotification.timestamp : CAFHistoricalNotification(id *a1)
{
  v1 = [*a1 timestamp];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

void key path setter for CAFHistoricalNotification.symbolName : CAFHistoricalNotification(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D0A4C0](*a1, a1[1]);
  [v2 setSymbolName_];
}

id key path getter for CAFHistoricalNotification.historicalNotificationUserActions : CAFHistoricalNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 historicalNotificationUserActions];
  *a2 = result;
  return result;
}

uint64_t key path getter for CAFHistoricalNotification.userActionBridged : CAFHistoricalNotification@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFHistoricalNotification.userActionBridged.getter();
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFHistoricalNotification and conformance CAFHistoricalNotification()
{
  result = lazy protocol witness table cache variable for type CAFHistoricalNotification and conformance CAFHistoricalNotification;
  if (!lazy protocol witness table cache variable for type CAFHistoricalNotification and conformance CAFHistoricalNotification)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFHistoricalNotification, 0x277CF84D8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFHistoricalNotification and conformance CAFHistoricalNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFHistoricalNotificationObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFHistoricalNotificationObservable and conformance CAFHistoricalNotificationObservable(&lazy protocol witness table cache variable for type CAFHistoricalNotificationObservable and conformance CAFHistoricalNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFHistoricalNotificationObservable and conformance CAFHistoricalNotificationObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFHistoricalNotificationObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFHistoricalNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitDuration> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return outlined init with copy of Measurement<NSUnitSpeed>?(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t result)
{
  *v1 = result;
  *(result + 64) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return swift_readAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA35CAFHistoricalNotificationObservableC_SSTt3g5(v0);
}

uint64_t key path getter for CAFActionRemoteNotificationObservable.trailingButtonState : CAFActionRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFActionRemoteNotificationObservable.trailingButtonState.getter();
  *a2 = result;
  return result;
}

void (*CAFActionRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFActionRemoteNotificationObservable.trailingButtonState.modify;
}

uint64_t CAFActionRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t key path getter for CAFActionRemoteNotificationObservable.userAction : CAFActionRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFActionRemoteNotificationObservable.userAction.getter();
  *a2 = result;
  return result;
}

uint64_t CAFActionRemoteNotificationObservable.trailingButtonState.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_234();
  v3 = *(*(v1 + v2) + 16);
  v10 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v4 = v10;
  v5 = swift_readAtKeyPath();
  v7 = *v6;
  v5(&v9, 0);

  return v7;
}

uint64_t CAFActionRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

void (*CAFActionRemoteNotificationObservable.userAction.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__userAction;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFActionRemoteNotificationObservable.userAction.modify;
}

void CAFActionRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t CAFActionRemoteNotificationObservable.$trailingButtonState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFActionRemoteNotificationObservable.showsPrimaryActionHighlight.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__showsPrimaryActionHighlight) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFActionRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFActionRemoteNotificationObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFActionRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);
  [v3 registeredForUserVisibleLabel];
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v5 = CAFActionRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v57 = v5;
  v58 = v4;
  [v3 registeredForUserVisibleDescription];
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v8 = CAFActionRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v55 = v8;
  v56 = v7;
  [v3 registeredForIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    v11 = CAFActionRemoteNotificationObservable.identifier.getter();
  }

  v53 = v11;
  v54 = v10;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFActionRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v51 = v13;
  [v3 registeredForDisplayPanelIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v20)
  {
    v19 = CAFActionRemoteNotificationObservable.displayPanelIdentifier.getter();
  }

  v49 = v19;
  v50 = v18;
  v52 = v14;
  v21 = [v3 registeredForDisplayZoneIdentifier];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    v22 = CAFActionRemoteNotificationObservable.displayZoneIdentifier.getter();
    v23 = v24;
  }

  v48 = v22;
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFActionRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v47 = v25;
  v30 = 0x73696765726E753CLL;
  v31 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButtonState])
  {
    CAFActionRemoteNotificationObservable.trailingButtonState.getter();
    v32 = NSStringFromButtonAction();
    if (v32)
    {
      v33 = v32;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v34;
    }

    else
    {
      v31 = 0xE900000000000029;
      v30 = 0x6E776F6E6B6E7528;
    }
  }

  v46 = v30;
  v59 = 0x73696765726E753CLL;
  v35 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNotificationUserActions])
  {
    v36 = CAFActionRemoteNotificationObservable.symbolNotificationUserActions.getter();
    v37 = [v36 description];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v38;
  }

  v39 = [v3 registeredForUserAction];
  v40 = 0x73696765726E753CLL;
  v41 = 0xEE003E6465726574;
  if (v39)
  {
    CAFActionRemoteNotificationObservable.userAction.getter();
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v42;
  }

  if ([v3 registeredForShowsPrimaryActionHighlight])
  {
    v43 = CAFActionRemoteNotificationObservable.showsPrimaryActionHighlight.getter();
    if (v43)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v43)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }
  }

  _StringGuts.grow(_:)(320);
  MEMORY[0x245D0A530](0xD000000000000028, 0x800000024230BFA0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v57, v58);

  OUTLINED_FUNCTION_10_4();
  MEMORY[0x245D0A530](v55, v56);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v53, v54);

  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230BFD0);
  MEMORY[0x245D0A530](v51, v52);

  OUTLINED_FUNCTION_10_4();
  MEMORY[0x245D0A530](v49, v50);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230C010);
  MEMORY[0x245D0A530](v48, v23);

  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230C030);
  MEMORY[0x245D0A530](v47, v26);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230C050);
  MEMORY[0x245D0A530](v46, v31);

  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230C070);
  MEMORY[0x245D0A530](v59, v35);

  MEMORY[0x245D0A530](0x634172657375202CLL, 0xEE00203A6E6F6974);
  MEMORY[0x245D0A530](v45, v41);

  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x800000024230C0A0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFActionRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFActionRemoteNotificationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFActionRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA37CAFActionRemoteNotificationObservableCSo15CAFButtonActionVGMd, _s10CAFCombine13SafePublishedCyAA37CAFActionRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v23);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v22] = v24;
  v25 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__symbolNotificationUserActions;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo09CAFSymbolH11UserActionsCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo09CAFSymbolH11UserActionsCGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__userAction;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA37CAFActionRemoteNotificationObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA37CAFActionRemoteNotificationObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v28);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v27] = v29;
  v30 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__showsPrimaryActionHighlight;
  swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSbGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSbGMR);
  OUTLINED_FUNCTION_225(v31);
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v32 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v33 = OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafePublished.init(observedValuekeypath:)(v33);
  *&v2[OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed] = a1;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for CAFActionRemoteNotificationObservable();
  v34 = a1;
  v35 = objc_msgSendSuper2(&v37, sel_init);
  [v34 registerObserver_];

  return v35;
}

uint64_t CAFActionRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFActionRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFActionRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFActionRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFActionRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFActionRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFActionRemoteNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFActionRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void *))
{
  OUTLINED_FUNCTION_17_3(*a3);
  v6 = a2;
  a4(a2);
}

uint64_t CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateTrailingButtonState:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  v7 = *a3;
  OUTLINED_FUNCTION_234();
  v8 = *(v4 + v7);

  a4(a2);
}

uint64_t CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateShowsPrimaryActionHighlight:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__showsPrimaryActionHighlight);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFActionRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFActionRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFActionRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFActionRemoteNotification.symbolNameAndColor : CAFActionRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 symbolNameAndColor];
  *a2 = result;
  return result;
}

id key path getter for CAFActionRemoteNotification.trailingButton : CAFActionRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trailingButton];
  *a2 = result;
  return result;
}

id key path getter for CAFActionRemoteNotification.symbolNotificationUserActions : CAFActionRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 symbolNotificationUserActions];
  *a2 = result;
  return result;
}

void key path getter for CAFActionRemoteNotification.userVisibleLabel : CAFActionRemoteNotification(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_213(a1);
  v4 = [v2 *v3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *v1 = v5;
  v1[1] = v7;
}

unint64_t type metadata accessor for CAFActionRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFActionRemoteNotification;
  if (!lazy cache variable for type metadata for CAFActionRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFActionRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFActionRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFActionRemoteNotificationObservable and conformance CAFActionRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFActionRemoteNotificationObservable and conformance CAFActionRemoteNotificationObservable, a2, type metadata accessor for CAFActionRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFActionRemoteNotificationObservable and conformance CAFActionRemoteNotificationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFActionRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_10_4()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFAlertRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t key path getter for CAFAlertRemoteNotificationObservable.userAction : CAFAlertRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFAlertRemoteNotificationObservable.userAction.getter();
  *a2 = result;
  return result;
}

uint64_t CAFAlertRemoteNotificationObservable.userAction.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFAlertRemoteNotificationObservable.userAction.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFAlertRemoteNotificationObservableC_s5UInt8VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFAlertRemoteNotificationObservable.userAction.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFAlertRemoteNotificationObservable.userAction.modify;
}

void CAFAlertRemoteNotificationObservable.userAction.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFAlertRemoteNotificationObservableC_s5UInt8VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFAlertRemoteNotificationObservable.$userAction.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFAlertRemoteNotificationObservable.showsPrimaryActionHighlight.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__showsPrimaryActionHighlight) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFAlertRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFAlertRemoteNotificationObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFAlertRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);
  v4 = [v3 registeredForUserVisibleLabel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFAlertRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v44 = v5;
  v45 = v6;
  v7 = [v3 registeredForUserVisibleDescription];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFAlertRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v42 = v8;
  v43 = v9;
  v10 = [v3 registeredForIdentifier];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    v11 = CAFAlertRemoteNotificationObservable.identifier.getter();
  }

  v40 = v11;
  v41 = v12;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFAlertRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v39 = v13;
  v18 = [v3 registeredForDisplayPanelIdentifier];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    v19 = CAFAlertRemoteNotificationObservable.displayPanelIdentifier.getter();
    v20 = v21;
  }

  v38 = v19;
  v22 = [v3 registeredForDisplayZoneIdentifier];
  v23 = 0x73696765726E753CLL;
  v24 = 0xEE003E6465726574;
  if (v22)
  {
    v23 = CAFAlertRemoteNotificationObservable.displayZoneIdentifier.getter();
    v24 = v25;
  }

  v37 = v23;
  v46 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForNotificationUserActions])
  {
    v27 = CAFAlertRemoteNotificationObservable.notificationUserActions.getter();
    v28 = [v27 description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v30 = [v3 registeredForUserAction];
  v31 = 0x73696765726E753CLL;
  v32 = 0xEE003E6465726574;
  if (v30)
  {
    CAFAlertRemoteNotificationObservable.userAction.getter();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v33;
  }

  if ([v3 registeredForShowsPrimaryActionHighlight])
  {
    v34 = CAFAlertRemoteNotificationObservable.showsPrimaryActionHighlight.getter();
    if (v34)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v34)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }
  }

  _StringGuts.grow(_:)(268);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v44, v45);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v42, v43);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v40, v41);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v39, v14);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v38, v20);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v37, v24);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v46, v26);

  MEMORY[0x245D0A530](0x634172657375202CLL, 0xEE00203A6E6F6974);
  MEMORY[0x245D0A530](v36, v32);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFAlertRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFAlertRemoteNotificationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFAlertRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__notificationUserActions;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSo26CAFNotificationUserActionsCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSo26CAFNotificationUserActionsCGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA36CAFAlertRemoteNotificationObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA36CAFAlertRemoteNotificationObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v23);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v22] = v24;
  v25 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__showsPrimaryActionHighlight;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSbGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSbGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  *&v2[OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed] = a1;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for CAFAlertRemoteNotificationObservable();
  v29 = a1;
  v30 = objc_msgSendSuper2(&v32, sel_init);
  [v29 registerObserver_];

  return v30;
}

uint64_t CAFAlertRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFAlertRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFAlertRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFAlertRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFAlertRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFAlertRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFAlertRemoteNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFAlertRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void *))
{
  OUTLINED_FUNCTION_17_3(*a3);
  v6 = a2;
  a4(a2);
}

uint64_t CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateUserAction:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateShowsPrimaryActionHighlight:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__showsPrimaryActionHighlight);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFAlertRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFAlertRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFAlertRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFAlertRemoteNotification.notificationUserActions : CAFAlertRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notificationUserActions];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFAlertRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFAlertRemoteNotification;
  if (!lazy cache variable for type metadata for CAFAlertRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFAlertRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFAlertRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFAlertRemoteNotificationObservable and conformance CAFAlertRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFAlertRemoteNotificationObservable and conformance CAFAlertRemoteNotificationObservable, a2, type metadata accessor for CAFAlertRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAlertRemoteNotificationObservable and conformance CAFAlertRemoteNotificationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFAlertRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);

  v3 = v5;
  OUTLINED_FUNCTION_5_9();

  return v6;
}

uint64_t key path getter for CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState : CAFAutomakerSettingsRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.getter();
  *a2 = result;
  return result;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA48CAFAutomakerSettingsRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.modify;
}

void CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA48CAFAutomakerSettingsRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.$trailingButtonState.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsNotificationButtons.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__automakerSettingsNotificationButtons) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_5_9();

  return v5;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);
  v4 = [v3 registeredForUserVisibleLabel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFAutomakerSettingsRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v43 = v5;
  v44 = v6;
  v7 = [v3 registeredForUserVisibleDescription];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFAutomakerSettingsRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v41 = v8;
  v42 = v9;
  v10 = [v3 registeredForIdentifier];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    v11 = CAFAutomakerSettingsRemoteNotificationObservable.identifier.getter();
  }

  v39 = v11;
  v40 = v12;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFAutomakerSettingsRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v38 = v13;
  v18 = [v3 registeredForDisplayPanelIdentifier];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    v19 = CAFAutomakerSettingsRemoteNotificationObservable.displayPanelIdentifier.getter();
    v20 = v21;
  }

  v37 = v19;
  v22 = [v3 registeredForDisplayZoneIdentifier];
  v23 = 0x73696765726E753CLL;
  v24 = 0xEE003E6465726574;
  if (v22)
  {
    v23 = CAFAutomakerSettingsRemoteNotificationObservable.displayZoneIdentifier.getter();
    v24 = v25;
  }

  v46 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFAutomakerSettingsRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v45 = 0x73696765726E753CLL;
  v30 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButtonState])
  {
    CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.getter();
    v31 = NSStringFromButtonAction();
    if (v31)
    {
      v32 = v31;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v33;
    }

    else
    {
      v30 = 0xE900000000000029;
      v45 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v3 registeredForAutomakerSettingsNotificationButtons])
  {
    CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsNotificationButtons.getter();
    v2 = MEMORY[0x245D0A590]();
    v1 = v34;
  }

  _StringGuts.grow(_:)(289);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v43, v44);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v41, v42);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v39, v40);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v38, v14);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v37, v20);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v36, v24);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v46, v26);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v45, v30);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFAutomakerSettingsRemoteNotificationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFAutomakerSettingsRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo15CAFButtonActionVGMd, _s10CAFCombine13SafePublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v23);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v22] = v24;
  v25 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__automakerSettingsNotificationButtons;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSaySSGGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSaySSGGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v28);
  *&v2[OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed] = a1;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable();
  v29 = a1;
  v30 = objc_msgSendSuper2(&v32, sel_init);
  [v29 registerObserver_];

  return v30;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFAutomakerSettingsRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFAutomakerSettingsRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFAutomakerSettingsRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFAutomakerSettingsRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFAutomakerSettingsRemoteNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void *))
{
  OUTLINED_FUNCTION_17_3(*a3);
  v6 = a2;
  a4(a2);
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateTrailingButtonState:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateAutomakerSettingsNotificationButtons:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__automakerSettingsNotificationButtons);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFAutomakerSettingsRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFAutomakerSettingsRemoteNotification.automakerSettingsNotificationButtons : CAFAutomakerSettingsRemoteNotification(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 automakerSettingsNotificationButtons];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

unint64_t type metadata accessor for CAFAutomakerSettingsRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification;
  if (!lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFAutomakerSettingsRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFAutomakerSettingsRemoteNotificationObservable and conformance CAFAutomakerSettingsRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFAutomakerSettingsRemoteNotificationObservable and conformance CAFAutomakerSettingsRemoteNotificationObservable, a2, type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAutomakerSettingsRemoteNotificationObservable and conformance CAFAutomakerSettingsRemoteNotificationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFAutomakerSettingsRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return swift_getAtKeyPath();
}

uint64_t CAFDynamicContentElementObservable.userDismissible.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__userDismissible) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFDynamicContentElementObservable.dynamicContentURL.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFDynamicContentElementObservable.$dynamicContentURL.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFDynamicContentElementObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed);
  v4 = [v3 registeredForDynamicContentURL];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFDynamicContentElementObservable.dynamicContentURL.getter();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForUserDismissible])
  {
    v10 = CAFDynamicContentElementObservable.userDismissible.getter();
    if (v10)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (v10)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForDisplayPanelIdentifier])
  {
    v11 = CAFDynamicContentElementObservable.displayPanelIdentifier.getter();
    v12 = v13;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFDynamicContentElementObservable.displayZoneIdentifier.getter();
    v1 = v14;
  }

  _StringGuts.grow(_:)(142);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v16, v6);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000013);
  MEMORY[0x245D0A530](v8, v9);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v11, v12);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDynamicContentElementObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDynamicContentElementObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDynamicContentElementObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__dynamicContentURL;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFDynamicContentElementObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFDynamicContentElementObservableCSSGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__userDismissible;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFDynamicContentElementObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFDynamicContentElementObservableCSbGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed] = a1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CAFDynamicContentElementObservable();
  v20 = a1;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  [v20 registerObserver_];

  return v21;
}

uint64_t CAFDynamicContentElementObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDynamicContentElementObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDynamicContentElementObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDynamicContentElementObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDynamicContentElementObservable@<X0>(void *a1@<X8>)
{
  result = CAFDynamicContentElementObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDynamicContentElementObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFDynamicContentElementObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFDynamicContentElementObservable.dynamicContentElementService(_:didUpdateUserDismissible:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__userDismissible);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFDynamicContentElementObservable.dynamicContentElementService(_:didUpdateDynamicContentURL:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFDynamicContentElementObservable.dynamicContentElementService(_:didUpdateDynamicContentURL:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDynamicContentElementObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDynamicContentElementObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFDynamicContentElementObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFDynamicContentElement()
{
  result = lazy cache variable for type metadata for CAFDynamicContentElement;
  if (!lazy cache variable for type metadata for CAFDynamicContentElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDynamicContentElement);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDynamicContentElementObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDynamicContentElementObservable and conformance CAFDynamicContentElementObservable(&lazy protocol witness table cache variable for type CAFDynamicContentElementObservable and conformance CAFDynamicContentElementObservable, a2, type metadata accessor for CAFDynamicContentElementObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDynamicContentElementObservable and conformance CAFDynamicContentElementObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFDynamicContentElementObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFDynamicLocalNotificationObservable.userDismissible.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__userDismissible) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFDynamicLocalNotificationObservable.symbolNameAndColor.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__symbolNameAndColor) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFDynamicLocalNotificationObservable.identifier.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFDynamicLocalNotificationObservable.$identifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFDynamicLocalNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed);
  v4 = [v3 registeredForIdentifier];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFDynamicLocalNotificationObservable.identifier.getter();
  }

  v36 = v5;
  v37 = v6;
  v7 = [v3 registeredForUserVisibleLabel];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFDynamicLocalNotificationObservable.userVisibleLabel.getter();
    v9 = v10;
  }

  v35 = v8;
  v11 = [v3 registeredForUserVisibleDescription];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    v12 = CAFDynamicLocalNotificationObservable.userVisibleDescription.getter();
    v13 = v14;
  }

  v34 = v12;
  v15 = [v3 registeredForUserDismissible];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v15)
  {
    v18 = CAFDynamicLocalNotificationObservable.userDismissible.getter();
    if (v18)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v18)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }
  }

  v33 = v16;
  v19 = [v3 registeredForDisplayPanelIdentifier];
  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if (v19)
  {
    v20 = CAFDynamicLocalNotificationObservable.displayPanelIdentifier.getter();
    v21 = v22;
  }

  v32 = v20;
  v23 = [v3 registeredForDisplayZoneIdentifier];
  v24 = 0x73696765726E753CLL;
  v25 = 0xEE003E6465726574;
  if (v23)
  {
    v24 = CAFDynamicLocalNotificationObservable.displayZoneIdentifier.getter();
    v25 = v26;
  }

  if ([v3 registeredForSymbolNameAndColor])
  {
    v27 = CAFDynamicLocalNotificationObservable.symbolNameAndColor.getter();
    v28 = [v27 description];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v29;
  }

  _StringGuts.grow(_:)(212);
  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v36, v37);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v35, v9);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v34, v13);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v33, v17);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v32, v21);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v31, v25);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDynamicLocalNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDynamicLocalNotificationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDynamicLocalNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSSGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__userDismissible;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSbGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v21 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v21);
  v22 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v23 = OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)(v23);
  v24 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSo23CAFSymbolImageWithColorCGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v28 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v29 = OUTLINED_FUNCTION_0_7();
  *&v2[v28] = specialized SafePublished.init(observedValuekeypath:)(v29);
  *&v2[OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed] = a1;
  v33.receiver = v2;
  v33.super_class = type metadata accessor for CAFDynamicLocalNotificationObservable();
  v30 = a1;
  v31 = objc_msgSendSuper2(&v33, sel_init);
  [v30 registerObserver_];

  return v31;
}

uint64_t CAFDynamicLocalNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDynamicLocalNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDynamicLocalNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDynamicLocalNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDynamicLocalNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFDynamicLocalNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDynamicLocalNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFDynamicLocalNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateUserDismissible:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__userDismissible);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__symbolNameAndColor);
  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFDynamicLocalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDynamicLocalNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFDynamicLocalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFDynamicLocalNotification()
{
  result = lazy cache variable for type metadata for CAFDynamicLocalNotification;
  if (!lazy cache variable for type metadata for CAFDynamicLocalNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDynamicLocalNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDynamicLocalNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDynamicLocalNotificationObservable and conformance CAFDynamicLocalNotificationObservable(&lazy protocol witness table cache variable for type CAFDynamicLocalNotificationObservable and conformance CAFDynamicLocalNotificationObservable, a2, type metadata accessor for CAFDynamicLocalNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDynamicLocalNotificationObservable and conformance CAFDynamicLocalNotificationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFDynamicLocalNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFLocalNotificationObservable.identifier.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFLocalNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForIdentifier])
  {
    v4 = CAFLocalNotificationObservable.identifier.getter();
    v5 = v6;
  }

  v7 = 0x73696765726E753CLL;
  v8 = 0xEE003E6465726574;
  if ([v3 registeredForDisplayPanelIdentifier])
  {
    v7 = CAFLocalNotificationObservable.displayPanelIdentifier.getter();
    v8 = v9;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFLocalNotificationObservable.displayZoneIdentifier.getter();
    v1 = v10;
  }

  _StringGuts.grow(_:)(110);
  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230C4F0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230BFF0);
  MEMORY[0x245D0A530](v7, v8);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230C010);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFLocalNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFLocalNotificationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFLocalNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFLocalNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFLocalNotificationObservableCSSGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v2[v7] = OUTLINED_FUNCTION_0_8();
  v11 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v11] = OUTLINED_FUNCTION_0_8();
  v12 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v12] = OUTLINED_FUNCTION_0_8();
  v13 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v13] = OUTLINED_FUNCTION_0_8();
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_observed] = a1;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for CAFLocalNotificationObservable();
  v14 = a1;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  [v14 registerObserver_];

  return v15;
}

uint64_t CAFLocalNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFLocalNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFLocalNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFLocalNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFLocalNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFLocalNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFLocalNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFLocalNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFLocalNotificationObservable.localNotificationService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFLocalNotificationObservable.localNotificationService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFLocalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFLocalNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFLocalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFLocalNotification()
{
  result = lazy cache variable for type metadata for CAFLocalNotification;
  if (!lazy cache variable for type metadata for CAFLocalNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFLocalNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFLocalNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFLocalNotificationObservable and conformance CAFLocalNotificationObservable(&lazy protocol witness table cache variable for type CAFLocalNotificationObservable and conformance CAFLocalNotificationObservable, a2, type metadata accessor for CAFLocalNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFLocalNotificationObservable and conformance CAFLocalNotificationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFLocalNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFMinimalRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t key path getter for CAFMinimalRemoteNotificationObservable.trailingButtonState : CAFMinimalRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFMinimalRemoteNotificationObservable.trailingButtonState.getter();
  *a2 = result;
  return result;
}

uint64_t CAFMinimalRemoteNotificationObservable.trailingButtonState.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFMinimalRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA38CAFMinimalRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFMinimalRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFMinimalRemoteNotificationObservable.trailingButtonState.modify;
}

void CAFMinimalRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA38CAFMinimalRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFMinimalRemoteNotificationObservable.$trailingButtonState.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFMinimalRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFMinimalRemoteNotificationObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFMinimalRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);
  v4 = [v3 registeredForUserVisibleLabel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFMinimalRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v41 = v5;
  v42 = v6;
  v7 = [v3 registeredForUserVisibleDescription];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFMinimalRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v39 = v8;
  v40 = v9;
  v10 = [v3 registeredForIdentifier];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    v11 = CAFMinimalRemoteNotificationObservable.identifier.getter();
  }

  v37 = v11;
  v38 = v12;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFMinimalRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v36 = v13;
  v18 = [v3 registeredForDisplayPanelIdentifier];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    v19 = CAFMinimalRemoteNotificationObservable.displayPanelIdentifier.getter();
    v20 = v21;
  }

  v35 = v19;
  v22 = [v3 registeredForDisplayZoneIdentifier];
  v23 = 0x73696765726E753CLL;
  v24 = 0xEE003E6465726574;
  if (v22)
  {
    v23 = CAFMinimalRemoteNotificationObservable.displayZoneIdentifier.getter();
    v24 = v25;
  }

  v34 = v23;
  v43 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFMinimalRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  if ([v3 registeredForTrailingButtonState])
  {
    CAFMinimalRemoteNotificationObservable.trailingButtonState.getter();
    v30 = NSStringFromButtonAction();
    if (v30)
    {
      v31 = v30;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v32;
    }

    else
    {
      v1 = 0xE900000000000029;
      v2 = 0x6E776F6E6B6E7528;
    }
  }

  _StringGuts.grow(_:)(237);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v41, v42);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v39, v40);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v37, v38);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v36, v14);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v35, v20);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v34, v24);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v43, v26);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMinimalRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFMinimalRemoteNotificationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFMinimalRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA38CAFMinimalRemoteNotificationObservableCSo15CAFButtonActionVGMd, &_s10CAFCombine13SafePublishedCyAA38CAFMinimalRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v23);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v22] = v24;
  v25 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  *&v2[OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for CAFMinimalRemoteNotificationObservable();
  v27 = a1;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  [v27 registerObserver_];

  return v28;
}

uint64_t CAFMinimalRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMinimalRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMinimalRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMinimalRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMinimalRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFMinimalRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMinimalRemoteNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFMinimalRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);

  v8 = a2;
  a4(a2);
}

uint64_t CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateTrailingButtonState:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMinimalRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMinimalRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFMinimalRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFMinimalRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFMinimalRemoteNotification;
  if (!lazy cache variable for type metadata for CAFMinimalRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFMinimalRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMinimalRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFMinimalRemoteNotificationObservable and conformance CAFMinimalRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFMinimalRemoteNotificationObservable and conformance CAFMinimalRemoteNotificationObservable, a2, type metadata accessor for CAFMinimalRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMinimalRemoteNotificationObservable and conformance CAFMinimalRemoteNotificationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFMinimalRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void CAFMultiSelectRemoteNotification.selectedEntryIndicesBridged.getter()
{
  v1 = [v0 selectedEntryIndices];
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

void CAFMultiSelectRemoteNotification.selectedEntryIndicesBridged.setter(uint64_t a1)
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

  [v1 setSelectedEntryIndices_];
}

uint64_t key path getter for CAFMultiSelectRemoteNotificationObservable.trailingButtonState : CAFMultiSelectRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFMultiSelectRemoteNotificationObservable.trailingButtonState.getter();
  *a2 = result;
  return result;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.trailingButtonState.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFMultiSelectRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFMultiSelectRemoteNotificationObservable.trailingButtonState.modify;
}

void CAFMultiSelectRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFMultiSelectRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t key path getter for CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices : CAFMultiSelectRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices : CAFMultiSelectRemoteNotificationObservable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.setter(v4);
}

uint64_t CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectedEntryIndices;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);
  swift_retain_n();

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;

  v4(&v8, 0);

  return v6;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_Says5UInt8VGTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[9] = v1;
  v3[10] = swift_getKeyPath();
  v3[11] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectedEntryIndices;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);
  v3[8] = v6;
  swift_retain_n();

  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = *v9;

  v8(v3, 0);

  v3[7] = v10;
  return CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.modify;
}

void CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 56);
  v4 = *v5;
  v6 = *(*a1 + 72);
  v8 = v3[10];
  v7 = v3[11];
  if (a2)
  {

    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_Says5UInt8VGTt3g5(v9, v6, v8, v7);
    v10 = *v5;
  }

  else
  {
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_Says5UInt8VGTt3g5(v4, v6, v3[10], v3[11]);
  }

  free(v3);
}

uint64_t CAFMultiSelectRemoteNotificationObservable.$trailingButtonState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFMultiSelectRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);
  [v3 registeredForUserVisibleLabel];
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v5 = CAFMultiSelectRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v52 = v5;
  v53 = v4;
  [v3 registeredForUserVisibleDescription];
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v8 = CAFMultiSelectRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v50 = v8;
  v51 = v7;
  [v3 registeredForIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    v11 = CAFMultiSelectRemoteNotificationObservable.identifier.getter();
  }

  v48 = v11;
  v49 = v10;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFMultiSelectRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v46 = v13;
  v47 = v14;
  [v3 registeredForDisplayPanelIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v20)
  {
    v19 = CAFMultiSelectRemoteNotificationObservable.displayPanelIdentifier.getter();
  }

  v44 = v19;
  v45 = v18;
  v21 = [v3 registeredForDisplayZoneIdentifier];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    v22 = CAFMultiSelectRemoteNotificationObservable.displayZoneIdentifier.getter();
    v23 = v24;
  }

  v43 = v22;
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFMultiSelectRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v42 = v25;
  v30 = 0x73696765726E753CLL;
  v31 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButtonState])
  {
    CAFMultiSelectRemoteNotificationObservable.trailingButtonState.getter();
    v32 = NSStringFromButtonAction();
    if (v32)
    {
      v33 = v32;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v34;
    }

    else
    {
      v31 = 0xE900000000000029;
      v30 = 0x6E776F6E6B6E7528;
    }
  }

  v41 = v30;
  v54 = 0x73696765726E753CLL;
  v35 = 0xEE003E6465726574;
  if ([v3 registeredForSelectableNotificationEntries])
  {
    v36 = CAFMultiSelectRemoteNotificationObservable.selectableNotificationEntries.getter();
    v37 = [v36 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v38;
  }

  if ([v3 registeredForSelectedEntryIndices])
  {
    CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.getter();
    v2 = MEMORY[0x245D0A590]();
    v1 = v39;
  }

  _StringGuts.grow(_:)(302);
  MEMORY[0x245D0A530](0xD00000000000002DLL, 0x800000024230C690);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v52, v53);

  OUTLINED_FUNCTION_10_4();
  MEMORY[0x245D0A530](v50, v51);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v48, v49);

  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230BFD0);
  MEMORY[0x245D0A530](v46, v47);

  OUTLINED_FUNCTION_10_4();
  MEMORY[0x245D0A530](v44, v45);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230C010);
  MEMORY[0x245D0A530](v43, v23);

  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230C030);
  MEMORY[0x245D0A530](v42, v26);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230C050);
  MEMORY[0x245D0A530](v41, v31);

  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230C6C0);
  MEMORY[0x245D0A530](v54, v35);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230C6F0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFMultiSelectRemoteNotificationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFMultiSelectRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo15CAFButtonActionVGMd, _s10CAFCombine13SafePublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v23);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v22] = v24;
  v25 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectableNotificationEntries;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo013CAFSelectableI9EntryListCGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo013CAFSelectableI9EntryListCGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectedEntryIndices;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSays5UInt8VGGMd, &_s10CAFCombine13SafePublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSays5UInt8VGGMR);
  OUTLINED_FUNCTION_225(v28);
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)();
  v29 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v30 = OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)(v30);
  *&v2[OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed] = a1;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for CAFMultiSelectRemoteNotificationObservable();
  v31 = a1;
  v32 = objc_msgSendSuper2(&v34, sel_init);
  [v31 registerObserver_];

  return v32;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMultiSelectRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMultiSelectRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMultiSelectRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMultiSelectRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFMultiSelectRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMultiSelectRemoteNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFMultiSelectRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateTrailingButtonState:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);

  v8 = a2;
  a4(a2);
}

void CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSelectedEntryIndices:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectedEntryIndices;
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

uint64_t CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFMultiSelectRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMultiSelectRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFMultiSelectRemoteNotification.selectableNotificationEntries : CAFMultiSelectRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectableNotificationEntries];
  *a2 = result;
  return result;
}

void key path setter for CAFMultiSelectRemoteNotification.selectedEntryIndicesBridged : CAFMultiSelectRemoteNotification(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CAFMultiSelectRemoteNotification.selectedEntryIndicesBridged.setter(v4);
}

unint64_t lazy protocol witness table accessor for type CAFMultiSelectRemoteNotification and conformance CAFMultiSelectRemoteNotification()
{
  result = lazy protocol witness table cache variable for type CAFMultiSelectRemoteNotification and conformance CAFMultiSelectRemoteNotification;
  if (!lazy protocol witness table cache variable for type CAFMultiSelectRemoteNotification and conformance CAFMultiSelectRemoteNotification)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFMultiSelectRemoteNotification, 0x277CF8530);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFMultiSelectRemoteNotification and conformance CAFMultiSelectRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMultiSelectRemoteNotificationObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFMultiSelectRemoteNotificationObservable and conformance CAFMultiSelectRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFMultiSelectRemoteNotificationObservable and conformance CAFMultiSelectRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMultiSelectRemoteNotificationObservable and conformance CAFMultiSelectRemoteNotificationObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMultiSelectRemoteNotificationObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CAFMultiSelectRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFPickerObservable.entryList.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__entryList) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFPickerObservable.selectedEntryIndex : CAFPickerObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFPickerObservable.selectedEntryIndex.getter();
  *a2 = result;
  return result;
}

uint64_t CAFPickerObservable.selectedEntryIndex.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFPickerObservable.selectedEntryIndex.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA19CAFPickerObservableC_s5UInt8VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFPickerObservable.selectedEntryIndex.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFPickerObservable.selectedEntryIndex.modify;
}

void CAFPickerObservable.selectedEntryIndex.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA19CAFPickerObservableC_s5UInt8VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFPickerObservable.$selectedEntryIndex.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFPickerObservable.userSelectionEnabled.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__userSelectionEnabled) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFPickerObservable.identifier.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFPickerObservable.$identifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3(*a1);
  v4 = a2(v3);

  return v4;
}

uint64_t CAFPickerObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);
  v4 = [v3 registeredForIdentifier];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFPickerObservable.identifier.getter();
    v6 = v7;
  }

  v31 = v5;
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForEntryList])
  {
    v10 = CAFPickerObservable.entryList.getter();
    v11 = [v10 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v12;
  }

  v30 = v8;
  v13 = [v3 registeredForSelectedEntryIndex];
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if (v13)
  {
    CAFPickerObservable.selectedEntryIndex.getter();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v16;
  }

  v29 = v14;
  v17 = [v3 registeredForUserSelectionEnabled];
  v18 = 0x73696765726E753CLL;
  v19 = 0xEE003E6465726574;
  if (v17)
  {
    v20 = CAFPickerObservable.userSelectionEnabled.getter();
    if (v20)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v20)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }
  }

  v28 = v18;
  v21 = [v3 registeredForDisplayPanelIdentifier];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    v22 = CAFPickerObservable.displayPanelIdentifier.getter();
    v23 = v24;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFPickerObservable.displayZoneIdentifier.getter();
    v1 = v25;
  }

  _StringGuts.grow(_:)(164);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530](0xD000000000000016);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v31, v6);

  MEMORY[0x245D0A530](0x4C7972746E65202CLL, 0xED0000203A747369);
  MEMORY[0x245D0A530](v30, v9);

  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530](0xD000000000000016);
  MEMORY[0x245D0A530](v29, v15);

  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v28, v19);

  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v27, v23);

  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFPickerObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFPickerObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFPickerObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__entryList;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSo12CAFEntryListCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSo12CAFEntryListCGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA19CAFPickerObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA19CAFPickerObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__userSelectionEnabled;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSbGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v18 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v18);
  v19 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v20 = OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafePublished.init(observedValuekeypath:)(v20);
  *&v2[OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFPickerObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFPickerObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFPickerObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFPickerObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFPickerObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFPickerObservable@<X0>(void *a1@<X8>)
{
  result = CAFPickerObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFPickerObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFPickerObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CAFPickerObservable.pickerService(_:didUpdateEntryList:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__entryList);
  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFPickerObservable.pickerService(_:didUpdateSelectedEntryIndex:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFPickerObservable.pickerService(_:didUpdateUserSelectionEnabled:)()
{
  OUTLINED_FUNCTION_17_3(OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__userSelectionEnabled);
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t @objc CAFPickerObservable.pickerService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFPickerObservable.pickerService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3(*a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFPickerObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFPickerObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFPickerObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFPicker.entryList : CAFPicker@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entryList];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFPicker()
{
  result = lazy cache variable for type metadata for CAFPicker;
  if (!lazy cache variable for type metadata for CAFPicker)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFPicker);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFPickerObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFPickerObservable and conformance CAFPickerObservable(&lazy protocol witness table cache variable for type CAFPickerObservable and conformance CAFPickerObservable, a2, type metadata accessor for CAFPickerObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPickerObservable and conformance CAFPickerObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFPickerObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t CAFRemoteNotificationObservable.notificationUserActions.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__notificationUserActions) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_5_9();

  return v5;
}

uint64_t key path getter for CAFRemoteNotificationObservable.userAction : CAFRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFRemoteNotificationObservable.userAction.getter();
  *a2 = result;
  return result;
}

uint64_t CAFRemoteNotificationObservable.userAction.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction;
  OUTLINED_FUNCTION_234();
  v2 = *(*(v0 + v1) + 16);
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);

  v3 = v9;
  v4 = swift_readAtKeyPath();
  v6 = *v5;
  v4(&v8, 0);

  return v6;
}

uint64_t CAFRemoteNotificationObservable.userAction.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFRemoteNotificationObservableC_s5UInt8VTt3g5(a1, v5, KeyPath, v4);
}

void (*CAFRemoteNotificationObservable.userAction.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction;
  OUTLINED_FUNCTION_234();
  v5 = *(*(v1 + v4) + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);
  v3[7] = v6;

  v7 = v6;
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v3, 0);

  *(v3 + 88) = v10;
  return CAFRemoteNotificationObservable.userAction.modify;
}

void CAFRemoteNotificationObservable.userAction.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFRemoteNotificationObservableC_s5UInt8VTt3g5(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v1);
}

uint64_t CAFRemoteNotificationObservable.$userAction.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.projectedValue.getter();
  v4 = v3;

  return v4;
}

uint64_t CAFRemoteNotificationObservable.symbolNameAndColor.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__symbolNameAndColor) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);

  v2 = v4;
  OUTLINED_FUNCTION_5_9();

  return v5;
}

uint64_t CAFRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFRemoteNotificationObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);
  v4 = [v3 registeredForUserVisibleLabel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v40 = v5;
  v41 = v6;
  v7 = [v3 registeredForUserVisibleDescription];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v38 = v8;
  v39 = v9;
  v10 = [v3 registeredForIdentifier];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    v11 = CAFRemoteNotificationObservable.identifier.getter();
    v12 = v13;
  }

  v37 = v11;
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if ([v3 registeredForNotificationUserActions])
  {
    v16 = CAFRemoteNotificationObservable.notificationUserActions.getter();
    v17 = [v16 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v18;
  }

  v19 = [v3 registeredForUserAction];
  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if (v19)
  {
    CAFRemoteNotificationObservable.userAction.getter();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v22;
  }

  v35 = v20;
  v36 = v14;
  v23 = [v3 registeredForSymbolNameAndColor];
  v24 = 0x73696765726E753CLL;
  v25 = 0xEE003E6465726574;
  if (v23)
  {
    CAFRemoteNotificationObservable.symbolNameAndColor.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CAFSymbolImageWithColorCSgMd, &_sSo23CAFSymbolImageWithColorCSgMR);
    v24 = String.init<A>(describing:)();
    v25 = v26;
  }

  v34 = v24;
  v27 = [v3 registeredForDisplayPanelIdentifier];
  v28 = 0x73696765726E753CLL;
  v29 = 0xEE003E6465726574;
  if (v27)
  {
    v28 = CAFRemoteNotificationObservable.displayPanelIdentifier.getter();
    v29 = v30;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFRemoteNotificationObservable.displayZoneIdentifier.getter();
    v1 = v31;
  }

  _StringGuts.grow(_:)(230);
  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v40, v41);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v38, v39);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v37, v12);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v36, v15);

  MEMORY[0x245D0A530](0x634172657375202CLL, 0xEE00203A6E6F6974);
  MEMORY[0x245D0A530](v35, v21);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v34, v25);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v33, v29);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFRemoteNotificationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__notificationUserActions;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSo26CAFNotificationUserActionsCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSo26CAFNotificationUserActionsCGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFRemoteNotificationObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA31CAFRemoteNotificationObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v17);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v16] = v18;
  v19 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSo23CAFSymbolImageWithColorCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSo23CAFSymbolImageWithColorCSgGMR);
  OUTLINED_FUNCTION_225(v20);
  OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)(v26);
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for CAFRemoteNotificationObservable();
  v27 = a1;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  [v27 registerObserver_];

  return v28;
}

uint64_t CAFRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRemoteNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateNotificationUserActions:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__notificationUserActions);

  v5 = a2;
  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateUserAction:)()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction;
  OUTLINED_FUNCTION_234();
  v2 = *(v0 + v1);

  specialized SafePublished.value.setter();
}

uint64_t CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__symbolNameAndColor);
  v4 = a2;

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFRemoteNotification;
  if (!lazy cache variable for type metadata for CAFRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRemoteNotificationObservable and conformance CAFRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFRemoteNotificationObservable and conformance CAFRemoteNotificationObservable, a2, type metadata accessor for CAFRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRemoteNotificationObservable and conformance CAFRemoteNotificationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

uint64_t key path getter for CAFSingleSelectRemoteNotificationObservable.trailingButtonState : CAFSingleSelectRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSingleSelectRemoteNotificationObservable.trailingButtonState.getter();
  *a2 = result;
  return result;
}

void (*CAFSingleSelectRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__trailingButtonState;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFSingleSelectRemoteNotificationObservable.trailingButtonState.modify;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t key path getter for CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex : CAFSingleSelectRemoteNotificationObservable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.trailingButtonState.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_234();
  v3 = *(*(v1 + v2) + 16);
  v10 = *(v1 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v4 = v10;
  v5 = swift_readAtKeyPath();
  v7 = *v6;
  v5(&v9, 0);

  return v7;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

void (*CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__selectedEntryIndex;
  OUTLINED_FUNCTION_234();
  v6 = *(*(v1 + v5) + 16);
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v7 = v2;
  v8 = OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_4_6(v8, v9);
  v11(v10);

  *(v4 + 88) = v1;
  return CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.modify;
}

void CAFSingleSelectRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t CAFSingleSelectRemoteNotificationObservable.$trailingButtonState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_234();
  v5 = *(v2 + v4);

  v7 = a2(v6);

  return v7;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFSingleSelectRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);
  [v3 registeredForUserVisibleLabel];
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v5 = CAFSingleSelectRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v52 = v5;
  v53 = v4;
  [v3 registeredForUserVisibleDescription];
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v8 = CAFSingleSelectRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v50 = v8;
  v51 = v7;
  [v3 registeredForIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    v11 = CAFSingleSelectRemoteNotificationObservable.identifier.getter();
  }

  v48 = v11;
  v49 = v10;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFSingleSelectRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v46 = v13;
  [v3 registeredForDisplayPanelIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v20)
  {
    v19 = CAFSingleSelectRemoteNotificationObservable.displayPanelIdentifier.getter();
  }

  v44 = v19;
  v45 = v18;
  v47 = v14;
  v21 = [v3 registeredForDisplayZoneIdentifier];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    v22 = CAFSingleSelectRemoteNotificationObservable.displayZoneIdentifier.getter();
    v23 = v24;
  }

  v43 = v22;
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFSingleSelectRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v42 = v25;
  v30 = 0x73696765726E753CLL;
  v31 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButtonState])
  {
    CAFSingleSelectRemoteNotificationObservable.trailingButtonState.getter();
    v32 = NSStringFromButtonAction();
    if (v32)
    {
      v33 = v32;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v34;
    }

    else
    {
      v31 = 0xE900000000000029;
      v30 = 0x6E776F6E6B6E7528;
    }
  }

  v41 = v30;
  v54 = 0x73696765726E753CLL;
  v35 = 0xEE003E6465726574;
  if ([v3 registeredForSelectableNotificationEntries])
  {
    v36 = CAFSingleSelectRemoteNotificationObservable.selectableNotificationEntries.getter();
    v37 = [v36 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v38;
  }

  if ([v3 registeredForSelectedEntryIndex])
  {
    CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.getter();
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v39;
  }

  _StringGuts.grow(_:)(301);
  MEMORY[0x245D0A530](0xD00000000000002ELL, 0x800000024230C8F0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v52, v53);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230BDB0);
  MEMORY[0x245D0A530](v50, v51);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v48, v49);

  OUTLINED_FUNCTION_9_3();
  MEMORY[0x245D0A530](v46, v47);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230BFF0);
  MEMORY[0x245D0A530](v44, v45);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230C010);
  MEMORY[0x245D0A530](v43, v23);

  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230C030);
  MEMORY[0x245D0A530](v42, v26);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230C050);
  MEMORY[0x245D0A530](v41, v31);

  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230C6C0);
  MEMORY[0x245D0A530](v54, v35);

  OUTLINED_FUNCTION_9_3();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSingleSelectRemoteNotificationObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSingleSelectRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo15CAFButtonActionVGMd, _s10CAFCombine13SafePublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v23);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v22] = v24;
  v25 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__selectableNotificationEntries;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo013CAFSelectableI9EntryListCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo013CAFSelectableI9EntryListCGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__selectedEntryIndex;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA43CAFSingleSelectRemoteNotificationObservableCs5UInt8VGMd, &_s10CAFCombine13SafePublishedCyAA43CAFSingleSelectRemoteNotificationObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v28);
  OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)();
  *&v2[v27] = v29;
  v30 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v31 = OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)(v31);
  *&v2[OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed] = a1;
  v35.receiver = v2;
  v35.super_class = type metadata accessor for CAFSingleSelectRemoteNotificationObservable();
  v32 = a1;
  v33 = objc_msgSendSuper2(&v35, sel_init);
  [v32 registerObserver_];

  return v33;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSingleSelectRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSingleSelectRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSingleSelectRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSingleSelectRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFSingleSelectRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSingleSelectRemoteNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFSingleSelectRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t @objc CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v7 = *(v4 + *a3);

  v8 = a2;
  a4(a2);
}

uint64_t CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateTrailingButtonState:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  v7 = *a3;
  OUTLINED_FUNCTION_234();
  v8 = *(v4 + v7);

  a4(a2);
}

uint64_t CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + *a4);

  specialized SafeReadOnlyPublished.value.setter();
}

uint64_t CAFSingleSelectRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSingleSelectRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()(result);
  }

  return result;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSingleSelectRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFSingleSelectRemoteNotification;
  if (!lazy cache variable for type metadata for CAFSingleSelectRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSingleSelectRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSingleSelectRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSingleSelectRemoteNotificationObservable and conformance CAFSingleSelectRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFSingleSelectRemoteNotificationObservable and conformance CAFSingleSelectRemoteNotificationObservable, a2, type metadata accessor for CAFSingleSelectRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSingleSelectRemoteNotificationObservable and conformance CAFSingleSelectRemoteNotificationObservable(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in CAFSingleSelectRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescription);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
}

void OUTLINED_FUNCTION_9_3()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFOverlayViewObservable.on.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__on) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

float CAFOverlayViewObservable.originX.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFOverlayViewObservable.displayPanelIdentifier.getter(void *a1)
{
  v2 = *(*(v1 + *a1) + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed);

  v3 = v5;
  swift_getAtKeyPath();

  return v6;
}

uint64_t CAFOverlayViewObservable.$displayPanelIdentifier.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);

  v6 = a2(v5);

  return v6;
}

uint64_t CAFOverlayViewObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed);
  v4 = [v3 registeredForDisplayPanelIdentifier];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFOverlayViewObservable.displayPanelIdentifier.getter();
  }

  v34 = v5;
  v35 = v6;
  v7 = [v3 registeredForIdentifier];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFOverlayViewObservable.identifier.getter();
    v9 = v10;
  }

  v33 = v8;
  v11 = [v3 registeredForOn];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    v14 = CAFOverlayViewObservable.on.getter();
    if (v14)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (v14)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }
  }

  v32 = v12;
  v15 = [v3 registeredForOriginX];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v15)
  {
    CAFOverlayViewObservable.originX.getter();
    v16 = Float.description.getter();
    v17 = v18;
  }

  v31 = v16;
  v19 = [v3 registeredForOriginY];
  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if (v19)
  {
    CAFOverlayViewObservable.originY.getter();
    v20 = Float.description.getter();
    v21 = v22;
  }

  v30 = v20;
  v23 = [v3 registeredForWidth];
  v24 = 0x73696765726E753CLL;
  v25 = 0xEE003E6465726574;
  if (v23)
  {
    CAFOverlayViewObservable.width.getter();
    v24 = Float.description.getter();
    v25 = v26;
  }

  if ([v3 registeredForHeight])
  {
    CAFOverlayViewObservable.height.getter();
    v2 = Float.description.getter();
    v1 = v27;
  }

  _StringGuts.grow(_:)(134);
  OUTLINED_FUNCTION_5_10();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_5_10();
  MEMORY[0x245D0A530](v34, v35);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v33, v9);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v32, v13);

  MEMORY[0x245D0A530](0x6E696769726F202CLL, 0xEB00000000203A58);
  MEMORY[0x245D0A530](v31, v17);

  MEMORY[0x245D0A530](0x6E696769726F202CLL, 0xEB00000000203A59);
  MEMORY[0x245D0A530](v30, v21);

  MEMORY[0x245D0A530](0x3A6874646977202CLL, 0xE900000000000020);
  MEMORY[0x245D0A530](v29, v25);

  MEMORY[0x245D0A530](0x746867696568202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFOverlayViewObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFOverlayViewObservable._description.getter();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFOverlayViewObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__displayPanelIdentifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSSGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__on;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSbGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSbGMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__originX;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSfGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSfGMR);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v18] = v22;
  v23 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__originY;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v23] = v24;
  v25 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__width;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v25] = v26;
  v27 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__height;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v27] = v28;
  v29 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v30 = OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)(v30);
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed] = a1;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for CAFOverlayViewObservable();
  v31 = a1;
  v32 = objc_msgSendSuper2(&v34, sel_init);
  [v31 registerObserver_];

  return v32;
}

uint64_t CAFOverlayViewObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFOverlayViewObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFOverlayViewObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFOverlayViewObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}